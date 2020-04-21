Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1831B2D27
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oJ2w4Fp7beBJtLFmW6p2zEHEmLFKa/VuUEGDLnkmLVI=; b=cc/nNOqCAs7V3c
	b4+kWhL5/cqIUoa1K8iw7A5HbNX7btOym//oFVmG+agptPSr4ogvjBWQUL0D9rWZZp5wgwUk982yV
	HHKo1XYDwRbe/HwaHEefrjMe2VikDhBGh343XSLh8pCEqbH8TcuBypKO5M5KFGW8Px0Qob5/BAUki
	ALiyNpqU3C3488PyeIMHXTz8j80cM933uf2e9VSeN0ifJLCwe3jxvBqx9kDKpr0mdh2HJfOHqBZGZ
	aXIscHv7UySNgLEktqOXV9UNKXV2kvpw8bF3nkNcOcrCpLtREd4/PDdRvHO0jiSxPCYeiyb7P5Y6O
	DrhI9+cLrp5dD+TebZQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQw7F-00024R-SU; Tue, 21 Apr 2020 16:51:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQw6R-0001Ou-O1
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:50:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD05E1FB;
 Tue, 21 Apr 2020 09:50:28 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 738FF3F73D;
 Tue, 21 Apr 2020 09:50:27 -0700 (PDT)
Subject: Re: [PATCH] arm32: fix flushcache syscall with device address
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
References: <1587456514-61156-1-git-send-email-tiantao6@hisilicon.com>
 <20200421081239.GA15439@willie-the-truck>
 <20200421121651.000009f0@Huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <d0814ab2-03fc-42c1-e447-bfee2df038da@arm.com>
Date: Tue, 21 Apr 2020 17:50:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200421121651.000009f0@Huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_095031_870338_0A3A2D58 
X-CRM114-Status: GOOD (  21.75  )
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
Cc: info@metux.net, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, allison@lohutok.net, gregkh@linuxfoundation.org,
 Tian Tao <tiantao6@hisilicon.com>, tglx@linutronix.de,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi guys,

(Subject Nit: arm64, as that is what your patch modifies)

On 21/04/2020 12:16, Jonathan Cameron wrote:
> On Tue, 21 Apr 2020 09:12:39 +0100
> Will Deacon <will@kernel.org> wrote:
> 
>> On Tue, Apr 21, 2020 at 04:08:34PM +0800, Tian Tao wrote:
>>> An issue has been observed on our Kungpeng916 systems when using a PCI
>>> express GPU. This occurs when a 32 bit application running on a 64 bit
>>> kernel issues a cache flush operation to a memory address that is in
>>> a PCI BAR of the GPU.The results in an illegal operation and
>>> subsequent crash.  
>>
>> A kernel crash? If so, please can you include the log here?
> 
> Deploying my finest copy typing from the image Tian Tao sent out
> 
>       KERNEL: /root/vmlinux-4.19.36-3patch-00228-debuginfo
>     DUMPFILE: vmcore [PARTIAL DUMP]
>         CPUS: 64
>         DATE: Fri Mar 20 06:59:56 2020
>       UPTIME: 07:01:01
> LOAD AVERAGE: 33.76, 35.45, 35.79
>        TASKS: 59447
>     NODENAME: cpus-new-ondemand-0509
>      RELEASE: 4.19.36-3patch-0228
>      VERSION: #4 SMP Fri Feb 28 15:18:51 UTC 2020
>      MACHINE: aarch64 (unknown MHz)
>       MEMORY: 255.7 GB
>        PANIC: "kernel panic - not syncing: Asynchronous SError Interrupt"
>          PID: 175108
>      COMMAND: "UnityMain"
>         TASK: ffff80a96999dd00 [THREAD_INFO: ffff80a96999dd00]
>          CPU: 62
>        STATE: TASK_RUNNING (PANIC)
> 
> crash> bt
> PID: 175108 TASK: ffff80a96999dd00 CPU: 62 COMMAND: "UnityMain"
>   #0 [ffff000194e1b920] machine_kexec at ffff0000080a265c
>   #1 [ffff000194e1b980] __crash_kexec at ffff0000081b3ba8
>   #2 [ffff000194e1bb10] panic at ffff0000080ecc98
>   #3 [ffff000194e1bbf0] nmi_panic at ffff0000080ec7f4
>   #4 [ffff000194e1bc10] arm64_serror_panic at fff00000809019c
>   #5 [ffff000194e1bc30] do_serror at ffff00000809039c
>   #6 [ffff000194e1bd90] el1_error at ffff000008083e50
>   #7 [ffff000194e1bda0] __flush_icache_range at ffff0000080a9ec4
>   #8 [ffff000194e1be60] el0_svc_common at fff0000080977d8
>   #9 [ffff000194e1bea0] el0_svc_compat_handler at ffff0000080979b4
>  #10 [ffff000194e1bff0] el0_svc_compat at ffff0000008083874
> 
>      PC: c90fe7f8  LR: c90ff09c  SP: d2afa8e0  PSTATE: 800b0010
>     X12: c56e96e4 X11: d2afaa48 X10: d0ff1000  X9: d2afab68
>      x8: 000000d6  X7: 000f0002  X6: d3c61840  X5: d3c61001
>      X4: d3c03000  X3: 0004d54a  x2: 00000000  x1: d3c61040
>      X0: d3c61000
> 
> 
> New advanced test for Mavis Beacon teaches typing.

Thanks for doing that!


> In summary this is all we have to hand...


Jumping back to the patch:
On 21/04/2020 09:08, Tian Tao wrote:> diff --git a/arch/arm64/kernel/sys_compat.c
b/arch/arm64/kernel/sys_compat.c
> index 3c18c24..6c07944 100644
> --- a/arch/arm64/kernel/sys_compat.c
> +++ b/arch/arm64/kernel/sys_compat.c
> @@ -32,6 +94,13 @@ __do_compat_cache_op(unsigned long start, unsigned long end)
>  		if (fatal_signal_pending(current))
>  			return 0;
>
> +		 /* do not flush page table is non-cacheable */
> +		if (!__check_pt_cacheable(start)) {
> +			cond_resched();
> +			start += chunk;
> +			continue;
> +		}

The Arm-arm expects this to work, so we can't just skip it!

D4.4.8's "Effects of instructions that operate by VA to the PoC" has:
| For Device memory and Normal memory that is Inner Non-cacheable, Outer Non-cacheable,
| these instructions must affect the caches of all PEs in the Outer Shareable shareability
| domain of the PE on which the instruction is operating.


What does aarch64 user-space do in the same situation? Surely that also goes down in
flames too!?

I think the real problem here is you've given this kind of mapping to user-space. If the
device behind the mapping can respond like this, you must trust user-space not to poke it
inappropriately.

If its not got all the properties of memory: please don't pretend its memory.
If its a device, it probably needs to be carefully managed by a dedicated driver.


Do you know where the abort comes from and why? (The interconnect, PCIE-root-complex, or
from the GPU itself?)
Is it the wrong attributes? Too large an eviction from the cache? Wrong alignment for this
BAR? It can't handle cache-maintenance?


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
