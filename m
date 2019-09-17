Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3D6B4AA7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 11:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UvgnyRVV38h9iL/Sf0muRi8pD1QEgjMPKermhyP4myU=; b=NKd+AOG+En7+X3EnFXFuu+6fS
	iZGao2K3veVqQ8ZASpNJyCYfpdJjbjqPX+g2davHtt4Fr17saZVc9MqT0DYfAnOf3HCJXFr8tkhTs
	mNIR109PEA2EIEr489pJMcSEuG2yjnxrSbWWz6Inv+zt6Ex9OWrUeU7WDvlA8CERLrbVytWgwqLxK
	8xZ8Y1NpCKSVlXQuuK47ADU06WqGKStpFutgX5Qo1eqitlFe4f0bx0sd6oiKIX6gqmm2gM2R7632v
	CAFIDFOh3251FK2JQPWNyaZHnpIF5BUVLIyvZixuut5EC4m2plA7tT8kYRKX1Mxt5PbYeng5T/GUz
	AbtGQ02ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA9uv-0004xL-HN; Tue, 17 Sep 2019 09:37:01 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA9uZ-0004wT-Vc
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 09:36:42 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id CF0FBFB81ECA658B20C5;
 Tue, 17 Sep 2019 17:36:34 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Tue, 17 Sep 2019
 17:36:26 +0800
Subject: Re: [PATCH] KVM: arm64: vgic-v4: Move the GICv4 residency flow to be
 driven by vcpu_load/put
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>
References: <20190903155747.219802-1-maz@kernel.org>
 <5ab75fec-6014-e3b4-92a3-63d5015814c1@huawei.com>
 <07ddb304-9a7a-64a3-386a-96eea4516346@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <dcc5a10b-c9ca-f833-4a60-e5d3726fa0b9@huawei.com>
Date: Tue, 17 Sep 2019 17:31:40 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <07ddb304-9a7a-64a3-386a-96eea4516346@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_023640_371382_AB1C3A78 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Andre Przywara <Andre.Przywara@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2019/9/17 16:35, Marc Zyngier wrote:
> Hi Zenghui,
> 
> On 17/09/2019 09:10, Zenghui Yu wrote:
>> Hi Marc,
>>
>> I've run this patch on my box and got the following messages:
>>
>> ---8<
>>
>> [ 2258.490030] BUG: sleeping function called from invalid context at
>> kernel/irq/manage.c:138
>> [ 2258.490034] in_atomic(): 1, irqs_disabled(): 0, pid: 59278, name: CPU
>> 0/KVM
>> [ 2258.490039] CPU: 32 PID: 59278 Comm: CPU 0/KVM Kdump: loaded Tainted:
>> G        W         5.3.0+ #26
>> [ 2258.490041] Hardware name: Huawei TaiShan 2280 /BC11SPCD, BIOS 1.58
>> 10/29/2018
>> [ 2258.490043] Call trace:
>> [ 2258.490056]  dump_backtrace+0x0/0x188
>> [ 2258.490060]  show_stack+0x24/0x30
>> [ 2258.490066]  dump_stack+0xb0/0xf4
>> [ 2258.490072]  ___might_sleep+0x10c/0x130
>> [ 2258.490074]  __might_sleep+0x58/0x90
>> [ 2258.490078]  synchronize_irq+0x58/0xd8
>> [ 2258.490079]  disable_irq+0x2c/0x38
>> [ 2258.490083]  vgic_v4_load+0x9c/0xc0
>> [ 2258.490084]  vgic_v3_load+0x94/0x170
>> [ 2258.490088]  kvm_vgic_load+0x3c/0x60
>> [ 2258.490092]  kvm_arch_vcpu_load+0xd4/0x1d0
>> [ 2258.490095]  vcpu_load+0x50/0x70
>> [ 2258.490097]  kvm_arch_vcpu_ioctl_run+0x94/0x978
>> [ 2258.490098]  kvm_vcpu_ioctl+0x3d8/0xa28
>> [ 2258.490104]  do_vfs_ioctl+0xc4/0x8e8
>> [ 2258.490106]  ksys_ioctl+0x8c/0xa0
>> [ 2258.490108]  __arm64_sys_ioctl+0x28/0x58
>> [ 2258.490112]  el0_svc_common.constprop.0+0x7c/0x188
>> [ 2258.490114]  el0_svc_handler+0x34/0xb8
>> [ 2258.490117]  el0_svc+0x8/0xc
>> [ 2259.497070] BUG: sleeping function called from invalid context at
>> kernel/irq/manage.c:138
> 
> Thanks for reporting this.
> 
> [...]
> 
>> The logic of disabling the doorbell interrupt in vgic_v4_load() might
>> need a fix?
> 
> The logic itself looks OK, but doing a full blown disable_irq() is both
> counter productive (if we race against a doorbell, there is not much we
> can do about it and waiting for it to end is pointless) and wrong
> (despite the comment that this can be called in IRQ context, it is
> pretty unsafe to do so).
> 
> Can you try turning it into a disable_irq_nosync() and let me know if
> that helps?

