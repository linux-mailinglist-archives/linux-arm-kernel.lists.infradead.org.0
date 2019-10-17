Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 871BBDAFDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7A6vOSnimKu2+lqunKXsEhNkVgzPKMYZ1ouznYAnyC8=; b=o6BWh1EIDjuJby
	73HcDSy1mulwqkamFsAXadge6TjHyawZSA8XhaA96/copVI7uvGFNg5VOOwfxySw4R+84aZgZjBGf
	P0cy+b6EEsmKkYigaNGvTqmlf3WBZ+ggsBrZnRjrurtBiJKYZb50HLfUUXeOrF23MymM/RQ/SCcoI
	sZv6q8S7hAYWjMSJOylrEcGVVgi2RXrpw+RsUxsQb5XATrC20dq7VEYFH6bAl4ErdYA+5DCEBuoOT
	tR7Y2ZY5Uw2QOqgN3o6VrYsPK2RtIdwccVMWJTj5uizhRqtIzfbwMH3T4cPjvAqi/vLWq363/H/Lc
	rn6YxESrSJs39uRPowbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6fk-0004Yb-NL; Thu, 17 Oct 2019 14:22:36 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6dm-0002Yt-Qa
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:20:36 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 5444352314939BFFAD81;
 Thu, 17 Oct 2019 22:20:29 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 17 Oct 2019 22:20:23 +0800
Subject: Re: [PATCH V2] arm64: psci: Reduce waiting time of cpu_psci_cpu_kill()
To: David Laight <David.Laight@ACULAB.COM>, Sudeep Holla <sudeep.holla@arm.com>
References: <18068756-0f39-6388-3290-cf03746e767d@huawei.com>
 <9df267db-e647-a81d-16bb-b8bfb06c2624@huawei.com>
 <20191016153221.GA8978@bogus>
 <0f550044-9ed2-5f72-1335-73417678ba45@huawei.com>
 <c97c87b52f474463bc30ff8033a57e0c@AcuMS.aculab.com>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Message-ID: <1cd555f0-4074-36b7-8426-6f01130051d2@huawei.com>
Date: Thu, 17 Oct 2019 22:19:54 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <c97c87b52f474463bc30ff8033a57e0c@AcuMS.aculab.com>
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_072035_056937_284ECE10 
X-CRM114-Status: GOOD (  11.92  )
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
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "hushiyuan@huawei.com" <hushiyuan@huawei.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linfeilong@huawei.com" <linfeilong@huawei.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "wuyun.wu@huawei.com" <wuyun.wu@huawei.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/10/17 22:00, David Laight wrote:
> From: Yunfeng Ye
>> Sent: 17 October 2019 14:26
> ...
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
>> When reduce the time interval to 1ms, the print message maybe increase 10 times.
>> on the other hand, cpu_psci_cpu_kill() will print message on success or failure, which
>> this retry log is not very necessary. of cource, I think use pr_info_once() instead of
>> pr_info() is better.
> 
> Maybe you should print in on (say) the 10th time around the loop.
> 
Can it like this:
  pr_info("CPU%d killed with %d loops.\n", cpu, loops);

If put the number of waiting times in the successful printing message, it is
not necessary to print the "Retrying ..." message.

thanks.

> 	David
> 
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
