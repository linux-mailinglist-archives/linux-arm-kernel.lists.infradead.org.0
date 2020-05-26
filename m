Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2ED1E2053
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 13:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UYRw9I/QsVkLQ12JMsntikP51rU+WKYCyvYLBRzkbfw=; b=i1yqcbreCRuNnHPekznuhyfyb
	S7vPjb7Xosjgp16pHkpyYUmKH/LokF2fX0rWkIiVzeeAvnPqQpA2VoW2nZVsm6X1m7StQnJ7lbPbl
	JDUnKTRgq4kU1Zjaf8yggmbl9hZAfBS1pjt4RR5KZt+Cdm/q3azeAmA1rvf9zmMfKuGzx5+c6TUxD
	pyDu2W8kf+u/v9qHr4z3K+d8G58Fy23aLVqq5tUPzH+6Co1R4F4SB7ND9NpQhkyhs+r6QWky0T+KQ
	7t0kbI5ZWRQ5GWwwwXFITFz7eTqnEJP8tPAeWrT5a+juEVZ85J2cZRhJftabY34ABtkKC1/ygtfgX
	vevqOHy/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXLi-00047F-Q2; Tue, 26 May 2020 11:02:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXLU-00040D-Hn
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 11:02:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C65A931B;
 Tue, 26 May 2020 04:02:05 -0700 (PDT)
Received: from [192.168.1.84] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 18D213F6C4;
 Tue, 26 May 2020 04:02:02 -0700 (PDT)
Subject: Re: [RFC PATCH v12 07/11] psci: Add hypercall service for kvm ptp.
To: Jianyong Wu <Jianyong.Wu@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "maz@kernel.org" <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Mark Rutland <Mark.Rutland@arm.com>, "will@kernel.org" <will@kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>
References: <20200522083724.38182-1-jianyong.wu@arm.com>
 <20200522083724.38182-8-jianyong.wu@arm.com>
 <87fce07b-d0f5-47b0-05ce-dd664ce53eec@arm.com>
 <HE1PR0802MB2555A66F063927D5B855E1C6F4B30@HE1PR0802MB2555.eurprd08.prod.outlook.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <d7ec2534-95e4-ae79-fc53-4d48a4ea628c@arm.com>
