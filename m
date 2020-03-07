Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9566B17CDBD
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 12:07:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lnCYxflVJA4nV8suj+Wj7DmlB4PwCTpRxHvARlnNq/s=; b=MT5nVYOtH89eps
	zFgVF4fTYDwi0EEYCdZOOytjmJToa/OCZ7gXzjTlhCcUTNu0PBlDouV33tefqz2CvBrTGkgbb6Tcz
	cmO7ibI/aug9Q3hXB+1kg6KY/m5PyukVqcEE18KFZswK4EEzFfKBsy8sMzha/sy+c2g8bO89e1Csn
	ffVawsZ0VM5E0FhVt3tRjhrLFIazzlR4JK0lAzHnn1meuYKGnTG2cSnf3qhcVo4vqzgVnd2S4V+/B
	eoAxQG/sMtQkgQvCfZdbSyXtbCx2SpJUPjfkIZl46p4TSOJAH8LXf+HegOEH39Sdu9UQNucV1JmXl
	rQph2IdmI1pEIs+VJvqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAXIT-0001U0-PN; Sat, 07 Mar 2020 11:07:09 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAXIK-0001Si-2W; Sat, 07 Mar 2020 11:07:02 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 1335413F9D459FCCC85D;
 Sat,  7 Mar 2020 19:06:38 +0800 (CST)
Received: from [127.0.0.1] (10.177.131.64) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0; Sat, 7 Mar 2020
 19:06:29 +0800
Subject: Re: [PATCH v7 2/4] arm64: kdump: reserve crashkenel above 4G for
 crash dump kernel
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <20191223152349.180172-3-chenzhou10@huawei.com>
 <CAJ2QiJ+SQ1orriXJWyhKDcDL9s4Vh5+HQHhWFOKPVmijGpMGvw@mail.gmail.com>
