Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4631715979B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:03:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOJBwL9fBFsJX2IDUtvb9br/Vix+KFXfD0KRqJOGYAI=; b=ScF34vi8jgj/X+
	xV5CdXebI58n1sk8LxTvjCMmKLZzGnCMIry/GfGuDdLOh9cswMTiTKT51BM648TZBTYHD6bePh0Tp
	dEjoLuvzBMVVueJsqxfq4O6JAWCUcsixZCzhqZY4vpkuVtGw6gSn9XUjkBL6BUHKDYDKiLLFbxipj
	QdyelfjsXaMK9GM93qr3yIMad+J+mnM7mL79Zilprmj2DkZKTGOn/c2IY/JoA//4uu2DaSZqnmnxn
	wXGR38oaOP7PDMvVA16PJpnz34PW/X91QH9GuIRrYkzppz3HY7uQJKI6hrkBVy7eU3OVdYRKojvna
	CSgdTlsTCjWTpjv0f0Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Zs3-0005IQ-Hh; Tue, 11 Feb 2020 18:02:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZhX-00025M-Ab
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:52:06 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4ADF8206CC;
 Tue, 11 Feb 2020 17:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443518;
 bh=jki1RLsu1jQkcwmmm8X8Fk8sx+uqtTR2fwjr2EWmrS4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=M2ZDggBjR6GUKB7o/0PC2vyAs7STB8KsJxW++dKG3GHI6eYtHY2HGJ+rEiN81l+Bd
 SJwAuKpcO0BGQjwtsWNWk5MRn7tKE3QdXqeXUYK9ql8zq9ukVONKRPO+sPFYN5ye41
 0yhF9ohWP7n4jsQKSP8tIwhB3Sv5g8QawVRxWIXA=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zfz-004O7k-DE; Tue, 11 Feb 2020 17:50:23 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 51/94] KVM: arm64: nv: vgic-v3: Take cpu_if pointer
 directly instead of vcpu
Date: Tue, 11 Feb 2020 17:48:55 +0000
Message-Id: <20200211174938.27809-52-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_095159_793476_5471258D 
X-CRM114-Status: GOOD (  18.13  )
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

From: Christoffer Dall <christoffer.dall@arm.com>

If we move the used_lrs field to the version-specific cpu interface
structure, the following functions only operate on the struct
vgic_v3_cpu_if and not the full vcpu:

  __vgic_v3_save_state
  __vgic_v3_restore_state
  __vgic_v3_activate_traps
  __vgic_v3_deactivate_traps
  __vgic_v3_save_aprs
  __vgic_v3_restore_aprs

This is going to be very useful for nested virt, so move the used_lrs
field and change the prototypes and implementations of these functions to
take the cpu_if parameter directly.

No functional change.

Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm/include/asm/kvm_hyp.h   | 12 ++++++------
 arch/arm/kvm/hyp/switch.c        |  8 ++++----
 arch/arm64/include/asm/kvm_hyp.h | 12 ++++++------
 arch/arm64/kvm/hyp/switch.c      |  8 ++++----
 include/kvm/arm_vgic.h           |  5 ++++-
 virt/kvm/arm/hyp/vgic-v3-sr.c    | 33 ++++++++++----------------------
 virt/kvm/arm/vgic/vgic-v2.c      | 10 +++++-----
 virt/kvm/arm/vgic/vgic-v3.c      | 14 ++++++++------
 virt/kvm/arm/vgic/vgic.c         | 25 ++++++++++++++++--------
 9 files changed, 64 insertions(+), 63 deletions(-)

diff --git a/arch/arm/include/asm/kvm_hyp.h b/arch/arm/include/asm/kvm_hyp.h
index 3c1b55ecc578..5d4017c4f649 100644
--- a/arch/arm/include/asm/kvm_hyp.h
+++ b/arch/arm/include/asm/kvm_hyp.h
@@ -103,12 +103,12 @@ void __vgic_v2_restore_state(struct kvm_vcpu *vcpu);
 void __sysreg_save_state(struct kvm_cpu_context *ctxt);
 void __sysreg_restore_state(struct kvm_cpu_context *ctxt);
 
