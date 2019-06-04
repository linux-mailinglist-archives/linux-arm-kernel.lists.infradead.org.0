Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6824234A67
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tc3uZXLfra/fEmBk8SpCmJFf/fGQkczx2RqbuR3WB4o=; b=kAytaBamoARj3s
	cMUAe45s+MglsaZ1kXV/kWL9we4Yz4lSazYCchFwN05fo5rqhfjoIpC3t6n4WyjAm1/2PiSXXXffl
	GeqEbymvYpUKFP1EQOL6JBkTJXOscaW/ePngWLW2lwSfOk0p8nCAN5SVru8IowDXk3YBtQ0KT9c04
	gLyT6FQYBJv8B3tSFwmjzvbk9kJUVRjas6oEptaJeItGeP0PmQLZDVTPbbhJVETDUFWjaCKZz+XXd
	tIP4pG2ZLZsrJ/bnL1UBQpCCc8PUyXulQU3r/Hcq8obKP+mhQgdKTjzqhdSlLNIwJj2BSzuoGG+4i
	aP4nuo7TC5PW8GwqZcvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAQe-0005z3-Am; Tue, 04 Jun 2019 14:28:44 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAQW-0005yS-QQ
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:28:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 90838341;
 Tue,  4 Jun 2019 07:28:35 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 5B8DF3F690; Tue,  4 Jun 2019 07:28:34 -0700 (PDT)
Subject: Re: KVM Arm Device passthrough and linux-rt
From: Marc Zyngier <marc.zyngier@arm.com>
To: Steven Rostedt <rostedt@goodmis.org>, Julien Grall <julien.grall@arm.com>
References: <26832850-37ee-ae07-08ca-cc3e90978867@arm.com>
 <20190604091607.2e87eb36@oasis.local.home>
 <f2fbc06b-373f-ee2a-b111-ea40848dc1c5@arm.com>
Openpgp: preference=signencrypt
Autocrypt: addr=marc.zyngier@arm.com; prefer-encrypt=mutual; keydata=
 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
Organization: ARM Ltd
Message-ID: <68c8af25-3712-f259-6f52-c259bb61a66d@arm.com>
Date: Tue, 4 Jun 2019 15:28:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <f2fbc06b-373f-ee2a-b111-ea40848dc1c5@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_072836_869346_DB6B4815 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, julia@ni.com,
 linux-rt-users <linux-rt-users@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 kvmarm@lists.cs.columbia.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/06/2019 14:53, Marc Zyngier wrote:
> On 04/06/2019 14:16, Steven Rostedt wrote:
>> On Tue, 4 Jun 2019 13:58:51 +0100
>> Julien Grall <julien.grall@arm.com> wrote:
>>
>>> This is happening because vgic_v2_fold_lr_state() is expected
>>> to be called with interrupt disabled. However, some of the path
>>> (e.g eventfd) will take a spinlock.
>>>
>>> The spinlock is from the waitqueue, so using a raw_spin_lock cannot
>>> even be considered.
>>>
>>> Do you have any input on how this could be solved?
>>
>> What's the reason that vgic_v2_fold_lr_state() expects interrupts to be
>> disabled?
> 
> That's to prevent the injection of an interrupt firing on the same CPU
> while we're saving the corresponding vcpu interrupt context, among other
> things (the whole guest exit path runs with interrupt disabled in order
> to avoid this kind of thing).
> 
> One possibility would be to accumulate the set of interrupt that require
> resampling (which is bound to be small, the number of LRs at most) and
> call kvm_notify_acked_irq on that set once interrupts are re-enabled.
> 
> I'll have a look...

Julien,

Here's what I have in mind, compile-tested only. Please let me know how
it fares on your setup...

Thanks,

	M.

diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
index c36c86f1ec9a..9e587f5d90fa 100644
--- a/include/kvm/arm_vgic.h
+++ b/include/kvm/arm_vgic.h
@@ -307,6 +307,10 @@ struct vgic_cpu {
 	unsigned int used_lrs;
 	struct vgic_irq private_irqs[VGIC_NR_PRIVATE_IRQS];
 
+	/* SPIs to be resampled by SW at EOI time */
+	u16		spi_notify[VGIC_V2_MAX_LRS];
+	int		spi_notify_count;
+
 	raw_spinlock_t ap_list_lock;	/* Protects the ap_list */
 
 	/*
@@ -371,6 +375,7 @@ void kvm_vgic_put(struct kvm_vcpu *vcpu);
 bool kvm_vcpu_has_pending_irqs(struct kvm_vcpu *vcpu);
 void kvm_vgic_sync_hwstate(struct kvm_vcpu *vcpu);
 void kvm_vgic_flush_hwstate(struct kvm_vcpu *vcpu);
+void kvm_vgic_process_resample(struct kvm_vcpu *vcpu);
 void kvm_vgic_reset_mapped_irq(struct kvm_vcpu *vcpu, u32 vintid);
 
 void vgic_v3_dispatch_sgi(struct kvm_vcpu *vcpu, u64 reg, bool allow_group1);
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index 7eeebe5e9da2..a95c46b2d723 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -827,6 +827,12 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		guest_exit();
 		trace_kvm_exit(ret, kvm_vcpu_trap_get_class(vcpu), *vcpu_pc(vcpu));
 
+		/*
+		 * Now that interrupts are enabled, signal interrupts
+		 * that require SW resampling.
+		 */
+		kvm_vgic_process_resample(vcpu);
+
 		/* Exit types that need handling before we can be preempted */
 		handle_exit_early(vcpu, run, ret);
 
diff --git a/virt/kvm/arm/vgic/vgic-v2.c b/virt/kvm/arm/vgic/vgic-v2.c
index d91a8938aa7c..9953e1742d65 100644
--- a/virt/kvm/arm/vgic/vgic-v2.c
+++ b/virt/kvm/arm/vgic/vgic-v2.c
@@ -79,8 +79,7 @@ void vgic_v2_fold_lr_state(struct kvm_vcpu *vcpu)
 
 		/* Notify fds when the guest EOI'ed a level-triggered SPI */
 		if (lr_signals_eoi_mi(val) && vgic_valid_spi(vcpu->kvm, intid))
-			kvm_notify_acked_irq(vcpu->kvm, 0,
-					     intid - VGIC_NR_PRIVATE_IRQS);
+			vgic_cpu->spi_notify[vgic_cpu->spi_notify_count++] = intid;
 
 		irq = vgic_get_irq(vcpu->kvm, vcpu, intid);
 
diff --git a/virt/kvm/arm/vgic/vgic-v3.c b/virt/kvm/arm/vgic/vgic-v3.c
index 9f87e58dbd4a..54b1e4ea5cfa 100644
--- a/virt/kvm/arm/vgic/vgic-v3.c
+++ b/virt/kvm/arm/vgic/vgic-v3.c
@@ -69,8 +69,7 @@ void vgic_v3_fold_lr_state(struct kvm_vcpu *vcpu)
 
 		/* Notify fds when the guest EOI'ed a level-triggered IRQ */
 		if (lr_signals_eoi_mi(val) && vgic_valid_spi(vcpu->kvm, intid))
-			kvm_notify_acked_irq(vcpu->kvm, 0,
-					     intid - VGIC_NR_PRIVATE_IRQS);
+			vgic_cpu->spi_notify[vgic_cpu->spi_notify_count++] = intid;
 
 		irq = vgic_get_irq(vcpu->kvm, vcpu, intid);
 		if (!irq)	/* An LPI could have been unmapped. */
diff --git a/virt/kvm/arm/vgic/vgic.c b/virt/kvm/arm/vgic/vgic.c
index 191deccf60bf..baa6aa494e86 100644
--- a/virt/kvm/arm/vgic/vgic.c
+++ b/virt/kvm/arm/vgic/vgic.c
@@ -880,6 +880,8 @@ void kvm_vgic_flush_hwstate(struct kvm_vcpu *vcpu)
 {
 	WARN_ON(vgic_v4_flush_hwstate(vcpu));
 
+	vcpu->arch.vgic_cpu.spi_notify_count = 0;
+
 	/*
 	 * If there are no virtual interrupts active or pending for this
 	 * VCPU, then there is no work to do and we can bail out without
@@ -908,6 +910,16 @@ void kvm_vgic_flush_hwstate(struct kvm_vcpu *vcpu)
 		vgic_restore_state(vcpu);
 }
 
+void kvm_vgic_process_resample(struct kvm_vcpu *vcpu)
+{
+	struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
+	int i;
+
+	for (i = 0; i < vgic_cpu->spi_notify_count; i++)
+		kvm_notify_acked_irq(vcpu->kvm, 0,
+				     vgic_cpu->spi_notify[i] - VGIC_NR_PRIVATE_IRQS);
+}
+
 void kvm_vgic_load(struct kvm_vcpu *vcpu)
 {
 	if (unlikely(!vgic_initialized(vcpu->kvm)))

-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
