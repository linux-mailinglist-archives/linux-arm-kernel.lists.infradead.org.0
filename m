Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC9F15A5E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 11:12:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C22TBPZ2lr4zICYiCf/1aPAOOamgY6DNw+qEcjOV6BY=; b=CNvAAEx3qTk4EsO2c42oVSnv9
	9k5SYSoqQUb8/s0JT9Uiu9+9MixBAwoxoijWYHmxLINxb8c80novnrFmd821nopDF9ZI4LWTVYUZJ
	JnT1w1LM2nCFqW93OctvWb5DoOBKVqiThvuAlnWLgyAHdtGX/SB+Amj2Mm6Z0Dryid4f/FYpkYGjd
	xQlHLPwZ4ZWyuwgrcyhxRWfxqCcuemtbwll7nayoFh6cYOVq2jqRe6HyHfroTkstump3LmX206gx5
	i2kSvuA9OQxiI6hpycKgskT+r0QTKxYCR3MvriKx5vEgaiX9b5rYIxmwL95sYk2Da/V+1uCZF/X1F
	4sdypzxbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1p0c-0001Hm-Eo; Wed, 12 Feb 2020 10:12:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1p0V-0001HL-Or
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 10:12:37 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 50B852082F;
 Wed, 12 Feb 2020 10:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581502354;
 bh=QElDy3sBZHFeK5CVxW0BW75mIV/Lc9hIMiRuNMALm1M=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pdoYsYGa+dyfJlc3GKvA65vI2/cS4ruqbsyp74Be6IKzXnpcxBHantm3Y29od4qit
 1W57ysC1upee7XAXXojVzieOkHkR21LArLqf7YKfrw5DcC4yp8+jFAZIKCpVMazoMo
 5JzGH/bzQoaJlYUGRMlQ1A7AHvDJ9yhdy/fPpsFE=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1p0S-004YUt-AC; Wed, 12 Feb 2020 10:12:32 +0000
MIME-Version: 1.0
Date: Wed, 12 Feb 2020 10:12:32 +0000
From: Marc Zyngier <maz@kernel.org>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v3 7/7] clocksource/drivers/arm_arch_timer: validate
 arch_timer_rate
In-Reply-To: <89339501-5ee4-e871-3076-c8b02c6fbf6e@arm.com>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-8-ionela.voinescu@arm.com>
 <89339501-5ee4-e871-3076-c8b02c6fbf6e@arm.com>
Message-ID: <a24aa6c86e7a565b6269f48d4026bca2@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: lukasz.luba@arm.com, ionela.voinescu@arm.com,
 catalin.marinas@arm.com, will@kernel.org, mark.rutland@arm.com,
 suzuki.poulose@arm.com, sudeep.holla@arm.com, valentin.schneider@arm.com,
 rjw@rjwysocki.net, peterz@infradead.org, mingo@redhat.com,
 vincent.guittot@linaro.org, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_021235_846330_2A3CA80C 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, will@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mingo@redhat.com, viresh.kumar@linaro.org, sudeep.holla@arm.com,
 Ionela Voinescu <ionela.voinescu@arm.com>, valentin.schneider@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-12 10:01, Lukasz Luba wrote:
> Hi Ionela, Valentin
> 
> On 2/11/20 6:45 PM, Ionela Voinescu wrote:
>> From: Valentin Schneider <valentin.schneider@arm.com>
>> 
>> Using an arch timer with a frequency of less than 1MHz can result in 
>> an
>> incorrect functionality of the system which assumes a reasonable rate.
>> 
>> One example is the use of activity monitors for frequency invariance
>> which uses the rate of the arch timer as the known rate of the 
>> constant
>> cycle counter in computing its ratio compared to the maximum frequency
>> of a CPU. For arch timer frequencies less than 1MHz this ratio could
>> end up being 0 which is an invalid value for its use.
>> 
>> Therefore, warn if the arch timer rate is below 1MHz which contravenes
>> the recommended architecture interval of 1 to 50MHz.
>> 
>> Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: Marc Zyngier <maz@kernel.org>
>> ---
>>   drivers/clocksource/arm_arch_timer.c | 18 +++++++++++++++---
>>   1 file changed, 15 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/clocksource/arm_arch_timer.c 
>> b/drivers/clocksource/arm_arch_timer.c
>> index 9a5464c625b4..4faa930eabf8 100644
>> --- a/drivers/clocksource/arm_arch_timer.c
>> +++ b/drivers/clocksource/arm_arch_timer.c
>> @@ -885,6 +885,17 @@ static int arch_timer_starting_cpu(unsigned int 
>> cpu)
>>   	return 0;
>>   }
>>   +static int validate_timer_rate(void)
>> +{
>> +	if (!arch_timer_rate)
>> +		return -EINVAL;
>> +
>> +	/* Arch timer frequency < 1MHz can cause trouble */
>> +	WARN_ON(arch_timer_rate < 1000000);
> 
> I don't see a big value of having a patch just to add one extra 
> warning,
> in a situation which we handle in our code with in 6/7 with:
> 
> +	if (!ratio) {
> +		pr_err("System timer frequency too low.\n");
> +		return -EINVAL;
> +	}
> 
> Furthermore, the value '100000' here is because of our code and
> calculation in there, so it does not belong to arch timer. Someone
> might ask why it's not 200000 or a define in our header...
> Or questions asking why do you warn when that arch timer and cpu is not
> AMU capable...

Because, as the commit message outlines it, such a frequency is terribly
out of spec?

> 
>> +
>> +	return 0;
>> +}
>> +
>>   /*
>>    * For historical reasons, when probing with DT we use whichever 
>> (non-zero)
>>    * rate was probed first, and don't verify that others match. If the 
>> first node
>> @@ -900,7 +911,7 @@ static void arch_timer_of_configure_rate(u32 rate, 
>> struct device_node *np)
>>   		arch_timer_rate = rate;
>>     	/* Check the timer frequency. */
>> -	if (arch_timer_rate == 0)
>> +	if (validate_timer_rate())
>>   		pr_warn("frequency not available\n");
>>   }
>>   @@ -1594,9 +1605,10 @@ static int __init arch_timer_acpi_init(struct 
>> acpi_table_header *table)
>>   	 * CNTFRQ value. This *must* be correct.
>>   	 */
>>   	arch_timer_rate = arch_timer_get_cntfrq();
>> -	if (!arch_timer_rate) {
>> +	ret = validate_timer_rate();
>> +	if (ret) {
>>   		pr_err(FW_BUG "frequency not available.\n");
>> -		return -EINVAL;
>> +		return ret;
>>   	}
>>     	arch_timer_uses_ppi = arch_timer_select_ppi();
>> 
> 
> Lastly, this is arch timer.
> To increase chances of getting merge soon, I would recommend to drop
> the patch from this series.

And? It seems to address a potential issue where the time frequency
is out of spec, and makes sure we don't end up with additional problems
in the AMU code.

On its own, it is perfectly sensible and could be merged as part of this
series with my

Acked-by: Marc Zyngier <maz@kernel.org>

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
