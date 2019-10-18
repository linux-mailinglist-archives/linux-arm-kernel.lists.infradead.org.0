Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6BADC4A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eRtIs8mGpUmz80fd0Il4MRJu1TSQxENCQzugBrHvkc4=; b=iLIFc+/w3FUVjy
	NBx1H8BML6aReUidUNKYlWoARQLJWqEavfNHkTCO6eHWgcE+9ygwIZ/5KuyepNV/fhSu0iyF6F1h9
	pi7wNhRvV9Nu1Mjy9fhNVjyvgaOEb6c3Ox/xcQhI4ShRNmrqmfRNxRG7bOg1SfX4NbDO1pzqdsLVu
	M/Vw8iXkzETVnTzMM3eeX6oO3VKyX4GfMWz5fYK5Xjf8+EV2iIs3WUhkX6Z5KSDW+IqSej6bRfh9s
	+5na1rYzCQAWcSteOlZQ/atnZAPnhATAxp7Hn5tDJK/hG/q3TuxK/G9h+yqBDIqDpf3mH0zQ9xBdn
	iXYu4MNgF4h65JsMsKjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRI9-0001K3-76; Fri, 18 Oct 2019 12:23:37 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRHk-0001AT-8a
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:23:14 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1802D6A250DE9ACE03E4;
 Fri, 18 Oct 2019 20:23:10 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 18 Oct 2019 20:23:03 +0800
Subject: Re: [PATCH V3] arm64: psci: Reduce waiting time for
 cpu_psci_cpu_kill()
To: Mark Rutland <mark.rutland@arm.com>
References: <433980c7-f246-f741-f00c-fce103a60af7@huawei.com>
 <20191018114143.GE27759@lakrids.cambridge.arm.com>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Message-ID: <4ce8e384-598c-cf93-96a4-5a4fca82aff8@huawei.com>
Date: Fri, 18 Oct 2019 20:22:50 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191018114143.GE27759@lakrids.cambridge.arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_052312_501553_84C158AE 
X-CRM114-Status: GOOD (  22.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: kstewart@linuxfoundation.org, lorenzo.pieralisi@arm.com,
 ard.biesheuvel@linaro.org, "hushiyuan@huawei.com" <hushiyuan@huawei.com>,
 catalin.marinas@arm.com, sudeep.holla@arm.com, linux-kernel@vger.kernel.org,
 "linfeilong@huawei.com" <linfeilong@huawei.com>, David.Laight@ACULAB.COM,
 gregkh@linuxfoundation.org, tglx@linutronix.de, wuyun.wu@huawei.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/10/18 19:41, Mark Rutland wrote:
> On Fri, Oct 18, 2019 at 07:24:14PM +0800, Yunfeng Ye wrote:
>> In a case like suspend-to-disk, a large number of CPU cores need to be
>> shut down. At present, the CPU hotplug operation is serialised, and the
>> CPU cores can only be shut down one by one. In this process, if PSCI
>> affinity_info() does not return LEVEL_OFF quickly, cpu_psci_cpu_kill()
>> needs to wait for 10ms. If hundreds of CPU cores need to be shut down,
>> it will take a long time.
> 
> Do we have an idea of roughly how long a CPU _usually_ takes to
> transition state?
> 
> i.e. are we _just_ missing the transition the first time we call
> AFFINITY_INFO?
> 
we have test that in most case is less than 1ms, 50us-500us. the time not
only include hardware state transition, but also include flush caches in BIOS.
and flush caches operation is time-consuming.

>> Normally, it is no need to wait 10ms in cpu_psci_cpu_kill(). So change
>> the wait interval from 10 ms to max 1 ms and use usleep_range() instead
>> of msleep() for more accurate schedule.
>>
>> In addition, reduce the time interval will increase the messages output,
>> so remove the "Retry ..." message, instead, put the number of waiting
>> times to the sucessful message.
>>
>> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
>> ---
>> v2 -> v3:
>>  - update the comment
>>  - remove the busy-wait logic, modify the loop logic and output message
>>
>> v1 -> v2:
>>  - use usleep_range() instead of udelay() after waiting for a while
>>
>>  arch/arm64/kernel/psci.c | 7 +++----
>>  1 file changed, 3 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
>> index c9f72b2665f1..00b8c0825a08 100644
>> --- a/arch/arm64/kernel/psci.c
>> +++ b/arch/arm64/kernel/psci.c
>> @@ -91,15 +91,14 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
>>  	 * while it is dying. So, try again a few times.
>>  	 */
>>
>> -	for (i = 0; i < 10; i++) {
>> +	for (i = 0; i < 100; i++) {
>>  		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
>>  		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
>> -			pr_info("CPU%d killed.\n", cpu);
>> +			pr_info("CPU%d killed by waiting %d loops.\n", cpu, i);
> 
> Could we please make that:
> 
> 			pr_info("CPU%d killed (polled %d times)\n", cpu, i + 1);
> 
ok, thanks.
> 
> 
>>  			return 0;
>>  		}
>>
>> -		msleep(10);
>> -		pr_info("Retrying again to check for CPU kill\n");
>> +		usleep_range(100, 1000);
> 
> Hmm, so now we'll wait somewhere between 10ms and 100ms before giving up
> on a CPU depending on how long we actually sleep for each iteration of
> the loop. That should be called out in the commit message.
> 
> That could matter for kdump when you have a large number of CPUs, as in
> the worst case for 256 CPUs we've gone from ~2.6s to ~26s. But tbh in
> that case I'm not sure I care that much...
> 
> In the majority of cases I'd hope AFFINITY_INFO would return OFF after
> an iteration or two.
> 
Normally it will no need so much time.

> Thanks,
> Mark.
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
