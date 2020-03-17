Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2920C188884
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 16:04:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mn82mc5z8y9axBoyxTKz4BvjzCdtpWBxME2WfmGo0vc=; b=cEIsYBKnj1wj3B
	ETaWqvHhQcRWHA0jzKUv53ZCT4bzNv9OsuHcel13IL2OeU6Yrwq18LuGs+y498+t3z05iWdRmC6TE
	kdb4VnvAB8u98A45cLv+S6ItozovLuvSe2dFX4c9DRP0OZMS//tX1Ade/ufeHUWM6KC3f2k5xu5ae
	7ZdL54XlwAeDaPauF8f0eqiofx3JgdcSDy8LkPIlfed+CUaQPbtTMxkdJp6F4RCAtc2LinwXf1Ood
	eVklleM5lieRkuFkRlY7LB7dT+nQyg6bOGhLC7lG6/CKKI6ne1+9s10WXaNxoPGA1dDqgVQ5mYvFD
	8dbbG931jyUbgkKYYZPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEDkz-0006nz-J6; Tue, 17 Mar 2020 15:03:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEDkq-0006n3-13
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 15:03:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4C3030E;
 Tue, 17 Mar 2020 08:03:38 -0700 (PDT)
Received: from [10.37.12.228] (unknown [10.37.12.228])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 80D4E3F52E;
 Tue, 17 Mar 2020 08:03:33 -0700 (PDT)
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
 <20200317143834.GC632169@arrakis.emea.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
Date: Tue, 17 Mar 2020 15:04:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200317143834.GC632169@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_080340_156505_4BD7DF53 
X-CRM114-Status: GOOD (  19.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 linux-mips@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, Andrei Vagin <avagin@openvz.org>,
 Stephen Boyd <sboyd@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 3/17/20 2:38 PM, Catalin Marinas wrote:
> On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:
>> diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
>> index 54fc1c2ce93f..91138077b073 100644
>> --- a/arch/arm64/kernel/vdso32/vgettimeofday.c
>> +++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
>> @@ -8,11 +8,14 @@
>>  #include <linux/time.h>
>>  #include <linux/types.h>
>>  
>> +#define VALID_CLOCK_ID(x) \
>> +	((x >= 0) && (x < VDSO_BASES))
>> +
>>  int __vdso_clock_gettime(clockid_t clock,
>>  			 struct old_timespec32 *ts)
>>  {
>>  	/* The checks below are required for ABI consistency with arm */
>> -	if ((u32)ts >= TASK_SIZE_32)
>> +	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
>>  		return -EFAULT;
>>  
>>  	return __cvdso_clock_gettime32(clock, ts);
> 
> I probably miss something but I can't find the TASK_SIZE check in the
> arch/arm/vdso/vgettimeofday.c code. Is this done elsewhere?

Can TASK_SIZE > UINTPTR_MAX on an arm64 system?

> 
>> @@ -22,7 +25,7 @@ int __vdso_clock_gettime64(clockid_t clock,
>>  			   struct __kernel_timespec *ts)
>>  {
>>  	/* The checks below are required for ABI consistency with arm */
>> -	if ((u32)ts >= TASK_SIZE_32)
>> +	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
>>  		return -EFAULT;
>>  
>>  	return __cvdso_clock_gettime(clock, ts);
>> @@ -38,9 +41,12 @@ int __vdso_clock_getres(clockid_t clock_id,
>>  			struct old_timespec32 *res)
>>  {
>>  	/* The checks below are required for ABI consistency with arm */
>> -	if ((u32)res >= TASK_SIZE_32)
>> +	if ((u32)res > UINTPTR_MAX - sizeof(res) + 1)
>>  		return -EFAULT;
>>  
>> +	if (!VALID_CLOCK_ID(clock_id) && res == NULL)
>> +		return -EINVAL;
> 
> This last check needs an explanation. If the clock_id is invalid but res
> is not NULL, we allow it. I don't see where the compatibility issue is,
> arm32 doesn't have such check.
> 

The case that you are describing has to return -EPERM per ABI spec. This case
has to return -EINVAL.

The first case is taken care from the generic code. But if we don't do this
check before on arm64 compat we end up returning the wrong error code.

For the non compat case the same is taken care from the syscall fallback [1].

[1] lib/vdso/gettimeofday.c

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
