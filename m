Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 367B5180469
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:09:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E5NBSpd/PrpZiExNOzrrgqNLChv4UOAllndk20c3wUE=; b=IcjzkfXVSU/Kne
	ewKI+MJT+S/uvCRc5dJzh+x6VAzLsecLuYNQ2YQd8+05dJXZbcIlRn2Lx6v8MQyeeuB/B256tk+6X
	W2OQS7Nuc+QbfmNgmsRxRSBVjteMq57MSEEH2m+bZmZwAxOjR6W6HRh3On3hly1i2tRY6SHxgL61e
	BWQH+MEUYT3vcClns2PgZP0/J71syh/Wr+31xGW4cBNyC3nQS9+D0NrEOOfIsNRrMnvLkZlSm2zly
	1aHu1G0Rf22QFuD6bT3zZgS6QaokfwJO7KMybXkrAS+pIgT27cfrEHHKLJeDSWJjM5PjqbGR1/TKq
	617SIVpEEPm4cdPJrFCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiNq-000830-1O; Tue, 10 Mar 2020 17:09:34 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiNc-00081r-Rh; Tue, 10 Mar 2020 17:09:23 +0000
Received: by mail-pl1-x641.google.com with SMTP id g12so5693006plo.3;
 Tue, 10 Mar 2020 10:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2YOvBMUVAAEVmVcvV/m8MW0vSm82Svf/arbSIWKa3Rg=;
 b=bBAkE6H67vSLZ4yv2bTMS6GouxkSXhtCUyVsrOkOIImqcLftxwjL+MpfwIU/tTiEHp
 oRi/TXrleNq9zmf6SZyvl9tHWK+kjbg23hi1KCq+RxbQPeyeyza1l42mtHUltf44jr54
 shnyhiIEzEcUbQPP9JeLiyYrbFAMK6p+7kygbRB8oyNWdsyFQWEWEP4IDP+DPlpX1fV/
 l1gT40Sm193UroHEdPwfzRLeAjIf1mr6hEj0yPjvFDVVV4QImlK61rDDkEIrecan6X1f
 gGlxQv4qBLXEHNnUV0BVJSC0B4FLg4IGkIPJxKAqgAdjIpGCqLAtLi6TQZeoPZ9KSgno
 7Baw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2YOvBMUVAAEVmVcvV/m8MW0vSm82Svf/arbSIWKa3Rg=;
 b=d0L/BvdUEyab5P+Rb6QaPJu9Vth8An29v+4xKOR7x+MwS44XrcyZ8XmIxJHJDkW+v9
 sudE4gJs1qISPEpbbuLt9MBpkeeSwMr2aSOMRjDJi1si84e2FneXxAOZgoBZBtyUPBro
 iaFt8w+a83xcpEmfTIejrHJ0cfn643Y+ERLB/7WY6ukGxejJ0bla/CT9NWobYr/ksKj0
 9eXAjCD6NLH+oXBdleal0ZSjgL5P/vIeqgsVOT99oIJCQr8BB7sdfCVdE/8nQVH4vpWS
 T2h6muanZnKma2O2QPh69i3ihHvGO+57Gvx5Qq3srhWPuSw2tT2+xzqsrX7USz1yfkrn
 9SgA==
X-Gm-Message-State: ANhLgQ3WNS9hwyXq5dGx9ndxs7eWelt3j3+ryxUZoLUb5AOdwneWY5+W
 L7qQ8w8mPSRKjIQ1ExDQzS8=
X-Google-Smtp-Source: ADFU+vvg4H/BWuwZXLKDoKIF/0NNdR74kM2AYERvFJmR9vCn48A8Zb87wL4O6lQ9LlnIiKcJeEc0sg==
X-Received: by 2002:a17:90a:dac6:: with SMTP id
 g6mr2781511pjx.30.1583860160012; 
 Tue, 10 Mar 2020 10:09:20 -0700 (PDT)
Received: from [192.168.1.5] ([122.171.26.90])
 by smtp.gmail.com with ESMTPSA id x9sm17597877pfa.188.2020.03.10.10.09.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Mar 2020 10:09:19 -0700 (PDT)
Subject: Re: [PATCH v7 2/4] arm64: kdump: reserve crashkenel above 4G for
 crash dump kernel
