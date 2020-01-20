Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783E9142D80
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 15:27:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/8XuwYqDhiVKBuHVcBrvy7o2har0TeGmdAWwtI82D/s=; b=QIcmzSpTKLdDPulL+fS54hYzj
	pe+rVQ2hlPvdjKQ/ejOYrwvbt+ycIP5DN72NP3sCrQckOJC0RKJVNB7Pn/KI4eZfekX+dPkn5hlUR
	1SuaL12SI1WZFkURBlLyNSDoyJf2MZm0pij4f7lNbwhYO2t+wwNipSalZ+7v0pAZhDtu6oim7EBfE
	Z7NaXfIhmY4RZmLBQ9Nn4OBl8xcFinfjeCwX4YTFzy3nnQo8Ja1+XPUxS3EplROKMixghka/mR1ep
	VoNnENa0HSuvvwe96zBAgreAr6nLf1Yu1niz7WEnvNETJiK2u53LsQxxqK1ypGQgThJF53crQAc5U
	J/p+OrpWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itY1V-0004WB-Og; Mon, 20 Jan 2020 14:27:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itY1I-0004Ve-Ml
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 14:27:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 12D0530E;
 Mon, 20 Jan 2020 06:27:12 -0800 (PST)
Received: from [10.1.37.58] (a075563-lin.cambridge.arm.com [10.1.37.58])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F14BD3F52E;
 Mon, 20 Jan 2020 06:27:09 -0800 (PST)
Subject: Re: [PATCH v3 06/16] arm64: enable ptrauth earlier
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-7-git-send-email-amit.kachhap@arm.com>
 <20200116162414.GF10277@arrakis.emea.arm.com>
 <2d14a778-5fdf-7735-6fb1-57de3aa3e275@arm.com>
 <20200117120050.GI26090@arrakis.emea.arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <2694fc13-9a90-5450-b085-ed8b95e0d2e9@arm.com>
Date: Mon, 20 Jan 2020 14:27:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200117120050.GI26090@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_062712_829462_A4B356B2 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/17/20 12:00 PM, Catalin Marinas wrote:
> On Fri, Jan 17, 2020 at 04:13:06PM +0530, Amit Kachhap wrote:
>> On 1/16/20 9:54 PM, Catalin Marinas wrote:
>>> On Mon, Dec 16, 2019 at 02:17:08PM +0530, Amit Daniel Kachhap wrote:
>>>> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
>>>> index 5aaf1bb..c59c28f 100644
>>>> --- a/arch/arm64/kernel/head.S
>>>> +++ b/arch/arm64/kernel/head.S
> [...]
>>>> +ENTRY(__cpu_secondary_checkptrauth)
>>>> +#ifdef CONFIG_ARM64_PTR_AUTH
>>>> +	/* Check if the CPU supports ptrauth */
>>>> +	mrs	x2, id_aa64isar1_el1
>>>> +	ubfx	x2, x2, #ID_AA64ISAR1_APA_SHIFT, #8
>>>> +	cbnz	x2, 1f
>>>> +alternative_if ARM64_HAS_ADDRESS_AUTH
>>>> +	mov	x3, 1
>>>> +alternative_else
>>>> +	mov	x3, 0
>>>> +alternative_endif
>>>> +	cbz	x3, 1f
>>>> +	/* Park the mismatched secondary CPU */
>>>> +	early_park_cpu CPU_STUCK_REASON_NO_PTRAUTH
>>>> +#endif
>>>> +1:	ret
>>>> +ENDPROC(__cpu_secondary_checkptrauth)
>>>
>>> Do we actually need to park secondary CPUs early? Let's say a secondary
>>> CPU doesn't have PAC, __cpu_setup won't set the corresponding SCTLR_EL1
>>> bits and the instructions are NOPs. Wouldn't the cpufeature framework
>>> park it later anyway?
>>
>> In the current cpufeature framework, such missing cpufeature in
>> secondary cpu will lead to kernel panic (inside check_early_cpufeatures)
>> and not cpu offline. However Kristina in her RFC V2 [1] added such
>> feature to park it.
> 
> I remember discussing how to avoid the kernel panic with her at the
> time.
> 
>> Later for moving the enabling ptrauth to assembly this work got dropped.
>> Suzuki provided the template code for doing that [2].
>>
>> Later James suggested to do this like existing
>> __cpu_secondary_check52bitva which parks the secondary cpu very early
>> and also to save wasted cpu cycles [3].
> 
> I don't really care about a few cycles lost during boot.
> 
>> So your question is still valid that it can be done in cpufeature. Let
>> me know your opinion that which one is better.
> 
> My preference is for Kristina's approach. The 52-bit VA is slightly
> different (as is VHE) as we cannot guarantee the secondary CPU to even
> reach the CPU framework. With PAC, I don't see why it would fail
> reaching the C code, so I'd prefer a more readable C implementation than
> the assembler one.

ok. I will use approach in my next iteration.

> 
> Anyway, I'm open to counterarguments here.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