-void __vgic_v3_save_state(struct kvm_vcpu *vcpu);
-void __vgic_v3_restore_state(struct kvm_vcpu *vcpu);
-void __vgic_v3_activate_traps(struct kvm_vcpu *vcpu);
-void __vgic_v3_deactivate_traps(struct kvm_vcpu *vcpu);
-void __vgic_v3_save_aprs(struct kvm_vcpu *vcpu);
-void __vgic_v3_restore_aprs(struct kvm_vcpu *vcpu);
+void __vgic_v3_save_state(struct vgic_v3_cpu_if *cpu_if);
+void __vgic_v3_restore_state(struct vgic_v3_cpu_if *cpu_if);
+void __vgic_v3_activate_traps(struct vgic_v3_cpu_if *cpu_if);
+void __vgic_v3_deactivate_traps(struct vgic_v3_cpu_if *cpu_if);
+void __vgic_v3_save_aprs(struct vgic_v3_cpu_if *cpu_if);
+void __vgic_v3_restore_aprs(struct vgic_v3_cpu_if *cpu_if);
 
 asmlinkage void __vfp_save_state(struct vfp_hard_struct *vfp);
 asmlinkage void __vfp_restore_state(struct vfp_hard_struct *vfp);
diff --git a/arch/arm/kvm/hyp/switch.c b/arch/arm/kvm/hyp/switch.c
index 0b53e79f3bfb..272facc7f3ed 100644
--- a/arch/arm/kvm/hyp/switch.c
+++ b/arch/arm/kvm/hyp/switch.c
@@ -79,16 +79,16 @@ static void __hyp_text __deactivate_vm(struct kvm_vcpu *vcpu)
 static void __hyp_text __vgic_save_state(struct kvm_vcpu *vcpu)
 {
 	if (static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif)) {
-		__vgic_v3_save_state(vcpu);
-		__vgic_v3_deactivate_traps(vcpu);
+		__vgic_v3_save_state(&vcpu->arch.vgic_cpu.vgic_v3);
+		__vgic_v3_deactivate_traps(&vcpu->arch.vgic_cpu.vgic_v3);
 	}
 }
 
 static void __hyp_text __vgic_restore_state(struct kvm_vcpu *vcpu)
 {
 	if (static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif)) {
-		__vgic_v3_activate_traps(vcpu);
-		__vgic_v3_restore_state(vcpu);
+		__vgic_v3_activate_traps(&vcpu->arch.vgic_cpu.vgic_v3);
+		__vgic_v3_restore_state(&vcpu->arch.vgic_cpu.vgic_v3);
 	}
 }
 
diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index 4899a5b74fc3..4c63a2254bf1 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -48,12 +48,12 @@
 
 int __vgic_v2_perform_cpuif_access(struct kvm_vcpu *vcpu);
 
-void __vgic_v3_save_state(struct kvm_vcpu *vcpu);
-void __vgic_v3_restore_state(struct kvm_vcpu *vcpu);
-void __vgic_v3_activate_traps(struct kvm_vcpu *vcpu);
-void __vgic_v3_deactivate_traps(struct kvm_vcpu *vcpu);
-void __vgic_v3_save_aprs(struct kvm_vcpu *vcpu);
-void __vgic_v3_restore_aprs(struct kvm_vcpu *vcpu);
+void __vgic_v3_save_state(struct vgic_v3_cpu_if *cpu_if);
+void __vgic_v3_restore_state(struct vgic_v3_cpu_if *cpu_if);
+void __vgic_v3_activate_traps(struct vgic_v3_cpu_if *cpu_if);
+void __vgic_v3_deactivate_traps(struct vgic_v3_cpu_if *cpu_if);
+void __vgic_v3_save_aprs(struct vgic_v3_cpu_if *cpu_if);
+void __vgic_v3_restore_aprs(struct vgic_v3_cpu_if *cpu_if);
 int __vgic_v3_perform_cpuif_access(struct kvm_vcpu *vcpu);
 
 void __timer_enable_traps(struct kvm_vcpu *vcpu);
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 43e3a60915b1..97c5c1a791b8 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -306,8 +306,8 @@ static void __hyp_text __deactivate_vm(struct kvm_vcpu *vcpu)
 static void __hyp_text __hyp_vgic_save_state(struct kvm_vcpu *vcpu)
 {
 	if (static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif)) {
-		__vgic_v3_save_state(vcpu);
-		__vgic_v3_deactivate_traps(vcpu);
+		__vgic_v3_save_state(&vcpu->arch.vgic_cpu.vgic_v3);
+		__vgic_v3_deactivate_traps(&vcpu->arch.vgic_cpu.vgic_v3);
 	}
 }
 