Date: Tue, 26 May 2020 12:02:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <HE1PR0802MB2555A66F063927D5B855E1C6F4B30@HE1PR0802MB2555.eurprd08.prod.outlook.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_040208_676218_603ABB64 
X-CRM114-Status: GOOD (  29.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Justin He <Justin.He@arm.com>, Wei Chen <Wei.Chen@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kaly Xin <Kaly.Xin@arm.com>, nd <nd@arm.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/05/2020 03:11, Jianyong Wu wrote:
> Hi Steven,

Hi Jianyong,

[...]>>> diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
>>> index db6dce3d0e23..c964122f8dae 100644
>>> --- a/virt/kvm/arm/hypercalls.c
>>> +++ b/virt/kvm/arm/hypercalls.c
>>> @@ -3,6 +3,7 @@
>>>
>>>    #include <linux/arm-smccc.h>
>>>    #include <linux/kvm_host.h>
>>> +#include <linux/clocksource_ids.h>
>>>
>>>    #include <asm/kvm_emulate.h>
>>>
>>> @@ -11,6 +12,10 @@
>>>
>>>    int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
>>>    {
>>> +#ifdef CONFIG_ARM64_KVM_PTP_HOST
>>> +	struct system_time_snapshot systime_snapshot;
>>> +	u64 cycles;
>>> +#endif
>>>    	u32 func_id = smccc_get_function(vcpu);
>>>    	u32 val[4] = {SMCCC_RET_NOT_SUPPORTED};
>>>    	u32 feature;
>>> @@ -70,7 +75,49 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
>>>    		break;
>>>    	case ARM_SMCCC_VENDOR_HYP_KVM_FEATURES_FUNC_ID:
>>>    		val[0] = BIT(ARM_SMCCC_KVM_FUNC_FEATURES);
>>> +
>>> +#ifdef CONFIG_ARM64_KVM_PTP_HOST
>>> +		val[0] |= BIT(ARM_SMCCC_KVM_FUNC_KVM_PTP); #endif
>>>    		break;
>>> +
>>> +#ifdef CONFIG_ARM64_KVM_PTP_HOST
>>> +	/*
>>> +	 * This serves virtual kvm_ptp.
>>> +	 * Four values will be passed back.
>>> +	 * reg0 stores high 32-bit host ktime;
>>> +	 * reg1 stores low 32-bit host ktime;
>>> +	 * reg2 stores high 32-bit difference of host cycles and cntvoff;
>>> +	 * reg3 stores low 32-bit difference of host cycles and cntvoff.
>>> +	 */
>>> +	case ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID:
>>> +		/*
>>> +		 * system time and counter value must captured in the same
>>> +		 * time to keep consistency and precision.
>>> +		 */
>>> +		ktime_get_snapshot(&systime_snapshot);
>>> +		if (systime_snapshot.cs_id != CSID_ARM_ARCH_COUNTER)
>>> +			break;
>>> +		val[0] = upper_32_bits(systime_snapshot.real);
>>> +		val[1] = lower_32_bits(systime_snapshot.real);
>>> +		/*
>>> +		 * which of virtual counter or physical counter being
>>> +		 * asked for is decided by the first argument.
>>> +		 */
>>> +		feature = smccc_get_arg1(vcpu);
>>> +		switch (feature) {
>>> +		case ARM_SMCCC_VENDOR_HYP_KVM_PTP_PHY_FUNC_ID:
>>> +			cycles = systime_snapshot.cycles;
>>> +			break;
>>> +		default:
>>
>> There's something a bit odd here.
>>
>> ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID and
>> ARM_SMCCC_VENDOR_HYP_KVM_PTP_PHY_FUNC_ID look like they should
>> be names of separate (top-level) functions, but actually the _PHY_ one is a
>> parameter for the first. If the intention is to have a parameter then it would
>> be better to pick a better name for the _PHY_ define and not define it using
>> ARM_SMCCC_CALL_VAL.
>>
> Yeah, _PHY_ is not the same meaning with _PTP_FUNC_ID,  so I think it should be a different name.
> What about ARM_SMCCC_VENDOR_HYP_KVM_PTP_PHY_COUNTER?

Personally I'd go with something much shorter, e.g. ARM_PTP_PHY_COUNTER. 
This is just an argument to an SMCCC call so there's no need for most of 
the prefix, indeed if (for whatever reason) there was a non-SMCCC 
mechanism added to do the same thing it would be reasonable to reuse the 
same values.

>> Second the use of "default:" means that there's no possibility to later extend
>> this interface for more clocks if needed in the future.
>>
> I think we can add more clocks by adding more cases, this "default" means we can use no first arg to determine the default clock.

The problem with the 'default' is it means it's not possible to probe 
whether the kernel supports any more clocks. If we used a different 
value (that the kernel doesn't support) then we end up in the default 
case and have no idea whether the clock value is the one we requested or 
not.

It's generally better when defining an ABI to explicitly return an error 
for unknown parameters, that way a future user of the ABI can discover 
whether the call did what was expected or not.

>> Alternatively you could indeed implement as two top-level functions and
>> change this to a...
>>
>> 	switch (func_id)
>>
>> ... along with multiple case labels as the functions would obviously be mostly
>> the same.
>>
>> Also a minor style issue - you might want to consider splitting this into it's
>> own function.
>>
> I think "switch (feature)" maybe better as this _PHY_ is not like a function id. Just like:
> "
> case ARM_SMCCC_ARCH_FEATURES_FUNC_ID:
>                  feature = smccc_get_arg1(vcpu);
>                  switch (feature) {
>                  case ARM_SMCCC_ARCH_WORKAROUND_1:
> ...
> "

I'm happy either way - it's purely that the definition/naming of 
ARM_SMCCC_VENDOR_HYP_KVM_PTP_PHY_FUNC_ID made it look like that was the 
intention. My preference would be to stick with the 'feature' approach 
as above because there's no need to "use up" the top-level SMCCC calls 
(but equally there's a large space so we'd have to work very hard to run 
out... ;) )

>> Finally I do think it would be useful to add some documentation of the new
>> SMC calls. It would be easier to review the interface based on that
>> documentation rather than trying to reverse-engineer the interface from the
>> code.
>>
> Yeah, more doc needed here.

Thanks, I think it's a good idea to get the ABI nailed down before 
worrying too much about the code, and it's easier to discuss based on 
documentation rather than code.

Thanks,

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
