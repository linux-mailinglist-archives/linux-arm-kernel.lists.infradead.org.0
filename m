Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81ED8DAFFF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQmy8J/c46ZTF7+A3bRtmE0RBX8HuHvlp871ik1RFrI=; b=K5OyxqFr4jJi51
	8oZowdcm3JHCviMl6QXJYY/sDANb0XeAQLYlII+adxdKJcf+TOwCE3qm4AjPMfvE6lp5+BzjolUEe
	q7d2Fh+c8MBClnGTRIl8kEf/twkctsh/u6qrDdTOKIK8Q/guBDQs5u8zkTTdoHPdwn0Vveo8ByCJy
	53zk2itx89CtEpXN4rbN+SEkFSL+mYvgwJfpWSkuueb7A1QSaCx/3hS/ehNdyNtgGNtedmIdaI5ti
	czTFtiPhq+LC9s6XXTp8+MbEHlzR5gZKJ6JshMVC6fRB2MYxkLUF96aaXlPEP79icFmQxuo2D8Yc1
	d4y+ezyuOpXCwJZ5aWMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6iP-0007lu-Vq; Thu, 17 Oct 2019 14:25:22 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6iA-0006iZ-RH
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:25:08 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A4744BDAD13C9CDF3576;
 Thu, 17 Oct 2019 22:24:59 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 17 Oct 2019 22:24:51 +0800
Subject: Re: [PATCH V2] arm64: psci: Reduce waiting time of cpu_psci_cpu_kill()
To: Sudeep Holla <sudeep.holla@arm.com>
References: <18068756-0f39-6388-3290-cf03746e767d@huawei.com>
 <9df267db-e647-a81d-16bb-b8bfb06c2624@huawei.com>
 <20191016153221.GA8978@bogus>
 <0f550044-9ed2-5f72-1335-73417678ba45@huawei.com>
 <20191017135416.GA26312@bogus>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Message-ID: <0b3b8684-e840-ba32-6e42-d23fcadf7e65@huawei.com>
Date: Thu, 17 Oct 2019 22:24:33 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191017135416.GA26312@bogus>
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_072507_066380_08F20E27 
X-CRM114-Status: GOOD (  19.60  )
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>, hushiyuan@huawei.com,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linfeilong@huawei.com, David Laight <David.Laight@ACULAB.COM>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "wuyun.wu@huawei.com" <wuyun.wu@huawei.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/10/17 21:54, Sudeep Holla wrote:
> On Thu, Oct 17, 2019 at 09:26:15PM +0800, Yunfeng Ye wrote:
>>
>>
>> On 2019/10/16 23:32, Sudeep Holla wrote:
>>> On Wed, Oct 09, 2019 at 12:45:16PM +0800, Yunfeng Ye wrote:
>>>> If psci_ops.affinity_info() fails, it will sleep 10ms, which will not
>>>> take so long in the right case. Use usleep_range() instead of msleep(),
>>>> reduce the waiting time, and give a chance to busy wait before sleep.
>>>>
>>>> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
>>>> ---
>>>> V1->V2:
>>>> - use usleep_range() instead of udelay() after waiting for a while
>>>>
>>>>  arch/arm64/kernel/psci.c | 17 +++++++++++++----
>>>>  1 file changed, 13 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
>>>> index c9f72b2..99b3122 100644
>>>> --- a/arch/arm64/kernel/psci.c
>>>> +++ b/arch/arm64/kernel/psci.c
>>>> @@ -82,6 +82,7 @@ static void cpu_psci_cpu_die(unsigned int cpu)
>>>>  static int cpu_psci_cpu_kill(unsigned int cpu)
>>>>  {
>>>>  	int err, i;
>>>> +	unsigned long timeout;
>>>>
>>>>  	if (!psci_ops.affinity_info)
>>>>  		return 0;
>>>> @@ -91,16 +92,24 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
>>>>  	 * while it is dying. So, try again a few times.
>>>>  	 */
>>>>
>>>> -	for (i = 0; i < 10; i++) {
>>>> +	i = 0;
>>>> +	timeout = jiffies + msecs_to_jiffies(100);
>>>> +	do {
>>>>  		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
>>>>  		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
>>>>  			pr_info("CPU%d killed.\n", cpu);
>>>>  			return 0;
>>>>  		}
>>>>
>>>> -		msleep(10);
>>>> -		pr_info("Retrying again to check for CPU kill\n");
>>>
>>> You dropped this message, any particular reason ?
>>>
>> When reduce the time interval to 1ms, the print message maybe increase 10
>> times. on the other hand, cpu_psci_cpu_kill() will print message on success
>> or failure, which this retry log is not very necessary. of cource, I think
>> use pr_info_once() instead of pr_info() is better.
>>
> 
> Yes changing it to pr_info_once is better than dropping it as it gives
> some indication to the firmware if there's scope for improvement.
> 
>>>> -	}
>>>> +		/* busy-wait max 1ms */
>>>> +		if (i++ < 100) {
>>>> +			cond_resched();
>>>> +			udelay(10);
>>>> +			continue;
>>>
>>> Why can't it be simple like loop of 100 * msleep(1) instead of loop of
>>> 10 * msleep(10). The above initial busy wait for 1 ms looks too much
>>> optimised for your setup where it takes 50-500us, what if it take just
>>> over 1 ms ?
>>>
>> msleep() is implemented by jiffies. when HZ=100 or HZ=250, msleep(1) is not
>> accurate. so I think usleep_range() is better. 1 ms looks simple and good, but how
>> about 100us is better? I refer a function sunxi_mc_smp_cpu_kill(), it use
>> usleep_range(50, 100).
>>
> 
> Again that's specific to sunxi platforms and may work well. While I agree
> msleep(1) may not be accurate, I am still inclined to have a max value
> of 1000(i.e. 1ms) for usleep_range.
> 
ok, I will send a new version patch that waiting max 1ms.
thanks.

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
