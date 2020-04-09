Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0801A30D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 10:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkWL4O6PfnUmjFysaP2xviEBvqez/xxXSqTuRh+l3aw=; b=mgeoV/6gj2ApY0
	NqnkeUSDh+Dx2Ub4WO1mPrDYacf5LXV6YHXX4zamums/ZDr5Nbhiic5dWWvV2q4v/dJna6LlLlRBO
	2OidFHuW0vsnFgeTlMO2YhiUurbWYc0sJmidw4Rfi7jM5AULU38zOFpUtVFOgil+n065pbKyfitj2
	bLO3v3kIx0Ld99YAd8vWTwG93O4uKyJOlnkaH65nc9vkm2uyHhMoOTffnLVGG+4ox+I7QVtOGbTg6
	XRpvqolw8vJVie8tWoezqOrVCR1k8lmb4efEURNmjyjxv6MUChj0nQW6zlw3t5wNTFAy17wfVRPVu
	B7MQU4GfZTjh0YGEmqpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMSWt-0003z7-52; Thu, 09 Apr 2020 08:27:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMSWk-0003xu-8T
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 08:27:12 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B964120784;
 Thu,  9 Apr 2020 08:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586420829;
 bh=nCDNU4IlgiFK5b54p5i4/sKzgnH90+gZuGoD5pEuGJ4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Y9aJo5AUWaQuszvfGfnXk5dN6FBi6IFFk8qqm8O7xKAPKSfsJwMiGSxGjxXr/ljM1
 qAJX5Zt68OT3cGQz8xnCgYTE6F7PUAGu5F5M3gR7g1q+EzYGbOWB140zXXpz7yknmx
 y84FuWlxdp2GXaL9aETF3n3ei+e48tBA1sLxf/ko=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jMSWh-001qkp-SG; Thu, 09 Apr 2020 09:27:08 +0100
Date: Thu, 9 Apr 2020 09:27:06 +0100
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH] KVM: arm64: arch_timer shouldn't assume the vcpu is loaded
Message-ID: <20200409092706.74e6bd1d@why>
In-Reply-To: <cc6bed09-33dd-027a-126f-ed22389c1624@arm.com>
References: <20200406150355.4859-1-james.morse@arm.com>
 <20200408110726.4d81bc3b@why>
 <cc6bed09-33dd-027a-126f-ed22389c1624@arm.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, andre.przywara@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_012710_344610_5210D09E 
