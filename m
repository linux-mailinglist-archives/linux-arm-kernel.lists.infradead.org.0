Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF5114F0C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 17:42:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kHlFb7J63fiDWkM0AZHAWXfQyfA2psP93L9EyVnjHdY=; b=fxeVOBYfBKzPf0gyINB3r++7B
	hut7dmZrsr1LpexHmrLSphvg/MDoU+dEXuc6cGfo+jObbtej+vEUN5ZTkNUywZY065l1LVh7irObA
	t21ZPVy5uXL7FKHOKS7AerLozqzo691QiiV+1WAMYkeTzt0vX3llJ3oBgGruWqgAqdy9z3VqgGFdM
	sJqHPi7p4/SA+4ch1YVFPVij89IvFyqHt2IqRMyWzuWESVgFRHePXecXPwd+UMjvv6fVoXmcDFEX3
	DOZgUNc3Eco+DAKAxG7+YXabRsuZhvJItmzFogNTn6D8bCGb/3uw4aF2iQFB0JiVM5DnamTOBzJyY
	v/nyGbUMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixZNP-00030p-O0; Fri, 31 Jan 2020 16:42:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixZNH-000305-UD
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 16:42:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9E032FEC;
 Fri, 31 Jan 2020 08:42:29 -0800 (PST)
Received: from [10.37.12.54] (unknown [10.37.12.54])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5D8D23F68E;
 Fri, 31 Jan 2020 08:42:11 -0800 (PST)
Subject: Re: [PATCH 2/3] ARM: dts: exynos: Add Exynos5422 CPU
 dynamic-power-coefficient information
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20200127215453.15144-1-lukasz.luba@arm.com>
 <20200127215453.15144-3-lukasz.luba@arm.com>
 <CAJKOXPcgC1xE2=-=_hqvqrBCBzQF4113+wez=3Lqp71=yv8gZw@mail.gmail.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <7c405b02-060c-3fbc-f6a8-2b4180753ad0@arm.com>
