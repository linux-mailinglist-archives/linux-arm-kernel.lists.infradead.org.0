Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 652FAC3705
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YO/ecrrBRhW+BWYei0R1GDeEXMjPOgQShzq9o9O+9z8=; b=bfR2D/MRv7RuVa
	BXWaajiBKRe8wXcfVOTxPbiPYmpvr9eyWIVAuX/5mMQjU9dx6yROfmxtlc/2pZzGqH/k+3u9jMT5o
	xxxmPp0uGe0hnP0/QiKMCKsPORHV6erbdAQOPXqzOzdrzioV4kdgq6H+R304pkCdkCcR1AoVgMb9a
	U/m+9Q697hixVdi4qa1I3fl784LPs+aGLJRj3x6jzUM4kMP2T6GHBouHvOB+EcYvLls9sytc/FOCX
	uL9Zl013ha47cnVHJM3aL0VqOQkCEJS8m9Q5LH7uRI4hSipkjqGicqKkkgQ41ni8S2lPtjXP7wrZ6
	zSNM412dhAVXgFCf/zlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJ2X-0000M7-Bx; Tue, 01 Oct 2019 14:22:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJ2I-0000Fh-Kt
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:21:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9DB641570;
 Tue,  1 Oct 2019 07:21:52 -0700 (PDT)
Received: from [10.37.8.149] (unknown [10.37.8.149])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F0F3E3F71A;
 Tue,  1 Oct 2019 07:21:50 -0700 (PDT)
Subject: Re: [PATCH v3 2/5] arm64: vdso32: Detect binutils support for dmb
 ishld
To: Will Deacon <will@kernel.org>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926214342.34608-1-vincenzo.frascino@arm.com>
 <20190926214342.34608-3-vincenzo.frascino@arm.com>
 <20191001132640.plowjzi5nmajs72x@willie-the-truck>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <a1b6fbd9-743d-a484-ad41-ff3b66fc0850@arm.com>
Date: Tue, 1 Oct 2019 15:23:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191001132640.plowjzi5nmajs72x@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_072155_109017_4885731F 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/1/19 2:26 PM, Will Deacon wrote:
> On Thu, Sep 26, 2019 at 10:43:39PM +0100, Vincenzo Frascino wrote:
>> As reported by Will Deacon, older versions of binutils that do not
>> support certain types of memory barriers can cause build failure of the
>> vdso32 library.
>>
>> Add a compilation time mechanism that detects if binutils supports those
>> instructions and configure the kernel accordingly.
>>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  arch/arm64/include/asm/vdso/compat_barrier.h | 2 +-
>>  arch/arm64/kernel/vdso32/Makefile            | 9 +++++++++
>>  2 files changed, 10 insertions(+), 1 deletion(-)
>>
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
>> index 19e0d3115ffe..77aa61340374 100644
>> --- a/arch/arm64/kernel/vdso32/Makefile
>> +++ b/arch/arm64/kernel/vdso32/Makefile
>> @@ -15,6 +15,8 @@ cc32-disable-warning = $(call try-run,\
>>  	$(COMPATCC) -W$(strip $(1)) -c -x c /dev/null -o "$$TMP",-Wno-$(strip $(1)))
>>  cc32-ldoption = $(call try-run,\
>>          $(COMPATCC) $(1) -nostdlib -x c /dev/null -o "$$TMP",$(1),$(2))
>> +cc32-as-instr = $(call try-run,\
>> +	printf "%b\n" "$(1)" | $(COMPATCC) $(VDSO_AFLAGS) -c -x assembler -o "$$TMP" -,$(2),$(3))
> 
> It's a shame that we have to duplicate the logic from scripts/Kbuild.include
> here. Is there a way to reuse those helpers by temporarily overriding things
> like CC and KBUILD_AFLAGS? If not, no bother, but thought I'd better ask.
> 

I tried to define a rule in scripts/Kbuild.include at the beginning doing what
you are saying but I could not end up with a working solution, hence I ended up
with a dedicated one.

> Will
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
