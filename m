Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F157F143FB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 15:38:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xhdvdIt4d2B0pDkrowHbJcnSfDQJ6LjT+CaVJeEy1so=; b=ZA1o5nVQF7c1rWNlddImtPrU3
	jKE/54Csa740pzjJDKr5bueXW4Tt8khOHQZZCLLcThLDWnA5XAfGC9JYXtjRuuYWOY2rWri5DqGUD
	HtkPBVqC1R+zfBWj/irN2548G5LkZvkU4DjhBMQfPA5744crOgH7Qca2hJZ6XUAcGan15MYIpCU59
	K9Cy/7SK/FA0q+9lQxINSuKxexaNy2Ce+v5b3u/eLGalDLQfB4h4DIytI2CgOWzsjMov0Zzpqinfl
	WTYxrk4/5oKKaz+EJ8PcwJPj7DSBkQRfhdUkbRz0dob8Tpfa4Q6MjBKSjIFayPl10K/sUqqs42ubt
	5sfBPOzWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itufK-00010U-Vw; Tue, 21 Jan 2020 14:38:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ituf8-0000zd-5q
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 14:37:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B7D4630E;
 Tue, 21 Jan 2020 06:37:47 -0800 (PST)
Received: from [10.1.196.51] (a075563-lin.cambridge.arm.com [10.1.196.51])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CD2613F52E;
 Tue, 21 Jan 2020 06:37:45 -0800 (PST)
Subject: Re: [PATCH v3 15/16] arm64: compile the kernel with ptrauth return
 address signing
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-16-git-send-email-amit.kachhap@arm.com>
 <20200117114942.GG26090@arrakis.emea.arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <7e1826b5-bf1b-b3c1-c5ab-47ab464baa8c@arm.com>
Date: Tue, 21 Jan 2020 14:37:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200117114942.GG26090@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_063750_316637_EE7C2303 
X-CRM114-Status: GOOD (  27.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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



On 1/17/20 11:49 AM, Catalin Marinas wrote:
> On Mon, Dec 16, 2019 at 02:17:17PM +0530, Amit Daniel Kachhap wrote:
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index 06b5025..f0798b7 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -1466,6 +1466,7 @@ config ARM64_PTR_AUTH
>>   	bool "Enable support for pointer authentication"
>>   	default y
>>   	depends on !KVM || ARM64_VHE
>> +	depends on GCC_VERSION >= 70000 || CLANG_VERSION >= 80000
> 
> Please don't add checks on compiler versions. Use cc-option when you
> need a certain option rather than guessing which compiler version
> supports it. People may do backports of different features, so the
> version is not relevant.
ok this is fixed locally.
> 
>>   	help
>>   	  Pointer authentication (part of the ARMv8.3 Extensions) provides
>>   	  instructions for signing and authenticating pointers against secret
>> @@ -1473,11 +1474,17 @@ config ARM64_PTR_AUTH
>>   	  and other attacks.
>>   
>>   	  This option enables these instructions at EL0 (i.e. for userspace).
>> -
>>   	  Choosing this option will cause the kernel to initialise secret keys
>>   	  for each process at exec() time, with these keys being
>>   	  context-switched along with the process.
>>   
>> +	  If the compiler supports the -mbranch-protection or
>> +	  -msign-return-address flag (e.g. GCC 7 or later), then this option
>> +	  will also cause the kernel itself to be compiled with return address
>> +	  protection. In this case, and if the target hardware is known to
>> +	  support pointer authentication, then CONFIG_STACKPROTECTOR can be
>> +	  disabled with minimal loss of protection.
>> +
>>   	  The feature is detected at runtime. If the feature is not present in
>>   	  hardware it will not be advertised to userspace/KVM guest nor will it
>>   	  be enabled. However, KVM guest also require VHE mode and hence
>> @@ -1488,6 +1495,18 @@ config ARM64_PTR_AUTH
>>   	  have address auth and the late CPU has then system panic will occur.
>>   	  On such a system, this option should not be selected.
>>   
>> +config CC_HAS_BRANCH_PROT_PAC_RET
>> +	# GCC 9 or later, clang 8 or later
>> +	def_bool $(cc-option,-mbranch-protection=pac-ret+leaf)
>> +
>> +config CC_HAS_SIGN_RETURN_ADDRESS
>> +	# GCC 7, 8
>> +	def_bool $(cc-option,-msign-return-address=all)
>> +
>> +config AS_HAS_PAC
>> +	def_bool $(as-option,-Wa,-march=armv8.3-a)
>> +	depends on CC_IS_CLANG
> 
> First, as I commented on the previous patch, clang seems to ignore -Wa,
> so you can write whatever you want after it and it seems to be always
> true.
> 
> Second, if you need the assembler to support certain features, it needs
> to be checked irrespective of whether the compiler is gcc or clang.
> Binutils is a separate package.

ok agreed and done locally.

> 
>> +
>>   endmenu
>>   
>>   config ARM64_SVE
>> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
>> index 1fbe24d..6a1da59 100644
>> --- a/arch/arm64/Makefile
>> +++ b/arch/arm64/Makefile
>> @@ -72,6 +72,17 @@ stack_protector_prepare: prepare0
>>   					include/generated/asm-offsets.h))
>>   endif
>>   
>> +ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
>> +branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
>> +branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
>> +# -march=armv8.3-a enables the non-nops instructions for PAC, to avoid the compiler
>> +# to generate them and consequently to break the single image contract we pass it
>> +# only to the assembler when clang is selected as a compiler. For the GNU toolchain
>> +# this option is not used.
>> +branch-prot-flags-$(CONFIG_AS_HAS_PAC) += -Wa,-march=armv8.3-a
>> +KBUILD_CFLAGS += $(branch-prot-flags-y)
>> +endif
> 
> So, does this actually work with clang?

Yes this works with clang. If I add -v to the  KBUILD_CFLAGS then it 
splits the output and shows that the Wa arguments are given to the gcc 
assembler and clang compiler does not use it.

> 
> Please check the clang issue in case I'm mistaken. Otherwise, you could
> use as-instr as in this patch:
> 
> https://lore.kernel.org/linux-arm-kernel/20200115113008.3334-3-catalin.marinas@arm.com/
> 
> Also Will had a preference for warning during build if the user
> requested a feature in .config (i.e. PAC) but the compiler/assembler
> does not support it (that was for the LSE patch above). You could
> attempt something similar with this patch.

I tried to add warnings like below which are in similar line to the 
above link,

ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
+  ifneq ($(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS),y)
+    ifneq ($(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET),y)
+$(warning Pointer authentication not supported by compiler)
+    endif
+  endif
+  ifneq ($(CONFIG_AS_HAS_PAC),y)
+$(warning Pointer authentication not supported by assembler)
+  endif
endif

But the issue is that warnings are printed twice and becomes confusing. 
First warning computed with the incorrect Kconfig flags and later with 
the correct computed Kconfig flags. This may be due to 
arch/arm64/Kconfig sourced twice.


> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
