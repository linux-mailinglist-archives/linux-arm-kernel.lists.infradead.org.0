Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97862ADA74
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 15:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PKUQagOAB0xmsZZpdDUGafbWy9DxROuFOLGWyFAXNnM=; b=raRh8NrTAKM/7P
	vxrgKgjpN+Rw6hZ48+JWsBZSkbNIf0CsuvRvYe6s64vnXaP+nKDJzTNWBtrAQ4yLSLELdFpVpggNl
	kWd52ruW9TK2pyYzxEhFWLaxzVcxL9vjvFO8Qmo1ub+Is9emwHNjG7hBAra/Y0wflq39c5xkhdHTG
	oN6pkZsvseLvMY3Ku/COkW42mQ0WDU/8QzZF0ZwxF0svbLewpV9y8TVpjQ/zzkMzGkz4Ul2V55Z7W
	YGFj1q15jMOljoTPUXJzidvnvmuxGzQEvAozi6M53wq6WNVigo8F/wGNRltcayp6Uq+yiLZA36cvq
	S02nzsJcwIPGTIc+nKiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7K5V-0006By-HN; Mon, 09 Sep 2019 13:52:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7K2h-0002e5-EU
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 13:49:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F126319F6;
 Mon,  9 Sep 2019 06:49:18 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C2A6F3F59C;
 Mon,  9 Sep 2019 06:49:16 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 11/17] arm64/kvm: Remove VMID rollover I-cache maintenance
Date: Mon,  9 Sep 2019 14:48:01 +0100
Message-Id: <20190909134807.27978-12-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190909134807.27978-1-maz@kernel.org>
References: <20190909134807.27978-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_064919_552131_73E1A7FD 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Andre Przywara <andre.przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mark Rutland <mark.rutland@arm.com>

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
Reviewed-by: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: kvmarm@lists.cs.columbia.edu
Signed-off-by: Marc Zyngier <maz@kernel.org>
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
