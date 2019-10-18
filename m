Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB6BDC44D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:03:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZtQ7f1goHVc6K74qT2/2uUDjzja3vQv0jWpC1Vv5UU=; b=G0zjzhmB1U3GkR
	Jcj+bh/iw7+7jz+HQjtgCULxG1pIxBPrsaX4cPEUtBOiF0uf0GeItRSykii8zAUYA4xRqSPuc0qPl
	nxL15Q1zcjfX+hFTmEinF3o4aTohbDTjKaLHGd8dKKE4636cQdVznqmMI2EyE8QilDksmwhr5Bkhl
	8WXUfp8KSAe5dikub/yKAH6kESZ5Ee+XEdfVsZwFjhtGXwr+wfWPtihj3xe4ZVxaJvKK7EFqYxvBY
	GXPVPeokRA6M0NbmBFXkEuxL/013tYfOlVx4K0Kn3ww6W4FaJlWvc0ZCpC9gzuBDqjD+eybq5s2TD
	pphx3vAi+zee23XQvUtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLQz5-0000ph-Vu; Fri, 18 Oct 2019 12:03:56 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQyu-0000ob-FH
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:03:46 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 48475E0CF41259E163D3;
 Fri, 18 Oct 2019 20:03:40 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 18 Oct 2019 20:03:31 +0800
Subject: Re: [PATCH V3] arm64: psci: Reduce waiting time for
 cpu_psci_cpu_kill()
To: Sudeep Holla <sudeep.holla@arm.com>
References: <433980c7-f246-f741-f00c-fce103a60af7@huawei.com>
 <20191018114529.GA15116@bogus>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Message-ID: <0baccab6-9804-7b59-0ad6-765af7980714@huawei.com>
Date: Fri, 18 Oct 2019 20:03:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191018114529.GA15116@bogus>
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_050344_683587_1200EA43 
X-CRM114-Status: GOOD (  18.04  )
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
Cc: kstewart@linuxfoundation.org, lorenzo.pieralisi@arm.com,
 ard.biesheuvel@linaro.org, "hushiyuan@huawei.com" <hushiyuan@huawei.com>,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 "linfeilong@huawei.com" <linfeilong@huawei.com>, David.Laight@ACULAB.COM,
 gregkh@linuxfoundation.org, tglx@linutronix.de, wuyun.wu@huawei.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/10/18 19:45, Sudeep Holla wrote:
> On Fri, Oct 18, 2019 at 07:24:14PM +0800, Yunfeng Ye wrote:
>> In a case like suspend-to-disk, a large number of CPU cores need to be
> 
> Add suspend-to-ram also to list, i.e.
> "In case like suspend-to-disk and suspend-to-ram, a large number..."
> 
ok, thanks.

>> shut down. At present, the CPU hotplug operation is serialised, and the
>> CPU cores can only be shut down one by one. In this process, if PSCI
>> affinity_info() does not return LEVEL_OFF quickly, cpu_psci_cpu_kill()
>> needs to wait for 10ms. If hundreds of CPU cores need to be shut down,
>> it will take a long time.
>>
>> Normally, it is no need to wait 10ms in cpu_psci_cpu_kill(). So change
> 
> s/it is/there is/
> 
ok, thanks.

>> the wait interval from 10 ms to max 1 ms and use usleep_range() instead
>> of msleep() for more accurate schedule.
>>
> 
> s/for more accurate schedule/for more accurate timer/
> 
ok, thanks.

>> In addition, reduce the time interval will increase the messages output,
> 
> s/reduce/reducing/
> 
ok, thanks.

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
>>  			return 0;
>>  		}
>>
>> -		msleep(10);
>> -		pr_info("Retrying again to check for CPU kill\n");
>> +		usleep_range(100, 1000);
> 
> Since usleep_range can return anytime between 100us to 1ms, does it make
> sense to check for (time_before(jiffies, timeout)) you had in v2 ?
> 
ok, if using (time_before(jiffies, timeout)), the output message change to print
waiting xxx jiffies ? or still print the number of loops?

> --
> Regards,
> Sudeep
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
