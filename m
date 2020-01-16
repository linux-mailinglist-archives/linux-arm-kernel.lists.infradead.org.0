Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B212E13DA2F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 13:41:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zdBX+GBY8yv0qv/B6blad1Nl9QMSTMDGNyunesowPms=; b=eFuPd8TheEORKHmM03wiQpK2A
	i+4Y/taqpAPwAch0RGjW0stzcec2QQpJF4dfTpXZ5rl6cEmw4PXpEldDSwtKXWUiHaD28y1Vz/IZn
	dwYKX7XKuZ7KxkFZ7ihZFXWFylHolOAnkSQF+kAPZxauTmqixU7P2mgNSjvUyYJqYR9jOmXv0MIdz
	VVo4KTNaVbINZiPbwOJuGUg7Iv+MZPxcauUkE0YD8RBiQowd2cXDLq+JItjxBnUXb3hewssDiMjcx
	oFP6hC1+3Hs6rRlDvwGw4jCeWTnl51Y9BCnsyE1y9lgEuCJEgmEm1GsNkzKui3n50sklvlbTfL+DW
	9i+qqHMPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is4Sb-0003XQ-8n; Thu, 16 Jan 2020 12:41:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is4SM-0003Wv-Pg
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 12:41:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB6A21396;
 Thu, 16 Jan 2020 04:40:59 -0800 (PST)
Received: from [10.162.16.56] (unknown [10.162.16.56])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3446C3F534;
 Thu, 16 Jan 2020 04:40:55 -0800 (PST)
Subject: Re: [PATCH v3 05/16] arm64: ptrauth: Add bootup/runtime flags for
 __cpu_setup
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-6-git-send-email-amit.kachhap@arm.com>
 <20200115173053.GJ3429@arrakis.emea.arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <0389019d-55a5-2202-bd24-c0bf87c3093a@arm.com>
Date: Thu, 16 Jan 2020 18:10:54 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200115173053.GJ3429@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_044102_873015_3CEF2E3B 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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



On 1/15/20 11:00 PM, Catalin Marinas wrote:
> On Mon, Dec 16, 2019 at 02:17:07PM +0530, Amit Daniel Kachhap wrote:
>> diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
>> index a0c8a0b..008d004 100644
>> --- a/arch/arm64/include/asm/smp.h
>> +++ b/arch/arm64/include/asm/smp.h
>> @@ -23,6 +23,11 @@
>>   #define CPU_STUCK_REASON_52_BIT_VA	(UL(1) << CPU_STUCK_REASON_SHIFT)
>>   #define CPU_STUCK_REASON_NO_GRAN	(UL(2) << CPU_STUCK_REASON_SHIFT)
>>   
>> +/* Options for __cpu_setup */
>> +#define ARM64_CPU_BOOT_PRIMARY		(1)
>> +#define ARM64_CPU_BOOT_LATE		(2)
> 
> Nitpick: I'd call this ARM64_CPU_BOOT_SECONDARY. I thought we tend to
> use "late" for CPUs brought up after user space started (at least that
> was my impression from the cpufeature.c code).

Sure. I will update it in the next version.

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