@@ -315,8 +315,8 @@ static void __hyp_text __hyp_vgic_save_state(struct kvm_vcpu *vcpu)
 static void __hyp_text __hyp_vgic_restore_state(struct kvm_vcpu *vcpu)
 {
 	if (static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif)) {
-		__vgic_v3_activate_traps(vcpu);
-		__vgic_v3_restore_state(vcpu);
+		__vgic_v3_activate_traps(&vcpu->arch.vgic_cpu.vgic_v3);
+		__vgic_v3_restore_state(&vcpu->arch.vgic_cpu.vgic_v3);
 	}
 }
 
diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
index 1b477c662608..f89b81327bb0 100644
--- a/include/kvm/arm_vgic.h
+++ b/include/kvm/arm_vgic.h
@@ -270,6 +270,8 @@ struct vgic_v2_cpu_if {
 	u32		vgic_vmcr;
 	u32		vgic_apr;
 	u32		vgic_lr[VGIC_V2_MAX_LRS];
+
+	unsigned int used_lrs;
 };
 
 struct vgic_v3_cpu_if {
@@ -287,6 +289,8 @@ struct vgic_v3_cpu_if {
 	 * linking the Linux IRQ subsystem and the ITS together.
 	 */
 	struct its_vpe	its_vpe;
+
+	unsigned int used_lrs;
 };
 
 struct vgic_cpu {
@@ -296,7 +300,6 @@ struct vgic_cpu {
 		struct vgic_v3_cpu_if	vgic_v3;
 	};
 
-	unsigned int used_lrs;
 	struct vgic_irq private_irqs[VGIC_NR_PRIVATE_IRQS];
 
 	raw_spinlock_t ap_list_lock;	/* Protects the ap_list */
diff --git a/virt/kvm/arm/hyp/vgic-v3-sr.c b/virt/kvm/arm/hyp/vgic-v3-sr.c
index ccf1fde9836c..2ea9a0b73fc4 100644
--- a/virt/kvm/arm/hyp/vgic-v3-sr.c
+++ b/virt/kvm/arm/hyp/vgic-v3-sr.c
@@ -194,10 +194,9 @@ static u32 __hyp_text __vgic_v3_read_ap1rn(int n)
 	return val;
 }
 
-void __hyp_text __vgic_v3_save_state(struct kvm_vcpu *vcpu)
+void __hyp_text __vgic_v3_save_state(struct vgic_v3_cpu_if *cpu_if)
 {
-	struct vgic_v3_cpu_if *cpu_if = &vcpu->arch.vgic_cpu.vgic_v3;
-	u64 used_lrs = vcpu->arch.vgic_cpu.used_lrs;
+	u64 used_lrs = cpu_if->used_lrs;
 
 	/*
 	 * Make sure stores to the GIC via the memory mapped interface
@@ -230,10 +229,9 @@ void __hyp_text __vgic_v3_save_state(struct kvm_vcpu *vcpu)
 	}
 }
 
-void __hyp_text __vgic_v3_restore_state(struct kvm_vcpu *vcpu)
+void __hyp_text __vgic_v3_restore_state(struct vgic_v3_cpu_if *cpu_if)
 {
-	struct vgic_v3_cpu_if *cpu_if = &vcpu->arch.vgic_cpu.vgic_v3;
-	u64 used_lrs = vcpu->arch.vgic_cpu.used_lrs;
+	u64 used_lrs = cpu_if->used_lrs;
 	int i;
 
 	if (used_lrs || cpu_if->its_vpe.its_vm) {
@@ -257,10 +255,8 @@ void __hyp_text __vgic_v3_restore_state(struct kvm_vcpu *vcpu)
 	}
 }
 
-void __hyp_text __vgic_v3_activate_traps(struct kvm_vcpu *vcpu)
+void __hyp_text __vgic_v3_activate_traps(struct vgic_v3_cpu_if *cpu_if)
 {
-	struct vgic_v3_cpu_if *cpu_if = &vcpu->arch.vgic_cpu.vgic_v3;
-
 	/*
 	 * VFIQEn is RES1 if ICC_SRE_EL1.SRE is 1. This causes a
 	 * Group0 interrupt (as generated in GICv2 mode) to be
@@ -306,9 +302,8 @@ void __hyp_text __vgic_v3_activate_traps(struct kvm_vcpu *vcpu)
 		write_gicreg(cpu_if->vgic_hcr, ICH_HCR_EL2);
 }
 
-void __hyp_text __vgic_v3_deactivate_traps(struct kvm_vcpu *vcpu)
+void __hyp_text __vgic_v3_deactivate_traps(struct vgic_v3_cpu_if *cpu_if)
 {
-	struct vgic_v3_cpu_if *cpu_if = &vcpu->arch.vgic_cpu.vgic_v3;
 	u64 val;
 
 	if (!cpu_if->vgic_sre) {
@@ -333,15 +328,11 @@ void __hyp_text __vgic_v3_deactivate_traps(struct kvm_vcpu *vcpu)
 		write_gicreg(0, ICH_HCR_EL2);
 }
 
-void __hyp_text __vgic_v3_save_aprs(struct kvm_vcpu *vcpu)
+void __hyp_text __vgic_v3_save_aprs(struct vgic_v3_cpu_if *cpu_if)
 {
-	struct vgic_v3_cpu_if *cpu_if;
 	u64 val;
 	u32 nr_pre_bits;
 
-	vcpu = kern_hyp_va(vcpu);
-	cpu_if = &vcpu->arch.vgic_cpu.vgic_v3;
-
 	val = read_gicreg(ICH_VTR_EL2);
 	nr_pre_bits = vtr_to_nr_pre_bits(val);
 
@@ -370,15 +361,11 @@ void __hyp_text __vgic_v3_save_aprs(struct kvm_vcpu *vcpu)
 	}
 }
 
-void __hyp_text __vgic_v3_restore_aprs(struct kvm_vcpu *vcpu)
+void __hyp_text __vgic_v3_restore_aprs(struct vgic_v3_cpu_if *cpu_if)
 {
-	struct vgic_v3_cpu_if *cpu_if;
 	u64 val;
 	u32 nr_pre_bits;
 
-	vcpu = kern_hyp_va(vcpu);
-	cpu_if = &vcpu->arch.vgic_cpu.vgic_v3;
-
 	val = read_gicreg(ICH_VTR_EL2);
 	nr_pre_bits = vtr_to_nr_pre_bits(val);
 
@@ -453,7 +440,7 @@ static int __hyp_text __vgic_v3_highest_priority_lr(struct kvm_vcpu *vcpu,
 						    u32 vmcr,
 						    u64 *lr_val)
 {
-	unsigned int used_lrs = vcpu->arch.vgic_cpu.used_lrs;
+	unsigned int used_lrs = vcpu->arch.vgic_cpu.vgic_v3.used_lrs;
 	u8 priority = GICv3_IDLE_PRIORITY;
 	int i, lr = -1;
 
@@ -492,7 +479,7 @@ static int __hyp_text __vgic_v3_highest_priority_lr(struct kvm_vcpu *vcpu,
 static int __hyp_text __vgic_v3_find_active_lr(struct kvm_vcpu *vcpu,
 					       int intid, u64 *lr_val)
 {
-	unsigned int used_lrs = vcpu->arch.vgic_cpu.used_lrs;
+	unsigned int used_lrs = vcpu->arch.vgic_cpu.vgic_v3.used_lrs;
 	int i;
 
 	for (i = 0; i < used_lrs; i++) {
diff --git a/virt/kvm/arm/vgic/vgic-v2.c b/virt/kvm/arm/vgic/vgic-v2.c
index 621cc168fe3f..ebf53a4e1296 100644
--- a/virt/kvm/arm/vgic/vgic-v2.c
+++ b/virt/kvm/arm/vgic/vgic-v2.c
@@ -56,7 +56,7 @@ void vgic_v2_fold_lr_state(struct kvm_vcpu *vcpu)
 
 	cpuif->vgic_hcr &= ~GICH_HCR_UIE;
 
-	for (lr = 0; lr < vgic_cpu->used_lrs; lr++) {
+	for (lr = 0; lr < vgic_cpu->vgic_v2.used_lrs; lr++) {
 		u32 val = cpuif->vgic_lr[lr];
 		u32 cpuid, intid = val & GICH_LR_VIRTUALID;
 		struct vgic_irq *irq;
@@ -120,7 +120,7 @@ void vgic_v2_fold_lr_state(struct kvm_vcpu *vcpu)
 		vgic_put_irq(vcpu->kvm, irq);
 	}
 
-	vgic_cpu->used_lrs = 0;
+	cpuif->used_lrs = 0;
 }
 
 /*
@@ -427,7 +427,7 @@ int vgic_v2_probe(const struct gic_kvm_info *info)
 static void save_lrs(struct kvm_vcpu *vcpu, void __iomem *base)
 {
 	struct vgic_v2_cpu_if *cpu_if = &vcpu->arch.vgic_cpu.vgic_v2;
-	u64 used_lrs = vcpu->arch.vgic_cpu.used_lrs;
+	u64 used_lrs = cpu_if->used_lrs;
 	u64 elrsr;
 	int i;
 
@@ -448,7 +448,7 @@ static void save_lrs(struct kvm_vcpu *vcpu, void __iomem *base)
 void vgic_v2_save_state(struct kvm_vcpu *vcpu)
 {
 	void __iomem *base = kvm_vgic_global_state.vctrl_base;
-	u64 used_lrs = vcpu->arch.vgic_cpu.used_lrs;
+	u64 used_lrs = vcpu->arch.vgic_cpu.vgic_v2.used_lrs;
 
 	if (!base)
 		return;
@@ -463,7 +463,7 @@ void vgic_v2_restore_state(struct kvm_vcpu *vcpu)
 {
 	struct vgic_v2_cpu_if *cpu_if = &vcpu->arch.vgic_cpu.vgic_v2;
 	void __iomem *base = kvm_vgic_global_state.vctrl_base;
-	u64 used_lrs = vcpu->arch.vgic_cpu.used_lrs;
+	u64 used_lrs = cpu_if->used_lrs;
 	int i;
 
 	if (!base)
diff --git a/virt/kvm/arm/vgic/vgic-v3.c b/virt/kvm/arm/vgic/vgic-v3.c
index f45635a6f0ec..a8732afb37e5 100644
--- a/virt/kvm/arm/vgic/vgic-v3.c
+++ b/virt/kvm/arm/vgic/vgic-v3.c
@@ -39,7 +39,7 @@ void vgic_v3_fold_lr_state(struct kvm_vcpu *vcpu)
 
 	cpuif->vgic_hcr &= ~ICH_HCR_UIE;
 
-	for (lr = 0; lr < vgic_cpu->used_lrs; lr++) {
+	for (lr = 0; lr < cpuif->used_lrs; lr++) {
 		u64 val = cpuif->vgic_lr[lr];
 		u32 intid, cpuid;
 		struct vgic_irq *irq;
@@ -111,7 +111,7 @@ void vgic_v3_fold_lr_state(struct kvm_vcpu *vcpu)
 		vgic_put_irq(vcpu->kvm, irq);
 	}
 
-	vgic_cpu->used_lrs = 0;
+	cpuif->used_lrs = 0;
 }
 
 /* Requires the irq to be locked already */
@@ -660,10 +660,10 @@ void vgic_v3_load(struct kvm_vcpu *vcpu)
 	if (likely(cpu_if->vgic_sre))
 		kvm_call_hyp(__vgic_v3_write_vmcr, cpu_if->vgic_vmcr);
 
-	kvm_call_hyp(__vgic_v3_restore_aprs, vcpu);
+	kvm_call_hyp(__vgic_v3_restore_aprs, kern_hyp_va(cpu_if));
 
 	if (has_vhe())
-		__vgic_v3_activate_traps(vcpu);
+		__vgic_v3_activate_traps(cpu_if);
 
 	WARN_ON(vgic_v4_load(vcpu));
 }
@@ -678,12 +678,14 @@ void vgic_v3_vmcr_sync(struct kvm_vcpu *vcpu)
 
 void vgic_v3_put(struct kvm_vcpu *vcpu)
 {
+	struct vgic_v3_cpu_if *cpu_if = &vcpu->arch.vgic_cpu.vgic_v3;
+
 	WARN_ON(vgic_v4_put(vcpu, false));
 
 	vgic_v3_vmcr_sync(vcpu);
 
-	kvm_call_hyp(__vgic_v3_save_aprs, vcpu);
+	kvm_call_hyp(__vgic_v3_save_aprs, kern_hyp_va(cpu_if));
 
 	if (has_vhe())
-		__vgic_v3_deactivate_traps(vcpu);
+		__vgic_v3_deactivate_traps(cpu_if);
 }
diff --git a/virt/kvm/arm/vgic/vgic.c b/virt/kvm/arm/vgic/vgic.c
index 4cbaf0020277..a2428b42f7e2 100644
--- a/virt/kvm/arm/vgic/vgic.c
+++ b/virt/kvm/arm/vgic/vgic.c
@@ -801,6 +801,7 @@ static void vgic_flush_lr_state(struct kvm_vcpu *vcpu)
 	int count;
 	bool multi_sgi;
 	u8 prio = 0xff;
+	int i = 0;
 
 	lockdep_assert_held(&vgic_cpu->ap_list_lock);
 
@@ -842,11 +843,14 @@ static void vgic_flush_lr_state(struct kvm_vcpu *vcpu)
 		}
 	}
 
