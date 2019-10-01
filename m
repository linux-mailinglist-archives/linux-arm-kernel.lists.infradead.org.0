Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A07C36E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3sna/fl5YWUnxXRG2Oevru3T++DJxHmjUg5O26wxkU=; b=Qrm+lulaYRkwJc
	A64TNGhNNvMdq5tjoYAUWzgHDHZIyeBQpcWyYR30I15uKvEUtQZJiuDBaN/sS6BYulLVbGAXJlEzm
	GMh38r2f6EsTUsata9V8BNsHNpbOY6gbCVkD4bDeweOScBBhbBHCWjXuqZqn077VXDUMabOoRHD3X
	GcP20C1r5LAH6Ph3dBRRKMkyfnumvMe1UoaXKJKJBEfiy49C01TQssRhrtcpI9F2qUFBXK0ejPrvT
	fbXgEmWUkJIYbwEavYI6pvFkdSCAM6+kqh9x+MU+zFbrq1WNGgsYJDzS3aupNDsm+W6NweSb+5oZo
	rA0UjoA2SNdUW1yVpMBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFIzX-0006Fx-GW; Tue, 01 Oct 2019 14:19:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFIzK-0006Cz-Ms
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:18:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DDD671000;
 Tue,  1 Oct 2019 07:18:47 -0700 (PDT)
Received: from [10.37.8.149] (unknown [10.37.8.149])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 24E0F3F71A;
 Tue,  1 Oct 2019 07:18:45 -0700 (PDT)
Subject: Re: [PATCH v3 1/5] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926214342.34608-1-vincenzo.frascino@arm.com>
 <20190926214342.34608-2-vincenzo.frascino@arm.com>
 <20191001131420.y3fsydlo7pg6ykfs@willie-the-truck>
 <20191001132731.GG41399@arrakis.emea.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <ed7d1465-2d7b-d57c-c1b1-215af1ba7a6f@arm.com>
Date: Tue, 1 Oct 2019 15:20:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191001132731.GG41399@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_071850_800398_5F006728 
X-CRM114-Status: GOOD (  16.78  )
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
Cc: tglx@linutronix.de, ndesaulniers@google.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ard.biesheuvel@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/1/19 2:27 PM, Catalin Marinas wrote:
> On Tue, Oct 01, 2019 at 02:14:23PM +0100, Will Deacon wrote:
>> On Thu, Sep 26, 2019 at 10:43:38PM +0100, Vincenzo Frascino wrote:
>>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>>> index 37c610963eee..0e5beb928af5 100644
>>> --- a/arch/arm64/Kconfig
>>> +++ b/arch/arm64/Kconfig
>>> @@ -110,7 +110,7 @@ config ARM64
>>>  	select GENERIC_STRNLEN_USER
>>>  	select GENERIC_TIME_VSYSCALL
>>>  	select GENERIC_GETTIMEOFDAY
>>> -	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT)
>>> +	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT && COMPATCC_IS_ARM_GCC)
>>>  	select HANDLE_DOMAIN_IRQ
>>>  	select HARDIRQS_SW_RESEND
>>>  	select HAVE_PCI
>>> @@ -313,6 +313,9 @@ config KASAN_SHADOW_OFFSET
>>>  	default 0xeffffff900000000 if ARM64_VA_BITS_36 && KASAN_SW_TAGS
>>>  	default 0xffffffffffffffff
>>>  
>>> +config COMPATCC_IS_ARM_GCC
>>> +	def_bool $(success,$(COMPATCC) --version | head -n 1 | grep -q "arm-.*-gcc")
>>
>> I've seen toolchains where the first part of the tuple is "armv7-", so they
>> won't get detected here. However, do we really need to detect this? If
>> somebody passes a duff compiler, then the build will fail in the same way as
>> if they passed it to CROSS_COMPILE=.
> 
> Not sure what happens if we pass an aarch64 compiler. Can we end up with
> a 64-bit compat vDSO?
> 

I agree with Catalin here. The problem is not only when you pass and aarch64
toolchain but even an x86 and so on.

If the problem is related to armv7- we can change the rule as "arm.*-gcc" which
should detect them as well. Do you know what is the triple that an armv7-
toolchain prints?

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
