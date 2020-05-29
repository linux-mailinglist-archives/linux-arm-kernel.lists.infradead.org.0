Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 787AF1E832D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cyOssDnvQeti+2Yy6PI8Tm2bSBFBbppfeEbeb1bdCUw=; b=U+PkwYQjbkrThH
	Pjv8JftMyZzBCTqWB+l+Tp/Awa5EoohE6C5TwpGyxemMehm1FURhasYnqmxmEQB1alg19qxq/mj4M
	zTaQ0Zd1q/k29C6fsmg4OIkwxdk9RXpxaZuPzg9Hb6F+msjyu0nEX+pSDqDz81or1pumIB+d8y6cp
	AxWYrga1fd1pnvETELF3mfOxwDZlwAme4PYXr1Vp16z4QW7nRJtzZXr225RBulQt0qFq+S+m4Oxcy
	P0+7D3rpWHg0UONJJVxhZeMom9Or+A+d1W1EljNI7c3WkBZfj/CT3HNGyd4sG4sAAXuOCXrP9prlb
	5A87D6pRUs9f7hxJTfxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehYR-0002Ke-Pt; Fri, 29 May 2020 16:08:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehTw-0004tv-Bp
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 16:03:48 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A6485208B8;
 Fri, 29 May 2020 16:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590768218;
 bh=amVH5RFLdFQFJjtlToCdeoqrSAOdahRz6usFBpk+xUA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=v8C0mKTOuLqeCONu/g9NG6VxutxPfFamSnkdOomEf0gWaSTImcVYC9IsDudcXSU+1
 F649tHdCO3eQCEG2p67m/3hvRZYlPdU3e7BbqH1KxkxqBTeSIXfGwyN7+Yg7l5Mhd1
 k50Rhen65OLSzvGuQ90jtqQOCPKaUWt3NMtHjnX8=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jehSI-00GJKc-Pj; Fri, 29 May 2020 17:01:58 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 18/24] KVM: arm64: vgic-v3: Take cpu_if pointer directly
 instead of vcpu
Date: Fri, 29 May 2020 17:01:15 +0100
Message-Id: <20200529160121.899083-19-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529160121.899083-1-maz@kernel.org>
References: <20200529160121.899083-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 ascull@google.com, ardb@kernel.org, christoffer.dall@arm.com,
 dbrazdil@google.com, tabba@google.com, james.morse@arm.com, giangyi@amazon.com,
 zhukeqian1@huawei.com, mark.rutland@arm.com, suzuki.poulose@arm.com,
 will@kernel.org, yuzenghui@huawei.com, julien.thierry.kdev@gmail.com,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_090340_879219_4F5F30E3 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Keqian Zhu <zhukeqian1@huawei.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Jiang Yi <giangyi@amazon.com>,
 James Morse <james.morse@arm.com>, Andrew Scull <ascull@google.com>,
 Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 David Brazdil <dbrazdil@google.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 Fuad Tabba <tabba@google.com>, linux-arm-kernel@lists.infradead.org
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

Reviewed-by: James Morse <james.morse@arm.com>
Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_hyp.h | 12 ++++++------
 arch/arm64/kvm/hyp/switch.c      |  8 ++++----
 arch/arm64/kvm/hyp/vgic-v3-sr.c  | 33 ++++++++++----------------------
 arch/arm64/kvm/vgic/vgic-v2.c    | 10 +++++-----
 arch/arm64/kvm/vgic/vgic-v3.c    | 14 ++++++++------
 arch/arm64/kvm/vgic/vgic.c       | 25 ++++++++++++++++--------
 include/kvm/arm_vgic.h           |  5 ++++-
 7 files changed, 54 insertions(+), 53 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index fe57f60f06a8..4f67b0cdffe8 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -56,12 +56,12 @@
 
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
index 8a1e81a400e0..c07a45643cd4 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -270,8 +270,8 @@ static void __hyp_text __deactivate_vm(struct kvm_vcpu *vcpu)
 static void __hyp_text __hyp_vgic_save_state(struct kvm_vcpu *vcpu)
 {
 	if (static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif)) {
-		__vgic_v3_save_state(vcpu);
-		__vgic_v3_deactivate_traps(vcpu);
+		__vgic_v3_save_state(&vcpu->arch.vgic_cpu.vgic_v3);
+		__vgic_v3_deactivate_traps(&vcpu->arch.vgic_cpu.vgic_v3);
 	}
 }
 
@@ -279,8 +279,8 @@ static void __hyp_text __hyp_vgic_save_state(struct kvm_vcpu *vcpu)
 static void __hyp_text __hyp_vgic_restore_state(struct kvm_vcpu *vcpu)
 {
 	if (static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif)) {
-		__vgic_v3_activate_traps(vcpu);
-		__vgic_v3_restore_state(vcpu);
+		__vgic_v3_activate_traps(&vcpu->arch.vgic_cpu.vgic_v3);
+		__vgic_v3_restore_state(&vcpu->arch.vgic_cpu.vgic_v3);
 	}
 }
 
diff --git a/arch/arm64/kvm/hyp/vgic-v3-sr.c b/arch/arm64/kvm/hyp/vgic-v3-sr.c
index 6b85773e15c4..10ed539835c1 100644
--- a/arch/arm64/kvm/hyp/vgic-v3-sr.c
+++ b/arch/arm64/kvm/hyp/vgic-v3-sr.c
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
 
