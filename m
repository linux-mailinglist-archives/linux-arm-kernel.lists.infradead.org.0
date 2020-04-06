Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAE819F873
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 17:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6zRuSlrZNRd2uCqUo2/zjktP7l6VHwIYVK8+EzjPAGE=; b=gTaE6G/LWBCDbC
	HMLlVhL51cBhKihWFg73V9//qF+YBqnyGKNqmHnnbUIMe9SwnUFWYuM1MBdw/3HNuwo51U38k7iVj
	IhcGFlnJF3A/cWVBisQPuwtLAvzTqqPNFGJ3Uog35NlhO13N2y1e6xqXUfs14em3I5ew+rs3NoLt2
	qszry81PlFKv2xqfK0pfUg3JZpN6ARYBf8uzgEwp6ledfpPH2nADVe2xix1fusmek4t962hC+gQxb
	jxgm+zejL7nI7JYtySSfoudczRy60q6faSkCfq4F/sSjbtXuuWSB7LXw8c5wl275P6/vYZRGTG+iF
	HuHotptIz86OgzBHH2BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLTIN-000586-Ll; Mon, 06 Apr 2020 15:04:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLTIE-00057S-S4
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 15:04:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 242E11FB;
 Mon,  6 Apr 2020 08:04:03 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3758D3F73D;
 Mon,  6 Apr 2020 08:04:02 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH] KVM: arm64: arch_timer shouldn't assume the vcpu is loaded
Date: Mon,  6 Apr 2020 16:03:55 +0100
Message-Id: <20200406150355.4859-1-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_080407_105721_B3E50026 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Marc Zyngier <maz@kernel.org>, Andre Przywara <andre.przywara@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

kvm_arch_timer_get_input_level() needs to get the arch_timer_context for
a particular vcpu, and uses kvm_get_running_vcpu() to find it.

