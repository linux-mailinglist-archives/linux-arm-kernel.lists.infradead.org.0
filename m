Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4CC169B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 19:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eg384mK6mhSmhCqbXCQprzuqCp6ghsaqvKgWfENAaYY=; b=fa8cr2RjEzHu+gw/nUJaKd+L/
	oKUkAeMVaxsDPd9hMXX2Lqb+WMBtuorHhiaXqUbZxxYILUFlbkxGl6uZNFtf/AmGxiQQM5wu0CX0M
	MM9eYaUkmzCLesojpe0ApzZBQmOMIn8MAntap9WDCn63fs/bP6BS7tpK+/hICc02JI3fLNip5EfKE
	HSrZk5sCOMUxHk/IGhtOD9DbhhWG0mjAhKdTSS1sNEm7DiPeWAzvmRvdtAi0Amnk9RQgS8SwKpBOv
	UZODskx9VGvV74CmCUSBJ9SoHYGO6LKUThmNxD/BRNRG4T8rRgDpwL7Cdcx7H6k54gCnyucKRHa3e
	8Fq27itxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4MZ-0001HK-2o; Tue, 07 May 2019 17:58:47 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4MR-0001Gy-EZ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 17:58:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 01B23A78;
 Tue,  7 May 2019 10:58:37 -0700 (PDT)
Received: from [192.168.100.241] (usa-sjc-mx-foss1.foss.arm.com
 [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C52043F5AF;
 Tue,  7 May 2019 10:58:33 -0700 (PDT)
Subject: Re: [PATCH v3 0/5] arm64: SPE ACPI enablement
To: Hanjun Guo <guohanjun@huawei.com>, linux-arm-kernel@lists.infradead.org
References: <20190503232407.37195-1-jeremy.linton@arm.com>
 <5eaa1607-4bf0-a320-e9cf-2d51eca912c6@huawei.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <82032e5b-0cb5-e48f-ab51-ba5d5f9dceec@arm.com>
Date: Tue, 7 May 2019 12:58:25 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <5eaa1607-4bf0-a320-e9cf-2d51eca912c6@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_105839_495843_D3AC5B4C 
X-CRM114-Status: GOOD (  20.58  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linuxarm@huawei.com,
 linux-acpi@vger.kernel.org, catalin.marinas@arm.com, john.garry@huawei.com,
 lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 5/4/19 6:06 AM, Hanjun Guo wrote:
> Hi Jeremy, Mark,
> 
> On 2019/5/4 7:24, Jeremy Linton wrote:
>> This patch series enables the Arm Statistical Profiling
>> Extension (SPE) on ACPI platforms.
>>
>> This is possible because ACPI 6.3 uses a previously
>> reserved field in the MADT to store the SPE interrupt
>> number, similarly to how the normal PMU is described.
>> If a consistent valid interrupt exists across all the
>> cores in the system, a platform device is registered.
>> That then triggers the SPE module, which runs as normal.
>>
>> We also add the ability to parse the PPTT for IDENTICAL
>> cores. We then use this to sanity check the single SPE
>> device we create. This creates a bit of a problem with
>> respect to the specification though. The specification
>> says that its legal for multiple tree's to exist in the
>> PPTT. We handle this fine, but what happens in the
>> case of multiple tree's is that the lack of a common
>> node with IDENTICAL set forces us to assume that there
>> are multiple non-IDENTICAL cores in the machine.
> 
> Adding this patch set on top of latest mainline kernel,
> and tested on D06 which has the SPE feature, in boot message
> shows it was probed successfully:
> 
> arm_spe_pmu arm,spe-v1: probed for CPUs 0-95 [max_record_sz 128, align 4, features 0x7]
> 
> but when I test it with spe events such as
> 
> perf record -c 1024 -e arm_spe_0/branch_filter=0/ -o spe ls
> 
> it fails with:
> failed to mmap with 12 (Cannot allocate memory),
> 
> Confirmed that patch [0] is merged and other perf events are working
> fine.

Its pretty easy to get into the weeds with this driver, does it work 
with examples like:

https://lkml.org/lkml/2018/1/14/122

> I narrowed this issue down that mmap() failed to alloc 4M memory
> in perf tool but seems have no relationship with this SPE patch set,
> then I'm lost, could you take look please?
> 
> Thanks
> Hanjun
> 
> [0]: https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?id=528871b456026e6127d95b1b2bd8e3a003dc1614
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
