Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E2E635DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 14:28:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y6PWGUIJ3vWiSRFghlbE35uVwwRuoguRD+PjWp0GZqc=; b=GRoPhf3XXOpGRs
	ySSwHsU99eOLqDHbohSNrQ3JFIGlmzzOtVUVH34L0Ofi5QHDJTAogdAMEmjKDRXiHunxIohORPkwG
	eCbw2vEagciAeqBdXXbIBm/5ITSlRAzsl7vX71pDrJy53oSCCrE/Ut1UGUmMiDyWCCOaD2NtmLHG4
	WhnzEuNE07hoF30riRipj6sFJki50Ty6otQjK2Fq2pWossmEQQ8KSbZVTwiY6W7FV4/ZZ7euFd8MK
	u0yH6zzdZwUtFrzk+OhsdpgsOVZbSlz4pzDhHMU/5PCbkDth48muVFfciUEqY/+6kcr8EOyHyh5Cz
	MqLVCD+msnaNyBXg/I/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpE5-00008t-5j; Tue, 09 Jul 2019 12:28:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpBh-0006dP-AU
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 12:25:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3516E152F;
 Tue,  9 Jul 2019 05:25:36 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com (unknown [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 673BA3F59C;
 Tue,  9 Jul 2019 05:25:34 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 08/18] KVM: arm64: Skip more of the SError vaxorcism
Date: Tue,  9 Jul 2019 13:24:57 +0100
Message-Id: <20190709122507.214494-9-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190709122507.214494-1-marc.zyngier@arm.com>
References: <20190709122507.214494-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_052537_532436_AA840205 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
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
Cc: kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Steven Price <steven.price@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: James Morse <james.morse@arm.com>

During __guest_exit() we need to consume any SError left pending by the
guest so it doesn't contaminate the host. With v8.2 we use the
ESB-instruction. For systems without v8.2, we use dsb+isb and unmask
SError. We do this on every guest exit.

Use the same dsb+isr_el1 trick, this lets us know if an SError is pending
after the dsb, allowing us to skip the isb and self-synchronising PSTATE
write if its not.

This means SError remains masked during KVM's world-switch, so any SError
that occurs during this time is reported by the host, instead of causing
a hyp-panic.

As we're benchmarking this code lets polish the layout. If you give gcc
likely()/unlikely() hints in an if() condition, it shuffles the generated
assembly so that the likely case is immediately after the branch. Lets
do the same here.

Signed-off-by: James Morse <james.morse@arm.com>

Changes since v2:
 * Added isb after the dsb to prevent an early read

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/kvm/hyp/entry.S | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
index 5e25cc0e6aab..e5cc8d66bf53 100644
--- a/arch/arm64/kvm/hyp/entry.S
+++ b/arch/arm64/kvm/hyp/entry.S
@@ -151,8 +151,16 @@ alternative_if ARM64_HAS_RAS_EXTN
 	orr	x0, x0, #(1<<ARM_EXIT_WITH_SERROR_BIT)
 1:	ret
 alternative_else
-	// If we have a pending asynchronous abort, now is the
-	// time to find out. From your VAXorcist book, page 666:
+	dsb	sy		// Synchronize against in-flight ld/st
+	isb			// Prevent an early read of side-effect free ISR
+	mrs	x2, isr_el1
+	tbnz	x2, #8, 2f	// ISR_EL1.A
+	ret
+	nop
+2:
+alternative_endif
+	// We know we have a pending asynchronous abort, now is the
+	// time to flush it out. From your VAXorcist book, page 666:
 	// "Threaten me not, oh Evil one!  For I speak with
 	// the power of DEC, and I command thee to show thyself!"
 	mrs	x2, elr_el2
@@ -160,9 +168,7 @@ alternative_else
 	mrs	x4, spsr_el2
 	mov	x5, x0
 
-	dsb	sy		// Synchronize against in-flight ld/st
 	msr	daifclr, #4	// Unmask aborts
-alternative_endif
 
 	// This is our single instruction exception window. A pending
 	// SError is guaranteed to occur at the earliest when we unmask
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
