Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B9FDB397
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 19:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/mjOxZWEkxiDYy9ilBsell9KLqkdXQuuHc1x9p1rEQ=; b=AkF1xo3CTsqmjk
	3jGeLqN1e5if1N7FTv5eUJHDdwvjfJkswRxtRIR4SxIqM+cskuUS3ScSTs7BIlrrMUvuYmwi/jp6C
	Zxijt18TA64PTSdLYKRxDTcIlkeJ+0FhIKTYoPQwKOu0J0SWKB08AoZ9m0Pp2rfEX84HuaJCZfQvB
	ccX6sdW1vRebe2HLwOySUTVBMeP1Dq7loh40EUkgC3vlvK5kR2yOoMUAkj0HIv3QgS6sm8WQFtW1f
	21EdTKHC5p4gbdjZXHrptnuB+DGyRwvYpi8f6xB5AbJUFIWeINDBx8aZLCy2ljKRuqfmbSVMg+YGg
	04/jmLMGCO1axQiySlbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9na-0002oO-C3; Thu, 17 Oct 2019 17:42:54 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9nQ-0002n9-Pb
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 17:42:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F138C329;
 Thu, 17 Oct 2019 10:42:33 -0700 (PDT)
Received: from [10.1.196.105] (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 660253F718;
 Thu, 17 Oct 2019 10:42:33 -0700 (PDT)
Subject: Re: [PATCH] arm64: mm: fix inverted PAR_EL1.F check
To: Will Deacon <will@kernel.org>
References: <20191016110304.44932-1-mark.rutland@arm.com>
 <99261f9e-98ab-ca79-9514-b900306f49df@arm.com>
 <20191016164916.pcyjmmdnnup7wg44@willie-the-truck>
 <65090dc0-8b83-a7c5-acc6-293d0d7e81e0@arm.com>
 <20191016171242.zve2khjwegm5nntm@willie-the-truck>
From: James Morse <james.morse@arm.com>
Message-ID: <787a6d76-f1a8-7a9b-960d-b924ef2d0ff8@arm.com>
Date: Thu, 17 Oct 2019 18:42:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191016171242.zve2khjwegm5nntm@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_104244_916292_7C46BD21 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/10/2019 18:12, Will Deacon wrote:
> On Wed, Oct 16, 2019 at 05:55:04PM +0100, James Morse wrote:
>> On 16/10/2019 17:49, Will Deacon wrote:
>>> On Wed, Oct 16, 2019 at 05:29:27PM +0100, James Morse wrote:
>>>> With this this patch the 'spurious' message is printed, and the kernel keeps running [0].
>>>>
>>>> If its useful:
>>>> Tested-by: James Morse <james.morse@arm.com>
>>>
>>> Thanks, I'll pick this up along with the other patch to the field definition
>>> (did you have that one too?)
>>
>> No... is it in rc3?
> 
> No: 1571197377-48650-1-git-send-email-yangyingliang@huawei.com

Huh, so we depend on the bottom FSC bit being set if it faults.

Just for completeness, tested again:
| 2b41181c36d6 arm64: mm: fix inverted PAR_EL1.F check
| c5ff5e2c9b97 arm64: sysreg: fix wrong PAR_EL1.F macro
| 123260acf6ac Revert "Revert "arm64: Remove unnecessary ISBs from set_{pte,pmd,pud}""
| 4f5cafb5cb84 Linux 5.4-rc3


With this patch:
| ------------[ cut here ]------------
| Ignoring spurious kernel translation fault at virtual address fffffdfffe5fd988
| WARNING: CPU: 7 PID: 0 at ../arch/arm64/mm/fault.c:315 __do_kernel_fault+0xf0/0x120
| Modules linked in: crct10dif_ce ip_tables x_tables ipv6 nf_defrag_ipv6
| CPU: 7 PID: 0 Comm: swapper/7 Tainted: G        W         5.4.0-rc3-00003-g2b41181c36d6 #126
| Hardware name: AMD Seattle (Rev.B0) Development Board (Overdrive) (DT)
| pstate: 40000085 (nZcv daIf -PAN -UAO)
| pc : __do_kernel_fault+0xf0/0x120
| lr : __do_kernel_fault+0xf0/0x120

| Call trace:
|  __do_kernel_fault+0xf0/0x120
|  do_translation_fault+0x40/0x70
|  do_mem_abort+0x3c/0x98
|  el1_da+0x20/0x94
|  __memcpy_fromio+0x44/0x98
|  __ghes_peek_estatus.isra.13+0x54/0xc8
|  ghes_proc+0x40/0x158
|  ghes_poll_func+0x38/0x68
|  call_timer_fn.isra.31+0x20/0x78
|  run_timer_softirq+0x33c/0x398
|  __do_softirq+0x114/0x230
|  irq_exit+0xcc/0xd8
|  __handle_domain_irq+0x60/0xb8
|  gic_handle_irq+0x58/0xb0
|  el1_irq+0xb8/0x180
|  arch_cpu_idle+0x10/0x18
|  do_idle+0x1c4/0x290
|  cpu_startup_entry+0x20/0x40
|  secondary_start_kernel+0x1bc/0x218
| ---[ end trace e60cc177313a1b39 ]---


and without:
| Unable to handle kernel paging request at virtual address fffffdfffe5fd020
| Mem abort info:
|   ESR = 0x96000007
|   EC = 0x25: DABT (current EL), IL = 32 bits
|   SET = 0, FnV = 0
|   EA = 0, S1PTW = 0
| Data abort info:
|   ISV = 0, ISS = 0x00000007
|   CM = 0, WnR = 0
| swapper pgtable: 4k pages, 48-bit VAs, pgdp=0000008003282000
| [fffffdfffe5fd020] pgd=0000008003954003, pud=0000008003955003, pmd=0000008003953003,
pte=00e80087fef6f713
| Internal error: Oops: 96000007 [#1] PREEMPT SMP
| Modules linked in: crct10dif_ce ip_tables x_tables ipv6 nf_defrag_ipv6
| CPU: 7 PID: 0 Comm: swapper/7 Tainted: G        W         5.4.0-rc3-00002-gc5ff5e2c9b97 #127
| Hardware name: AMD Seattle (Rev.B0) Development Board (Overdrive) (DT)
| pstate: 20000085 (nzCv daIf -PAN -UAO)
| pc : __memcpy_fromio+0x44/0x98
| lr : ghes_copy_tofrom_phys+0x7c/0x158

| Call trace:
|  __memcpy_fromio+0x44/0x98
|  __ghes_peek_estatus.isra.13+0x54/0xc8
|  ghes_proc+0x40/0x158
|  ghes_poll_func+0x38/0x68
|  call_timer_fn.isra.31+0x20/0x78
|  run_timer_softirq+0x33c/0x398
|  __do_softirq+0x114/0x230
|  irq_exit+0xcc/0xd8
|  __handle_domain_irq+0x60/0xb8
|  gic_handle_irq+0x58/0xb0
|  el1_irq+0xb8/0x180
|  arch_cpu_idle+0x10/0x18
|  do_idle+0x1c4/0x290
|  cpu_startup_entry+0x20/0x40
|  secondary_start_kernel+0x1bc/0x218
| Code: 927df0e6 aa0003e3 910020c6 8b060006 (c8dffc85)
| ---[ end trace 869b94c4c0803e42 ]---
| Kernel panic - not syncing: Fatal exception in interrupt
| SMP: stopping secondary CPUs
| Kernel Offset: disabled
| CPU features: 0x0002,20006082
| Memory Limit: none
| ---[ end Kernel panic - not syncing: Fatal exception in interrupt ]---


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