From: Chen Zhou <chenzhou10@huawei.com>
Message-ID: <0c00f14a-15ca-44db-7f82-00f15ddd3c88@huawei.com>
Date: Sat, 7 Mar 2020 19:06:27 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <CAJ2QiJ+SQ1orriXJWyhKDcDL9s4Vh5+HQHhWFOKPVmijGpMGvw@mail.gmail.com>
X-Originating-IP: [10.177.131.64]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_030700_287321_93060186 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: horms@verge.net.au,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Will Deacon <will@kernel.org>, xiexiuqi@huawei.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, mingo@redhat.com,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 dyoung@redhat.com, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/3/5 18:13, Prabhakar Kushwaha wrote:
> On Mon, Dec 23, 2019 at 8:57 PM Chen Zhou <chenzhou10@huawei.com> wrote:
>>
>> Crashkernel=X tries to reserve memory for the crash dump kernel under
>> 4G. If crashkernel=X,low is specified simultaneously, reserve spcified
>> size low memory for crash kdump kernel devices firstly and then reserve
>> memory above 4G.
>>
>> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
>> ---
>>  arch/arm64/kernel/setup.c |  8 +++++++-
>>  arch/arm64/mm/init.c      | 31 +++++++++++++++++++++++++++++--
>>  2 files changed, 36 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
>> index 56f6645..04d1c87 100644
>> --- a/arch/arm64/kernel/setup.c
>> +++ b/arch/arm64/kernel/setup.c
>> @@ -238,7 +238,13 @@ static void __init request_standard_resources(void)
>>                     kernel_data.end <= res->end)
>>                         request_resource(res, &kernel_data);
>>  #ifdef CONFIG_KEXEC_CORE
>> -               /* Userspace will find "Crash kernel" region in /proc/iomem. */
>> +               /*
>> +                * Userspace will find "Crash kernel" region in /proc/iomem.
>> +                * Note: the low region is renamed as Crash kernel (low).
>> +                */
>> +               if (crashk_low_res.end && crashk_low_res.start >= res->start &&
>> +                               crashk_low_res.end <= res->end)
>> +                       request_resource(res, &crashk_low_res);
>>                 if (crashk_res.end && crashk_res.start >= res->start &&
>>                     crashk_res.end <= res->end)
>>                         request_resource(res, &crashk_res);
>> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
>> index b65dffd..0d7afd5 100644
>> --- a/arch/arm64/mm/init.c
>> +++ b/arch/arm64/mm/init.c
>> @@ -80,6 +80,7 @@ static void __init reserve_crashkernel(void)
>>  {
>>         unsigned long long crash_base, crash_size;
>>         int ret;
>> +       phys_addr_t crash_max = arm64_dma32_phys_limit;
>>
>>         ret = parse_crashkernel(boot_command_line, memblock_phys_mem_size(),
>>                                 &crash_size, &crash_base);
>> @@ -87,12 +88,38 @@ static void __init reserve_crashkernel(void)
>>         if (ret || !crash_size)
>>                 return;
>>
>> +       ret = reserve_crashkernel_low();
>> +       if (!ret && crashk_low_res.end) {
>> +               /*
>> +                * If crashkernel=X,low specified, there may be two regions,
>> +                * we need to make some changes as follows:
>> +                *
>> +                * 1. rename the low region as "Crash kernel (low)"
>> +                * In order to distinct from the high region and make no effect
>> +                * to the use of existing kexec-tools, rename the low region as
>> +                * "Crash kernel (low)".
>> +                *
>> +                * 2. change the upper bound for crash memory
>> +                * Set MEMBLOCK_ALLOC_ACCESSIBLE upper bound for crash memory.
>> +                *
>> +                * 3. mark the low region as "nomap"
>> +                * The low region is intended to be used for crash dump kernel
>> +                * devices, just mark the low region as "nomap" simply.
>> +                */
>> +               const char *rename = "Crash kernel (low)";
>> +
>> +               crashk_low_res.name = rename;
>> +               crash_max = MEMBLOCK_ALLOC_ACCESSIBLE;
>> +               memblock_mark_nomap(crashk_low_res.start,
>> +                                   resource_size(&crashk_low_res));
>> +       }
>> +
>>         crash_size = PAGE_ALIGN(crash_size);
>>
>>         if (crash_base == 0) {
>>                 /* Current arm64 boot protocol requires 2MB alignment */
>> -               crash_base = memblock_find_in_range(0, arm64_dma32_phys_limit,
>> -                               crash_size, SZ_2M);
>> +               crash_base = memblock_find_in_range(0, crash_max, crash_size,
>> +                               SZ_2M);
>>                 if (crash_base == 0) {
>>                         pr_warn("cannot allocate crashkernel (size:0x%llx)\n",
>>                                 crash_size);
>> --
> 
> I tested this patch series on ARM64-ThunderX2 with no issue with
> bootargs crashkenel=X@Y crashkernel=250M,low
> 
> $ dmesg | grep crash
> [    0.000000] crashkernel reserved: 0x0000000b81200000 -
> 0x0000000c81200000 (4096 MB)
> [    0.000000] Kernel command line:
> BOOT_IMAGE=/boot/vmlinuz-5.6.0-rc4+
> root=UUID=866b8df3-14f4-4e11-95a1-74a90ee9b694 ro
> crashkernel=4G@0xb81200000 crashkernel=250M,low nowatchdog earlycon
> [   29.310209]     crashkernel=250M,low
> 
> $  kexec -p -i /boot/vmlinuz-`uname -r`
> --initrd=/boot/initrd.img-`uname -r` --reuse-cmdline
> $ echo 1 > /proc/sys/kernel/sysrq ; echo c > /proc/sysrq-trigger
> 
> But when i tried with crashkernel=4G crashkernel=250M,low as bootargs.
> Kernel is not able to allocate memory.
> [    0.000000] cannot allocate crashkernel (size:0x100000000)
> [    0.000000] Kernel command line:
> BOOT_IMAGE=/boot/vmlinuz-5.6.0-rc4+
> root=UUID=866b8df3-14f4-4e11-95a1-74a90ee9b694 ro crashkernel=4G
> crashkernel=250M,low nowatchdog
> [   29.332081]     crashkernel=250M,low
> 
> does crashkernel=X@Y mandatory to get allocated beyond 4G?
> am I missing something?

I can't reproduce the problem in my environment, can you test with other size,
such as "crashkernel=1G crashkernel=250M,low", see if there is the same issue.

Besides, crashkernel=X@Y isn't mandatory to get allocated beyond 4G,
can you show the whole file /proc/iomem.

Thanks,
Chen Zhou

> 
> --pk
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
