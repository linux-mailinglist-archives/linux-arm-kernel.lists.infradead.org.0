Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5434D1597FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:18:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aL4IUBo6f8ffFDApxvn7PfTknNAfnvooUJTO1IUigYg=; b=NTSlHkwIrEI2xF
	zljowcPag8Qn5xTBy5e1THwnR0E8l8qSKT9xSv+tiUrgY5S/HevmBP/hE2+oYdtINnKRsXOgpqVOI
	7hugoHFS4AztUuZP+VjfqA3ITCDVxV9mtW+8kvJ4KiUuldRWFb0fUdRaG7ED80o7KUY9AFTsFNU17
	uYdm0ANWudhkiijdmA+OcLORgDU2FR0QrsNuNycbbvc2PJrGKedQjbdZgrA6WHZzWC3UsgL1w11h4
	gQZT61hqZ9mFpxPnFTCcTKkLb8dIY85oihi1pbGN+JDglg86JrYv53o1yjmGI1VNYUTPbNRwKEGI2
	4DkWEeaKmn5h3LR9OOow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a6p-00059x-Hg; Tue, 11 Feb 2020 18:18:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zj2-0003OS-Uz
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:53:34 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71B5D208C3;
 Tue, 11 Feb 2020 17:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443612;
 bh=aDjnahK7imY4Wiu3rGFAEkgpWazKaqx4y/1oenhKSNQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LmlCJPpcDwkR6+ZtT/FewyZ66I93MIGbdS5BuzQjlX23EZ7WYd041fS/gY4r12PLw
 dU9dLDxxpxYd30kJ0yml6iqhbcXvl2YAuVYQOLa4Uuok6OKrXXnu3jNZmnVKM0wko6
 5RPoP4afTstyEEp2l3ewBjqR69k3nVXsDtB4MOvI=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zg9-004O7k-F0; Tue, 11 Feb 2020 17:50:33 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 68/94] arm64: KVM: Add a level hint to
 __kvm_tlb_flush_vmid_ipa
Date: Tue, 11 Feb 2020 17:49:12 +0000
Message-Id: <20200211174938.27809-69-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200211174938.27809-1-maz@kernel.org>
References: <20200211174938.27809-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_095333_063847_444E348B 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce a level hint to __kvm_tlb_flush_vmid_ipa. No functional
change.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm/include/asm/kvm_asm.h   | 3 ++-
 arch/arm/kvm/hyp/tlb.c           | 7 ++++---
 arch/arm64/include/asm/kvm_asm.h | 3 ++-
 arch/arm64/kvm/hyp/tlb.c         | 5 +++--
 virt/kvm/arm/mmu.c               | 2 +-
 5 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/arch/arm/include/asm/kvm_asm.h b/arch/arm/include/asm/kvm_asm.h
index 4f85323f1290..ee7c0aec4c87 100644
--- a/arch/arm/include/asm/kvm_asm.h
+++ b/arch/arm/include/asm/kvm_asm.h
@@ -55,7 +55,8 @@ extern char __kvm_hyp_init[];
 extern char __kvm_hyp_init_end[];
 
 extern void __kvm_flush_vm_context(void);
-extern void __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa);
+extern void __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa,
+				     int level);
 extern void __kvm_tlb_flush_vmid(struct kvm_s2_mmu *mmu);
 extern void __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu);
 
diff --git a/arch/arm/kvm/hyp/tlb.c b/arch/arm/kvm/hyp/tlb.c
index 8833e0b0ea97..84b4ea1955b2 100644
--- a/arch/arm/kvm/hyp/tlb.c
+++ b/arch/arm/kvm/hyp/tlb.c
@@ -21,8 +21,8 @@
  * have to use an IPI based mechanism. Until then, we stick to the simple
  * hardware assisted version.
  *
- * As v7 does not support flushing per IPA, just nuke the whole TLB
- * instead, ignoring the ipa value.
+ * As v7 does not support flushing per IPA (let alone any level hint),
+ * just nuke the whole TLB instead, ignoring the ipa value.
  */
 void __hyp_text __kvm_tlb_flush_vmid(struct kvm_s2_mmu *mmu)
 {
@@ -39,7 +39,8 @@ void __hyp_text __kvm_tlb_flush_vmid(struct kvm_s2_mmu *mmu)
 	write_sysreg(0, VTTBR);
 }
 
-void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa)
+void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu,
+					 phys_addr_t ipa, int level)
 {
 	__kvm_tlb_flush_vmid(mmu);
 }
diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index c43160d2940d..2c001aa1bdd6 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -59,7 +59,8 @@ extern char __kvm_hyp_init_end[];
 extern char __kvm_hyp_vector[];
 
 extern void __kvm_flush_vm_context(void);
-extern void __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa);
+extern void __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa,
+				     int level);
 extern void __kvm_tlb_flush_vmid(struct kvm_s2_mmu *mmu);
 extern void __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu);
 extern void __kvm_tlb_vae2is(struct kvm_s2_mmu *mmu, u64 va, u64 sys_encoding);
diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index aa08300774fa..71e4e86e0981 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -132,7 +132,8 @@ static void __hyp_text __tlb_switch_to_host(struct kvm_s2_mmu *mmu,
 		__tlb_switch_to_host_nvhe(cxt);
 }
 
-void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa)
+void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu,
+					 phys_addr_t ipa, int level)
 {
 	struct tlb_inv_context cxt;
 
@@ -148,7 +149,7 @@ void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa
 	 * whole of Stage-1. Weep...
 	 */
 	ipa >>= 12;
-	__tlbi(ipas2e1is, ipa);
+	__tlbi_level(ipas2e1is, ipa, level);
 
 	/*
 	 * We have to ensure completion of the invalidation at Stage-2,
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index eaa86cad2ac8..67752c2a615f 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -76,7 +76,7 @@ void kvm_flush_remote_tlbs(struct kvm *kvm)
 
 static void kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa)
 {
-	kvm_call_hyp(__kvm_tlb_flush_vmid_ipa, mmu, ipa);
+	kvm_call_hyp(__kvm_tlb_flush_vmid_ipa, mmu, ipa, 0);
 }
 
 /*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
