Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7911A1FAD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 13:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rldvGC18f0eYvoqV4u/NkAqtHvrKcFdqR18CfFmuhyQ=; b=idmKGZSu/WguVa
	tBsyN/PPbOOgDsfgW6ZaA6tstvKouF7dN02ruU73cB1ctLR3dtnQVYxMe8J5TqCsAZPWropFAZZcS
	HPMkSmlAKObBTZbvfQQcKIfoZEzay4gX9/K69GlFI15pHlBDERmyaOqvgKtTTeUTQCiF1UV5Vgeyz
	Y0MbgEX63U6JkyIdMJPa6vKSf1bazOFdBT2Hc6rR1gaMP+AwDi68Db+xw91014wlCKwWIfpIskPaj
	I7BBVdlP8yhfrzzOOTHR5hBQhKjjl5Wd2OKMvO0i1YNEKJdK+PAzbShXx2n/w+cpPIpAci2u3YcsA
	ZK/CBLvXtLyCiiem/ikw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM8gl-0008NQ-VI; Wed, 08 Apr 2020 11:16:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM8ge-0008N0-MD
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 11:16:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA07731B;
 Wed,  8 Apr 2020 04:16:03 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E1E153F73D;
 Wed,  8 Apr 2020 04:16:02 -0700 (PDT)
Subject: Re: [PATCH] KVM: arm64: arch_timer shouldn't assume the vcpu is loaded
To: Marc Zyngier <maz@kernel.org>
References: <20200406150355.4859-1-james.morse@arm.com>
 <20200408110726.4d81bc3b@why>
From: James Morse <james.morse@arm.com>
Message-ID: <cc6bed09-33dd-027a-126f-ed22389c1624@arm.com>
Date: Wed, 8 Apr 2020 12:16:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200408110726.4d81bc3b@why>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_041604_810385_BC2DEE7B 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Andre Przywara <andre.przywara@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 08/04/2020 11:07, Marc Zyngier wrote:
> On Mon,  6 Apr 2020 16:03:55 +0100
> James Morse <james.morse@arm.com> wrote:
> 
>> kvm_arch_timer_get_input_level() needs to get the arch_timer_context for
>> a particular vcpu, and uses kvm_get_running_vcpu() to find it.
>>
>> kvm_arch_timer_get_input_level() may be called to handle a user-space
>> write to the redistributor, where the vcpu is not loaded. This causes
>> kvm_get_running_vcpu() to return NULL:
>> | Unable to handle kernel paging request at virtual address 0000000000001ec0
>> | Mem abort info:
>> |   ESR = 0x96000004
>> |   EC = 0x25: DABT (current EL), IL = 32 bits
>> |   SET = 0, FnV = 0
>> |   EA = 0, S1PTW = 0
>> | Data abort info:
>> |   ISV = 0, ISS = 0x00000004
>> |   CM = 0, WnR = 0
>> | user pgtable: 4k pages, 48-bit VAs, pgdp=000000003cbf9000
>> | [0000000000001ec0] pgd=0000000000000000
>> | Internal error: Oops: 96000004 [#1] PREEMPT SMP
>> | Modules linked in: r8169 realtek efivarfs ip_tables x_tables
>> | CPU: 1 PID: 2615 Comm: qemu-system-aar Not tainted 5.6.0-rc7 #30
>> | Hardware name: Marvell mvebu_armada-37xx/mvebu_armada-37xx, BIOS 2018.03-devel-18.12.3-gc9aa92c-armbian 02/20/2019
>> | pstate: 00000085 (nzcv daIf -PAN -UAO)
>> | pc : kvm_arch_timer_get_input_level+0x1c/0x68
>> | lr : kvm_arch_timer_get_input_level+0x1c/0x68
>>
>> | Call trace:
>> |  kvm_arch_timer_get_input_level+0x1c/0x68
>> |  vgic_get_phys_line_level+0x3c/0x90
>> |  vgic_mmio_write_senable+0xe4/0x130
>> |  vgic_uaccess+0xe0/0x100
>> |  vgic_v3_redist_uaccess+0x5c/0x80
>> |  vgic_v3_attr_regs_access+0xf0/0x200
>> |  nvgic_v3_set_attr+0x234/0x250
>> |  kvm_device_ioctl_attr+0xa4/0xf8
>> |  kvm_device_ioctl+0x7c/0xc0
>> |  ksys_ioctl+0x1fc/0xc18
>> |  __arm64_sys_ioctl+0x24/0x30
>> |  do_el0_svc+0x7c/0x148
>> |  el0_sync_handler+0x138/0x258
>> |  el0_sync+0x140/0x180
>> | Code: 910003fd f9000bf3 2a0003f3 97ff650c (b95ec001)
>> | ---[ end trace 81287612d93f1e70 ]---
>> | note: qemu-system-aar[2615] exited with preempt_count 1
>>
>> Loading the vcpu doesn't make a lot of sense for handling a device ioctl(),
>> so instead pass the vcpu through to kvm_arch_timer_get_input_level(). Its
>> not clear that an intid makes much sense without the paired vcpu.
> 
> I don't fully agree with the analysis, Remember we are looking at the
> state of the physical interrupt associated with a virtual interrupt, so
> the vcpu doesn't quite make sense here if it isn't loaded.
> 
> What does it mean to look at the HW timer when we are not in the right
> context? For all we know, it is completely random (the only guarantee
> we have is that it is disabled, actually).

> My gut feeling is that this is another instance where we should provide
> specific userspace accessors that would only deal with the virtual
> state, and leave anything that deals with the physical state of the
> interrupt to be exercised only by the guest.

> Does it make sense?

Broadly, yes. Specifically ... I'm not familiar enough with this code to work out where
such a change should go!

~20 mins of grepping later~

Remove REGISTER_DESC_WITH_LENGTH() so that uaccess helpers have to be provided, and forbid
NULL for the ur/uw values in REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED()...?

Or if that is too invasive, something like, (totally, untested):
----------------%<----------------
diff --git a/virt/kvm/arm/vgic/vgic-mmio.c b/virt/kvm/arm/vgic/vgic-mmio.c
index 97fb2a40e6ba..30ae5f29e429 100644
--- a/virt/kvm/arm/vgic/vgic-mmio.c
+++ b/virt/kvm/arm/vgic/vgic-mmio.c
@@ -113,10 +113,11 @@ void vgic_mmio_write_senable(struct kvm_vcpu *vcpu,
                struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);

                raw_spin_lock_irqsave(&irq->irq_lock, flags);
-               if (vgic_irq_is_mapped_level(irq)) {
+               if (kvm_running_vcpu() && vgic_irq_is_mapped_level(irq)) {
                        bool was_high = irq->line_level;

                        /*
+                        * Unless we are running due to a user-space access,
                         * We need to update the state of the interrupt because
                         * the guest might have changed the state of the device
                         * while the interrupt was disabled at the VGIC level.
----------------%<----------------


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
