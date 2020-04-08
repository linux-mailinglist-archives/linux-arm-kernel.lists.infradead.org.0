Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E331A217A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 14:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GeZ/bkHp9Bcr1TworRX7f2EIWAtVAmdHjF00dhNNli4=; b=ejoiQNe6Wsrk7s
	NSmSghUI73sgrohb19dT55OuQfpFjQzkey2JKXBwbFOf6nDB8bEi8fwXQft42i/KBXLDUqLuuOMji
	0f/5oGY3csgBSKorFSYeeUkK/N2IK/qt+wWIz5WYJ25o5regbjSm4db7pS8C9riFV/obk0tznYasu
	2GHTRC0LJkz37DDja1YRPUN6iVkhuzuKGUgpaAp5FT20BiChZMMMG8U4XOZzeAWFrQB0ykDBu9SLV
	CPu9OaZNMcVPU+yIqgLDqUV+S1h80MtnKsubaFfEXerl7cgl8qoBg/A9Dv5U06jJzmeyoo2fLkNt/
	Bh8EF8xUq2Ls8W28YowQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9bM-0001TM-2l; Wed, 08 Apr 2020 12:14:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9bF-0001SY-MM
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 12:14:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 81D0B31B;
 Wed,  8 Apr 2020 05:14:27 -0700 (PDT)
Received: from [192.168.3.22] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 217EF3F73D;
 Wed,  8 Apr 2020 05:14:25 -0700 (PDT)
Subject: Re: [PATCH] KVM: arm64: arch_timer shouldn't assume the vcpu is loaded
To: Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>
References: <20200406150355.4859-1-james.morse@arm.com>
 <20200408110726.4d81bc3b@why>
From: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Autocrypt: addr=andre.przywara@arm.com; prefer-encrypt=mutual; keydata=
 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
 i4aIXCH3Wv6K
Organization: ARM Ltd.
Message-ID: <281d91cb-6818-4393-55ce-6207c04d744b@arm.com>
Date: Wed, 8 Apr 2020 13:13:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200408110726.4d81bc3b@why>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_051433_818009_FF931BA1 
X-CRM114-Status: GOOD (  22.18  )
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
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/04/2020 11:07, Marc Zyngier wrote:

Hi Marc,

> Hi James,
> 
> Thanks for looking into this.
> 
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

But wasn't it that this function is meant to specifically deal with this
*without* going to the hardware (which is costly, hence this
optimisation)? Because for the timer we *can* work out the logical IRQ
line state by examining our saved state? And this is what we do in
kvm_timer_should_fire(), when timer_ctx->loaded is false.

Which for me this sounds like the right thing to do in this situation:
the VCPU (and the timer) is not loaded, so we check our saved state and
construct the logical line level. We just need a valid VCPU struct to
achieve this, and hope for the virtual timer to be already initialised.

Do I miss something here?

Also to me it sound like the interface for this function is slightly
lacking, because just an intid is not enough to uniquely identify an
IRQ. It was just fine so far because of this special use case.

Cheers,
Andre

> 
> What does it mean to look at the HW timer when we are not in the right
> context? For all we know, it is completely random (the only guarantee
> we have is that it is disabled, actually).
> 
> My gut feeling is that this is another instance where we should provide
> specific userspace accessors that would only deal with the virtual
> state, and leave anything that deals with the physical state of the
> interrupt to be exercised only by the guest.
> 
> Does it make sense?
> 
> Thanks,
> 
> 	M.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
