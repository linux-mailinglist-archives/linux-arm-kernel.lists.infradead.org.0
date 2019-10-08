Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDBCCF0D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 04:34:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EHEzLEAGJqoZIXn0PnFIHN8Dp6iHJ9tzUDuvWR2G73A=; b=P27AZRMDJCJDB3
	tYEG4ZhxiAaGu9JtOF3u+cnrT6/qAU0bNTcAM97mhrSCa5+sFOzhumddS8yD01D4/Spw16lZjaXy5
	gGX/Y9saUrGGYEKamJchng/p2jpu7xJunMeW9MYKRwMBrX2KkiJ0Ut9DxJZd5kvK5w0OQEMyZ1pKW
	No+k/ykUl+U1+llhWrAZfxViyNFvy5lS8QTtR3xyDDic8VQy17N8HNgHEI6OiINLjLsXvncSh2sPB
	fhBjLdtMZq3qHU75og6rqUFNXFnusvRO5mLuiJSlzaeSjhFwIfhZwoqG5ubzKtjN5RPmQ61B6jdl9
	bIkpKXpJBupsy3MnvtqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHfKs-0006h0-5n; Tue, 08 Oct 2019 02:34:50 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHfKi-0006gN-SJ
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 02:34:42 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 6D5EA265082CC7F488AD;
 Tue,  8 Oct 2019 10:34:35 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 8 Oct 2019 10:34:31 +0800
Subject: Re: [PATCH v2] arm64: armv8_deprecated: Checking return value for
 memory allocation
To: Will Deacon <will@kernel.org>
References: <bd558d56-18a9-3607-3db0-ad203ab12aa8@huawei.com>
 <20191007153710.7xpx27kgeewz75kt@willie-the-truck>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Message-ID: <e58c36f6-23e3-12b2-bd9c-1ef731b5f8fd@huawei.com>
Date: Tue, 8 Oct 2019 10:33:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191007153710.7xpx27kgeewz75kt@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_193441_088778_77870859 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kstewart@linuxfoundation.org, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org, tglx@linutronix.de,
 info@metux.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/10/7 23:37, Will Deacon wrote:
