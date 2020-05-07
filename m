Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E071C9511
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LfHI2ccmiGVqRx9s66/Nso8wGdaSI8i2edTdDsiTM5Y=; b=vA8vAmiwj3bsQaXVmdUm7hSBe
	Xg7aJ2WFVi63r8P8wEjMCs2xlqLCuV73E9mDQXmRsaPy6vXNmPRDE5ZUKnPiAOX8OEwdK1ctV94/+
	nvQHm5zbLns9YNmcxkJjjf70GT4uB3hjZcDJboB5pF/NOK0fRstQFQ+aFDi9nxldGnZAc4k5hgaTS
	ajZoFfqU/BTvk18f4UrHEK7BwH4lpgob+ZwyUhGfN0OZM3Bk/gp+yUGoDusu9g5L4cexW7k5R4FbU
	n24eEOMcpLrZ1G6T8YbZa6MX/yUVFEqNEfEDD5ES2/WVW2gGy+l5CCnCt0dbxU5rmObOT72+qTisN
	NsUpdTBww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiSj-0005TU-Pm; Thu, 07 May 2020 15:29:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiSc-0005Sm-Az
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:29:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A8BDB1FB;
 Thu,  7 May 2020 08:29:17 -0700 (PDT)
Received: from [10.57.23.221] (unknown [10.57.23.221])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8F4443F68F;
 Thu,  7 May 2020 08:29:14 -0700 (PDT)
From: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v2 2/4] arm64: ptrauth: add pointer authentication Armv8.6
 enhanced feature
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1586842314-19527-1-git-send-email-amit.kachhap@arm.com>
 <1586842314-19527-3-git-send-email-amit.kachhap@arm.com>
 <20200506163155.GG2878@gaia>
Message-ID: <b9823e15-3d5f-9689-562a-284921377dbf@arm.com>
Date: Thu, 7 May 2020 20:58:51 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200506163155.GG2878@gaia>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_082918_464955_6E153C94 
X-CRM114-Status: GOOD (  27.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 5/6/20 10:01 PM, Catalin Marinas wrote:
> On Tue, Apr 14, 2020 at 11:01:52AM +0530, Amit Daniel Kachhap wrote:
>> This patch add changes for Pointer Authentication enhanced features
>> mandatory for Armv8.6. These features are,
>>
>> * Uses an enhanced PAC generation logic which hardens finding the correct
>>    PAC value of the authenticated pointer. However, no code change done
>>    for this.
>>
>> * Fault(FPAC) is generated now when the ptrauth authentication instruction
>>    fails in authenticating the PAC present in the address. This is different
>>    from earlier case when such failures just adds an error code in the top
>>    byte and waits for subsequent load/store to abort. The ptrauth
>>    instructions which may cause this fault are autiasp, retaa etc.
>>
>> The above features are now represented by additional configurations
>> for the Address Authentication cpufeature.
>>
>> The fault received in the kernel due to FPAC is treated as Illegal
>> instruction and hence signal SIGILL is injected with ILL_ILLOPN as the
>> signal code. Note that this is different from earlier ARMv8.3 ptrauth
>> where signal SIGSEGV is issued due to Pointer authentication failures.
> 
> Sorry if it was discussed before. Was there any reasoning behind
> choosing ILL_ILLOPN vs something else like ILL_ILLADR?

No it was not discussed earlier. I used it as I thought that autiasp 
failed here due to incorrect operands provided (sp, key, lr). Although
sp and lr are addresses.

> 
>> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
>> index cf402be5c573..0ef9e9880194 100644
>> --- a/arch/arm64/kernel/traps.c
>> +++ b/arch/arm64/kernel/traps.c
>> @@ -411,6 +411,23 @@ void do_undefinstr(struct pt_regs *regs)
>>   }
>>   NOKPROBE_SYMBOL(do_undefinstr);
>>   
>> +void do_ptrauth_fault(struct pt_regs *regs, unsigned long esr)
>> +{
>> +	const char *desc;
>> +
>> +	BUG_ON(!user_mode(regs));
>> +
>> +	/* Even if we chose not to use PTRAUTH, the hardware might still trap */
>> +	if (unlikely(!(system_supports_address_auth()))) {
> 
> Nitpick: no need for braces around system_supports_address_auth().

ok

> 
>> +		force_signal_inject(SIGILL, ILL_ILLOPC, regs->pc);
>> +		return;
>> +	}
> 
> So when do we execute this path? Is it on a big.LITTLE system where some
> CPUs don't have the 8.6 behaviour? It's the same AUT instruction that
> triggered it, so I don't think we should report a different ILL code.
> 
> It's a bit unfortunate that this new ptrauth feature doesn't have an
> opt-in, so user-space would have to cope with both behaviours. In this
> case I don't see why we need to differentiate on
> system_supports_address_auth().

I was referring to some similar checks present in do_sve_acc in
file arch/arm64/kernel/fpsimd.c to gaurd some unknown situations. Anyway 
I should probably drop this as EC value is already matched.

> 
> While the new behaviour is a lot more useful in practice, I wonder
> whether we could still emulate the old one by setting regs->pc to a
> faulting address and returning to user.

However even if we set regs->pc to the faulting lr address but this lr
may not be same as earlier one as theoretically there can be two autia
instructions so I am not sure if complete emulation is possible. Also 
other work will be change ESR value, set error pattern in the faulting 
address etc when the error pattern is itself not defined.

> 
>> +
>> +	desc = "pointer authentication fault";
>> +	arm64_notify_die(desc, regs, SIGILL, ILL_ILLOPN, (void __user *)regs->pc, esr);
> 
> Nitpick: you could pass the string directly, no need for an additional
> variable.

ok

Amit

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
