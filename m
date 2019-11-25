Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6D7108AB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 10:22:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OtAe7TAKD/Pfi8GVKnZNXUY/XSS2L3WX/6yM1g4ZrRs=; b=KDaJz88040Vi0Uh72n7bMcTWb
	lOooo/uT2fsYeRVE5ZuUiOgotd/QyOs2+Z3hHtoYBOvg28TuWip1bnyW4EgE7QY6qpynye9mCP9od
	nX3JDQFIaiSLOi61F/XePn9dzckGtTWM/SLt6DK2m3md4bk71501yGo4siFjGxVLc9BNimTjCTpgy
	Cb9Nd5QN/DjfkbpGsL7GJk0M1fxL7Zgzqv2RIMrnVmBzSTPVf9NgDJDr3yOkaUCfv+Yfb9qkdSsds
	zVAeIrwCiA6OCUS0baGmA3ZUbjc25iPrzYMpUiQhV2TRMuE+pcs4DcbCY294gt9prnSOhrr/qEAnn
	jsLW7VF3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZAZm-0007UE-3T; Mon, 25 Nov 2019 09:22:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZAZe-0007Tu-2E
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 09:22:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F36CD328;
 Mon, 25 Nov 2019 01:22:24 -0800 (PST)
Received: from [10.163.1.198] (unknown [10.163.1.198])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 289883F6C4;
 Mon, 25 Nov 2019 01:22:16 -0800 (PST)
Subject: Re: [PATCH v2 06/14] arm64: rename ptrauth key structures to be
 user-specific
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <1574166746-27197-7-git-send-email-amit.kachhap@arm.com>
 <CAKv+Gu9-fL_1HS1-Bo4T5Kq6HHz=T-MYrt8y3Rj_iTgpEeHqrA@mail.gmail.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <138d1334-050e-d5d6-354b-10bddd066dd2@arm.com>
Date: Mon, 25 Nov 2019 14:52:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu9-fL_1HS1-Bo4T5Kq6HHz=T-MYrt8y3Rj_iTgpEeHqrA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_012226_150594_B0B6AA66 
X-CRM114-Status: GOOD (  17.47  )
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



On 11/22/19 6:58 PM, Ard Biesheuvel wrote:
> On Tue, 19 Nov 2019 at 13:33, Amit Daniel Kachhap <amit.kachhap@arm.com> wrote:
>>
>> From: Kristina Martsenko <kristina.martsenko@arm.com>
>>
>> We currently enable ptrauth for userspace, but do not use it within the
>> kernel. We're going to enable it for the kernel, and will need to manage
>> a separate set of ptrauth keys for the kernel.
>>
>> We currently keep all 5 keys in struct ptrauth_keys. However, as the
>> kernel will only need to use 1 key, it is a bit wasteful to allocate a
>> whole ptrauth_keys struct for every thread.
>>
>> Therefore, a subsequent patch will define a separate struct, with only 1
>> key, for the kernel. In preparation for that, rename the existing struct
>> (and associated macros and functions) to reflect that they are specific
>> to userspace.
>>
>> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
>> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> 
> Could we combine this patch with #2 somehow? You are modifying lots of
> code that you just introduced there.
Yes sure.
> 
>> ---
>> Changes since last version:
>> * None
>>
>>   arch/arm64/include/asm/asm_pointer_auth.h | 10 +++++-----
>>   arch/arm64/include/asm/pointer_auth.h     |  6 +++---
>>   arch/arm64/include/asm/processor.h        |  2 +-
>>   arch/arm64/kernel/asm-offsets.c           | 10 +++++-----
>>   arch/arm64/kernel/pointer_auth.c          |  4 ++--
>>   arch/arm64/kernel/ptrace.c                | 16 ++++++++--------
>>   6 files changed, 24 insertions(+), 24 deletions(-)
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