kvm_arch_timer_get_input_level() may be called to handle a user-space
write to the redistributor, where the vcpu is not loaded. This causes
kvm_get_running_vcpu() to return NULL:
| Unable to handle kernel paging request at virtual address 0000000000001ec0
| Mem abort info:
|   ESR = 0x96000004
|   EC = 0x25: DABT (current EL), IL = 32 bits
|   SET = 0, FnV = 0
|   EA = 0, S1PTW = 0
| Data abort info:
|   ISV = 0, ISS = 0x00000004
|   CM = 0, WnR = 0
| user pgtable: 4k pages, 48-bit VAs, pgdp=000000003cbf9000
| [0000000000001ec0] pgd=0000000000000000
| Internal error: Oops: 96000004 [#1] PREEMPT SMP
| Modules linked in: r8169 realtek efivarfs ip_tables x_tables
| CPU: 1 PID: 2615 Comm: qemu-system-aar Not tainted 5.6.0-rc7 #30
| Hardware name: Marvell mvebu_armada-37xx/mvebu_armada-37xx, BIOS 2018.03-devel-18.12.3-gc9aa92c-armbian 02/20/2019
| pstate: 00000085 (nzcv daIf -PAN -UAO)
| pc : kvm_arch_timer_get_input_level+0x1c/0x68
| lr : kvm_arch_timer_get_input_level+0x1c/0x68

| Call trace:
|  kvm_arch_timer_get_input_level+0x1c/0x68
|  vgic_get_phys_line_level+0x3c/0x90
|  vgic_mmio_write_senable+0xe4/0x130
|  vgic_uaccess+0xe0/0x100
|  vgic_v3_redist_uaccess+0x5c/0x80
|  vgic_v3_attr_regs_access+0xf0/0x200
|  nvgic_v3_set_attr+0x234/0x250
|  kvm_device_ioctl_attr+0xa4/0xf8
|  kvm_device_ioctl+0x7c/0xc0
|  ksys_ioctl+0x1fc/0xc18
|  __arm64_sys_ioctl+0x24/0x30
|  do_el0_svc+0x7c/0x148
|  el0_sync_handler+0x138/0x258
|  el0_sync+0x140/0x180
| Code: 910003fd f9000bf3 2a0003f3 97ff650c (b95ec001)
| ---[ end trace 81287612d93f1e70 ]---
| note: qemu-system-aar[2615] exited with preempt_count 1

Loading the vcpu doesn't make a lot of sense for handling a device ioctl(),
so instead pass the vcpu through to kvm_arch_timer_get_input_level(). Its
not clear that an intid makes much sense without the paired vcpu.

Suggested-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: James Morse <james.morse@arm.com>
---
 include/kvm/arm_arch_timer.h  | 2 +-
 include/kvm/arm_vgic.h        | 8 +++-----
 virt/kvm/arm/arch_timer.c     | 3 +--
 virt/kvm/arm/vgic/vgic-mmio.c | 2 +-
 virt/kvm/arm/vgic/vgic-v2.c   | 2 +-
 virt/kvm/arm/vgic/vgic-v3.c   | 2 +-
 virt/kvm/arm/vgic/vgic.c      | 8 ++++----
 virt/kvm/arm/vgic/vgic.h      | 2 +-
 8 files changed, 13 insertions(+), 16 deletions(-)

diff --git a/include/kvm/arm_arch_timer.h b/include/kvm/arm_arch_timer.h
index d120e6c..42a016a 100644
--- a/include/kvm/arm_arch_timer.h
+++ b/include/kvm/arm_arch_timer.h
@@ -92,7 +92,7 @@ void kvm_timer_vcpu_put(struct kvm_vcpu *vcpu);
 
 void kvm_timer_init_vhe(void);
 
-bool kvm_arch_timer_get_input_level(int vintid);
+bool kvm_arch_timer_get_input_level(int vintid, struct kvm_vcpu *vcpu);
 
 #define vcpu_timer(v)	(&(v)->arch.timer_cpu)
 #define vcpu_get_timer(v,t)	(&vcpu_timer(v)->timers[(t)])
diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
index 9d53f54..41e91b3 100644
--- a/include/kvm/arm_vgic.h
+++ b/include/kvm/arm_vgic.h
@@ -130,11 +130,9 @@ struct vgic_irq {
 	 * state of the input level of mapped level-triggered IRQ faster than
 	 * peaking into the physical GIC.
 	 *
-	 * Always called in non-preemptible section and the functions can use
-	 * kvm_arm_get_running_vcpu() to get the vcpu pointer for private
-	 * IRQs.
+	 * Always called in non-preemptible section.
 	 */
-	bool (*get_input_level)(int vintid);
+	bool (*get_input_level)(int vintid, struct kvm_vcpu *vcpu);
 
 	void *owner;			/* Opaque pointer to reserve an interrupt
 					   for in-kernel devices. */
@@ -344,7 +342,7 @@ void kvm_vgic_init_cpu_hardware(void);
 int kvm_vgic_inject_irq(struct kvm *kvm, int cpuid, unsigned int intid,
 			bool level, void *owner);
 int kvm_vgic_map_phys_irq(struct kvm_vcpu *vcpu, unsigned int host_irq,
-			  u32 vintid, bool (*get_input_level)(int vindid));
+			  u32 vintid, bool (*get_input_level)(int vindid, struct kvm_vcpu *vcpu));
 int kvm_vgic_unmap_phys_irq(struct kvm_vcpu *vcpu, unsigned int vintid);
 bool kvm_vgic_map_is_active(struct kvm_vcpu *vcpu, unsigned int vintid);
 
diff --git a/virt/kvm/arm/arch_timer.c b/virt/kvm/arm/arch_timer.c
index 0d9438e..ca0e87b 100644
--- a/virt/kvm/arm/arch_timer.c
+++ b/virt/kvm/arm/arch_timer.c
@@ -1021,9 +1021,8 @@ static bool timer_irqs_are_valid(struct kvm_vcpu *vcpu)
 	return true;
 }
 
