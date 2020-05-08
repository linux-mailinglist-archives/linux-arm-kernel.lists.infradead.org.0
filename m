Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B14E1CA017
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 03:30:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hc/AWH/PeLy4+zhxqEBP9Gi14HB0Z/k3e0gHnlH68CI=; b=IId7ryU7qqN9Iz
	MMkmACVl0erUo05+CttdxuaEwsOk7tdRFNZsv1QoDzOwbq5yxgemtcY+3VHfTP7MkEHZIRzzZP5mr
	FVH+nN9IxzkwjdKIqMxkUSWZVKd9U5PKiP0pBE/Nadp4MWlSazl6OoRpZLeKjoqPIJpyT5HLSub+u
	eS3v9I7R2hVyBWO55RZ8beafzqjYNrcdw2j4zOUtDxyIXvD9iA3sX3iYt64mpy27h2h0jEcCu2BAt
	zxqWS+ZBObwLvSp1cRrMdRaIw4O7dp/xRkpb/1GlBp5aRmIbpB/SlKtXjUvW6r4AiiG2HvNgShbx9
	KUdKTjz+6YljF7lacKPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWrqW-00016Y-NE; Fri, 08 May 2020 01:30:36 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWrqO-00014J-Hj
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 01:30:30 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 4002391465909247DBE8;
 Fri,  8 May 2020 09:29:33 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.237) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0;
 Fri, 8 May 2020 09:29:25 +0800
Subject: Re: [PATCH] arm64: stacktrace: Factor out some common code info
 on_stack()
To: Will Deacon <will@kernel.org>
References: <10b188af-a03b-3acc-8a06-cf31a46f735a@huawei.com>
 <20200507135213.GA32706@willie-the-truck>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Message-ID: <15e31e59-3429-53f8-bb61-5f60c90fa856@huawei.com>
Date: Fri, 8 May 2020 09:29:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200507135213.GA32706@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.166.215.237]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_183028_748301_BA01ED71 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, hewenliang4@huawei.com, lorenzo.pieralisi@arm.com,
 hushiyuan@huawei.com, catalin.marinas@arm.com, 0x7f454c46@gmail.com,
 linux-kernel@vger.kernel.org, james.morse@arm.com, tglx@linutronix.de,
 Dave.Martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/5/7 21:52, Will Deacon wrote:
> On Thu, May 07, 2020 at 05:28:19PM +0800, Yunfeng Ye wrote:
>> diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
>> index fdb913cc0bcb..b92bef2fb6cd 100644
>> --- a/arch/arm64/include/asm/stacktrace.h
>> +++ b/arch/arm64/include/asm/stacktrace.h
>> @@ -69,27 +69,40 @@ extern void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
>>
>>  DECLARE_PER_CPU(unsigned long *, irq_stack_ptr);
>>
>> -static inline bool on_irq_stack(unsigned long sp,
>> +static inline bool on_stack(unsigned long sp, unsigned long low,
>> +				unsigned long high, enum stack_type type,
>>  				struct stack_info *info)
>>  {
>> -	unsigned long low = (unsigned long)raw_cpu_read(irq_stack_ptr);
>> -	unsigned long high = low + IRQ_STACK_SIZE;
>> -
>> -	if (!low)
>> -		return false;
>> -
>>  	if (sp < low || sp >= high)
>>  		return false;
>>
>>  	if (info) {
>>  		info->low = low;
>>  		info->high = high;
>> -		info->type = STACK_TYPE_IRQ;
>> +		info->type = type;
>>  	}
>> -
>>  	return true;
>>  }
>>
>> +static inline bool on_valid_stack(unsigned long sp, unsigned long low,
>> +				unsigned long high, enum stack_type type,
>> +				struct stack_info *info)
>> +{
>> +	if (!low)
>> +		return false;
>> +
>> +	return on_stack(sp, low, high, type, info);
>> +}
> 
> Do we need this as distinct from on_stack()? Afaict, 'low' is never
> going to be NULL for the on_stack() callers, so I suggest just having
> on_stack() check 'low' and getting everybody to call that instead.
> 
> Make sense?
> 
ok, I will modify and send the patch v2, thanks.

> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