Date: Fri, 31 Jan 2020 16:42:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPcgC1xE2=-=_hqvqrBCBzQF4113+wez=3Lqp71=yv8gZw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_084232_064442_B000BA68 
X-CRM114-Status: GOOD (  23.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org,
 =?UTF-8?Q?Bart=c5=82omiej_=c5=bbo=c5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/31/20 1:05 PM, Krzysztof Kozlowski wrote:
> On Mon, 27 Jan 2020 at 22:55, <lukasz.luba@arm.com> wrote:
>>
>> From: Lukasz Luba <lukasz.luba@arm.com>
>>
>> Add dynamic power coefficient into CPU nodes which let CPUFreq subsystem
>> register the Energy Model (EM) for the CPUs.
>>
>> The 'dynamic-power-coefficient' is used for calculating the dynamic power
>> according to the equation in documentation [1].  The Energy Model (EM)
>> framework relies on calculated power and cost for each OPP. The OPP power
>> values come from CPUFreq driver, which registered required callback
>> function. The simple implementation of a CPUFREQ driver, like cpufreq-dt,
>> uses 'dev_pm_opp_of_register_em()' which relay on
>> 'dynamic-power-coefficient' to calculate the power of requested OPP for the
>> EM [2].
>>
>> The calculated values might be checked in
>> /sys/kernel/debug/energy_model/pd*/
>>
>> $ grep . /sys/kernel/debug/energy_model/pd1/cs*/*
>> /sys/kernel/debug/energy_model/pd1/cs:1000000/cost:558
>> /sys/kernel/debug/energy_model/pd1/cs:1000000/frequency:1000000
>> /sys/kernel/debug/energy_model/pd1/cs:1000000/power:310
>> /sys/kernel/debug/energy_model/pd1/cs:1100000/cost:558
>> /sys/kernel/debug/energy_model/pd1/cs:1100000/frequency:1100000
>> /sys/kernel/debug/energy_model/pd1/cs:1100000/power:341
>> /sys/kernel/debug/energy_model/pd1/cs:1200000/cost:558
>> /sys/kernel/debug/energy_model/pd1/cs:1200000/frequency:1200000
>> /sys/kernel/debug/energy_model/pd1/cs:1200000/power:372
>> /sys/kernel/debug/energy_model/pd1/cs:1300000/cost:674
>> /sys/kernel/debug/energy_model/pd1/cs:1300000/frequency:1300000
>> /sys/kernel/debug/energy_model/pd1/cs:1300000/power:487
>> /sys/kernel/debug/energy_model/pd1/cs:1400000/cost:675 ...
>>
>> $ grep . /sys/kernel/debug/energy_model/pd0/cs*/*
>> /sys/kernel/debug/energy_model/pd0/cs:1000000/cost:200
>> /sys/kernel/debug/energy_model/pd0/cs:1000000/frequency:1000000
>> /sys/kernel/debug/energy_model/pd0/cs:1000000/power:154
>> /sys/kernel/debug/energy_model/pd0/cs:1100000/cost:260
>> /sys/kernel/debug/energy_model/pd0/cs:1100000/frequency:1100000
>> /sys/kernel/debug/energy_model/pd0/cs:1100000/power:220
>> /sys/kernel/debug/energy_model/pd0/cs:1200000/cost:260
>> /sys/kernel/debug/energy_model/pd0/cs:1200000/frequency:1200000
>> /sys/kernel/debug/energy_model/pd0/cs:1200000/power:240
>> /sys/kernel/debug/energy_model/pd0/cs:1300000/cost:260
>> /sys/kernel/debug/energy_model/pd0/cs:1300000/frequency:1300000
>> /sys/kernel/debug/energy_model/pd0/cs:1300000/power:260
>> /sys/kernel/debug/energy_model/pd0/cs:200000/cost:130 ...
> 
> Please, do not describe entire Energy Model in commit message touching
> DTS. It brings too much information which look unrelated and therefore
> it makes difficult to spot real rationale behind the change. Just
> mention:
> 1. Why you are doing it?
> 2. What are you doing?
> 3. How did you figure out magic constants here (details of "what")?

OK, I will clean this up.

> 
>> To provide a proper value of the 'dynamic-power-coefficient' the real power
>> can be measured using a dedicated hardware, i.e. INA2xx. The Odroid-XU3
>> hwmon sensors have been used to capture the power value during a sysbench
>> test running on single core and at each possible OPP.
> 
> Since you mention the values, post them. That's the only thing which
> reader cannot get on his own. All other values posted in commit
> message will be seen after running tests...

Makes sense, but as you spotted it can vary probably due to ASV, so I
will skip to put values in commit message.

> 
>> The measured values
>> were divided by 2, since the dynamic power is typically half of the
>> consumed power (the second half is static power). Next, the approximation
>> was made and the power model derived, showing the 'C' value of routhly X.
> 
> s/routhly/roughly/
> 
> What is X?

The 'X' is <128> or <310>

> 
>> Check the example equations in drivers/opp/of.c [2].
>> Thus, i.e. the power = 1.0Watt at 1GHz => 0.5W dynamic power =>
>> dynamic-power-coefficient = 400
>>
>> Using this simple technique we can provide and needed coefficient.  The
> 
> s/and/the/ ?

correct

> 
>> approximation does not have to be super precised. The proportion is
>> important and the difference between power consumed by different CPUs
>> running at the same frequency, which is then used in Energy Aware Scheduler
>> algorithms. An example power values on Odroid-XU3:
>>
>> (LITTLE CPU)
>> /sys/kernel/debug/energy_model/pd0/cs:1000000/frequency:1000000
>> /sys/kernel/debug/energy_model/pd0/cs:1000000/power:154
> 
> For A7, 1V and 1 GHz this gives 142, not 154. Is it correct? What ASV
> are you using?

Good question, it may vary depending on ASV. Would it vary also due to
bootloader?
This one is quite old:
U-Boot 2012.07 (Aug 11 2014 - 18:33:44) for Exynos5422

Odroid-xu3 rev0.2 20140529 ASV regs dump:
EXYNOS_CHIPID_REG_PKG_ID=0x320c832a
EXYNOS_CHIPID_REG_AUX_INFO=0x4f

Odroid-xu4 rev0.1 20180912 ASV regs dump:
EXYNOS_CHIPID_REG_PKG_ID=0x3b0e832a
EXYNOS_CHIPID_REG_AUX_INFO=0x100c004f

> 
>> (big CPU)
>> /sys/kernel/debug/energy_model/pd1/cs:1000000/frequency:1000000
>> /sys/kernel/debug/energy_model/pd1/cs:1000000/power:310
>>
>> In Odroid-XU3 case the derived coefficient value for 'big' CPU has:
>> dynamic-power-coefficient = <310>;
>> while the 'LITTLE':
>> dynamic-power-coefficient = <128>;
> 
> Make it all compact. First, you mention power values which are the
> same as in the beginning of this commit message. Why repeating? Then
> you mention the power coefficient in 4 lines instead of simple:
> For Odroid XU3, the derived power coefficient is then 128 for an A7
> CPU and 310 for an A15 CPU. Or something similar.

OK, I will keep simple, as you have commented.

> 
>>
>> [1] Documentation/devicetree/bindings/arm/cpus.yaml
>> [2] https://elixir.bootlin.com/linux/v5.4/source/drivers/opp/of.c#L1044
> 
> Refer to path inside, no external sources unless needed.

OK

Regards,
Lukasz

> 
> Best regards,
> Krzysztof
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
