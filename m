Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9165515AD2C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 17:21:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c8fkT8VXsfxhCi6fdr3V5Dulceoh39mM4ksaERk9ov0=; b=sFxej0f7s7xUB7SkEHp+xS7HG
	mwP0opQQQesIXMTBuFkYK6Dw3/Y3huyo+fYvG1ClnJxUmKmXMv75bb8oMUZnoxN8NvayhD90NGmRF
	OBSCwI4Bv30eeqPCsVQZdlt7L89Xt6VLhPFTpptWKxor1XTeWYdgN9nE2JaSNrj5/d+AG0KNTnupm
	5KvWvlZmpVqxHbd3f/Epc4ZK1VSo8av2FgWMXrloofyfP8jbtjWhZLyaRjIK6rE1zosc+SjjZ1kL5
	uOgtbKm92bhS/XUs8mHYaPux9zHLBjlfgRKUwvvVWtI9EhB5lZkrAnhUi1qbLVdIumDkwhpYvGyNL
	wNA/oY/KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ulA-0004t9-J3; Wed, 12 Feb 2020 16:21:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ul2-0004sK-OA
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 16:21:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD813328;
 Wed, 12 Feb 2020 08:20:59 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BE1A63F68F;
 Wed, 12 Feb 2020 08:20:57 -0800 (PST)
Subject: Re: [PATCH v3 1/7] arm64: add support for the AMU extension v1
To: Ionela Voinescu <ionela.voinescu@arm.com>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-2-ionela.voinescu@arm.com>
 <93472f17-6465-641d-ea82-3230b5697ffd@arm.com>
 <20200212161045.GA7475@arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <133890f7-59bb-63b9-0ca8-2294e3596058@arm.com>
Date: Wed, 12 Feb 2020 16:20:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200212161045.GA7475@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_082100_874595_C0DB3D4C 
X-CRM114-Status: GOOD (  31.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, maz@kernel.org, linux-doc@vger.kernel.org,
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, mingo@redhat.com,
 viresh.kumar@linaro.org, linux-arm-kernel@lists.infradead.org,
 sudeep.holla@arm.com, will@kernel.org, valentin.schneider@arm.com,
 lukasz.luba@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ionela,

On 12/02/2020 16:10, Ionela Voinescu wrote:
> Hi Suzuki,
> 
> On Wednesday 12 Feb 2020 at 11:30:44 (+0000), Suzuki Kuruppassery Poulose wrote:
>>> +static int __init set_disable_amu(char *str)
>>> +{
>>> +	int value = 0;
>>> +
>>> +	disable_amu = get_option(&str, &value) ? !!value : true;
>>
>> minor nit: You could simply use strtobool(str) here, which accepts:
>>
>> disable_amu= [0/1/on/off/y/n]
>>
> 
> Yes, this was intentional as I wanted "disable_amu" to be a valid option
> as well, not only "disable_amu=<option>".
> 
> If you don't mind I'd like to keep it like this. Currently the use of

Sure, thats fine.

>>> +
>>> +	return 0;
>>> +}
>>> +early_param("disable_amu", set_disable_amu);
>>> +
>>> +static bool has_amu(const struct arm64_cpu_capabilities *cap,
>>> +		       int __unused)
>>> +{
>>> +	/*
>>> +	 * The AMU extension is a non-conflicting feature: the kernel can
>>> +	 * safely run a mix of CPUs with and without support for the
>>> +	 * activity monitors extension. Therefore, if not disabled through
>>> +	 * the kernel command line early parameter, enable the capability
>>> +	 * to allow any late CPU to use the feature.
>>> +	 *
>>> +	 * With this feature enabled, the cpu_enable function will be called
>>> +	 * for all CPUs that match the criteria, including secondary and
>>> +	 * hotplugged, marking this feature as present on that respective CPU.
>>> +	 * The enable function will also print a detection message.
>>> +	 */
>>> +
>>> +	if (!disable_amu && !zalloc_cpumask_var(&amu_cpus, GFP_KERNEL)) {
>>
>> This looks problematic. Don't we end up in allocating the memory during
>> "each CPU" check and thus leaking memory ? Do we really need to allocate
>> this dynamically ?
>>
> 
> Yes, it does make some assumptions. Given that the AMU capability is
> a WEAK_LOCAL_CPU_FEATURE I relied on the match function being called
> only once, when the return value is true. If the return value is false,

That is not correct. A WEAK_LOCAL_CPU_FEATURE is still SCOPE_LOCAL_CPU,
implies it is run on all the booting CPUs (including the hotplugged
ones). The WEAK is there to imply that its "permitted" or "optional"
for a hotplugged CPU. So, eventually you will re-allocate this variable
every single time a CPU turns up, where you could also loose the current
state.

> which will result in it being called multiple times, it's either because
> disable_amu == false, or it has become false due to a previous failed
> allocation, in which case a new allocation will not be attempted.
> 
> For better handling I could have a cpumask_available check before the
> allocation just in case the capability type changes in the future, or to
> at least not rely on assumptions based on the type of the capability.
> 
> The reason this is dynamic is that I wanted to avoid the memory being
> allocated when disable_amu is true - as Valentin mentioned in a comment
> in the meantime "the static allocation is done against NR_CPUS whereas
> the dynamic one is done against nr_cpu_ids".
> 
> Would this be alright?
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 182e05ca3410..4cee6b147ddd 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -1222,7 +1222,11 @@ static bool has_amu(const struct arm64_cpu_capabilities *cap,
>           * The enable function will also print a detection message.
>           */
>   
> -       if (!disable_amu && !zalloc_cpumask_var(&amu_cpus, GFP_KERNEL)) {
> +       if (disable_amu)
> +               return false;
> +
> +       if (!cpumask_available(amu_cpus) &&
> +           !zalloc_cpumask_var(&amu_cpus, GFP_KERNEL)) {
>                  pr_err("Activity Monitors Unit (AMU): fail to allocate memory");
>                  disable_amu = true;
>          }

This looks fine.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