-	vcpu->arch.vgic_cpu.used_lrs = count;
-
 	/* Nuke remaining LRs */
-	for ( ; count < kvm_vgic_global_state.nr_lr; count++)
-		vgic_clear_lr(vcpu, count);
+	for (i = count ; i < kvm_vgic_global_state.nr_lr; i++)
+		vgic_clear_lr(vcpu, i);
+
+	if (!static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif))
+		vcpu->arch.vgic_cpu.vgic_v2.used_lrs = count;
+	else
+		vcpu->arch.vgic_cpu.vgic_v3.used_lrs = count;
 }
 
 static inline bool can_access_vgic_from_kernel(void)
@@ -864,13 +868,13 @@ static inline void vgic_save_state(struct kvm_vcpu *vcpu)
 	if (!static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif))
 		vgic_v2_save_state(vcpu);
 	else
-		__vgic_v3_save_state(vcpu);
+		__vgic_v3_save_state(&vcpu->arch.vgic_cpu.vgic_v3);
 }
 
 /* Sync back the hardware VGIC state into our emulation after a guest's run. */
 void kvm_vgic_sync_hwstate(struct kvm_vcpu *vcpu)
 {
-	struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
+	int used_lrs;
 
 	/* An empty ap_list_head implies used_lrs == 0 */
 	if (list_empty(&vcpu->arch.vgic_cpu.ap_list_head))
@@ -879,7 +883,12 @@ void kvm_vgic_sync_hwstate(struct kvm_vcpu *vcpu)
 	if (can_access_vgic_from_kernel())
 		vgic_save_state(vcpu);
 
-	if (vgic_cpu->used_lrs)
+	if (!static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif))
+		used_lrs = vcpu->arch.vgic_cpu.vgic_v2.used_lrs;
+	else
+		used_lrs = vcpu->arch.vgic_cpu.vgic_v3.used_lrs;
+
+	if (used_lrs)
 		vgic_fold_lr_state(vcpu);
 	vgic_prune_ap_list(vcpu);
 }
@@ -889,7 +898,7 @@ static inline void vgic_restore_state(struct kvm_vcpu *vcpu)
 	if (!static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif))
 		vgic_v2_restore_state(vcpu);
 	else
-		__vgic_v3_restore_state(vcpu);
+		__vgic_v3_restore_state(&vcpu->arch.vgic_cpu.vgic_v3);
 }
 
 /* Flush our emulation state into the GIC hardware before entering the guest. */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
