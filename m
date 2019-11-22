Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BE510684C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 09:49:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OtV//a796JSXVtCNKi9ceiW6UCNtTZPyi6V4L3fzNyM=; b=od6JbvPAug9bBQ
	7DnRL6A4NHAHwSbr6h0HFVhWlMoY7f/1u86Lwcm5kAnLIL8g9HSYeQWtlHhRb3PLOSJVMSxxsvb+s
	EKBQdmEQYzUhI+EQgR5UOGk4NWnVHyBosF/eD87p/Kcg3dFbTCA+5kos9tL9DBdK3vu5HCmG40znW
	nUB8hnnk2kywKZuTdQpOk+mVd2n24n1AtJ2QHla9gpGRgWbLvlTJB/s4mNWJmU6zOgRgVENw7eTVx
	y+Iuj1n6JUwoogJA73OJdWtfRUilCUosRcoFJiwXR0v68HDK4VLj92UJ1Vse3hEuRwCVUWOS4zAqg
	8k+QLXumwMFaDeroyV6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY4ca-00040u-Og; Fri, 22 Nov 2019 08:48:56 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY4cS-00040V-VF
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 08:48:50 +0000
Received: by mail-wr1-x442.google.com with SMTP id y11so4492185wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 00:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xavkt3yAPsSExh/K4/NF1IeCEHkaPmlbGuB+b+PPHq4=;
 b=K1Z8nd5pgxBSEwwskDgUV10BEd87rGn82y4RyqLUpoFxBeb66hTp2c4J2jCRHozgTt
 R9PPIfj6Eu8B58/VXbC0VpyFhcbQa1SKMe35HG8M8+dm72V/yNeqnnu5TIhm3fc2ilrf
 /z8j2BIaYA7L5+1aG3cCB5vzPZm0+Hxzi3oxkJlW0adbmefXI5bsqmqjFw8a5ynoZYWJ
 vHGzuSA4PxSdzy75KTVu6WNNI6VRRdHhDPjo7qxjYVaM7Z3pH/LpfxW+bT2xcxT9e4Mf
 QpLnceJMVGZkPdhYBetqnpQ7Yogh2YpgVbxlSuwgk9nTwAaq0UqQNS+Og2+WAu4078CO
 B9kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xavkt3yAPsSExh/K4/NF1IeCEHkaPmlbGuB+b+PPHq4=;
 b=mCA2vANkrr2iXNszhHZoMk2eLqbprByfuM0fGvshCzS0QhBEJSj0byDF+ukQ2jwMbP
 0KZcKpZAvR4VHLFssQGG2VeTkafMBBaWtIg3qUbmqF/ZuNo2bUb7te8xy5aSdvec4ZpB
 8ppREFfc0KSCXAWnKfMjKBoxLg312AQGCbszMBBdqQXiB5/gFh8SihF9CXvxB+zLRblW
 kYIM2qdQwJ0JTrN+uLx7Fw6hYMaSJGDuqnLrxfNxqkQ/yMHWyN/Irz9tZdBsgQPqZthM
 gZrRuaCMwUKfi8kYbb43ehZ+eOpeRvIW3JLq3I7Ve3MwUZwwTVtFi2luhcC77GxibUB+
 +/Ag==
X-Gm-Message-State: APjAAAWlz7zetlCw484fn6/1seHFdCO7Swr4iI+fL75nnR+jMFNPJILc
 hE7o8SjjpSzQ9sGuZkZSTEx7BcnaqXc1Rg==
X-Google-Smtp-Source: APXvYqwBPrufQKZs7ez27D3aby40oDvtm8lerrL7e3p5VKF3oEmCNLhv6XaIPk6Jsp/mzL289BaLQg==
X-Received: by 2002:adf:e545:: with SMTP id z5mr16076824wrm.321.1574412526881; 
 Fri, 22 Nov 2019 00:48:46 -0800 (PST)
