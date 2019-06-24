Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB3B50D1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:00:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87RoV4z8sXwOmKePRA4vXl+jDwo/Lb8ltFrb3MhfLP0=; b=ibt4960NcTAfIb
	hbLuEZ1uyJc7zWBolI97/ZYqdLIeaEl9+f5r5xj1xOw56KOv324QVnkzBzY2XO4coSRskNhGWylOh
	yE0sudIEwNRS5CvIFJg5cuEY8IAno/fPvz3Eak1W0XhPQ6QlrxhShyoU4v3nc6lSMoRMOuhL7mjxg
	3GjvWB7+6Pvkn5N7uwMD4PN5/S2ahjMv068paM/0m6GIsz3SGS1YAFxMzctr2rGAX29EQizLoPIN5
	PiQ95rW6cy7fgi09PMxiQiAU8Y5Or04pux/yGQ81vv22jIz/LpLLYvhKU35hlYqCRmSupPiW7d1E+
	T2UYd/04IDn6vRgjoG+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPW6-0007Id-MM; Mon, 24 Jun 2019 14:00:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPVr-0006rQ-Fw
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:00:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0BD1E344;
 Mon, 24 Jun 2019 07:00:03 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6A6DC3F71E;
 Mon, 24 Jun 2019 07:00:00 -0700 (PDT)
Subject: Re: [PATCH v7 04/25] arm64: Substitute gettimeofday with C
 implementation
To: Will Deacon <will.deacon@arm.com>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-5-vincenzo.frascino@arm.com>
 <20190624133607.GI29497@fuggles.cambridge.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <13d00991-aaa0-72f9-4556-1c92eceabd07@arm.com>
Date: Mon, 24 Jun 2019 14:59:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190624133607.GI29497@fuggles.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_070003_638666_E547575F 
X-CRM114-Status: GOOD (  20.63  )
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
Cc: linux-arch@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Shijith Thotton <sthotton@marvell.com>,
 Andre Przywara <andre.przywara@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Huw Davies <huw@codeweavers.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, linux-kselftest@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 24/06/2019 14:36, Will Deacon wrote:
> Hi Vincenzo,
> 
> On Fri, Jun 21, 2019 at 10:52:31AM +0100, Vincenzo Frascino wrote:
>> To take advantage of the commonly defined vdso interface for
>> gettimeofday the architectural code requires an adaptation.
>>
>> Re-implement the gettimeofday vdso in C in order to use lib/vdso.
>>
>> With the new implementation arm64 gains support for CLOCK_BOOTTIME
>> and CLOCK_TAI.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> Tested-by: Shijith Thotton <sthotton@marvell.com>
>> Tested-by: Andre Przywara <andre.przywara@arm.com>
>> ---
>>  arch/arm64/Kconfig                         |   2 +
>>  arch/arm64/include/asm/vdso/gettimeofday.h |  86 ++++++
>>  arch/arm64/include/asm/vdso/vsyscall.h     |  53 ++++
>>  arch/arm64/include/asm/vdso_datapage.h     |  48 ---
>>  arch/arm64/kernel/asm-offsets.c            |  33 +-
>>  arch/arm64/kernel/vdso.c                   |  51 +---
>>  arch/arm64/kernel/vdso/Makefile            |  34 ++-
>>  arch/arm64/kernel/vdso/gettimeofday.S      | 334 ---------------------
>>  arch/arm64/kernel/vdso/vgettimeofday.c     |  28 ++
> 
> I'm concerned about an apparent semantic change introduced by your patch:
> 
>> +static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
>> +{
>> +	u64 res;
>> +
>> +	asm volatile("mrs %0, cntvct_el0" : "=r" (res) :: "memory");
>> +
>> +	return res;
>> +}
> 
> vs:
> 
>> -	.macro	get_clock_shifted_nsec res, cycle_last, mult
>> -	/* Read the virtual counter. */
>> -	isb
>> -	mrs	x_tmp, cntvct_el0
>> -	/* Calculate cycle delta and convert to ns. */
>> -	sub	\res, x_tmp, \cycle_last
>> -	/* We can only guarantee 56 bits of precision. */
>> -	movn	x_tmp, #0xff00, lsl #48
>> -	and	\res, x_tmp, \res
>> -	mul	\res, \res, \mult
>> -	/*
>> -	 * Fake address dependency from the value computed from the counter
>> -	 * register to subsequent data page accesses so that the sequence
>> -	 * locking also orders the read of the counter.
>> -	 */
>> -	and	x_tmp, \res, xzr
>> -	add	vdso_data, vdso_data, x_tmp
>> -	.endm
> 
> It looks like you're dropping both the preceding ISB (allowing the counter
> value to be speculated) and also the subsequent dependency (allowing the
> seq lock to be speculated). If I've missed them, apologies, but I couldn't
> spot them elsewhere in this patch.
> 
> __arch_get_hw_counter should probably be identical to __arch_counter_get_cntvct
> to avoid these problems. I guess we don't need to care about the case where
> the counter is unstable, since we'll just disable the vDSO altogether on
> such systems?
> 

Oops, I forgot to mirror your patch that introduces this change. I will post a
fix in reply to this email.

> Will
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
