Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F358C42C11
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 18:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gCyXIoB/dEryaSSX9aMOPea/tLCUv4vvECqOvBve9dM=; b=XE8LrvMzCAvHVR
	iahncnDZdIEKHCyMzZQUJcmp0ioRDZXJE7d5OAuCf4wkwVTnr6m7iH3+X5sTth560fbGldSl/B9Aw
	dFgjMBpFVpgLZu1EAFX0ob0QJak/SZgXbhbI8bGzE2goV//fQ1VTm8ndFBI1ndDXNNUoaBjILvJaD
	l3go9+o5qBZ9bW583vVEnAEkD6Jc2LoEM25NKFlOYmOpKZ7RLZdA8O0gzUPkOkwE+bJ8QyjdRXfPV
	geoGwTVxi/rk/m44QM+nEwb8DMla0EK9/Xy1ILhWMWoFPvUs3UhcZ3jFiYZWwNSww+yqY4IrTGHPP
	fXgKQWzOA3x8kRL7nNgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb60O-00089m-CO; Wed, 12 Jun 2019 16:21:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb605-00089N-7P
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 16:21:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E60B02B;
 Wed, 12 Jun 2019 09:21:22 -0700 (PDT)
Received: from [10.1.197.21] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 ABAB03F73C; Wed, 12 Jun 2019 09:21:21 -0700 (PDT)
From: Kristina Martsenko <kristina.martsenko@arm.com>
Subject: Re: [RFC v2 5/7] arm64: initialize and switch ptrauth kernel keys
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-6-kristina.martsenko@arm.com>
 <20190606164430.GH56860@arrakis.emea.arm.com>
Message-ID: <3c56d20a-de6f-5a1e-98ff-34687de72268@arm.com>
Date: Wed, 12 Jun 2019 17:21:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190606164430.GH56860@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_092125_307176_06234164 
X-CRM114-Status: GOOD (  16.66  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/06/2019 17:44, Catalin Marinas wrote:
> On Wed, May 29, 2019 at 08:03:30PM +0100, Kristina Martsenko wrote:
> 
>>  - Added ISB after key install in kernel_exit, in case in the future C function
>>    calls are added after the macro
> [...]
>> diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
>> index e3bfddfe80b6..f595da9661a4 100644
>> --- a/arch/arm64/include/asm/asm_pointer_auth.h
>> +++ b/arch/arm64/include/asm/asm_pointer_auth.h
>> @@ -25,11 +25,24 @@ alternative_if ARM64_HAS_ADDRESS_AUTH
>>  	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APDB]
>>  	msr_s	SYS_APDBKEYLO_EL1, \tmp2
>>  	msr_s	SYS_APDBKEYHI_EL1, \tmp3
>> +	isb
>>  alternative_else_nop_endif
>>  alternative_if ARM64_HAS_GENERIC_AUTH
>>  	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APGA]
>>  	msr_s	SYS_APGAKEYLO_EL1, \tmp2
>>  	msr_s	SYS_APGAKEYHI_EL1, \tmp3
>> +	isb
>> +alternative_else_nop_endif
> 
> I couldn't find the previous discussions, so why are the ISBs needed
> here? Is this macro not invoked only on the kernel_exit path?

It is invoked only in kernel_exit. There weren't any previous
discussions, I just started thinking that in the future someone could
add a call to a C function in kernel_exit after this macro (there are a
few C calls in kernel_exit already). If the function is compiled with
ptrauth instructions, and the above key system register writes take
effect in the middle of the function, then authentication would fail,
because we would enter the function with one key but exit with another.

This is probably overly cautious, so I'd be happy to remove the ISBs if
you prefer. Could also add a comment in kernel_exit. Also, thinking
about it now, we only use APIA key in the kernel, so the ISB after APGA
key is actually unnecessary, so I'll go ahead and remove that one.

Thanks,
Kristina

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