@@ -451,7 +438,7 @@ static int __hyp_text __vgic_v3_highest_priority_lr(struct kvm_vcpu *vcpu,
 						    u32 vmcr,
 						    u64 *lr_val)
 {
-	unsigned int used_lrs = vcpu->arch.vgic_cpu.used_lrs;
+	unsigned int used_lrs = vcpu->arch.vgic_cpu.vgic_v3.used_lrs;
 	u8 priority = GICv3_IDLE_PRIORITY;
 	int i, lr = -1;
 
@@ -490,7 +477,7 @@ static int __hyp_text __vgic_v3_highest_priority_lr(struct kvm_vcpu *vcpu,
 static int __hyp_text __vgic_v3_find_active_lr(struct kvm_vcpu *vcpu,
 					       int intid, u64 *lr_val)
 {
-	unsigned int used_lrs = vcpu->arch.vgic_cpu.used_lrs;
+	unsigned int used_lrs = vcpu->arch.vgic_cpu.vgic_v3.used_lrs;
 	int i;
 
 	for (i = 0; i < used_lrs; i++) {
diff --git a/arch/arm64/kvm/vgic/vgic-v2.c b/arch/arm64/kvm/vgic/vgic-v2.c
index 621cc168fe3f..ebf53a4e1296 100644
--- a/arch/arm64/kvm/vgic/vgic-v2.c
+++ b/arch/arm64/kvm/vgic/vgic-v2.c
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
diff --git a/arch/arm64/kvm/vgic/vgic-v3.c b/arch/arm64/kvm/vgic/vgic-v3.c
index 3ccd6d3cb4d3..76e2d85789ed 100644
--- a/arch/arm64/kvm/vgic/vgic-v3.c
+++ b/arch/arm64/kvm/vgic/vgic-v3.c
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
@@ -662,10 +662,10 @@ void vgic_v3_load(struct kvm_vcpu *vcpu)
 	if (likely(cpu_if->vgic_sre))
 		kvm_call_hyp(__vgic_v3_write_vmcr, cpu_if->vgic_vmcr);
 
-	kvm_call_hyp(__vgic_v3_restore_aprs, vcpu);
+	kvm_call_hyp(__vgic_v3_restore_aprs, kern_hyp_va(cpu_if));
 
 	if (has_vhe())
-		__vgic_v3_activate_traps(vcpu);
+		__vgic_v3_activate_traps(cpu_if);
 
 	WARN_ON(vgic_v4_load(vcpu));
 }
@@ -680,12 +680,14 @@ void vgic_v3_vmcr_sync(struct kvm_vcpu *vcpu)
 
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
diff --git a/arch/arm64/kvm/vgic/vgic.c b/arch/arm64/kvm/vgic/vgic.c
index 99b02ca730a8..c3643b7f101b 100644
--- a/arch/arm64/kvm/vgic/vgic.c
+++ b/arch/arm64/kvm/vgic/vgic.c
@@ -786,6 +786,7 @@ static void vgic_flush_lr_state(struct kvm_vcpu *vcpu)
 	int count;
 	bool multi_sgi;
 	u8 prio = 0xff;
+	int i = 0;
 
 	lockdep_assert_held(&vgic_cpu->ap_list_lock);
 
@@ -827,11 +828,14 @@ static void vgic_flush_lr_state(struct kvm_vcpu *vcpu)
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
@@ -849,13 +853,13 @@ static inline void vgic_save_state(struct kvm_vcpu *vcpu)
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
@@ -864,7 +868,12 @@ void kvm_vgic_sync_hwstate(struct kvm_vcpu *vcpu)
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
@@ -874,7 +883,7 @@ static inline void vgic_restore_state(struct kvm_vcpu *vcpu)
 	if (!static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif))
 		vgic_v2_restore_state(vcpu);
 	else
-		__vgic_v3_restore_state(vcpu);
+		__vgic_v3_restore_state(&vcpu->arch.vgic_cpu.vgic_v3);
 }
 
 /* Flush our emulation state into the GIC hardware before entering the guest. */
diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
index 69f4164d6477..a8d8fdcd3723 100644
--- a/include/kvm/arm_vgic.h
+++ b/include/kvm/arm_vgic.h
@@ -274,6 +274,8 @@ struct vgic_v2_cpu_if {
 	u32		vgic_vmcr;
 	u32		vgic_apr;
 	u32		vgic_lr[VGIC_V2_MAX_LRS];
+
+	unsigned int used_lrs;
 };
 
 struct vgic_v3_cpu_if {
@@ -291,6 +293,8 @@ struct vgic_v3_cpu_if {
 	 * linking the Linux IRQ subsystem and the ITS together.
 	 */
 	struct its_vpe	its_vpe;
+
+	unsigned int used_lrs;
 };
 
 struct vgic_cpu {
@@ -300,7 +304,6 @@ struct vgic_cpu {
 		struct vgic_v3_cpu_if	vgic_v3;
 	};
 
-	unsigned int used_lrs;
 	struct vgic_irq private_irqs[VGIC_NR_PRIVATE_IRQS];
 
 	raw_spinlock_t ap_list_lock;	/* Protects the ap_list */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
