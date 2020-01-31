Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FEA14F14E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 18:31:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cQqr48CgXArjLU35iz/+G6vUhc3tbLHmfXRygaoFSow=; b=CpIhyL1U2pM0elgEgvUZ0CY83
	QanpJpk/7+azgyNaesCDV5f5tMKDrGyhauqt2GdGdz8PXj5xvICU8yklqaKEIQcuvDJtomnO9wKQD
	3WV295ZhhVPyvAUhfBYdqYl/rKrqGVpUQxxun/+xKlHskmUcZd1LCpeuU0wodl8QgX1/bsu0tFiT3
	cY/iRMlyecsEtjSAuCpIHUmhFTMhVeWYJMpKd9r5+jj3gfv7+TqQuGb0BypIHA9BFIx12CjgcdsRH
	HpaYbYWYHNNf3L8j/gYI/I08m7n/aEpeNXZJxP1Tm/GGQjN8Zny4qQrh5s0Qnu5QEyecyhMsqQSJp
	5oBkoK2UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixa8P-0002Jz-G7; Fri, 31 Jan 2020 17:31:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixa8H-0002J2-1A
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 17:31:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 003FCFEC;
 Fri, 31 Jan 2020 09:31:01 -0800 (PST)
Received: from [10.37.12.54] (unknown [10.37.12.54])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0E9723F68E;
 Fri, 31 Jan 2020 09:30:49 -0800 (PST)
Subject: Re: [PATCH 3/3] ARM: exynos_defconfig: Enable Energy Model framework
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20200127215453.15144-1-lukasz.luba@arm.com>
 <20200127215453.15144-4-lukasz.luba@arm.com>
 <CAJKOXPeA=_3zPx6Aq3CAUi7JsXr9AigWGWCTNWo_jkm=oVWe_g@mail.gmail.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <db3f2554-288d-81ab-2373-1447367ba673@arm.com>
Date: Fri, 31 Jan 2020 17:30:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPeA=_3zPx6Aq3CAUi7JsXr9AigWGWCTNWo_jkm=oVWe_g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_093105_166822_8735931F 
X-CRM114-Status: GOOD (  22.03  )
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

On 1/31/20 1:16 PM, Krzysztof Kozlowski wrote:
> On Mon, 27 Jan 2020 at 22:55, <lukasz.luba@arm.com> wrote:
>>
>> From: Lukasz Luba <lukasz.luba@arm.com>
>>
>> Enable the Energy Model (EM) brings possibility to use Energy Aware
>> Scheduler (EAS). This compiles the EM but does not enable to run EAS in
>> default. The EAS only works with SchedUtil - a CPUFreq governor which
>> handles direct requests from the scheduler for the frequency change. Thus,
>> to make EAS working in default, the SchedUtil governor should be
>> configured as default CPUFreq governor.
> 
> Full stop. That's enough of needed explanation of schedutil.

OK

> 
>> Although, the EAS might be enabled
>> in runtime, when the EM is present for CPUs, the SchedUtil is compiled and
>> then set as CPUFreq governor, i.e.:
>>
>> echo schedutil > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
>> echo schedutil > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
>>
>> To check if EAS is ready to work, the read output from the command below
>> should show '1':
>> cat /proc/sys/kernel/sched_energy_aware
>>
>> To disable EAS in runtime simply 'echo 0' to the file above.
> 
> Not related to this commit. If you were implemeting here
> schedutil/EAS, then it makes sense to post all this. However what's
> the point to describe it in every defconfig change?

I will drop it.

> 
>> Some test results, which stress the scheduler on Odroid-XU3:
>> hackbench -l 500 -s 4096
>> With mainline code and with this patch set.
> 
> Skip the last sentence - duplicated information.

OK

> 
>>
>> The tests have been made with and without CONFIG_PROVE_LOCKING (PL)
>> (which is set to =y in default exynos_defconfig)
>>
>>                  |               this patch set                  | mainline
> 
> The commit will be applied on its own branch so the meaning of "this
> patch set" will be lost. Maybe just "before/after"?

OK

> 
>>                  |-----------------------------------------------|---------------
>>                  | performance   | SchedUtil     | SchedUtil     | performance
>>                  | governor      | governor      | governor      | governor
>>                  |               | w/o EAS       | w/ EAS        |
>> ----------------|---------------|---------------|---------------|---------------
>> hackbench w/ PL | 12.7s         | 11.7s         | 12.0s         | 13.0s - 12.2s
>> hackbench w/o PL| 9.2s          | 8.1s          | 8.2s          | 9.2s - 8.4s
> 
> Why does the performance different before and after this patch?

Probably due to better locality and cache utilization. I can see that
there is ~700k context switches vs ~450k and ~160k migrations vs ~50k.
If you need to communicate two threads in different clusters, it will go
through CCI.

> 
> Mention - lower better (?). Space between number and unit... or better
> mention [s] in column title.

OK

> 
> And last but not least:
> Why this patch is separate from 1/3? I don't get the need of splitting them.

As mentioned in response to patch 1/3. The fist patch would create MC
domain, something different than Energy Model or EAS. The decisions in
the scheduler would be different.

I can merge 1/3 and 3/3 if you like, though.

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