Received: from ?IPv6:2a00:23c5:4e1b:3700:8d83:30a1:2751:30ec?
 ([2a00:23c5:4e1b:3700:8d83:30a1:2751:30ec])
 by smtp.gmail.com with ESMTPSA id y16sm6902906wro.25.2019.11.22.00.48.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 22 Nov 2019 00:48:46 -0800 (PST)
Subject: Re: [PATCH v2 08/14] arm64: mask PAC bits of __builtin_return_address
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <1574166746-27197-9-git-send-email-amit.kachhap@arm.com>
 <CAKv+Gu_U37kfCOT4ko-pK6b80aQ2uCe88WfHPwwzjrZ4frndmw@mail.gmail.com>
From: Richard Henderson <richard.henderson@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <cdc2fdcf-7a58-a551-253e-adb92180e749@linaro.org>
Date: Fri, 22 Nov 2019 08:48:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu_U37kfCOT4ko-pK6b80aQ2uCe88WfHPwwzjrZ4frndmw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_004849_030728_051D9D02 
X-CRM114-Status: GOOD (  19.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/21/19 5:42 PM, Ard Biesheuvel wrote:
> On Tue, 19 Nov 2019 at 13:33, Amit Daniel Kachhap <amit.kachhap@arm.com> wrote:
>>
>> This patch redefines __builtin_return_address to mask pac bits
>> when Pointer Authentication is enabled. As __builtin_return_address
>> is used mostly used to refer to the caller function symbol address
>> so masking runtime generated pac bits will help to find the match.
>>
>> This change fixes the utilities like cat /proc/vmallocinfo to now
>> show the correct logs.
>>
>> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>> ---
>> Change since last version:
>>  * Comment modified.
>>
>>  arch/arm64/Kconfig                |  1 +
>>  arch/arm64/include/asm/compiler.h | 17 +++++++++++++++++
>>  2 files changed, 18 insertions(+)
>>  create mode 100644 arch/arm64/include/asm/compiler.h
>>
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index 998248e..c1844de 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -117,6 +117,7 @@ config ARM64
>>         select HAVE_ALIGNED_STRUCT_PAGE if SLUB
>>         select HAVE_ARCH_AUDITSYSCALL
>>         select HAVE_ARCH_BITREVERSE
>> +       select HAVE_ARCH_COMPILER_H
>>         select HAVE_ARCH_HUGE_VMAP
>>         select HAVE_ARCH_JUMP_LABEL
>>         select HAVE_ARCH_JUMP_LABEL_RELATIVE
>> diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
>> new file mode 100644
>> index 0000000..5efe310
>> --- /dev/null
>> +++ b/arch/arm64/include/asm/compiler.h
>> @@ -0,0 +1,17 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +#ifndef __ASM_ARM_COMPILER_H
>> +#define __ASM_ARM_COMPILER_H
>> +
>> +#ifndef __ASSEMBLY__
>> +
>> +#if defined(CONFIG_ARM64_PTR_AUTH)
>> +
>> +/* As TBI1 is disabled currently, so bits 63:56 also has PAC */
>> +#define __builtin_return_address(val)                          \
>> +       (void *)((unsigned long)__builtin_return_address(val) | \
>> +       (GENMASK_ULL(63, 56) | GENMASK_ULL(54, VA_BITS)))
>> +#endif
>> +
>> +#endif
>> +
>> +#endif /* __ASM_ARM_COMPILER_H */
> 
> It seems to me like we are accumulating a lot of cruft for khwasan as
> well as PAC to convert address into their untagged format.
> 
> Are there are untagging helpers we can already reuse? If not, can we
> introduce something that can be shared between all these use cases?

xpaci will strip the pac from an instruction pointer, but requires the
instruction set to be enabled, so you'd have to fiddle with alternatives.  You
*could* force the use of lr as input/output and use xpaclri, which is a nop if
the instruction set is not enabled.

Also, this definition of is not correct, because bit 55 needs to be propagated
to all of the bits being masked out here, so that you get a large negative
number for kernel space addresses.


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
