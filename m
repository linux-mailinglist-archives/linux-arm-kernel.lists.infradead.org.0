Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BCE1A1E8C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 12:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMiAA6VoNgTNRkHIkZrvoVqXaOveEgqLZa6ZwBdgPkg=; b=Oksw9SnSHHvEDx
	E7j2PxJVzI/6zKCqawJFv5AB2AYSl1DDowMqMxYzaC2gJqgz7VBK4JYa/NKUVowUxdBikatf+N8Nm
	xpY7+BEFhI53RUQq4ETqNDaX16pUG5z1EDx+DNdqWAY01d4z4RMDX4grUGnswKg/muxllK137a1+z
	IG3W/F9Sf/1cX4FlDo1RJE1vohCtt7/4BwCXOzaMv16gq5Jt5QWoZd1IVGJi9Jwfv9/zyKBg6KJ24
	p5N1h+lhHi0Yr5DXbJyrf73xti8nXEW6WaTX9VG5CcgH+2Y8E6/MSuEVODZIEQH/XxOxhNRrDEAXI
	nfROk00D/+vLVggQkmHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM7cR-0007xj-3B; Wed, 08 Apr 2020 10:07:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM7cJ-0007xL-9J
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 10:07:32 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA7DF20747;
 Wed,  8 Apr 2020 10:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586340450;
 bh=o95FC0wItSEUj4ltL7xhaHqV/b3LwS/7FFNIVb55PqU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZdUr9CJT22PsyZGxq1jI9+Bcn2cP5QjpegA/anb6qQOmn2TywTlMhD7rlx9hOxpOd
 VAcGj+pSYzH+7/tBdde2/cn3a03DTEg5fSfF7b0BcRyzb57AQDVCF+9Uzt8ZRbdPMH
 ooi75Lfb2JjxDwN1yTum52AZyZYcoAqdrKBs0cMg=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jM7cF-001cDz-UQ; Wed, 08 Apr 2020 11:07:28 +0100
Date: Wed, 8 Apr 2020 11:07:26 +0100
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH] KVM: arm64: arch_timer shouldn't assume the vcpu is loaded
Message-ID: <20200408110726.4d81bc3b@why>
In-Reply-To: <20200406150355.4859-1-james.morse@arm.com>
References: <20200406150355.4859-1-james.morse@arm.com>
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
X-CRM114-CacheID: sfid-20200408_030731_365883_7C9C7A41 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Thanks for looking into this.

On Mon,  6 Apr 2020 16:03:55 +0100
James Morse <james.morse@arm.com> wrote:

> kvm_arch_timer_get_input_level() needs to get the arch_timer_context for
> a particular vcpu, and uses kvm_get_running_vcpu() to find it.
> 
> kvm_arch_timer_get_input_level() may be called to handle a user-space
> write to the redistributor, where the vcpu is not loaded. This causes
> kvm_get_running_vcpu() to return NULL:
> | Unable to handle kernel paging request at virtual address 0000000000001ec0
> | Mem abort info:
> |   ESR = 0x96000004
> |   EC = 0x25: DABT (current EL), IL = 32 bits
> |   SET = 0, FnV = 0
> |   EA = 0, S1PTW = 0
> | Data abort info:
> |   ISV = 0, ISS = 0x00000004
> |   CM = 0, WnR = 0
> | user pgtable: 4k pages, 48-bit VAs, pgdp=000000003cbf9000
> | [0000000000001ec0] pgd=0000000000000000
> | Internal error: Oops: 96000004 [#1] PREEMPT SMP
> | Modules linked in: r8169 realtek efivarfs ip_tables x_tables
> | CPU: 1 PID: 2615 Comm: qemu-system-aar Not tainted 5.6.0-rc7 #30
> | Hardware name: Marvell mvebu_armada-37xx/mvebu_armada-37xx, BIOS 2018.03-devel-18.12.3-gc9aa92c-armbian 02/20/2019
> | pstate: 00000085 (nzcv daIf -PAN -UAO)
> | pc : kvm_arch_timer_get_input_level+0x1c/0x68
> | lr : kvm_arch_timer_get_input_level+0x1c/0x68
> 
> | Call trace:
> |  kvm_arch_timer_get_input_level+0x1c/0x68
> |  vgic_get_phys_line_level+0x3c/0x90
> |  vgic_mmio_write_senable+0xe4/0x130
> |  vgic_uaccess+0xe0/0x100
> |  vgic_v3_redist_uaccess+0x5c/0x80
> |  vgic_v3_attr_regs_access+0xf0/0x200
> |  nvgic_v3_set_attr+0x234/0x250
> |  kvm_device_ioctl_attr+0xa4/0xf8
> |  kvm_device_ioctl+0x7c/0xc0
> |  ksys_ioctl+0x1fc/0xc18
> |  __arm64_sys_ioctl+0x24/0x30
> |  do_el0_svc+0x7c/0x148
> |  el0_sync_handler+0x138/0x258
> |  el0_sync+0x140/0x180
> | Code: 910003fd f9000bf3 2a0003f3 97ff650c (b95ec001)
> | ---[ end trace 81287612d93f1e70 ]---
> | note: qemu-system-aar[2615] exited with preempt_count 1
> 
> Loading the vcpu doesn't make a lot of sense for handling a device ioctl(),
> so instead pass the vcpu through to kvm_arch_timer_get_input_level(). Its
> not clear that an intid makes much sense without the paired vcpu.

I don't fully agree with the analysis, Remember we are looking at the
state of the physical interrupt associated with a virtual interrupt, so
the vcpu doesn't quite make sense here if it isn't loaded.

What does it mean to look at the HW timer when we are not in the right
context? For all we know, it is completely random (the only guarantee
we have is that it is disabled, actually).

My gut feeling is that this is another instance where we should provide
specific userspace accessors that would only deal with the virtual
state, and leave anything that deals with the physical state of the
interrupt to be exercised only by the guest.

Does it make sense?

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
