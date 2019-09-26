Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC61EBF0AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 12:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XfeyFwCu/QwSggAu8tavTHZbTJXY24B/DG+IcT84pXo=; b=IM08hPdcVfi14O
	JhUgFzah6pX+GwzZXXkkyNvbpgXcACVudW/j9Cy/ehQjDPFSgBpGbetnwKAqsHap6khtNxuYIsKPd
	1Mpb8l1DMTht5dPRX+OBDWfZZGlmmkbuZu/fLEZ6lH8nO67Rl8WY0QJh0dCx/GPGNmHIhydEUQ/F+
	4Ct032kU66HTQ4UOSJuXWirtYbKbTrUnxpWzFXMZ1gsx/oFgcGa/SN3qz7c8owoWRTdmcZ1YzYPnA
	VR5h9qpTdmZzFjCUfgA1GJfTTIzskO0rMyB7LIKo4NDfNscnCwbNJgKq9NQVXSv7qSexhLquzul2G
	hsac2JzyQBtrpeyw6vNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRTI-0005Pb-CZ; Thu, 26 Sep 2019 10:58:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDRTB-0005Oo-Fz
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 10:57:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D79FE1000;
 Thu, 26 Sep 2019 03:57:56 -0700 (PDT)
Received: from [192.168.1.158] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 46CDC3F67D;
 Thu, 26 Sep 2019 03:57:55 -0700 (PDT)
Subject: Re: [PATCH 2/4] arm64: vdso32: Detect binutils support for dmb ishld
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926060353.54894-1-vincenzo.frascino@arm.com>
 <20190926060353.54894-3-vincenzo.frascino@arm.com>
 <20190926083039.GC26802@iMac.local>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <d4483638-cba6-eedc-df85-ffe8b0895c89@arm.com>
Date: Thu, 26 Sep 2019 11:59:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190926083039.GC26802@iMac.local>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_035757_575375_F666E106 
X-CRM114-Status: GOOD (  15.42  )
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

On 9/26/19 9:30 AM, Catalin Marinas wrote:
> On Thu, Sep 26, 2019 at 07:03:51AM +0100, Vincenzo Frascino wrote:
>> diff --git a/arch/arm64/include/asm/vdso/compat_barrier.h b/arch/arm64/include/asm/vdso/compat_barrier.h
>> index fb60a88b5ed4..3fd8fd6d8fc2 100644
>> --- a/arch/arm64/include/asm/vdso/compat_barrier.h
>> +++ b/arch/arm64/include/asm/vdso/compat_barrier.h
>> @@ -20,7 +20,7 @@
>>  
>>  #define dmb(option) __asm__ __volatile__ ("dmb " #option : : : "memory")
>>  
>> -#if __LINUX_ARM_ARCH__ >= 8
>> +#if __LINUX_ARM_ARCH__ >= 8 && defined(CONFIG_AS_DMB_ISHLD)
>>  #define aarch32_smp_mb()	dmb(ish)
>>  #define aarch32_smp_rmb()	dmb(ishld)
>>  #define aarch32_smp_wmb()	dmb(ishst)
>> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
>> index 1fba0776ed40..1a3299d901b1 100644
>> --- a/arch/arm64/kernel/vdso32/Makefile
>> +++ b/arch/arm64/kernel/vdso32/Makefile
>> @@ -55,6 +55,9 @@ endif
>>  VDSO_CAFLAGS += -fPIC -fno-builtin -fno-stack-protector
>>  VDSO_CAFLAGS += -DDISABLE_BRANCH_PROFILING
>>  
>> +# Check for binutils support for dmb ishld
>> +dmbinstr := $(call as-instr,dmb ishld,-DCONFIG_AS_DMB_ISHLD=1)
> 
> Is this check for the compat gas or the native one? Looking at
> scripts/Kbuild.include, as-instr uses CC but you'd need a COMPATCC here
> instead.
> 
> I may have missed something but I don't think this fixes the issue
> Will's issue since he reported the problem with an old compat binutils.
> 

Good catch I thought that it was sufficient to put it in the correct makefile,
but I missed that COMPATCC != CC. This selects the wrong binutils.

Need to add something in Kbuild for that.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
