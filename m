Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB47835FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 17:57:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=u0p67WzW6Ea0QOM59T5mF2+Ebv8t9DNpqkcG/0gie0s=; b=MCz
	fb0KEM4Rk7L/q6eu5AkOb0e7kIQ8z3nHyWlbjDvY3yML89Ddz2xdRN4wklDJHykWzGBCjX334pvcK
	SW7DV93+0Q065P6mzpbHSgRk0GXgTsbA7rMoE7bal24ZM7g9hyoqshHU8FortFBHk9y2gCu7iAuEs
	PtggZafRVwK1sY4Pndw/Rh71vV5iqoLmmeXYuBbRNSBWxSGK9Lqkih7rQgZ6akto/J7PQSCoJeqje
	Qt5/2jV+NG7wCc8R+PzdOBYL8ot754tH7WANggVBgJZ78hmuN0L7UYjzNW9msDKoNsuRiP4NJjVtZ
	qONAJjvEX9SLbmJd9Qwnzkr8RsuqA4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv1qX-0004fS-VQ; Tue, 06 Aug 2019 15:57:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hv1qP-0004ez-NA
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 15:57:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E1D65344;
 Tue,  6 Aug 2019 08:57:48 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C30353F575;
 Tue,  6 Aug 2019 08:57:47 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/kvm: remove VMID rollover I-cache maintenance
Date: Tue,  6 Aug 2019 16:57:37 +0100
Message-Id: <20190806155737.39307-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_085749_804293_23B0EC67 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For VPIPT I-caches, we need I-cache maintenance on VMID rollover to
avoid an ABA problem. Consider a single vCPU VM, with a pinned stage-2,
running with an idmap VA->IPA and idmap IPA->PA. If we don't do
maintenance on rollover:

        // VMID A
        Writes insn X to PA 0xF
        Invalidates PA 0xF (for VMID A)

        I$ contains [{A,F}->X]

        [VMID ROLLOVER]

        // VMID B
        Writes insn Y to PA 0xF
        Invalidates PA 0xF (for VMID B)

        I$ contains [{A,F}->X, {B,F}->Y]

        [VMID ROLLOVER]

        // VMID A
        I$ contains [{A,F}->X, {B,F}->Y]

        Unexpectedly hits stale I$ line {A,F}->X.

However, for PIPT and VIPT I-caches, the VMID doesn't affect lookup or
constrain maintenance. Given the VMID doesn't affect PIPT and VIPT
I-caches, and given VMID rollover is independent of changes to stage-2
mappings, I-cache maintenance cannot be necessary on VMID rollover for
PIPT or VIPT I-caches.

This patch removes the maintenance on rollover for VIPT and PIPT
I-caches. At the same time, the unnecessary colons are removed from the
asm statement to make it more legible.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Christoffer Dall <christoffer.dall@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: kvmarm@lists.cs.columbia.edu
---
 arch/arm64/kvm/hyp/tlb.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index d49a14497715..c466060b76d6 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -193,6 +193,18 @@ void __hyp_text __kvm_flush_vm_context(void)
 {
 	dsb(ishst);
 	__tlbi(alle1is);
-	asm volatile("ic ialluis" : : );
+
+	/*
+	 * VIPT and PIPT caches are not affected by VMID, so no maintenance
+	 * is necessary across a VMID rollover.
+	 *
+	 * VPIPT caches constrain lookup and maintenance to the active VMID,
+	 * so we need to invalidate lines with a stale VMID to avoid an ABA
+	 * race after multiple rollovers.
+	 *
+	 */
+	if (icache_is_vpipt())
+		asm volatile("ic ialluis");
+
 	dsb(ish);
 }
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
