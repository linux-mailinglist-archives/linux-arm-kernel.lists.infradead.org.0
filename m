Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1481B23FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 12:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqHee3gPn7VyJFzCiCK6uwLhyHwQ/paor8t/oAT4EFc=; b=qPuMGt7487aU6B
	brxjsaII+bGdz5OaFEao9DFwSTi+VjA58g1E5ZnBe3w6mh6A/Orlj0xcNhcRDGcLITW1hognSA36V
	xYxBw6hZZMh2QirUSxYemOF7bGs+uYe7IhJkM1IE3V8rEiOFKvQRsqFdQnIkCg7S/wv3HBKkJmcF3
	5pVuN4KB2PjMTi9F8nFN6lTCTN8/Avo5+LN3uG+O+cfvoJjKth/cRm/TPZgJuel+lKsf+5GuS3pjC
	iI+pD/PjDrEfvKcaAVTKmp1Dw6tVYxqiMVkSDmSgxlqwcHXWbuVAISRPZmz04PXLcitM9Zkh12kf/
	GtRIzU930uKHLc99mIjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQqIw-000578-UR; Tue, 21 Apr 2020 10:39:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQqIo-00055Y-9p
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 10:38:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6A821FB;
 Tue, 21 Apr 2020 03:38:51 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 57B643F73D;
 Tue, 21 Apr 2020 03:38:50 -0700 (PDT)
Date: Tue, 21 Apr 2020 11:38:47 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: 5.7-rcX fails to boot on foundation model
Message-ID: <20200421103847.GC16306@C02TD0UTHF1T.local>
References: <20200421100455.GB17256@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421100455.GB17256@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_033854_429858_7E925806 
X-CRM114-Status: GOOD (  16.36  )
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
Cc: amit.kachhap@arm.com, maz@kernel.org, linux-arm-kernel@lists.infradead.org,
 catalin.marinas@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 11:04:55AM +0100, Will Deacon wrote:
> Hi all,
> 
> Using the latest boot-wrapper and the Foundation Model (build 11.10.22),
> mainline fails to boot with defconfig due to what appears to be a pointer
> authentication failure in the kernel. Disabling CONFIG_ARM64_PTR_AUTH makes
> the problem disappear.
> 
> I'm passing "--arm-v8.4 --no-sve --cores=2" to the model.
> 
> I'll try to look into this today, but thought it was worth posting in
> case anybody else gets the chance as well.

The decoded LR has the PAC stripped, so the kernel was attempting to
return to arch_timer_starting_cpu.

I'll hazard a guess that this is right around where we enable the timer
IRQ, and we happen to take an IRQ, and in the process corrupt APIAKey.
The entry code only messes with that around kernel<->user transitions,
so can we attempt to switch_to() this early? If the init thread's active
keys are different to those in its task struct we'd corrupt the active
value.

Mark.

> 
> Cheers,
> 
> Will
> 
> --->8
> 
> [    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
> [    0.000000] GICv3: 224 SPIs implemented
> [    0.000000] GICv3: 0 Extended SPIs implemented
> [    0.000000] GICv3: Distributor has no Range Selector support
> [    0.000000] GICv3: 16 PPIs implemented
> [    0.000000] GICv3: no VLPI support, no direct LPI support, no RVPEID support
> [    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x000000002f100000
> [    0.000000] random: get_random_bytes called from start_kernel+0x2b0/0x478 with crng_init=0
> [    0.000000] Unable to handle kernel paging request at virtual address bfff800010ba5438
> [    0.000000] Mem abort info:
> [    0.000000]   ESR = 0x86000004
> [    0.000000]   EC = 0x21: IABT (current EL), IL = 32 bits
> [    0.000000]   SET = 0, FnV = 0
> [    0.000000]   EA = 0, S1PTW = 0
> [    0.000000] [bfff800010ba5438] address between user and kernel address ranges
> [    0.000000] Internal error: Oops: 86000004 [#1] PREEMPT SMP
> [    0.000000] Modules linked in:
> [    0.000000] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.7.0-rc1-00009-g760395b1d716 #1
> [    0.000000] Hardware name: Foundation-v8A (DT)
> [    0.000000] pstate: 60000089 (nZCv daIf -PAN -UAO)
> [    0.000000] pc : 0xbfff800010ba5438
> [    0.000000] lr : arch_timer_starting_cpu+0x110/0x340
> [    0.000000] sp : ffff800011a13d40
> [    0.000000] x29: ffff800011a13d40 x28: 0000000000000000 
> [    0.000000] x27: 0000000000000000 x26: ffff800011a2ac90 
> [    0.000000] x25: ffff800011a2aeb0 x24: 0000000000000000 
> [    0.000000] x23: ffff8000116223c0 x22: ffff800011bf0b90 
> [    0.000000] x21: ffff800011617018 x20: ffff800011c89430 
> [    0.000000] x19: ffff00087b7a0c00 x18: 0000000000000014 
> [    0.000000] x17: 00000000820ad228 x16: 0000000010f332f8 
> [    0.000000] x15: 00000000fd586fff x14: 0000000000000000 
> [    0.000000] x13: 0000000000000300 x12: ffff800011a19948 
> [    0.000000] x11: ffff00087b7f1854 x10: 0000000000000040 
> [    0.000000] x9 : ffff800011a31d28 x8 : ffff800011a31d20 
> [    0.000000] x7 : ffff80086a17a000 x6 : 000000000000023f 
> [    0.000000] x5 : 0000000000000005 x4 : ffff800011a13d40 
> [    0.000000] x3 : 0000000000000020 x2 : ffff80086a17a000 
> [    0.000000] x1 : ffff800010ba4aa0 x0 : 0000000000000000 
> [    0.000000] Call trace:
> [    0.000000]  0xbfff800010ba5438
> [    0.000000]  cpuhp_invoke_callback+0x88/0x220
> [    0.000000]  cpuhp_issue_call+0xec/0x148
> [    0.000000]  __cpuhp_setup_state_cpuslocked+0x120/0x2c0
> [    0.000000]  __cpuhp_setup_state+0x94/0x150
> [    0.000000]  arch_timer_register+0x164/0x1d4
> [    0.000000]  arch_timer_of_init+0x100/0x134
> [    0.000000]  timer_probe+0x74/0x114
> [    0.000000]  time_init+0x18/0x50
> [    0.000000]  start_kernel+0x30c/0x478
> [    0.000000] Code: bad PC value
> [    0.000000] ---[ end trace 03aa545a01baf5ad ]---
> [    0.000000] Kernel panic - not syncing: Attempted to kill the idle task!
> [    0.000000] ---[ end Kernel panic - not syncing: Attempted to kill the idle task! ]---
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
