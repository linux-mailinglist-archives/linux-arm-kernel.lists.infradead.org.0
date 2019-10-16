Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF81D864E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 05:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oj8Zji/pNzV39JebaNpg+G2P2NZ4fS1oxRTC387FzOY=; b=JObfBM0aNuYZzv
	jItMakr+hxLYhgunRUsqdNSwXZGqDXva/YgC0LHf73IMaS++QE1VgeqzeKMFmq+zoinIbv7Xl/MdG
	XXQ8WhFJh6WDTTXmQxFpH+vdonEUN/PGdaDeM/C1g5d7ZbdJxub7mSNkW+rGqlo0WLP9LmhPcSjos
	r4AD2yBo9qgWyJ9CsL16td7bspc7hShaW4G0NqawMCvxwWxV12Cy/msJpI1S9+ldQbkQVDkQGIDvX
	xJ/vfm6mVv5/6DXpXojPW4RWP0QVnB7NBKDMU2GZV2BNYywrUfP4OFAWuxhY1hht4+nVoDJDwIhgD
	Y/oehiGyV/D+esTwMstA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKZtn-0002EX-FS; Wed, 16 Oct 2019 03:22:55 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKZte-0002DW-JR
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 03:22:48 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 717D118A858FF1708FEE;
 Wed, 16 Oct 2019 11:22:39 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0;
 Wed, 16 Oct 2019 11:22:31 +0800
Subject: Re: [PATCH V2] arm64: psci: Reduce waiting time of cpu_psci_cpu_kill()
To: Will Deacon <will@kernel.org>, <sudeep.holla@arm.com>
References: <18068756-0f39-6388-3290-cf03746e767d@huawei.com>
 <20191015162358.bt5rffidkv2j4xqb@willie-the-truck>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Message-ID: <ab42357e-f4f9-9019-e8d9-7e9bfe106e9e@huawei.com>
Date: Wed, 16 Oct 2019 11:22:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191015162358.bt5rffidkv2j4xqb@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_202246_809309_C313688F 
X-CRM114-Status: GOOD (  21.51  )
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
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/10/16 0:23, Will Deacon wrote:
> Hi,
> 
> On Sat, Sep 21, 2019 at 07:21:17PM +0800, Yunfeng Ye wrote:
>> If psci_ops.affinity_info() fails, it will sleep 10ms, which will not
>> take so long in the right case. Use usleep_range() instead of msleep(),
>> reduce the waiting time, and give a chance to busy wait before sleep.
> 
> Can you elaborate on "the right case" please? It's not clear to me
> exactly what problem you're solving here.
> 
The situation is that when the power is off, we have a battery to save some
information, but the battery power is limited, so we reduce the power consumption
by turning off the cores, and need fastly to complete the core shutdown. However, the
time of cpu_psci_cpu_kill() will take 10ms. We have tested the time that it does not
need 10ms, and most case is about 50us-500us. if we reduce the time of cpu_psci_cpu_kill(),
we can reduce 10% - 30% of the total time.

So change msleep (10) to usleep_range() to reduce the waiting time. In addition,
we don't want to be scheduled during the sleeping time, some threads may take a
long time and don't give up the CPU, which affects the time of core shutdown,
Therefore, we add a chance to busy-wait max 1ms.

thanks.

> I've also added Sudeep to the thread, since I'd like his ack on the change.
> 
> Will
> 
>>  arch/arm64/kernel/psci.c | 17 +++++++++++++----
>>  1 file changed, 13 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
>> index c9f72b2..99b3122 100644
>> --- a/arch/arm64/kernel/psci.c
>> +++ b/arch/arm64/kernel/psci.c
>> @@ -82,6 +82,7 @@ static void cpu_psci_cpu_die(unsigned int cpu)
>>  static int cpu_psci_cpu_kill(unsigned int cpu)
>>  {
>>  	int err, i;
>> +	unsigned long timeout;
>>
>>  	if (!psci_ops.affinity_info)
>>  		return 0;
>> @@ -91,16 +92,24 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
>>  	 * while it is dying. So, try again a few times.
>>  	 */
>>
>> -	for (i = 0; i < 10; i++) {
>> +	i = 0;
>> +	timeout = jiffies + msecs_to_jiffies(100);
>> +	do {
>>  		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
>>  		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
>>  			pr_info("CPU%d killed.\n", cpu);
>>  			return 0;
>>  		}
>>
>> -		msleep(10);
>> -		pr_info("Retrying again to check for CPU kill\n");
>> -	}
>> +		/* busy-wait max 1ms */
>> +		if (i++ < 100) {
>> +			cond_resched();
>> +			udelay(10);
>> +			continue;
>> +		}
>> +
>> +		usleep_range(100, 1000);
>> +	} while (time_before(jiffies, timeout));
>>
>>  	pr_warn("CPU%d may not have shut down cleanly (AFFINITY_INFO reports %d)\n",
>>  			cpu, err);
>> -- 
>> 2.7.4.huawei.3
>>
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
