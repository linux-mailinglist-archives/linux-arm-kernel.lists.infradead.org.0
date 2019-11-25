Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECED108871
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 06:43:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AtaP+73EHud0sDk+oYA+5aWGGLBEe5mz5mNXJix8sHo=; b=rmGzDiPIfRLcGCebZW2Gz9VCy
	/za94jvGmnZSwgY4x7Pa5+44u+VUZoBlQ8HWh6jAVjYtD2A80RbrLw48h2mWf2V7itJoQTshZex94
	BIU79TyXExy5NBViWFy4bn/+HFfuR3QP78MU8Gg1JEA8V60StYHrwuV/nBymZRhfwbC8qph/SYVN+
	4zIaGNYIzN6BGPTdST4CKfYMLS4RASTiSuW8kR/3mwlSaFL56iGMcaDR+weuOEm3lUaTKJVTLCN1V
	vUIaxq8OZIhUGYF0ummuq/0Xrmj/U8RSZQcGKF4Du4AsTz1kT944R4GsfGrkB+2TkgFHlv/Ctl1t+
	dDRTjGs4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ79I-0000BI-L2; Mon, 25 Nov 2019 05:43:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ799-0000Ax-Pc
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 05:42:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BEBD131B;
 Sun, 24 Nov 2019 21:42:50 -0800 (PST)
Received: from [10.163.1.198] (unknown [10.163.1.198])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E4D7C3F6C4;
 Sun, 24 Nov 2019 21:42:42 -0800 (PST)
Subject: Re: [PATCH v2 08/14] arm64: mask PAC bits of __builtin_return_address
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <1574166746-27197-9-git-send-email-amit.kachhap@arm.com>
 <CAKv+Gu_U37kfCOT4ko-pK6b80aQ2uCe88WfHPwwzjrZ4frndmw@mail.gmail.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <2b9b0359-1b71-bf42-d27b-8ebd0a85b3b3@arm.com>
Date: Mon, 25 Nov 2019 11:12:34 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu_U37kfCOT4ko-pK6b80aQ2uCe88WfHPwwzjrZ4frndmw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_214251_918539_C236EE6C 
X-CRM114-Status: GOOD (  18.60  )
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard,

On 11/21/19 11:12 PM, Ard Biesheuvel wrote:
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
>>   * Comment modified.
>>
>>   arch/arm64/Kconfig                |  1 +
>>   arch/arm64/include/asm/compiler.h | 17 +++++++++++++++++
>>   2 files changed, 18 insertions(+)
>>   create mode 100644 arch/arm64/include/asm/compiler.h
>>
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index 998248e..c1844de 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -117,6 +117,7 @@ config ARM64
>>          select HAVE_ALIGNED_STRUCT_PAGE if SLUB
>>          select HAVE_ARCH_AUDITSYSCALL
>>          select HAVE_ARCH_BITREVERSE
>> +       select HAVE_ARCH_COMPILER_H
>>          select HAVE_ARCH_HUGE_VMAP
>>          select HAVE_ARCH_JUMP_LABEL
>>          select HAVE_ARCH_JUMP_LABEL_RELATIVE
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

ok

> 
> Are there are untagging helpers we can already reuse? If not, can we
> introduce something that can be shared between all these use cases?

I tried to include <asm/pointer_auth.h> here but it produced lot of 
header inclusion error as include/linux/compiler_types.h which includes 
it is a very sensitive header.
I will check to add some kind of header or at least write proper commit 
logs.

Regards,
Amit D
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
