Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A8A4E524
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BRlr8IxfXWgr7UO/A2AuMZhzNCFEXJVh/mkDbe34H5s=; b=oPukfRmjRbhCpw
	TQfvuSszGdba8e7EPwRu6yOXfEmuRQms0Z4R3L13DqVonO3Ulvwo0HTShZLY2NfwCFLeqo7SJixA4
	JaQ63apDkyGsh/f7zXmSxu5CLTcdAUC6Lx2+VkOstrZ6BZsTf8DD2fuga9oy+SdPLtt/JelQCs9cj
	zjgq1aldKTWYq94XpGXOwVCIBHOIA8BAQFbMBVvgvRTT8E35GGnPF1X8jsiVsirApEwvewW7tyVma
	liIJy+ZR3VoksMQgfIWplpYMh3dr/V07XTBVb0GPaI8I3yjSH3T74AaycVnJ89d9b6dduErkpvyyl
	ODDsCO+zwVpBz3KzFHCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGGZ-0006J3-V0; Fri, 21 Jun 2019 09:55:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heG0q-0006rw-3H
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:39:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B8118147A;
 Fri, 21 Jun 2019 02:39:15 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 637FE3F246;
 Fri, 21 Jun 2019 02:39:14 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 02/59] KVM: arm64: Move __load_guest_stage2 to kvm_mmu.h
Date: Fri, 21 Jun 2019 10:37:46 +0100
Message-Id: <20190621093843.220980-3-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621093843.220980-1-marc.zyngier@arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_023916_198504_56EC3E43 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Having __load_guest_stage2 in kvm_hyp.h is quickly going to trigger
a circular include problem. In order to avoid this, let's move
it to kvm_mmu.h, where it will be a better fit anyway.

In the process, drop the __hyp_text annotation, which doesn't help
as the function is marked as __always_inline.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/include/asm/kvm_hyp.h | 18 ------------------
 arch/arm64/include/asm/kvm_mmu.h | 17 +++++++++++++++++
 2 files changed, 17 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index ce99c2daff04..e8044f265824 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -21,7 +21,6 @@
 #include <linux/compiler.h>
 #include <linux/kvm_host.h>
 #include <asm/alternative.h>
-#include <asm/kvm_mmu.h>
 #include <asm/sysreg.h>
 
 #define __hyp_text __section(.hyp.text) notrace
@@ -116,22 +115,5 @@ void deactivate_traps_vhe_put(void);
 u64 __guest_enter(struct kvm_vcpu *vcpu, struct kvm_cpu_context *host_ctxt);
 void __noreturn __hyp_do_panic(unsigned long, ...);
 
-/*
- * Must be called from hyp code running at EL2 with an updated VTTBR
- * and interrupts disabled.
- */
-static __always_inline void __hyp_text __load_guest_stage2(struct kvm *kvm)
-{
-	write_sysreg(kvm->arch.vtcr, vtcr_el2);
-	write_sysreg(kvm_get_vttbr(kvm), vttbr_el2);
-
-	/*
-	 * ARM erratum 1165522 requires the actual execution of the above
-	 * before we can switch to the EL1/EL0 translation regime used by
-	 * the guest.
-	 */
-	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_1165522));
-}
-
 #endif /* __ARM64_KVM_HYP_H__ */
 
diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
index ebeefcf835e8..3120ef948fa4 100644
--- a/arch/arm64/include/asm/kvm_mmu.h
+++ b/arch/arm64/include/asm/kvm_mmu.h
@@ -614,5 +614,22 @@ static __always_inline u64 kvm_get_vttbr(struct kvm *kvm)
 	return kvm_phys_to_vttbr(baddr) | vmid_field | cnp;
 }
 
+/*
+ * Must be called from hyp code running at EL2 with an updated VTTBR
+ * and interrupts disabled.
+ */
+static __always_inline void __load_guest_stage2(struct kvm *kvm)
+{
+	write_sysreg(kvm->arch.vtcr, vtcr_el2);
+	write_sysreg(kvm_get_vttbr(kvm), vttbr_el2);
+
+	/*
+	 * ARM erratum 1165522 requires the actual execution of the above
+	 * before we can switch to the EL1/EL0 translation regime used by
+	 * the guest.
+	 */
+	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_1165522));
+}
+
 #endif /* __ASSEMBLY__ */
 #endif /* __ARM64_KVM_MMU_H__ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
