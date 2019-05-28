Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8252C6FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 14:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Uwy6J3fHYPNDljkG51uxu3MXxZlwxoXhTQDV2tTnsrA=; b=MpfDoYkTCKOB0FZndLdTFbSrI
	YWs0wR37wIo4+sgeLd382GNr3+HETljHdycmct+SiL8KRAXcEEoai+he4oo91yhzdyBUeGNX2iGVo
	n2LKvUWTPqyAC/E4Idh8qPHc/L5E5GCk48KWOj8R7QV3luog1DxGa+xx4I9zK4nArUoLqPf2vSEqW
	+JGtgH8FFKi5n9/t7bXxfyk2U+YHuX7MBSLYfnEG9qpWpYCmqIK4mEeet8mQXo9YfguGDjNp14fNB
	T4XJCUz2iPwvPnWGzIGbwPil98wASXVM4Dviy2oN3shJNur7ErOQqNZs7EhgCPGHZauiS36vhhfG/
	sn82PX+Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbWo-0002BQ-82; Tue, 28 May 2019 12:48:30 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbWi-0002AZ-A3
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 12:48:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2FDF580D;
 Tue, 28 May 2019 05:48:22 -0700 (PDT)
Received: from [10.162.0.144] (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A42393F5AF;
 Tue, 28 May 2019 05:48:19 -0700 (PDT)
Subject: Re: [kvmtool PATCH v10 5/5] KVM: arm/arm64: Add a vcpu feature for
 pointer authentication
To: Dave Martin <Dave.Martin@arm.com>
References: <1555994558-26349-1-git-send-email-amit.kachhap@arm.com>
 <1555994558-26349-6-git-send-email-amit.kachhap@arm.com>
 <20190423154625.GP3567@e103592.cambridge.arm.com>
 <3b7bafc9-5d6a-7845-ef1f-577ea59000e2@arm.com>
 <20190424134120.GW3567@e103592.cambridge.arm.com>
 <20190528101128.GB28398@e103592.cambridge.arm.com>
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
Message-ID: <53ecc253-e9e0-a6ca-2540-fa85bd26bfc1@arm.com>
Date: Tue, 28 May 2019 18:18:16 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190528101128.GB28398@e103592.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_054824_360881_5EF275CD 
X-CRM114-Status: GOOD (  22.60  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Kristina Martsenko <kristina.martsenko@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On 5/28/19 3:41 PM, Dave Martin wrote:
> On Wed, Apr 24, 2019 at 02:41:21PM +0100, Dave Martin wrote:
>> On Wed, Apr 24, 2019 at 12:32:22PM +0530, Amit Daniel Kachhap wrote:
>>> Hi,
>>>
>>> On 4/23/19 9:16 PM, Dave Martin wrote:
> 
> [...]
> 
>>>>> diff --git a/arm/kvm-cpu.c b/arm/kvm-cpu.c
>>>>> index 7780251..acd1d5f 100644
>>>>> --- a/arm/kvm-cpu.c
>>>>> +++ b/arm/kvm-cpu.c
>>>>> @@ -68,6 +68,18 @@ struct kvm_cpu *kvm_cpu__arch_init(struct kvm *kvm, unsigned long cpu_id)
>>>>>   		vcpu_init.features[0] |= (1UL << KVM_ARM_VCPU_PSCI_0_2);
>>>>>   	}
>>>>> +	/* Check Pointer Authentication command line arguments. */
>>>>> +	if (kvm->cfg.arch.enable_ptrauth && kvm->cfg.arch.disable_ptrauth)
>>>>> +		die("Both enable-ptrauth and disable-ptrauth option cannot be present");
>>>>
>>>> Preferably, print the leading dashes, the same as the user would see
>>>> on the command line (e.g., --enable-ptrauth, --disable-ptrauth).
>>>>
>>>> For brevity, we could write something like:
>>>>
>>>> 		die("--enable-ptrauth conflicts with --disable-ptrauth");
> 
> [...]
> 
>>>>> @@ -106,8 +118,12 @@ struct kvm_cpu *kvm_cpu__arch_init(struct kvm *kvm, unsigned long cpu_id)
>>>>>   			die("Unable to find matching target");
>>>>>   	}
>>>>> -	if (err || target->init(vcpu))
>>>>> -		die("Unable to initialise vcpu");
>>>>> +	if (err || target->init(vcpu)) {
>>>>> +		if (kvm->cfg.arch.enable_ptrauth)
>>>>> +			die("Unable to initialise vcpu with pointer authentication feature");
>>>>
>>>> We don't special-case this error message for any other feature yet:
>>>> there are a variety of reasons why we might have failed, so suggesting
>>>> that the failure is something to do with ptrauth may be misleading to
>>>> the user.
>>>>
>>>> If we want to be more informative, we could do something like the
>>>> following:
>>>>
>>>> 	bool supported;
>>>>
>>>> 	supported = kvm__supports_extension(kvm, KVM_CAP_ARM_PTRAUTH_ADDRESS) &&
>>>> 		    kvm__supports_extension(kvm, KVM_CAP_ARM_PTRAUTH_GENERIC);
>>>>
>>>> 	if (kvm->cfg.arch.enable_ptrauth && !supported)
>>>> 		die("--enable-ptrauth not supported on this host");
>>>>
>>>> 	if (supported && !kvm->cfg.arch.disable_ptrauth)
>>>> 		vcpu_init.features[0] |= ARM_VCPU_PTRAUTH_FEATURE;
>>>>
>>>> 	/* ... */
>>>>
>>>> 	if (err || target->init(vcpu))
>>>> 		die("Unable to initialise vcpu");
>>>>
>>>> We don't do this for any other feature today, but since it helps the
>>>> user to understand what went wrong it's probably a good idea.
>>> Yes this is more clear. As Mark has picked the core guest ptrauth patches. I
>>> will post this changes as standalone.
>>
>> Sounds good.  (I also need to do that separately for SVE...)
> 
> Were you planning to repost this?
> 
> Alternatively, I can fix up the diagnostic messages discussed here and
> post it together with the SVE support.  I'll do that locally for now,
> but let me know what you plan to do.  I'd like to get the SVE support
> posted soon so that people can test it.
I will clean up the print messages as you suggested and repost it shortly.

Thanks,
Amit Daniel
> 
> Cheers
> ---Dave
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