Yes, the above BUG messages disappear with disable_irq_nosync().

But this time I got the following WARNING:


[  921.004322] ======================================================
[  921.010489] WARNING: possible circular locking dependency detected
[  921.016657] 5.3.0+ #27 Not tainted
[  921.020132] ------------------------------------------------------
[  921.026299] CPU 1/KVM/816 is trying to acquire lock:
[  921.031250] ffff002fb42b35b0 (&irq_desc_lock_class){-.-.}, at: 
__irq_get_desc_lock+0x60/0xa0
[  921.039684]
                but task is already holding lock:
[  921.045503] ffff002fbbb07258 (&rq->lock){-.-.}, at: __schedule+0xd4/0x988
[  921.052283]
                which lock already depends on the new lock.

[  921.060445]
                the existing dependency chain (in reverse order) is:
[  921.067913]
                -> #3 (&rq->lock){-.-.}:
[  921.072955]        lock_acquire+0xd4/0x268
[  921.077041]        _raw_spin_lock+0x44/0x58
[  921.081212]        task_fork_fair+0x54/0x160
[  921.085471]        sched_fork+0xfc/0x238
[  921.089383]        copy_process+0x474/0x1738
[  921.093639]        _do_fork+0x70/0x6e0
[  921.097376]        kernel_thread+0x70/0x98
[  921.101459]        rest_init+0x34/0x278
[  921.105286]        arch_call_rest_init+0x14/0x1c
[  921.109891]        start_kernel+0x548/0x574
[  921.114060]
                -> #2 (&p->pi_lock){-.-.}:
[  921.119275]        lock_acquire+0xd4/0x268
[  921.123360]        _raw_spin_lock_irqsave+0x60/0x80
[  921.128225]        try_to_wake_up+0x60/0xbf0
[  921.132483]        wake_up_process+0x28/0x38
[  921.136739]        __up.isra.0+0x58/0x68
[  921.140649]        up+0x64/0x80
[  921.143777]        __up_console_sem+0x60/0xa8
[  921.148121]        console_unlock+0x31c/0x5f0
[  921.152465]        vprintk_emit+0x28c/0x438
[  921.156637]        dev_vprintk_emit+0x1d8/0x218
[  921.161157]        dev_printk_emit+0x84/0xa8
[  921.165414]        __dev_printk+0x78/0xa0
[  921.169411]        _dev_info+0x7c/0xa0
[  921.173148]        hub_port_init+0xa5c/0xb68
[  921.177405]        hub_port_connect+0x2f0/0xa08
[  921.181923]        port_event+0x548/0x828
[  921.185920]        hub_event+0x20c/0x418
[  921.189831]        process_one_work+0x24c/0x700
[  921.194349]        worker_thread+0x4c/0x448
[  921.198519]        kthread+0x130/0x138
[  921.202256]        ret_from_fork+0x10/0x18
[  921.206338]
                -> #1 ((console_sem).lock){-.-.}:
[  921.212160]        lock_acquire+0xd4/0x268
[  921.216244]        _raw_spin_lock_irqsave+0x60/0x80
[  921.221110]        down_trylock+0x20/0x50
[  921.225106]        __down_trylock_console_sem+0x50/0xe0
[  921.230320]        console_trylock+0x20/0x88
[  921.234577]        vprintk_emit+0x18c/0x438
[  921.238747]        vprintk_default+0x54/0x90
[  921.243004]        vprintk_func+0xe4/0x268
[  921.247087]        printk+0x74/0x94
[  921.250564]        show_interrupts+0x4dc/0x4f8
[  921.254997]        seq_read+0x2b4/0x4e0
[  921.258820]        proc_reg_read+0x94/0xe8
[  921.262905]        __vfs_read+0x48/0x80
[  921.266729]        vfs_read+0xa0/0x160
[  921.270465]        ksys_read+0x74/0xf8
[  921.274202]        __arm64_sys_read+0x24/0x30
[  921.278547]        el0_svc_common.constprop.0+0x80/0x1b8
[  921.283846]        el0_svc_handler+0x34/0xb8
[  921.288102]        el0_svc+0x8/0xc
[  921.291491]
                -> #0 (&irq_desc_lock_class){-.-.}:
