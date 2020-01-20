Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2F5142D24
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 15:20:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AHExfEIdeVOtkyIMhnI1WOmTzRI90PITAmNokdT1p2A=; b=Qyc6grhFdMx9FFkqPeijJoWSU
	YwNWbu9fw8v8VTLVXe/5LD4QRXU1NXqL8Rp3cPOTDDWGxJOu3/gRBFony8KbzjH4q/h4sa+8IU8ew
	uU3JOaTlVkINaA2B9nlGCtHmf2TxhZ99we0HuAk+jT/dsVD9mYNv3rDi2i/trR/3cAOn7PVOHt02A
	Xqq+V8R86U+55FLigp5bdXyTdLIfLkzn32xTWR2CmrWArPdRvoKWEra2arIKwsxIqmFfKgNd8AmiD
	Zul5t+4gKdObcWG8LcVL5OiOKUUHXuIFPB3b4YXxFqpk2UT5Wj1mcNbabUBFzDOjLZ5/M/5Wt3oqu
	F4ok7vAIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itXut-0002EL-ME; Mon, 20 Jan 2020 14:20:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itXuf-0002D4-Lv
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 14:20:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B49E730E;
 Mon, 20 Jan 2020 06:20:20 -0800 (PST)
Received: from [10.1.37.58] (a075563-lin.cambridge.arm.com [10.1.37.58])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A36593F52E;
 Mon, 20 Jan 2020 06:20:18 -0800 (PST)
Subject: Re: [PATCH v3 09/16] arm64: mask PAC bits of __builtin_return_address
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-10-git-send-email-amit.kachhap@arm.com>
 <20200117101432.GA26090@arrakis.emea.arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <1735949f-a8c2-4cb5-d7e7-63efcfd4e96c@arm.com>
Date: Mon, 20 Jan 2020 14:20:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200117101432.GA26090@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_062021_760427_FDCF0183 
X-CRM114-Status: GOOD (  18.43  )
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



On 1/17/20 10:14 AM, Catalin Marinas wrote:
> On Mon, Dec 16, 2019 at 02:17:11PM +0530, Amit Daniel Kachhap wrote:
>> diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
>> new file mode 100644
>> index 0000000..3cb06f9
>> --- /dev/null
>> +++ b/arch/arm64/include/asm/compiler.h
>> @@ -0,0 +1,20 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +#ifndef __ASM_COMPILER_H
>> +#define __ASM_COMPILER_H
>> +
>> +#if defined(CONFIG_ARM64_PTR_AUTH)
>> +
>> +/*
>> + * The EL0/EL1 pointer bits used by a pointer authentication code.
>> + * This is dependent on TBI0/TBI1 being enabled, or bits 63:56 would also apply.
>> + */
>> +#define ptrauth_user_pac_mask()		GENMASK_ULL(54, vabits_actual)
> 
> That's the current behaviour but I guess we could extend the mask to 63
> here without breaking anything since we don't expect instruction
> addresses to be tagged. I also think we should turn TCR_EL1.TBID0 on
> when we have PAC present (in a separate patch for both the mask change
> and the TCR_EL1 bit as this may be slightly more controversial, a
> theoretical ABI change).

ok. For this there has to be 2 mask then as ptrace passes both the masks 
to user.

#define ptrauth_user_ins_pac_mask()	GENMASK_ULL(63, vabits_actual)

#define ptrauth_user_data_pac_mask()	GENMASK_ULL(54, vabits_actual)


> 
>> +#define ptrauth_kernel_pac_mask()	(GENMASK_ULL(63, 56) | GENMASK_ULL(54, VA_BITS))
> 
> I think the kernel mask should be GENMASK_ULL(63, vabits_actual), no
> need to skip bit 55 since it's 1 already.
> 
> With regards to VA_BITS (a constant), I'm not sure that's correct.
> ARMv8.2-LVA (52-bit VA) is an optional feature and I don't think PAC in
> 8.3 mandates it.

yes. Thanks for the correction.

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