> On Mon, Oct 07, 2019 at 06:06:35PM +0800, Yunfeng Ye wrote:
>> There are no return value checking when using kzalloc() and kcalloc() for
>> memory allocation. so add it.
>>
>> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
>> ---
>> v1 -> v2:
>>  - return error code when memory allocation failure
>>
>>  arch/arm64/kernel/armv8_deprecated.c | 57 +++++++++++++++++++++++++++---------
>>  1 file changed, 43 insertions(+), 14 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/armv8_deprecated.c b/arch/arm64/kernel/armv8_deprecated.c
>> index 2ec09de..2284fcb 100644
>> --- a/arch/arm64/kernel/armv8_deprecated.c
>> +++ b/arch/arm64/kernel/armv8_deprecated.c
>> @@ -168,12 +168,15 @@ static int update_insn_emulation_mode(struct insn_emulation *insn,
>>  	return ret;
>>  }
>>
>> -static void __init register_insn_emulation(struct insn_emulation_ops *ops)
>> +static int __init register_insn_emulation(struct insn_emulation_ops *ops)
>>  {
>>  	unsigned long flags;
>>  	struct insn_emulation *insn;
>>
>>  	insn = kzalloc(sizeof(*insn), GFP_KERNEL);
>> +	if (!insn)
>> +		return -ENOMEM;
>> +
>>  	insn->ops = ops;
>>  	insn->min = INSN_UNDEF;
>>
>> @@ -197,6 +200,7 @@ static void __init register_insn_emulation(struct insn_emulation_ops *ops)
>>
>>  	/* Register any handlers if required */
>>  	update_insn_emulation_mode(insn, INSN_UNDEF);
>> +	return 0;
>>  }
>>
>>  static int emulation_proc_handler(struct ctl_table *table, int write,
>> @@ -224,7 +228,7 @@ static int emulation_proc_handler(struct ctl_table *table, int write,
>>  	return ret;
>>  }
>>
>> -static void __init register_insn_emulation_sysctl(void)
>> +static int __init register_insn_emulation_sysctl(void)
>>  {
>>  	unsigned long flags;
>>  	int i = 0;
>> @@ -233,6 +237,8 @@ static void __init register_insn_emulation_sysctl(void)
>>
>>  	insns_sysctl = kcalloc(nr_insn_emulated + 1, sizeof(*sysctl),
>>  			       GFP_KERNEL);
>> +	if (!insns_sysctl)
>> +		return -ENOMEM;
>>
>>  	raw_spin_lock_irqsave(&insn_emulation_lock, flags);
>>  	list_for_each_entry(insn, &insn_emulation, node) {
>> @@ -251,6 +257,7 @@ static void __init register_insn_emulation_sysctl(void)
>>  	raw_spin_unlock_irqrestore(&insn_emulation_lock, flags);
>>
>>  	register_sysctl("abi", insns_sysctl);
>> +	return 0;
>>  }
>>
>>  /*
>> @@ -617,25 +624,47 @@ static int t16_setend_handler(struct pt_regs *regs, u32 instr)
>>   */
>>  static int __init armv8_deprecated_init(void)
>>  {
>> -	if (IS_ENABLED(CONFIG_SWP_EMULATION))
>> -		register_insn_emulation(&swp_ops);
>> +	int ret = 0;
>> +	int err = 0;
>> +
>> +	if (IS_ENABLED(CONFIG_SWP_EMULATION)) {
>> +		ret = register_insn_emulation(&swp_ops);
>> +		if (ret) {
>> +			pr_err("register insn emulation swp: fail\n");
>> +			err = ret;
>> +		}
>> +	}
> 
> Is there much point in continuing here? May as well just return ret, I
> think. I also don't think you need to print anything, since kmalloc
> should already have shouted.
> 
The registration of each instruction simulation is independent. I think
that one failure does not affect the registration of other instructions.
In addition, if return directly, is it need to unregister? Of course,
the first instruction registration can be directly returned, If the
following instruction registration fails, is it need unregister operation?
currently the unregistration of instruction simulation is not be implemented
yet.

The purpose of printing information is to replace the direct return, which
can distinguish which instruction failed to register. There is no need to print
information if it returns directly.

thanks.

>> -	if (IS_ENABLED(CONFIG_CP15_BARRIER_EMULATION))
>> -		register_insn_emulation(&cp15_barrier_ops);
>> +	if (IS_ENABLED(CONFIG_CP15_BARRIER_EMULATION)) {
>> +		ret = register_insn_emulation(&cp15_barrier_ops);
>> +		if (ret) {
>> +			pr_err("register insn emulation cpu15_barrier: fail\n");
>> +			err = ret;
>> +		}
>> +	}
>>
>>  	if (IS_ENABLED(CONFIG_SETEND_EMULATION)) {
>> -		if(system_supports_mixed_endian_el0())
>> -			register_insn_emulation(&setend_ops);
>> -		else
>> +		if (system_supports_mixed_endian_el0()) {
>> +			ret = register_insn_emulation(&setend_ops);
>> +			if (ret) {
>> +				pr_err("register insn emulation setend: fail\n");
>> +				err = ret;
>> +			}
>> +		} else {
>>  			pr_info("setend instruction emulation is not supported on this system\n");
>> +		}
>>  	}
>>
>> -	cpuhp_setup_state_nocalls(CPUHP_AP_ARM64_ISNDEP_STARTING,
>> -				  "arm64/isndep:starting",
>> -				  run_all_insn_set_hw_mode, NULL);
>> -	register_insn_emulation_sysctl();
>> +	if (nr_insn_emulated) {
>> +		cpuhp_setup_state_nocalls(CPUHP_AP_ARM64_ISNDEP_STARTING,
>> +					  "arm64/isndep:starting",
>> +					  run_all_insn_set_hw_mode, NULL);
>> +		ret = register_insn_emulation_sysctl();
>> +		if (ret)
>> +			err = ret;
>> +	}
> 
> I'm dubious about leaving the cpuhp notifier registered if we fail here.
> Can we simply reorder the logic so that the notifier is registered after
> successfully calling register_insn_emulation_sysctl()? thanks.
> 
ok, I will reorder the logic.
And the same question: is it need to unregister the instruction emulation
if register_insn_emulation_sysctl() invoked fail?

> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