[  921.297486]        check_prev_add+0xac/0x9f8
[  921.301743]        __lock_acquire+0x1164/0x12b8
[  921.306260]        lock_acquire+0xd4/0x268
[  921.310344]        _raw_spin_lock_irqsave+0x60/0x80
[  921.315209]        __irq_get_desc_lock+0x60/0xa0
[  921.319814]        irq_set_vcpu_affinity+0x48/0xc8
[  921.324592]        its_schedule_vpe+0x68/0xb0
[  921.328937]        vgic_v4_put+0x80/0xa8
[  921.332846]        vgic_v3_put+0x24/0xf0
[  921.336756]        kvm_vgic_put+0x3c/0x60
[  921.340754]        kvm_arch_vcpu_put+0x38/0x60
[  921.345184]        kvm_sched_out+0x38/0x48
[  921.349267]        __schedule+0x5a4/0x988
[  921.353263]        schedule+0x40/0xc8
[  921.356912]        kvm_arch_vcpu_ioctl_run+0x130/0xb08
[  921.362037]        kvm_vcpu_ioctl+0x3e0/0xb08
[  921.366381]        do_vfs_ioctl+0xc4/0x890
[  921.370464]        ksys_ioctl+0x8c/0xa0
[  921.374287]        __arm64_sys_ioctl+0x28/0x38
[  921.378717]        el0_svc_common.constprop.0+0x80/0x1b8
[  921.384016]        el0_svc_handler+0x34/0xb8
[  921.388272]        el0_svc+0x8/0xc
[  921.391660]
                other info that might help us debug this:

[  921.399649] Chain exists of:
                  &irq_desc_lock_class --> &p->pi_lock --> &rq->lock

[  921.409984]  Possible unsafe locking scenario:

[  921.415889]        CPU0                    CPU1
[  921.420405]        ----                    ----
[  921.424921]   lock(&rq->lock);
[  921.427962]                                lock(&p->pi_lock);
[  921.433694]                                lock(&rq->lock);
[  921.439253]   lock(&irq_desc_lock_class);
[  921.443249]
                 *** DEADLOCK ***

[  921.449155] 2 locks held by CPU 1/KVM/816:
[  921.453237]  #0: ffff002fa3862aa8 (&vcpu->mutex){+.+.}, at: 
kvm_vcpu_ioctl+0x80/0xb08
[  921.461055]  #1: ffff002fbbb07258 (&rq->lock){-.-.}, at: 
__schedule+0xd4/0x988
[  921.468265]
                stack backtrace:
[  921.472610] CPU: 24 PID: 816 Comm: CPU 1/KVM Kdump: loaded Not 
tainted 5.3.0+ #27
[  921.480165] Hardware name: Huawei TaiShan 2280 /BC11SPCD, BIOS 1.58 
10/29/2018
[  921.487372] Call trace:
[  921.489806]  dump_backtrace+0x0/0x188
[  921.493455]  show_stack+0x24/0x30
[  921.496757]  dump_stack+0xcc/0x134
[  921.500146]  print_circular_bug.isra.20+0x204/0x2d8
[  921.505011]  check_noncircular+0x130/0x1c0
[  921.509094]  check_prev_add+0xac/0x9f8
[  921.512829]  __lock_acquire+0x1164/0x12b8
[  921.516825]  lock_acquire+0xd4/0x268
[  921.520388]  _raw_spin_lock_irqsave+0x60/0x80
[  921.524732]  __irq_get_desc_lock+0x60/0xa0
[  921.528815]  irq_set_vcpu_affinity+0x48/0xc8
[  921.533071]  its_schedule_vpe+0x68/0xb0
[  921.536894]  vgic_v4_put+0x80/0xa8
[  921.540282]  vgic_v3_put+0x24/0xf0
[  921.543671]  kvm_vgic_put+0x3c/0x60
[  921.547147]  kvm_arch_vcpu_put+0x38/0x60
[  921.551057]  kvm_sched_out+0x38/0x48
[  921.554618]  __schedule+0x5a4/0x988
[  921.558094]  schedule+0x40/0xc8
[  921.561222]  kvm_arch_vcpu_ioctl_run+0x130/0xb08
[  921.565826]  kvm_vcpu_ioctl+0x3e0/0xb08
[  921.569649]  do_vfs_ioctl+0xc4/0x890
[  921.573211]  ksys_ioctl+0x8c/0xa0
[  921.576513]  __arm64_sys_ioctl+0x28/0x38
[  921.580423]  el0_svc_common.constprop.0+0x80/0x1b8
[  921.585201]  el0_svc_handler+0x34/0xb8
[  921.588937]  el0_svc+0x8/0xc



Thanks,
zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
