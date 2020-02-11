Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 741DF1597BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:08:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QgNeUDXGpM25gLoqlHrULvSaxWnuvyuEyjNezr+IJeA=; b=givb98ikGantNQ
	fHteyBnHQHIHrOKQIixFT+wVtBoy6vJ+gaR0j8lT9f0lSTjS05WOtD+YG0PgLAHGXZw/ginMZqZaK
	gXb6+/+nyU6OEbqbXpuIfKCUJAnOzDsIVLN+Kt1Yk6SBVtYUk/2qut245NwcPai4usqhF36oyp25R
	8qwBr9vs9dWml5aBqobc+/kTdxlQN/DJ9Mh98DLxqPJI6UvOme8cLUy4OSvpdKW2ckl7/k85teFy1
	W8YC9unDhagI3Mjpcu6ppgGkLCEio5UDAb9+XFwhkUrMoR/ImpNpCwhzUBBegLTbm0nuy0GMNuEbB
	x+i7UFSLFIkLKg9SSToA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ZxN-0003Gz-Sl; Tue, 11 Feb 2020 18:08:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zi7-0002b0-W6
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:52:39 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 76D2920578;
 Tue, 11 Feb 2020 17:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443554;
 bh=n91T9PiB+KAQWxH9dGtjS6W4D+t/xuG08bn74uAGMJ4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zP+SM/odg1YVn7h9rLnBXYsUwkbhjNE+WtTz9zGNP8UpmZLa5B/3Kp85c7lQE3DHH
 BcJl6MjIgCQStSezTHDrvB85YMLDXTlN3QwFOznRHIgHAbpLZHe3lXt3tBOt/ApU8Y
 Ra316iFZHnKPE8+NAAK4a8DFjYcRbYaBsilYva58=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zg0-004O7k-Lc; Tue, 11 Feb 2020 17:50:24 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 53/94] KVM: arm64: nv: vgic: Emulate the HW bit in software
Date: Tue, 11 Feb 2020 17:48:57 +0000
Message-Id: <20200211174938.27809-54-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_095236_346358_608A9AF9 
X-CRM114-Status: GOOD (  16.48  )
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

Should the guest hypervisor use the HW bit in the LRs, we need to
emulate the deactivation from the L2 guest into the L1 distributor
emulation, which is handled by L0.

It's all good fun.

Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_hyp.h   |  2 ++
 include/kvm/arm_vgic.h             |  1 +
 virt/kvm/arm/hyp/vgic-v3-sr.c      |  2 +-
 virt/kvm/arm/vgic/vgic-v3-nested.c | 32 ++++++++++++++++++++++++++++++
 virt/kvm/arm/vgic/vgic.c           |  6 ++++--
 5 files changed, 40 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index 4c63a2254bf1..de9c184d68a5 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -48,6 +48,8 @@
 
 int __vgic_v2_perform_cpuif_access(struct kvm_vcpu *vcpu);
 
+u64 __hyp_text __gic_v3_get_lr(unsigned int lr);
+
 void __vgic_v3_save_state(struct vgic_v3_cpu_if *cpu_if);
 void __vgic_v3_restore_state(struct vgic_v3_cpu_if *cpu_if);
 void __vgic_v3_activate_traps(struct vgic_v3_cpu_if *cpu_if);
diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
index 61e8d5cb852b..c6e3634979b4 100644
--- a/include/kvm/arm_vgic.h
+++ b/include/kvm/arm_vgic.h
@@ -367,6 +367,7 @@ void kvm_vgic_load(struct kvm_vcpu *vcpu);
 void kvm_vgic_put(struct kvm_vcpu *vcpu);
 void kvm_vgic_vmcr_sync(struct kvm_vcpu *vcpu);
 
+void vgic_v3_sync_nested(struct kvm_vcpu *vcpu);
 void vgic_v3_load_nested(struct kvm_vcpu *vcpu);
 void vgic_v3_put_nested(struct kvm_vcpu *vcpu);
 void vgic_v3_handle_nested_maint_irq(struct kvm_vcpu *vcpu);