To: chenzhou <chenzhou10@huawei.com>
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <20191223152349.180172-3-chenzhou10@huawei.com>
 <CAJ2QiJ+SQ1orriXJWyhKDcDL9s4Vh5+HQHhWFOKPVmijGpMGvw@mail.gmail.com>
 <0c00f14a-15ca-44db-7f82-00f15ddd3c88@huawei.com>
 <CAJ2QiJL5Zj3Z=jrLVVn_n3vwNnTVtUZZMSkEaiVNLTA-ZmOe-Q@mail.gmail.com>
 <f95f2761-f4c9-58b6-485c-2da6c8cc6811@gmail.com>
 <cdf7dea4-732e-4d9d-932c-9435b0ed7b9b@huawei.com>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Message-ID: <3bfc5799-1fc4-d5e3-cf32-24ed9fb02b1b@gmail.com>
Date: Tue, 10 Mar 2020 22:38:48 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <cdf7dea4-732e-4d9d-932c-9435b0ed7b9b@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_100920_901894_0CDC2180 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.pkin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 3/10/2020 7:00 AM, chenzhou wrote:
> Hi,
> 
> On 2020/3/9 23:51, Prabhakar Kushwaha wrote:
>> On 3/9/2020 10:18 AM, Prabhakar Kushwaha wrote:
>>> Hi Chen,
>>>
>>> On Sat, Mar 7, 2020 at 4:36 PM Chen Zhou <chenzhou10@huawei.com> wrote:
>>>>
>>>>
>>>>
>>>> On 2020/3/5 18:13, Prabhakar Kushwaha wrote:
>>>>> On Mon, Dec 23, 2019 at 8:57 PM Chen Zhou <chenzhou10@huawei.com> wrote:
>>>>>>
>>>>>> Crashkernel=X tries to reserve memory for the crash dump kernel under
>>>>>> 4G. If crashkernel=X,low is specified simultaneously, reserve spcified
>>>>>> size low memory for crash kdump kernel devices firstly and then reserve
>>>>>> memory above 4G.
>>>>>>
>>>>>> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
>>>>>> ---
>>>>>>  arch/arm64/kernel/setup.c |  8 +++++++-
>>>>>>  arch/arm64/mm/init.c      | 31 +++++++++++++++++++++++++++++--
>>>>>>  2 files changed, 36 insertions(+), 3 deletions(-)
>>>>>>
>>>>>> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
>>>>>> index 56f6645..04d1c87 100644
>>>>>> --- a/arch/arm64/kernel/setup.c
>>>>>> +++ b/arch/arm64/kernel/setup.c
>>>>>> @@ -238,7 +238,13 @@ static void __init request_standard_resources(void)
>>>>>>                     kernel_data.end <= res->end)
>>>>>>                         request_resource(res, &kernel_data);
>>>>>>  #ifdef CONFIG_KEXEC_CORE
>>>>>> -               /* Userspace will find "Crash kernel" region in /proc/iomem. */
>>>>>> +               /*
>>>>>> +                * Userspace will find "Crash kernel" region in /proc/iomem.
>>>>>> +                * Note: the low region is renamed as Crash kernel (low).
>>>>>> +                */
>>>>>> +               if (crashk_low_res.end && crashk_low_res.start >= res->start &&
>>>>>> +                               crashk_low_res.end <= res->end)
>>>>>> +                       request_resource(res, &crashk_low_res);
>>>>>>                 if (crashk_res.end && crashk_res.start >= res->start &&
>>>>>>                     crashk_res.end <= res->end)
>>>>>>                         request_resource(res, &crashk_res);
>>>>>> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
>>>>>> index b65dffd..0d7afd5 100644
>>>>>> --- a/arch/arm64/mm/init.c
>>>>>> +++ b/arch/arm64/mm/init.c
>>>>>> @@ -80,6 +80,7 @@ static void __init reserve_crashkernel(void)
>>>>>>  {
>>>>>>         unsigned long long crash_base, crash_size;
>>>>>>         int ret;
>>>>>> +       phys_addr_t crash_max = arm64_dma32_phys_limit;
>>>>>>
>>>>>>         ret = parse_crashkernel(boot_command_line, memblock_phys_mem_size(),
>>>>>>                                 &crash_size, &crash_base);
>>>>>> @@ -87,12 +88,38 @@ static void __init reserve_crashkernel(void)
>>>>>>         if (ret || !crash_size)
>>>>>>                 return;
>>>>>>
>>>>>> +       ret = reserve_crashkernel_low();
>>>>>> +       if (!ret && crashk_low_res.end) {
>>>>>> +               /*
>>>>>> +                * If crashkernel=X,low specified, there may be two regions,
>>>>>> +                * we need to make some changes as follows:
>>>>>> +                *
>>>>>> +                * 1. rename the low region as "Crash kernel (low)"
>>>>>> +                * In order to distinct from the high region and make no effect
>>>>>> +                * to the use of existing kexec-tools, rename the low region as
>>>>>> +                * "Crash kernel (low)".
>>>>>> +                *
>>>>>> +                * 2. change the upper bound for crash memory
>>>>>> +                * Set MEMBLOCK_ALLOC_ACCESSIBLE upper bound for crash memory.
>>>>>> +                *
>>>>>> +                * 3. mark the low region as "nomap"
>>>>>> +                * The low region is intended to be used for crash dump kernel
>>>>>> +                * devices, just mark the low region as "nomap" simply.
>>>>>> +                */
>>>>>> +               const char *rename = "Crash kernel (low)";
>>>>>> +
>>>>>> +               crashk_low_res.name = rename;
>>>>>> +               crash_max = MEMBLOCK_ALLOC_ACCESSIBLE;
>>>>>> +               memblock_mark_nomap(crashk_low_res.start,
>>>>>> +                                   resource_size(&crashk_low_res));
>>>>>> +       }
>>>>>> +
>>>>>>         crash_size = PAGE_ALIGN(crash_size);
>>>>>>
>>>>>>         if (crash_base == 0) {
>>>>>>                 /* Current arm64 boot protocol requires 2MB alignment */
>>>>>> -               crash_base = memblock_find_in_range(0, arm64_dma32_phys_limit,
>>>>>> -                               crash_size, SZ_2M);
>>>>>> +               crash_base = memblock_find_in_range(0, crash_max, crash_size,
>>>>>> +                               SZ_2M);
>>>>>>                 if (crash_base == 0) {
>>>>>>                         pr_warn("cannot allocate crashkernel (size:0x%llx)\n",
>>>>>>                                 crash_size);
>>>>>> --
>>>>>
>>>>> I tested this patch series on ARM64-ThunderX2 with no issue with
>>>>> bootargs crashkenel=X@Y crashkernel=250M,low
>>>>>
>>>>> $ dmesg | grep crash
>>>>> [    0.000000] crashkernel reserved: 0x0000000b81200000 -
>>>>> 0x0000000c81200000 (4096 MB)
>>>>> [    0.000000] Kernel command line:
>>>>> BOOT_IMAGE=/boot/vmlinuz-5.6.0-rc4+
>>>>> root=UUID=866b8df3-14f4-4e11-95a1-74a90ee9b694 ro
>>>>> crashkernel=4G@0xb81200000 crashkernel=250M,low nowatchdog earlycon
>>>>> [   29.310209]     crashkernel=250M,low
>>>>>
>>>>> $  kexec -p -i /boot/vmlinuz-`uname -r`
>>>>> --initrd=/boot/initrd.img-`uname -r` --reuse-cmdline
>>>>> $ echo 1 > /proc/sys/kernel/sysrq ; echo c > /proc/sysrq-trigger
>>>>>
>>>>> But when i tried with crashkernel=4G crashkernel=250M,low as bootargs.
>>>>> Kernel is not able to allocate memory.
>>>>> [    0.000000] cannot allocate crashkernel (size:0x100000000)
>>>>> [    0.000000] Kernel command line:
>>>>> BOOT_IMAGE=/boot/vmlinuz-5.6.0-rc4+
>>>>> root=UUID=866b8df3-14f4-4e11-95a1-74a90ee9b694 ro crashkernel=4G
>>>>> crashkernel=250M,low nowatchdog
>>>>> [   29.332081]     crashkernel=250M,low
>>>>>
>>>>> does crashkernel=X@Y mandatory to get allocated beyond 4G?
>>>>> am I missing something?
>>>>
>>>> I can't reproduce the problem in my environment, can you test with other size,
>>>> such as "crashkernel=1G crashkernel=250M,low", see if there is the same issue.
>>>>
>>> I tried 1G also. Same error, please find the logs
>>>
>>> $ dmesg | grep crash
>>> [    0.000000] cannot allocate crashkernel (size:0x40000000)
>>> [    0.000000] Kernel command line:
>>> BOOT_IMAGE=/boot/vmlinuz-5.6.0-rc4+
>>> root=UUID=866b8df3-14f4-4e11-95a1-74a90ee9b694 ro nowatchdog earlycon
>>> crashkernel=1G crashkernel=250M,low
>>> [   29.326916]     crashkernel=250M,low
>>>
>>>
>>>> Besides, crashkernel=X@Y isn't mandatory to get allocated beyond 4G,
>>>
>>> this was my understanding also.
>>>
>>>> can you show the whole file /proc/iomem.
>>>>
>>>
>>> $ cat /proc/iomem
>>> 00000000-00000000 : PCI ECAM
>>> 00000000-00000000 : PCI ECAM
>>> 00000000-00000000 : PCI Bus 0000:00
>>>   00000000-00000000 : PCI Bus 0000:0f
>>>     00000000-00000000 : PCI Bus 0000:10
>>>       00000000-00000000 : 0000:10:00.0
>>>       00000000-00000000 : 0000:10:00.0
>>>   00000000-00000000 : PCI Bus 0000:01
>>>     00000000-00000000 : 0000:01:00.0
>>>     00000000-00000000 : 0000:01:00.1
>>>   00000000-00000000 : PCI Bus 0000:05
>>>     00000000-00000000 : 0000:05:00.0
>>>     00000000-00000000 : 0000:05:00.1
>>>   00000000-00000000 : PCI Bus 0000:09
>>>     00000000-00000000 : 0000:09:00.0
>>>     00000000-00000000 : 0000:09:00.1
>>>   00000000-00000000 : 0000:00:10.0
>>>     00000000-00000000 : ahci
>>>   00000000-00000000 : 0000:00:10.1
>>>     00000000-00000000 : ahci
>>> 00000000-00000000 : PCI Bus 0000:80
>>>   00000000-00000000 : PCI Bus 0000:83
>>>     00000000-00000000 : 0000:83:00.0
>>>     00000000-00000000 : 0000:83:00.0
>>>       00000000-00000000 : nvme
>>>   00000000-00000000 : PCI Bus 0000:89
>>>     00000000-00000000 : 0000:89:00.0
>>>       00000000-00000000 : e1000e
>>>     00000000-00000000 : 0000:89:00.0
>>>     00000000-00000000 : 0000:89:00.0
>>>       00000000-00000000 : e1000e
>>>     00000000-00000000 : 0000:89:00.0
>>>       00000000-00000000 : e1000e
>>>   00000000-00000000 : PCI Bus 0000:8d
>>>     00000000-00000000 : 0000:8d:00.0
>>>     00000000-00000000 : 0000:8d:00.0
>>>       00000000-00000000 : mpt3sas
>>> 00000000-00000000 : reserved
>>> 00000000-00000000 : System RAM
>>>   00000000-00000000 : Kernel code
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : Kernel data
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>> 00000000-00000000 : reserved
>>> 00000000-00000000 : System RAM
>>> 00000000-00000000 : reserved
>>> 00000000-00000000 : System RAM
>>>   00000000-00000000 : reserved
>>> 00000000-00000000 : reserved
>>> 00000000-00000000 : System RAM
>>>   00000000-00000000 : reserved
>>> 00000000-00000000 : reserved
>>> 00000000-00000000 : System RAM
>>>   00000000-00000000 : reserved
>>> 00000000-00000000 : reserved
>>> 00000000-00000000 : System RAM
>>>   00000000-00000000 : reserved
>>> 00000000-00000000 : reserved
>>> 00000000-00000000 : System RAM
>>>   00000000-00000000 : reserved
>>> 00000000-00000000 : CAV901C:00
>>> 00000000-00000000 : CAV901D:00
>>>   00000000-00000000 : CAV901C:00
>>> 00000000-00000000 : CAV901E:00
>>>   00000000-00000000 : CAV901C:00
>>> 00000000-00000000 : CAV901F:00
>>>   00000000-00000000 : CAV901C:00
>>> 00000000-00000000 : CAV9006:00
>>>   00000000-00000000 : CAV9006:00
>>> 00000000-00000000 : ARMH0011:00
>>>   00000000-00000000 : ARMH0011:00
>>> 00000000-00000000 : arm-smmu-v3.0.auto
>>>   00000000-00000000 : arm-smmu-v3.0.auto
>>> 00000000-00000000 : arm-smmu-v3.1.auto
>>>   00000000-00000000 : arm-smmu-v3.1.auto
>>> 00000000-00000000 : arm-smmu-v3.2.auto
>>>   00000000-00000000 : arm-smmu-v3.2.auto
>>> 00000000-00000000 : CAV901C:01
>>> 00000000-00000000 : CAV901D:01
>>>   00000000-00000000 : CAV901C:01
>>> 00000000-00000000 : CAV901E:01
>>>   00000000-00000000 : CAV901C:01
>>> 00000000-00000000 : CAV901F:01
>>>   00000000-00000000 : CAV901C:01
>>> 00000000-00000000 : CAV9007:06
>>>   00000000-00000000 : CAV9007:06
>>> 00000000-00000000 : arm-smmu-v3.3.auto
>>>   00000000-00000000 : arm-smmu-v3.3.auto
>>> 00000000-00000000 : arm-smmu-v3.4.auto
>>>   00000000-00000000 : arm-smmu-v3.4.auto
>>> 00000000-00000000 : arm-smmu-v3.5.auto
>>>   00000000-00000000 : arm-smmu-v3.5.auto
>>> 00000000-00000000 : System RAM
>>> 00000000-00000000 : System RAM
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>> 00000000-00000000 : System RAM
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>>   00000000-00000000 : reserved
>>> 00000000-00000000 : PCI Bus 0000:00
>>>   00000000-00000000 : PCI Bus 0000:01
>>>     00000000-00000000 : 0000:01:00.0
>>>     00000000-00000000 : 0000:01:00.1
>>>     00000000-00000000 : 0000:01:00.0
>>>     00000000-00000000 : 0000:01:00.1
>>>     00000000-00000000 : 0000:01:00.0
>>>     00000000-00000000 : 0000:01:00.1
>>>   00000000-00000000 : PCI Bus 0000:05
>>>     00000000-00000000 : 0000:05:00.0
>>>       00000000-00000000 : bnx2x
>>>     00000000-00000000 : 0000:05:00.1
>>>       00000000-00000000 : bnx2x
>>>     00000000-00000000 : 0000:05:00.0
>>>       00000000-00000000 : bnx2x
>>>     00000000-00000000 : 0000:05:00.0
>>>       00000000-00000000 : bnx2x
>>>     00000000-00000000 : 0000:05:00.1
>>>       00000000-00000000 : bnx2x
>>>     00000000-00000000 : 0000:05:00.1
>>>       00000000-00000000 : bnx2x
>>>   00000000-00000000 : PCI Bus 0000:09
>>>     00000000-00000000 : 0000:09:00.0
>>>       00000000-00000000 : i40e
>>>     00000000-00000000 : 0000:09:00.1
>>>       00000000-00000000 : i40e
>>>     00000000-00000000 : 0000:09:00.0
>>>     00000000-00000000 : 0000:09:00.1
>>>     00000000-00000000 : 0000:09:00.0
>>>       00000000-00000000 : i40e
>>>     00000000-00000000 : 0000:09:00.1
>>>       00000000-00000000 : i40e
>>>     00000000-00000000 : 0000:09:00.0
>>>     00000000-00000000 : 0000:09:00.1
>>>   00000000-00000000 : 0000:00:0f.0
>>>     00000000-00000000 : xhci-hcd
>>>   00000000-00000000 : 0000:00:0f.0
>>>   00000000-00000000 : 0000:00:0f.1
>>>     00000000-00000000 : xhci-hcd
>>>   00000000-00000000 : 0000:00:0f.1
>>>   00000000-00000000 : 0000:00:10.0
>>>     00000000-00000000 : ahci
>>>   00000000-00000000 : 0000:00:10.1
>>>     00000000-00000000 : ahci
>>> 00000000-00000000 : PCI Bus 0000:80
>>>
>>
>> resending with correct logs (after login as root)
>>
>> $ cat /proc/iomem
>> 30000000-37ffffff : PCI ECAM
>> 38000000-3fffffff : PCI ECAM
>> 40000000-5fffffff : PCI Bus 0000:00
>>   40000000-417fffff : PCI Bus 0000:0f
>>     40000000-417fffff : PCI Bus 0000:10
>>       40000000-40ffffff : 0000:10:00.0
>>       41000000-4101ffff : 0000:10:00.0
>>   41800000-418fffff : PCI Bus 0000:01
>>     41800000-4183ffff : 0000:01:00.0
>>     41840000-4187ffff : 0000:01:00.1
>>   41900000-419fffff : PCI Bus 0000:05
>>     41900000-4197ffff : 0000:05:00.0
>>     41980000-419fffff : 0000:05:00.1
>>   41a00000-41afffff : PCI Bus 0000:09
>>     41a00000-41a7ffff : 0000:09:00.0
>>     41a80000-41afffff : 0000:09:00.1
>>   41b00000-41b0ffff : 0000:00:10.0
>>     41b00000-41b0ffff : ahci
>>   41b10000-41b1ffff : 0000:00:10.1
>>     41b10000-41b1ffff : ahci
>> 60000000-7fffffff : PCI Bus 0000:80
>>   60000000-600fffff : PCI Bus 0000:83
>>     60000000-6001ffff : 0000:83:00.0
>>     60020000-60023fff : 0000:83:00.0
>>       60020000-60023fff : nvme
>>   60100000-601fffff : PCI Bus 0000:89
>>     60100000-6017ffff : 0000:89:00.0
>>       60100000-6017ffff : e1000e
>>     60180000-601bffff : 0000:89:00.0
>>     601c0000-601dffff : 0000:89:00.0
>>       601c0000-601dffff : e1000e
>>     601e0000-601e3fff : 0000:89:00.0
>>       601e0000-601e3fff : e1000e
>>   60200000-603fffff : PCI Bus 0000:8d
>>     60200000-602fffff : 0000:8d:00.0
>>     60300000-6030ffff : 0000:8d:00.0
>>       60300000-6030ffff : mpt3sas
>> 802f0000-8030ffff : reserved
>> e6247000-e6247fff : reserved
>> e6720000-e690ffff : reserved
>> e6a90000-e6a9ffff : reserved
>> e6ab0000-e721ffff : reserved
>> e7240000-e7240fff : reserved
>> fac00000-fafdffff : reserved
>> 400040400-40004041f : CAV901C:00
>> 400040480-400040567 : CAV901D:00
>>   400040480-400040567 : CAV901C:00
>> 400040600-40004073b : CAV901E:00
>>   400040600-40004073b : CAV901C:00
>> 400041400-40004177f : CAV901F:00
>>   400041400-40004177f : CAV901C:00
>> 402000100-402000fff : CAV9006:00
>>   402000100-402000fff : CAV9006:00
>> 402020000-40202ffff : ARMH0011:00
>>   402020000-40202ffff : ARMH0011:00
>> 402300000-40230ffff : arm-smmu-v3.0.auto
>>   402300000-40230ffff : arm-smmu-v3.0.auto
>> 402320000-40232ffff : arm-smmu-v3.1.auto
>>   402320000-40232ffff : arm-smmu-v3.1.auto
>> 402340000-40234ffff : arm-smmu-v3.2.auto
>>   402340000-40234ffff : arm-smmu-v3.2.auto
>> 440040400-44004041f : CAV901C:01
>> 440040480-440040567 : CAV901D:01
>>   440040480-440040567 : CAV901C:01
>> 440040600-44004073b : CAV901E:01
>>   440040600-44004073b : CAV901C:01
>> 440041400-44004177f : CAV901F:01
>>   440041400-44004177f : CAV901C:01
>> 4421a0000-4421affff : CAV9007:06
>>   4421a0000-4421affff : CAV9007:06
>> 442300000-44230ffff : arm-smmu-v3.3.auto
>>   442300000-44230ffff : arm-smmu-v3.3.auto
>> 442320000-44232ffff : arm-smmu-v3.4.auto
>>   442320000-44232ffff : arm-smmu-v3.4.auto
>> 442340000-44234ffff : arm-smmu-v3.5.auto
>>   442340000-44234ffff : arm-smmu-v3.5.auto
>> b81200000-c811fffff : System RAM
>>   b81280000-b8270ffff : Kernel code
>>   b82710000-b82dfffff : reserved
>>   b82e00000-b83168fff : Kernel data
>>   b83169000-baccd7fff : reserved
>>   c78a00000-c7fffffff : reserved
>>   c80129000-c801a9fff : reserved
>>   c801aa000-c809e9fff : reserved
>>   c809ec000-c809eefff : reserved
>>   c809ef000-c811fffff : reserved
>> 10000000000-13fffffffff : PCI Bus 0000:00
>>   10000000000-100013fffff : PCI Bus 0000:01
>>     10000000000-100007fffff : 0000:01:00.0
>>     10000800000-10000ffffff : 0000:01:00.1
>>     10001000000-1000101ffff : 0000:01:00.0
>>     10001020000-1000103ffff : 0000:01:00.1
>>     10001040000-1000104ffff : 0000:01:00.0
>>     10001050000-1000105ffff : 0000:01:00.1
>>   10001400000-100037fffff : PCI Bus 0000:05
>>     10001400000-1000140ffff : 0000:05:00.0
>>       10001400000-1000140ffff : bnx2x
>>     10001410000-1000141ffff : 0000:05:00.1
>>       10001410000-1000141ffff : bnx2x
>>     10001800000-10001ffffff : 0000:05:00.0
>>       10001800000-10001ffffff : bnx2x
>>     10002000000-100027fffff : 0000:05:00.0
>>       10002000000-100027fffff : bnx2x
>>     10002800000-10002ffffff : 0000:05:00.1
>>       10002800000-10002ffffff : bnx2x
>>     10003000000-100037fffff : 0000:05:00.1
>>       10003000000-100037fffff : bnx2x
>>   10003800000-100053fffff : PCI Bus 0000:09
>>     10003800000-10003ffffff : 0000:09:00.0
>>       10003800000-10003ffffff : i40e
>>     10004000000-100047fffff : 0000:09:00.1
>>       10004000000-100047fffff : i40e
>>     10004800000-10004bfffff : 0000:09:00.0
>>     10004c00000-10004ffffff : 0000:09:00.1
>>     10005000000-10005007fff : 0000:09:00.0
>>       10005000000-10005007fff : i40e
>>     10005008000-1000500ffff : 0000:09:00.1
>>       10005008000-1000500ffff : i40e
>>     10005010000-1000510ffff : 0000:09:00.0
>>     10005110000-1000520ffff : 0000:09:00.1
>>   10005400000-1000540ffff : 0000:00:0f.0
>>     10005400000-1000540ffff : xhci-hcd
>>   10005410000-1000541ffff : 0000:00:0f.0
>>   10005420000-1000542ffff : 0000:00:0f.1
>>     10005420000-1000542ffff : xhci-hcd
>>   10005430000-1000543ffff : 0000:00:0f.1
>>   10005440000-1000544ffff : 0000:00:10.0
>>     10005440000-1000544ffff : ahci
>>   10005450000-1000545ffff : 0000:00:10.1
>>     10005450000-1000545ffff : ahci
>> 14000000000-17fffffffff : PCI Bus 0000:80
>>
>>
>> failure with crashkernel=1G
>>
>> :~$ dmesg | grep crash
>> [    0.000000] cannot allocate crashkernel (size:0x40000000)
>> [    0.000000] Kernel command line: BOOT_IMAGE=/boot/vmlinuz-5.6.0-rc4+
>> root=UUID=866b8df3-14f4-4e11-95a1-74a90ee9b694 ro nowatchdog earlycon
>> crashkernel=1G crashkernel=250M,low
>> [   29.326916]     crashkernel=250M,low
>>
> 
> I read these clearly, found that your all testcases failed including
> "crashkernel=4G@0xb81200000 crashkernel=250M,low".
> 

I tested 3 scenarios
1) crashkernel=4G@0xb81200000 crashkernel=250M,low  : Allocation Passed
2) crashkernel=4G crashkernel=250M,low : Allocation failed
3) crashkernel=2G crashkernel=250M,low : Allocation failed
4) crashkernel=1G crashkernel=250M,low : Allocation failed


> There is no "Crash kernel (low)" in all your tests, that is there is no enough
> low memory, in these cases, parameters equal to 4G@0xb81200000, crashkernel=4G
> and crashkernel=1G.
> 
> crashkernel=4G and crashkernel=1G all failed because there is no low memory.
> 


As per my understanding, this patch series allow to allocate memory
above 4G range. So For crashkernel = 1G: if no memory found in low
memory range, it will automatically be allocated from above 4G range.


--pk


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