X-CRM114-Status: GOOD (  33.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andre Przywara <andre.przywara@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On Wed, 8 Apr 2020 12:16:01 +0100
James Morse <james.morse@arm.com> wrote:

> Hi Marc,
> 
> On 08/04/2020 11:07, Marc Zyngier wrote:
> > On Mon,  6 Apr 2020 16:03:55 +0100
> > James Morse <james.morse@arm.com> wrote:
> >   
> >> kvm_arch_timer_get_input_level() needs to get the arch_timer_context for
> >> a particular vcpu, and uses kvm_get_running_vcpu() to find it.
> >>
> >> kvm_arch_timer_get_input_level() may be called to handle a user-space
> >> write to the redistributor, where the vcpu is not loaded. This causes
> >> kvm_get_running_vcpu() to return NULL:
> >> | Unable to handle kernel paging request at virtual address 0000000000001ec0
> >> | Mem abort info:
> >> |   ESR = 0x96000004
> >> |   EC = 0x25: DABT (current EL), IL = 32 bits
> >> |   SET = 0, FnV = 0
> >> |   EA = 0, S1PTW = 0
> >> | Data abort info:
> >> |   ISV = 0, ISS = 0x00000004
> >> |   CM = 0, WnR = 0
> >> | user pgtable: 4k pages, 48-bit VAs, pgdp=000000003cbf9000
> >> | [0000000000001ec0] pgd=0000000000000000
> >> | Internal error: Oops: 96000004 [#1] PREEMPT SMP
> >> | Modules linked in: r8169 realtek efivarfs ip_tables x_tables
> >> | CPU: 1 PID: 2615 Comm: qemu-system-aar Not tainted 5.6.0-rc7 #30
> >> | Hardware name: Marvell mvebu_armada-37xx/mvebu_armada-37xx, BIOS 2018.03-devel-18.12.3-gc9aa92c-armbian 02/20/2019
> >> | pstate: 00000085 (nzcv daIf -PAN -UAO)
> >> | pc : kvm_arch_timer_get_input_level+0x1c/0x68
> >> | lr : kvm_arch_timer_get_input_level+0x1c/0x68
> >>
> >> | Call trace:
> >> |  kvm_arch_timer_get_input_level+0x1c/0x68
> >> |  vgic_get_phys_line_level+0x3c/0x90
> >> |  vgic_mmio_write_senable+0xe4/0x130
> >> |  vgic_uaccess+0xe0/0x100
> >> |  vgic_v3_redist_uaccess+0x5c/0x80
> >> |  vgic_v3_attr_regs_access+0xf0/0x200
> >> |  nvgic_v3_set_attr+0x234/0x250
> >> |  kvm_device_ioctl_attr+0xa4/0xf8
> >> |  kvm_device_ioctl+0x7c/0xc0
> >> |  ksys_ioctl+0x1fc/0xc18
> >> |  __arm64_sys_ioctl+0x24/0x30
> >> |  do_el0_svc+0x7c/0x148
> >> |  el0_sync_handler+0x138/0x258
> >> |  el0_sync+0x140/0x180
> >> | Code: 910003fd f9000bf3 2a0003f3 97ff650c (b95ec001)
> >> | ---[ end trace 81287612d93f1e70 ]---
> >> | note: qemu-system-aar[2615] exited with preempt_count 1
> >>
> >> Loading the vcpu doesn't make a lot of sense for handling a device ioctl(),
> >> so instead pass the vcpu through to kvm_arch_timer_get_input_level(). Its
> >> not clear that an intid makes much sense without the paired vcpu.  
> > 
> > I don't fully agree with the analysis, Remember we are looking at the
> > state of the physical interrupt associated with a virtual interrupt, so
> > the vcpu doesn't quite make sense here if it isn't loaded.
> > 
> > What does it mean to look at the HW timer when we are not in the right
> > context? For all we know, it is completely random (the only guarantee
> > we have is that it is disabled, actually).  
> 
> > My gut feeling is that this is another instance where we should provide
> > specific userspace accessors that would only deal with the virtual
> > state, and leave anything that deals with the physical state of the
> > interrupt to be exercised only by the guest.  
> 
> > Does it make sense?  
> 
> Broadly, yes. Specifically ... I'm not familiar enough with this code to work out where
> such a change should go!
> 
> ~20 mins of grepping later~
> 
> Remove REGISTER_DESC_WITH_LENGTH() so that uaccess helpers have to be provided, and forbid
> NULL for the ur/uw values in REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED()...?

I'd suggest something like this (untested, of course):

diff --git a/virt/kvm/arm/vgic/vgic-mmio-v2.c b/virt/kvm/arm/vgic/vgic-mmio-v2.c
index d63881f60e1a..f51c6e939c76 100644
--- a/virt/kvm/arm/vgic/vgic-mmio-v2.c
+++ b/virt/kvm/arm/vgic/vgic-mmio-v2.c
@@ -409,10 +409,12 @@ static const struct vgic_register_region vgic_v2_dist_registers[] = {
 		NULL, vgic_mmio_uaccess_write_v2_group, 1,
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_ENABLE_SET,
-		vgic_mmio_read_enable, vgic_mmio_write_senable, NULL, NULL, 1,
+		vgic_mmio_read_enable, vgic_mmio_write_senable,
+		NULL, vgic_uaccess_write_senable, 1,
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_ENABLE_CLEAR,
-		vgic_mmio_read_enable, vgic_mmio_write_cenable, NULL, NULL, 1,
+		vgic_mmio_read_enable, vgic_mmio_write_cenable,
+		NULL, vgic_uaccess_write_cenable, 1,
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_PENDING_SET,
 		vgic_mmio_read_pending, vgic_mmio_write_spending, NULL, NULL, 1,
diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/virt/kvm/arm/vgic/vgic-mmio-v3.c
index 77c8ba1a2535..a9c45048fadb 100644
--- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
+++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
@@ -538,10 +538,12 @@ static const struct vgic_register_region vgic_v3_dist_registers[] = {
 		vgic_mmio_read_group, vgic_mmio_write_group, NULL, NULL, 1,
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_ISENABLER,
-		vgic_mmio_read_enable, vgic_mmio_write_senable, NULL, NULL, 1,
+		vgic_mmio_read_enable, vgic_mmio_write_senable,
+		NULL, vgic_uaccess_write_senable, 1,
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_ICENABLER,
-		vgic_mmio_read_enable, vgic_mmio_write_cenable, NULL, NULL, 1,
+		vgic_mmio_read_enable, vgic_mmio_write_cenable,
+	       NULL, vgic_uaccess_write_cenable, 1,
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_ISPENDR,
 		vgic_mmio_read_pending, vgic_mmio_write_spending,
@@ -609,11 +611,13 @@ static const struct vgic_register_region vgic_v3_rd_registers[] = {
 	REGISTER_DESC_WITH_LENGTH(SZ_64K + GICR_IGROUPR0,
 		vgic_mmio_read_group, vgic_mmio_write_group, 4,
 		VGIC_ACCESS_32bit),
-	REGISTER_DESC_WITH_LENGTH(SZ_64K + GICR_ISENABLER0,
-		vgic_mmio_read_enable, vgic_mmio_write_senable, 4,
+	REGISTER_DESC_WITH_LENGTH_UACCESS(SZ_64K + GICR_ISENABLER0,
+		vgic_mmio_read_enable, vgic_mmio_write_senable,
+		NULL, vgic_uaccess_write_senable, 4,
 		VGIC_ACCESS_32bit),
-	REGISTER_DESC_WITH_LENGTH(SZ_64K + GICR_ICENABLER0,
-		vgic_mmio_read_enable, vgic_mmio_write_cenable, 4,
+	REGISTER_DESC_WITH_LENGTH_UACCESS(SZ_64K + GICR_ICENABLER0,
+		vgic_mmio_read_enable, vgic_mmio_write_cenable,
+		NULL, vgic_uaccess_write_cenable, 4,
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_LENGTH_UACCESS(SZ_64K + GICR_ISPENDR0,
 		vgic_mmio_read_pending, vgic_mmio_write_spending,
diff --git a/virt/kvm/arm/vgic/vgic-mmio.c b/virt/kvm/arm/vgic/vgic-mmio.c
index 4012cd68ac93..2ca11b05b17b 100644
--- a/virt/kvm/arm/vgic/vgic-mmio.c
+++ b/virt/kvm/arm/vgic/vgic-mmio.c
@@ -184,6 +184,48 @@ void vgic_mmio_write_cenable(struct kvm_vcpu *vcpu,
 	}
 }
 
+int vgic_uaccess_write_senable(struct kvm_vcpu *vcpu,
+			       gpa_t addr, unsigned int len,
+			       unsigned long val)
+{
+	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
+	int i;
+	unsigned long flags;
+
+	for_each_set_bit(i, &val, len * 8) {
+		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
+
+		raw_spin_lock_irqsave(&irq->irq_lock, flags);
+		irq->enabled = true;
+		vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
+
+		vgic_put_irq(vcpu->kvm, irq);
+	}
+
+	return 0;
+}
+
+int vgic_uaccess_write_cenable(struct kvm_vcpu *vcpu,
+			       gpa_t addr, unsigned int len,
+			       unsigned long val)
+{
+	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
+	int i;
+	unsigned long flags;
+
+	for_each_set_bit(i, &val, len * 8) {
+		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
+
+		raw_spin_lock_irqsave(&irq->irq_lock, flags);
+		irq->enabled = false;
+		raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
+
+		vgic_put_irq(vcpu->kvm, irq);
+	}
+
+	return 0;
+}
+
 unsigned long vgic_mmio_read_pending(struct kvm_vcpu *vcpu,
 				     gpa_t addr, unsigned int len)
 {
diff --git a/virt/kvm/arm/vgic/vgic-mmio.h b/virt/kvm/arm/vgic/vgic-mmio.h
index 30713a44e3fa..327d0a6938e4 100644
--- a/virt/kvm/arm/vgic/vgic-mmio.h
+++ b/virt/kvm/arm/vgic/vgic-mmio.h
@@ -138,6 +138,14 @@ void vgic_mmio_write_cenable(struct kvm_vcpu *vcpu,
 			     gpa_t addr, unsigned int len,
 			     unsigned long val);
 
+int vgic_uaccess_write_senable(struct kvm_vcpu *vcpu,
+			       gpa_t addr, unsigned int len,
+			       unsigned long val);
+
+int vgic_uaccess_write_cenable(struct kvm_vcpu *vcpu,
+			       gpa_t addr, unsigned int len,
+			       unsigned long val);
+
 unsigned long vgic_mmio_read_pending(struct kvm_vcpu *vcpu,
 				     gpa_t addr, unsigned int len);
 


> 
> Or if that is too invasive, something like, (totally, untested):
> ----------------%<----------------
> diff --git a/virt/kvm/arm/vgic/vgic-mmio.c b/virt/kvm/arm/vgic/vgic-mmio.c
> index 97fb2a40e6ba..30ae5f29e429 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio.c
> @@ -113,10 +113,11 @@ void vgic_mmio_write_senable(struct kvm_vcpu *vcpu,
>                 struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
> 
>                 raw_spin_lock_irqsave(&irq->irq_lock, flags);
> -               if (vgic_irq_is_mapped_level(irq)) {
> +               if (kvm_running_vcpu() && vgic_irq_is_mapped_level(irq)) {
>                         bool was_high = irq->line_level;
> 
>                         /*
> +                        * Unless we are running due to a user-space access,
>                          * We need to update the state of the interrupt because
>                          * the guest might have changed the state of the device
>                          * while the interrupt was disabled at the VGIC level.
> ----------------%<----------------

Huh, nice try! ;-) Unfortunately, I think there is more than the enable
register that suffers from a similar problem (see how the pending
register write is also accessing the HW state, even if accessed from
userspace).

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
