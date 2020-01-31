Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0752E14F04E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 17:00:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rXdHzerPamGwrrwZ3bgsBd2DZr+WduhOc0g2bHoRt+A=; b=gQ732LVdj/om0Ee8xwzCVG7FF
	chDM0HAMZqx6iUw9zyscE0YgqgFtXkntute6zjMw7Gp8mw7jbPARpDucXkj5RZ3y3k5HCESN9CMHB
	hmUUcz2T3xjH8tMBjY6GAHLfc73lq/kyykASmk2BJVUOiTuhH5YikVX0h0aTzs+mkQuR8bPSEk1zi
	/y3nW+UGLyYxNawjPWo0gt4xVSstDcgBRD4wAfToVut7MfzIepck7oJDUM0e+JhLuN//1vTOiG2AD
	bUYu+5hsn/TfvQaj5dWpjqLhoX/kQVLJ5SmRLiGJmsYAsq6+bMY8OiOL/yMhRK/2hGsX/zPNwVJNR
	3VhWD54PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixYiP-0004RQ-3I; Fri, 31 Jan 2020 16:00:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixYi5-0004QA-MT
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 15:59:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA5FDFEC;
 Fri, 31 Jan 2020 07:59:54 -0800 (PST)
Received: from [10.37.12.54] (unknown [10.37.12.54])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 45BF73F68E;
 Fri, 31 Jan 2020 07:59:47 -0800 (PST)
Subject: Re: [PATCH 1/3] ARM: exynos_defconfig: Enable SCHED_MC
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20200127215453.15144-1-lukasz.luba@arm.com>
 <20200127215453.15144-2-lukasz.luba@arm.com>
 <CAJKOXPedRc3ag6DDUAXSbHk8JcAZbug5HSss9wb8YyLkP7MLaw@mail.gmail.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <ae021317-8fda-2bb2-2080-1304fda1420c@arm.com>
Date: Fri, 31 Jan 2020 15:59:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPedRc3ag6DDUAXSbHk8JcAZbug5HSss9wb8YyLkP7MLaw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_075957_823281_F5858547 
X-CRM114-Status: GOOD (  20.41  )
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

Hi Krzysztof,

Thank you for your review, please see my comments below.

On 1/31/20 12:47 PM, Krzysztof Kozlowski wrote:
> On Mon, 27 Jan 2020 at 22:55, <lukasz.luba@arm.com> wrote:
>>
>> From: Lukasz Luba <lukasz.luba@arm.com>
>>
>> Since the 'capacities-dmips-mhz' are present in the CPU nodes, make use of
>> this knowledge in smarter decisions during scheduling.
>>
>> The values in 'capacities-dmips-mhz' are normilized, this means that i.e.
>> when CPU0's capacities-dmips-mhz=100 and CPU1's 'capacities-dmips-mhz'=50,
>> cpu0 is twice fast as CPU1, at the same frequency. The proper hirarchy
>> in sched_domain topology could exploit the SoC architecture advantages
>> like big.LITTLE.
> 
> I do not quite get how this is related to rationale behind changing defconfig...

It is not strictly about EAS, it is useful in general for big.LITTLE
platform with clusters.

> 
>> Enabling the SCHED_MC will create two levels in
>> sched_domain hierarchy, which might be observed in:
> 
> This is looks more convincing... but still what is the need? To work with EAS?

It is not only for EAS, but in general for the scheduler (load balance,
task's wake-up path, etc). The scheduler algorithms iterate CPUs in the
sched groups. To make better decisions, the information about MC domain
is needed. More about the scheduler domains and i.e. load_balance()
you can find here:

https://www.kernel.org/doc/html/latest/scheduler/sched-domains.html


> 
>> grep . /proc/sys/kernel/sched_domain/cpu*/domain*/{name,flags}
>> /proc/sys/kernel/sched_domain/cpu0/domain0/name:MC
>> /proc/sys/kernel/sched_domain/cpu0/domain1/name:DIE
>> ...
>> /proc/sys/kernel/sched_domain/cpu0/domain0/flags:575
>> /proc/sys/kernel/sched_domain/cpu0/domain1/flags:4223
> 
> Not related to defconfig change and not visible after this commit.

Without this patch there is only one domain: 'domain0' -> 'DIE'
cat /proc/sys/kernel/sched_domain/cpu0/domain0/name
DIE

When you apply this patch you will get two: 'domain0, 'domain1'
grep . /proc/sys/kernel/sched_domain/cpu0/domain?/name 

/proc/sys/kernel/sched_domain/cpu0/domain0/name:MC
/proc/sys/kernel/sched_domain/cpu0/domain1/name:DIE

I can remove it this information, but it is the most important
to spot this difference out.

This is also the main reason I haven't merge the patch 1 + 3.

Regards,
Lukasz

> 
> Best regards,
> Krzysztof
> 
>>
>> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
>> ---
>>   arch/arm/configs/exynos_defconfig | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm/configs/exynos_defconfig b/arch/arm/configs/exynos_defconfig
>> index e7e4bb5ad8d5..1db857056992 100644
>> --- a/arch/arm/configs/exynos_defconfig
>> +++ b/arch/arm/configs/exynos_defconfig
>> @@ -8,6 +8,7 @@ CONFIG_PERF_EVENTS=y
>>   CONFIG_ARCH_EXYNOS=y
>>   CONFIG_CPU_ICACHE_MISMATCH_WORKAROUND=y
>>   CONFIG_SMP=y
>> +CONFIG_SCHED_MC=y
>>   CONFIG_BIG_LITTLE=y
>>   CONFIG_NR_CPUS=8
>>   CONFIG_HIGHMEM=y
>> --
>> 2.17.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
