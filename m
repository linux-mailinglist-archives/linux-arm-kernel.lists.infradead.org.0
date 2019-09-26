Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8CBBF0BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 13:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOQ0hhVQeFfOdIrx5oyzcdwA2NgyEfmePz8bUQaBYEQ=; b=bwOAf09hhbUEd/
	NDS6o4myZrGBUztVNf7PSbZCNsaNM8dZHd9d9LABCDTz2hz3QSqrulWQAwzR9X+l8TgjL4EyjrG7l
	0722m6FDfKJwfc1FDiZo7BXRqBwsc6JIM3SAeey6mU4ZKnFmo+yfrjvKU9j4+mycXTTuXRruj1hMa
	PdNG1W4Ivu4WPXcYp6MbnwtrpKumgXL4B3SRMlRIbFcziiRTIa2F4fcWsfLu0/LsE+r54LE4nOAPh
	vj+wPKtafqoyyYt4zpGggpEmi0CYENRW6mTe3T7m7mBHzeyHIYE+9qsvhMAZ749yheQeTPDTXVEwd
	GST4iMyUxA3n4xncEiCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRWA-0007O8-QG; Thu, 26 Sep 2019 11:01:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDRW4-0007Nk-8R
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 11:00:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B4AEB1000;
 Thu, 26 Sep 2019 04:00:55 -0700 (PDT)
Received: from [192.168.1.158] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 143B33F67D;
 Thu, 26 Sep 2019 04:00:53 -0700 (PDT)
Subject: Re: [PATCH 1/4] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926060353.54894-1-vincenzo.frascino@arm.com>
 <20190926060353.54894-2-vincenzo.frascino@arm.com>
 <20190926080616.GB26802@iMac.local>
 <0ff3d5f4-11c9-4207-c6ab-2f8e9ee7de5e@arm.com>
Message-ID: <0c5816ba-4393-07f7-23ec-38ebde0e447f@arm.com>
Date: Thu, 26 Sep 2019 12:02:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0ff3d5f4-11c9-4207-c6ab-2f8e9ee7de5e@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_040056_382392_F4514365 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 9/26/19 11:56 AM, Vincenzo Frascino wrote:
> On 9/26/19 9:06 AM, Catalin Marinas wrote:
>> On Thu, Sep 26, 2019 at 07:03:50AM +0100, Vincenzo Frascino wrote:
>>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>>> index 37c610963eee..afe8c948b493 100644
>>> --- a/arch/arm64/Kconfig
>>> +++ b/arch/arm64/Kconfig
>>> @@ -110,7 +110,7 @@ config ARM64
>>>  	select GENERIC_STRNLEN_USER
>>>  	select GENERIC_TIME_VSYSCALL
>>>  	select GENERIC_GETTIMEOFDAY
>>> -	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT)
>>> +	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT && COMPAT_CC_IS_GCC)
>>>  	select HANDLE_DOMAIN_IRQ
>>>  	select HARDIRQS_SW_RESEND
>>>  	select HAVE_PCI
>>> @@ -313,6 +313,9 @@ config KASAN_SHADOW_OFFSET
>>>  	default 0xeffffff900000000 if ARM64_VA_BITS_36 && KASAN_SW_TAGS
>>>  	default 0xffffffffffffffff
>>>  
>>> +config COMPAT_CC_IS_GCC
>>> +	def_bool $(success,$(CROSS_COMPILE_COMPAT)gcc --version | head -n 1 | grep -q arm)
>>
>> Nitpick: I prefer COMPATCC instead of COMPAT_CC for consistency with
>> HOSTCC.
>>
> 
> Ok, will change this in v2.
> 
>> Now, could we not generate a COMPATCC in the Makefile and use
>> $(COMPATCC) here instead of $(CROSS_COMPILE_COMPAT)gcc? It really
>> doesn't make sense to check that gcc is gcc.
>>
> 
> All right, COMPATCC is already in the makefile, I will use it in here.
> 
>> A next step would be to check that COMPATCC can actually generate 32-bit
>> objects. But it's not essential at this stage.
>>
> 
> We are already checking this making sure that arm is present in the triple (grep
> -q arm).
> 
>>> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
>>> index 84a3d502c5a5..34f53eb11878 100644
>>> --- a/arch/arm64/Makefile
>>> +++ b/arch/arm64/Makefile
>>> @@ -54,19 +54,8 @@ $(warning Detected assembler with broken .inst; disassembly will be unreliable)
>>>  endif
>>>  
>>>  ifeq ($(CONFIG_GENERIC_COMPAT_VDSO), y)
>>> -  CROSS_COMPILE_COMPAT ?= $(CONFIG_CROSS_COMPILE_COMPAT_VDSO:"%"=%)
>>> -
>>> -  ifeq ($(CONFIG_CC_IS_CLANG), y)
>>> -    $(warning CROSS_COMPILE_COMPAT is clang, the compat vDSO will not be built)
>>> -  else ifeq ($(strip $(CROSS_COMPILE_COMPAT)),)
>>> -    $(warning CROSS_COMPILE_COMPAT not defined or empty, the compat vDSO will not be built)
>>> -  else ifeq ($(shell which $(CROSS_COMPILE_COMPAT)gcc 2> /dev/null),)
>>> -    $(error $(CROSS_COMPILE_COMPAT)gcc not found, check CROSS_COMPILE_COMPAT)
>>> -  else
>>> -    export CROSS_COMPILE_COMPAT
>>> -    export CONFIG_COMPAT_VDSO := y
>>> -    compat_vdso := -DCONFIG_COMPAT_VDSO=1
>>> -  endif
>>> +  export CONFIG_COMPAT_VDSO := y
>>> +  compat_vdso := -DCONFIG_COMPAT_VDSO=1
>>>  endif
>>
>> Has CONFIG_CROSS_COMPILE_COMPAT_VDSO actually been removed from
>> lib/vdso/Kconfig? (I haven't checked the subsequent patches).
>>
> 

Missed this, I have the patch ready for that. When this series will be merged,
no more architectures will use the macro hence I will send a separate patch to
remove it from the common code.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