-bool kvm_arch_timer_get_input_level(int vintid)
+bool kvm_arch_timer_get_input_level(int vintid, struct kvm_vcpu *vcpu)
 {
-	struct kvm_vcpu *vcpu = kvm_get_running_vcpu();
 	struct arch_timer_context *timer;
 
 	if (vintid == vcpu_vtimer(vcpu)->irq.irq)
diff --git a/virt/kvm/arm/vgic/vgic-mmio.c b/virt/kvm/arm/vgic/vgic-mmio.c
index 97fb2a4..37ee2f8 100644
--- a/virt/kvm/arm/vgic/vgic-mmio.c
+++ b/virt/kvm/arm/vgic/vgic-mmio.c
@@ -121,7 +121,7 @@ void vgic_mmio_write_senable(struct kvm_vcpu *vcpu,
 			 * the guest might have changed the state of the device
 			 * while the interrupt was disabled at the VGIC level.
 			 */
-			irq->line_level = vgic_get_phys_line_level(irq);
+			irq->line_level = vgic_get_phys_line_level(irq, vcpu);
 			/*
 			 * Deactivate the physical interrupt so the GIC will let
 			 * us know when it is asserted again.
diff --git a/virt/kvm/arm/vgic/vgic-v2.c b/virt/kvm/arm/vgic/vgic-v2.c
index 621cc16..e126f25 100644
--- a/virt/kvm/arm/vgic/vgic-v2.c
+++ b/virt/kvm/arm/vgic/vgic-v2.c
@@ -110,7 +110,7 @@ void vgic_v2_fold_lr_state(struct kvm_vcpu *vcpu)
 		 * told when the interrupt becomes asserted again.
 		 */
 		if (vgic_irq_is_mapped_level(irq) && (val & GICH_LR_PENDING_BIT)) {
-			irq->line_level = vgic_get_phys_line_level(irq);
+			irq->line_level = vgic_get_phys_line_level(irq, vcpu);
 
 			if (!irq->line_level)
 				vgic_irq_set_phys_active(irq, false);
diff --git a/virt/kvm/arm/vgic/vgic-v3.c b/virt/kvm/arm/vgic/vgic-v3.c
index f45635a..ff861fa 100644
--- a/virt/kvm/arm/vgic/vgic-v3.c
+++ b/virt/kvm/arm/vgic/vgic-v3.c
@@ -101,7 +101,7 @@ void vgic_v3_fold_lr_state(struct kvm_vcpu *vcpu)
 		 * told when the interrupt becomes asserted again.
 		 */
 		if (vgic_irq_is_mapped_level(irq) && (val & ICH_LR_PENDING_BIT)) {
-			irq->line_level = vgic_get_phys_line_level(irq);
+			irq->line_level = vgic_get_phys_line_level(irq, vcpu);
 
 			if (!irq->line_level)
 				vgic_irq_set_phys_active(irq, false);
diff --git a/virt/kvm/arm/vgic/vgic.c b/virt/kvm/arm/vgic/vgic.c
index 99b02ca..d113b5b 100644
--- a/virt/kvm/arm/vgic/vgic.c
+++ b/virt/kvm/arm/vgic/vgic.c
@@ -176,14 +176,14 @@ void vgic_irq_set_phys_pending(struct vgic_irq *irq, bool pending)
 				      pending));
 }
 
-bool vgic_get_phys_line_level(struct vgic_irq *irq)
+bool vgic_get_phys_line_level(struct vgic_irq *irq, struct kvm_vcpu *vcpu)
 {
 	bool line_level;
 
 	BUG_ON(!irq->hw);
 
 	if (irq->get_input_level)
-		return irq->get_input_level(irq->intid);
+		return irq->get_input_level(irq->intid, vcpu);
 
 	WARN_ON(irq_get_irqchip_state(irq->host_irq,
 				      IRQCHIP_STATE_PENDING,
@@ -479,7 +479,7 @@ int kvm_vgic_inject_irq(struct kvm *kvm, int cpuid, unsigned int intid,
 /* @irq->irq_lock must be held */
 static int kvm_vgic_map_irq(struct kvm_vcpu *vcpu, struct vgic_irq *irq,
 			    unsigned int host_irq,
-			    bool (*get_input_level)(int vindid))
+			    bool (*get_input_level)(int vindid, struct kvm_vcpu *vcpu))
 {
 	struct irq_desc *desc;
 	struct irq_data *data;
@@ -512,7 +512,7 @@ static inline void kvm_vgic_unmap_irq(struct vgic_irq *irq)
 }
 
 int kvm_vgic_map_phys_irq(struct kvm_vcpu *vcpu, unsigned int host_irq,
-			  u32 vintid, bool (*get_input_level)(int vindid))
+			  u32 vintid, bool (*get_input_level)(int vindid, struct kvm_vcpu *vcpu))
 {
 	struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, vintid);
 	unsigned long flags;
diff --git a/virt/kvm/arm/vgic/vgic.h b/virt/kvm/arm/vgic/vgic.h
index c7fefd6..622865e 100644
--- a/virt/kvm/arm/vgic/vgic.h
+++ b/virt/kvm/arm/vgic/vgic.h
@@ -163,7 +163,7 @@ struct vgic_irq *vgic_get_irq(struct kvm *kvm, struct kvm_vcpu *vcpu,
 			      u32 intid);
 void __vgic_put_lpi_locked(struct kvm *kvm, struct vgic_irq *irq);
 void vgic_put_irq(struct kvm *kvm, struct vgic_irq *irq);
-bool vgic_get_phys_line_level(struct vgic_irq *irq);
+bool vgic_get_phys_line_level(struct vgic_irq *irq, struct kvm_vcpu *vcpu);
 void vgic_irq_set_phys_pending(struct vgic_irq *irq, bool pending);
 void vgic_irq_set_phys_active(struct vgic_irq *irq, bool active);
 bool vgic_queue_irq_unlock(struct kvm *kvm, struct vgic_irq *irq,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
