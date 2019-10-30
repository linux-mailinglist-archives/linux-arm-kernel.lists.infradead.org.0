Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC90E9579
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 04:59:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TRWdnGXZuvO7zUAnTUDdAfs+Q2TibapnCASvUdOyMQA=; b=ZlzFkr5CE2lGDVEW1VbFhgW8h
	yKErV7qZfGM60kin6wlak7rzRXQVB8Gr6AuFmLcsVkWfgAysBVnRaopsE5TvneAWVeBm4/pf4KFEs
	v+yEI8UEPaMF4FsiMmuXzIrOkydPx65Yd2BGXgXqDRmCxt2jwrM7EarBIrj1omNGXWnXfwlwHtWGu
	FZhUG86OLOx6FIMwKJt4IxObH756QCo54YXsO8En7cxNat1yJlxuHh+OOWWttgOfb3GqZ4B9KCAUZ
	KWPZIu0igDQK6mD93TLcXw562P6hlZp64c+yb+2kisy5dGUSHG0A6bu3FZfRmAPitFSaE4DTGJK+e
	AptNr41ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPf8r-0005V9-KI; Wed, 30 Oct 2019 03:59:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPf8h-0005UP-Or
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 03:59:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 118E81F1;
 Tue, 29 Oct 2019 20:59:17 -0700 (PDT)
Received: from [10.162.0.144] (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DEAEE3F6C4;
 Tue, 29 Oct 2019 20:59:13 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH 00/11] arm64: return address signing
To: James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
References: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
 <5081f7ee-9e11-66e1-bcba-9b284469458f@arm.com>
Message-ID: <a7437b9e-bb56-223e-9791-6b9f28426097@arm.com>
Date: Wed, 30 Oct 2019 09:29:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <5081f7ee-9e11-66e1-bcba-9b284469458f@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_205919_899018_1BC30DE3 
X-CRM114-Status: GOOD (  24.55  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 10/23/19 11:01 PM, James Morse wrote:
> Hi Amit,
> 
> On 17/10/2019 09:14, Amit Daniel Kachhap wrote:
>> This series improves function return address protection for the arm64 kernel, by
>> compiling the kernel with ARMv8.3 Pointer Authentication instructions (ptrauth
>> referred hereafter). This should help protect the kernel against attacks using
>> return-oriented programming.
>>
>> Patch 9 and 10 are newly added and hence sent as RFC.
> 
> Please don't mix 'RFC' in a series. If one patch is RFC, the whole series should be marked
> like that, including the cover letter. git format-patch's '--rfc' option will do this for
> you.
> 
> If this is 'v3', please mark all the patches 'v3' too. Adding '-v 3' to git format-patch
> will do this for you.
Yes sure . I will do like this.
> 
> 
>> High-level changes since RFC v2 [1] (detailed changes are listed in patches):
>>   - Moved enabling, key setup and context switch to assembly, to avoid using
>>     the pointer auth compiler attribute which Clang does not support (thanks
>>     Suzuki for the initial code!).
>>   - Added code to restore keys after cpu resume.
>>   - __builtin_return_address will now mask pac bits.
>>   - Changed gcc compiler options to add ptrauth instructions in all functions
>>     and not just non-leaf functions. This may be revisited later due to
>>     performance concerns.
>>   - Rebased onto v5.4-rc2.
>>   - Added Reviewed-by's.
> 
>> This series do not implement few things or have known limitations:
>>   - ftrace function tracer does not work with this series. But after using
>>     the posted series [2] based on -fpatchable-function-entry, it works fine.
>>   - kprobes/uprobes and other tracing may need some rework with ptrauth.
>>   - kdump, other debug may need some rework with ptrauth.
>>   - Generate some randomness for ptrauth keys during kernel early booting.
> 
> Its good to have this list in the cover letter. (thanks!)
> 
> Could you expand on the kprobes point? Is it emulating/stepping the ptrauth instructions,
> or stuff like kretprobes, that overwrite the lr? (arch_prepare_kretprobe()).
> (or both!)
Yes I should have expanded it here. Currently it is able step both 
PACIASP and AUTIASP instruction as krpobes/kretprobes keeps same 
register context. In negative case,  kretprobe may cause some issue. 
Need to look more into it.
> 
> SDEI (firmware assisted NMI) may be called with the user-keys, kernel-keys, or
> half-way-through switching keys. I don't think this is a problem, it just means the key in
> use is unknown.
Thanks for pointing this out. Yes the ptrauth keys save/store may be 
added in SDEI handler. I will check more on it.

Thanks,
Amit Daniel
> 
> 
> Thanks,
> 
> James
> 
> 
>> [1] https://lore.kernel.org/linux-arm-kernel/20190529190332.29753-1-kristina.martsenko@arm.com/
>> [2] https://patchwork.kernel.org/patch/10803279/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