diff --git a/virt/kvm/arm/hyp/vgic-v3-sr.c b/virt/kvm/arm/hyp/vgic-v3-sr.c
index 2ea9a0b73fc4..8562f628a7c8 100644
--- a/virt/kvm/arm/hyp/vgic-v3-sr.c
+++ b/virt/kvm/arm/hyp/vgic-v3-sr.c
@@ -16,7 +16,7 @@
 #define vtr_to_nr_pre_bits(v)		((((u32)(v) >> 26) & 7) + 1)
 #define vtr_to_nr_apr_regs(v)		(1 << (vtr_to_nr_pre_bits(v) - 5))
 
-static u64 __hyp_text __gic_v3_get_lr(unsigned int lr)
+u64 __hyp_text __gic_v3_get_lr(unsigned int lr)
 {
 	switch (lr & 0xf) {
 	case 0:
diff --git a/virt/kvm/arm/vgic/vgic-v3-nested.c b/virt/kvm/arm/vgic/vgic-v3-nested.c
index bfe0ccde514f..3ee3438b5e22 100644
--- a/virt/kvm/arm/vgic/vgic-v3-nested.c
+++ b/virt/kvm/arm/vgic/vgic-v3-nested.c
@@ -138,6 +138,38 @@ static void vgic_v3_fixup_shadow_lr_state(struct kvm_vcpu *vcpu)
 	}
 }
 
+void vgic_v3_sync_nested(struct kvm_vcpu *vcpu)
+{
+	struct vgic_v3_cpu_if *cpu_if = vcpu_nested_if(vcpu);
+	struct vgic_v3_cpu_if *s_cpu_if = vcpu_shadow_if(vcpu);
+	struct vgic_irq *irq;
+	int i;
+
+	for (i = 0; i < s_cpu_if->used_lrs; i++) {
+		u64 lr = cpu_if->vgic_lr[i];
+		int l1_irq;
+
+		if (!(lr & ICH_LR_HW) || !(lr & ICH_LR_STATE))
+			continue;
+
+		/*
+		 * If we had a HW lr programmed by the guest hypervisor, we
+		 * need to emulate the HW effect between the guest hypervisor
+		 * and the nested guest.
+		 */
+		l1_irq = (lr & ICH_LR_PHYS_ID_MASK) >> ICH_LR_PHYS_ID_SHIFT;
+		irq = vgic_get_irq(vcpu->kvm, vcpu, l1_irq);
+		if (!irq)
+			continue; /* oh well, the guest hyp is broken */
+
+		lr = __gic_v3_get_lr(i);
+		if (!(lr & ICH_LR_STATE))
+			irq->active = false;
+
+		vgic_put_irq(vcpu->kvm, irq);
+	}
+}
+
 void vgic_v3_load_nested(struct kvm_vcpu *vcpu)
 {
 	struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
diff --git a/virt/kvm/arm/vgic/vgic.c b/virt/kvm/arm/vgic/vgic.c
index 7be3b05dcd8d..dc2bf047556e 100644
--- a/virt/kvm/arm/vgic/vgic.c
+++ b/virt/kvm/arm/vgic/vgic.c
@@ -876,9 +876,11 @@ void kvm_vgic_sync_hwstate(struct kvm_vcpu *vcpu)
 {
 	int used_lrs;
 
-	/* If nesting, this is a load/put affair, not flush/sync. */
-	if (vgic_state_is_nested(vcpu))
+	/* If nesting, emulate the HW effect from L0 to L1 */
+	if (vgic_state_is_nested(vcpu)) {
+		vgic_v3_sync_nested(vcpu);
 		return;
+	}
 
 	/* An empty ap_list_head implies used_lrs == 0 */
 	if (list_empty(&vcpu->arch.vgic_cpu.ap_list_head))
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
