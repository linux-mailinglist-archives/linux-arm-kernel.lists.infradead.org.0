Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B39BC16226
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1jWpZM4Qg259jOdeug0/M81UeEB8awk0ntwGP6E1Cys=; b=S0qSQF42H6Nqmvr7aFRAyOz6w
	8OTWpWwMAYC3pWMQNLlCuPf5sIBQCoXb1MQasvn/tj6grjnFA4BseI5FPZZWb+924WsDA7xJOgepj
	aMvLzUQtLQ/IXMol5DBmF2Z2SsDf7m6RJb4mxaCG5eJXaBeB/b7wrt90Go/AD2AVACYUHl0GKCZin
	QKjUrJekyJK6/hTtHOiBvsaEHkxk5p+sqgnS9+x3VYpcQbpGBYJ472smrvLqVBFLYofkgYzq/1C6h
	LjuxjyVkVyb6VAP2dOBeH/7FZaIuL+jraEF/WhmVoUBvlIOn8swfl45DKdxO3ZCBcByr487j6s0qK
	XvFq1wjtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxi5-0004aY-Q3; Tue, 07 May 2019 10:52:33 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxhz-0004Zr-Or
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:52:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 35C2C374;
 Tue,  7 May 2019 03:52:23 -0700 (PDT)
Received: from [10.37.12.89] (unknown [10.37.12.89])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D85883F5AF;
 Tue,  7 May 2019 03:52:19 -0700 (PDT)
Subject: Re: [PATCH v4 3/3] arm64/fpsimd: Don't disable softirq when touching
 FPSIMD/SVE state
To: Dave Martin <Dave.Martin@arm.com>
References: <20190426143740.31973-1-julien.grall@arm.com>
 <20190426143740.31973-4-julien.grall@arm.com>
 <20190426145232.GK3567@e103592.cambridge.arm.com>
 <322340c7-0c97-76f8-8ab8-875040b4459c@arm.com>
 <20190426153114.GL3567@e103592.cambridge.arm.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <4fddb4e5-6691-c393-d7f8-15cfc6fe7c4d@arm.com>
Date: Tue, 7 May 2019 11:52:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190426153114.GL3567@e103592.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_035227_816505_E165E5FE 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: ard.biesheuvel@linaro.org, marc.zyngier@arm.com, catalin.marinas@arm.com,
 julien.thierry@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 christoffer.dall@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On 4/26/19 4:31 PM, Dave Martin wrote:
> On Fri, Apr 26, 2019 at 04:06:02PM +0100, Julien Grall wrote:
>> Hi,
>>
>> On 26/04/2019 15:52, Dave Martin wrote:
>>> On Fri, Apr 26, 2019 at 03:37:40PM +0100, Julien Grall wrote:
>>>> When the kernel is compiled with CONFIG_KERNEL_MODE_NEON, some part of
>>>> the kernel may be able to use FPSIMD/SVE. This is for instance the case
>>>> for crypto code.
>>>>
>>>> Any use of FPSIMD/SVE in the kernel are clearly marked by using the
>>>> function kernel_neon_{begin, end}. Furthermore, this can only be used
>>>> when may_use_simd() returns true.
>>>>
>>>> The current implementation of may_use_simd() allows softirq to use
>>>> FPSIMD/SVE unless it is currently in use (i.e kernel_neon_busy is true).
>>>> When in use, softirqs usually fall back to a software method.
>>>>
>>>> At the moment, as a softirq may use FPSIMD/SVE, softirqs are disabled
>>>> when touching the FPSIMD/SVE context. This has the drawback to disable
>>>> all softirqs even if they are not using FPSIMD/SVE.
>>>>
>>>> Since a softirq is supposed to check may_use_simd() anyway before
>>>> attempting to use FPSIMD/SVE, there is limited reason to keep softirq
>>>> disabled when touching the FPSIMD/SVE context. Instead, we can simply
>>>> disable preemption and mark the FPSIMD/SVE context as in use by setting
>>>> CPU's kernel_neon_busy flag.
>>>
>>> fpsimd_context_busy?
>>
>> Yes.
>>
>>>
>>>> Two new helpers {get, put}_cpu_fpsimd_context is introduced to mark the
>>>> area using FPSIMD/SVE context and uses them in replacement of
>>>
>>> Paragraph mangled during edit?
>>
>> Possibly, I will update it.
>>
>>>
>>> -> "are introduced ... and they are used to replace ..."
>>>
>>>> local_bh_{disable, enable}. The functions kernel_neon_{begin, end} are
>>>> also re-implemented to use the new helpers.
>>>>
>>>> Additionally, double-underscored versions of the helpers are provided to
>>>> be used in function called with interrupt masked. They are used for
>>>> sanity and also help to mark place where the FPSIMD context can be
>>>> manipulate freely.
>>>
>>> For the benefit of other readers, this should be more explicit.  Also,
>>> the distinction between the normal and __ helpers is that the latter
>>> can be caller with preemption disabled.
>>>
>>> To clarify the impact, we can say something like
>>>
>>> "These are only relevant on paths where irqs are disabled anyway, so
>>> they are not needed for correctness in the current code. Let's use them
>>> anyway though: this marks the critical sections clearly and will help
>>> to avoid mistakes during future maintenance."
>>
>> How about the following commit message?
>>
>>      arm64/fpsimd: Don't disable softirq when touching FPSIMD/SVE state
>>
>>      When the kernel is compiled with CONFIG_KERNEL_MODE_NEON, some part of
>>      the kernel may be able to use FPSIMD/SVE. This is for instance the case
>>      for crypto code.
>>
>>      Any use of FPSIMD/SVE in the kernel are clearly marked by using the
>>      function kernel_neon_{begin, end}. Furthermore, this can only be used
>>      when may_use_simd() returns true.
>>
>>      The current implementation of may_use_simd() allows softirq to use
>>      FPSIMD/SVE unless it is currently in use (i.e kernel_neon_busy is true).
>>      When in use, softirqs usually fall back to a software method.
>>
>>      At the moment, as a softirq may use FPSIMD/SVE, softirqs are disabled
>>      when touching the FPSIMD/SVE context. This has the drawback to disable
>>      all softirqs even if they are not using FPSIMD/SVE.
>>
>>      Since a softirq is supposed to check may_use_simd() anyway before
>>      attempting to use FPSIMD/SVE, there is limited reason to keep softirq
>>      disabled when touching the FPSIMD/SVE context. Instead, we can simply
>>      disable preemption and mark the FPSIMD/SVE context as in use by setting
>>      CPU's fpsimd_context_busy flag.
>>
>>      Two new helpers {get, put}_cpu_fpsimd_context are introduced to mark
>>      the area using FPSIMD/SVE context and they are used to replace
>>      local_bh_{disable, enable}. The functions kernel_neon_{begin, end} are
>>      also re-implemented to use the new helpers.
>>
>>      Additionally, double-underscored versions of the helpers are provided to
>>      called when preemption is already disabled. These are only relevant on
>>      paths where irqs are disabled anyway, so they are not needed for
>>      correctness in the current code. Let's use them anyway though: this
>>      marks critical sections clearly and will help to avoid mistakes during
>>      future maintenance.
> 
> Looks good to me.
> 
> Reviewed-by: Dave Martin <Dave.Martin@arm.com>
> 
> (For the diff as well as the commit message, obviously.)

Thank you! I will resend the series once rc1 has been cut.

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
