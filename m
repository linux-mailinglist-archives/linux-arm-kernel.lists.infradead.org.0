Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582EFDE57C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 09:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iO3V8YV+8R0nJL7v7oJ4vP6YHkggZBT2AVDVwuSDb3o=; b=Hd7rCBupo1y7c7
	yL4kOBwbInranpFYW5KGGiTgymGGRr1Y4LjtMeas7BAyIyxV26m9p/+SW0CU5up0QB6cRNVcvXqfb
	72Hn1F3TM3i4oMI/Ao/LsoUtFHBihr+NBjm3BG1lwg/TrHCtz6isTzIFL8Mh9VrUuhwaWhjsHHG2k
	g4laELzoRO4zqMeVgveo7LhE63etkeNuaYILq3HgR9ut1HbuzCOCc4Mjy2C8lizanuW1E3TAvp9kK
	JaAg/rTE/JgOMV9quDDRAsVE0Ri1BQwTJ1rYTrF555eapVlcR2TUbAl61R3GmurDX/veLQtT3JzfD
	fi+HWhpdsAmVsF8VqsAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMSPt-0001MR-9S; Mon, 21 Oct 2019 07:47:49 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMSPj-0001Ky-9b
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 07:47:41 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 855B6BB6E5538F4C3F30;
 Mon, 21 Oct 2019 15:47:26 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0;
 Mon, 21 Oct 2019 15:47:20 +0800
Subject: Re: [PATCH v4] arm64: psci: Reduce the waiting time for
 cpu_psci_cpu_kill()
To: Sudeep Holla <sudeep.holla@arm.com>
References: <04ab51e4-bc08-8250-4e70-4c87c58c8ad0@huawei.com>
 <20191018152052.GA10312@bogus>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Message-ID: <e5304bb1-e031-7c40-37f8-605b0ae2f869@huawei.com>
Date: Mon, 21 Oct 2019 15:47:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191018152052.GA10312@bogus>
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_004739_505907_5A8C04E2 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: kstewart@linuxfoundation.org, mark.rutland@arm.com,
 lorenzo.pieralisi@arm.com, hushiyuan@huawei.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, linfeilong@huawei.com, David.Laight@ACULAB.COM,
 gregkh@linuxfoundation.org, tglx@linutronix.de, wuyun.wu@huawei.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/10/18 23:20, Sudeep Holla wrote:
> On Fri, Oct 18, 2019 at 08:46:37PM +0800, Yunfeng Ye wrote:
>> In case like suspend-to-disk and uspend-to-ram, a large number of CPU
> 
> s/case/cases/
> s/uspend-to-ram/suspend-to-ram/
> 
ok, thanks.

>> cores need to be shut down. At present, the CPU hotplug operation is
>> serialised, and the CPU cores can only be shut down one by one. In this
>> process, if PSCI affinity_info() does not return LEVEL_OFF quickly,
>> cpu_psci_cpu_kill() needs to wait for 10ms. If hundreds of CPU cores
>> need to be shut down, it will take a long time.
>>
>> Normally, there is no need to wait 10ms in cpu_psci_cpu_kill(). So
>> change the wait interval from 10 ms to max 1 ms and use usleep_range()
>> instead of msleep() for more accurate timer.
>>
>> In addition, reducing the time interval will increase the messages
>> output, so remove the "Retry ..." message, instead, put the number of
>> waiting times to the sucessful message.
>>
>> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
>> ---
>> v3 -> v4:
>>  - using time_before(jiffies, timeout) to check
>>  - update the comment as review suggest
>>
>> v2 -> v3:
>>  - update the comment
>>  - remove the busy-wait logic, modify the loop logic and output message
>>
>> v1 -> v2:
>>  - use usleep_range() instead of udelay() after waiting for a while
>>  arch/arm64/kernel/psci.c | 14 ++++++++------
>>  1 file changed, 8 insertions(+), 6 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
>> index c9f72b2665f1..77965c3ba477 100644
>> --- a/arch/arm64/kernel/psci.c
>> +++ b/arch/arm64/kernel/psci.c
>> @@ -81,7 +81,8 @@ static void cpu_psci_cpu_die(unsigned int cpu)
>>
>>  static int cpu_psci_cpu_kill(unsigned int cpu)
>>  {
>> -	int err, i;
>> +	int err, i = 0;
>> +	unsigned long timeout;
>>
>>  	if (!psci_ops.affinity_info)
>>  		return 0;
>> @@ -91,16 +92,17 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
>>  	 * while it is dying. So, try again a few times.
>>  	 */
>>
>> -	for (i = 0; i < 10; i++) {
>> +	timeout = jiffies + msecs_to_jiffies(100);
>> +	do {
>> +		i++;
>>  		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
>>  		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
>> -			pr_info("CPU%d killed.\n", cpu);
>> +			pr_info("CPU%d killed (polled %d times)\n", cpu, i);
> 
> We can even drop loop counter completely, track time and log that
> instead of loop counter that doesn't give any indication without looking
> into the code.
> 
ok, I will modify as your suggest. thanks.

> 	start = jiffies, end = start + msecs_to_jiffies(100);
> 	do {
> 			....
> 			pr_info("CPU%d killed (polled %u ms)\n", cpu,
> 				jiffies_to_msecs(jiffies - start));
> 			....
> 	} while (time_before(jiffies, end));
> 
> Just my preference. Looks good otherwise.
> 
> --
> Regards,
> Sudeep
> 
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
