Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E8D162A43
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 17:19:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LGdq3qSFz45rFPcwpwymLm3FoRIQKmrXKa3Ol2yvsSA=; b=UuTzTSecXfbNCifg4nI4MoE9C
	1ecDh2l8vNrZud8qG4mTcg34GhhcGiEC/hwkymCeca3hscPiWj4u4jhhQc+nvF36VC7Ja2sziyW4t
	LurpVvbFYg+bLsoLWymWfFgY8PgvUmLg40WvlHaefnsnXVrsO9YQe5V93apZvcmto9foDNEEhakHM
	sJpc7Wvozh88D9MyfUwLyy5SSelPVfCqmMM9CyC+bp+oOwCHaMcI3Gl1vCRVxSYb/LyDG5KOxqMHg
	xydnMPTlmEcNRo6Z1IhNE8UJAwWDvMdR5fYYS3WVfNukO94ivGKx2aii4VFZBDGb6NEaRSoanR1gz
	Bgux6eK+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j45bE-0004Wc-CS; Tue, 18 Feb 2020 16:19:52 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j45b6-0004V8-SC
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 16:19:46 +0000
Received: from lhreml702-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id DD10D8678BA5F207C4CC;
 Tue, 18 Feb 2020 16:19:34 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml702-cah.china.huawei.com (10.201.108.43) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 18 Feb 2020 16:19:34 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Tue, 18 Feb
 2020 16:19:34 +0000
Subject: Re: [PATCH RFC 0/7] perf pmu-events: Support event aliasing for
 system PMUs
To: Will Deacon <will@kernel.org>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <20200218125707.GB20212@willie-the-truck>
 <a40903fe-d52f-96c6-a06a-fe834d71d625@huawei.com>
 <20200218133943.GF20212@willie-the-truck>
From: John Garry <john.garry@huawei.com>
Message-ID: <627cbc50-4b36-7f7f-179d-3d27d9e0215a@huawei.com>
Date: Tue, 18 Feb 2020 16:19:32 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200218133943.GF20212@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml703-chm.china.huawei.com (10.201.108.52) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_081945_061620_66A2FFC7 
X-CRM114-Status: GOOD (  23.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, ak@linux.intel.com,
 Joakim Zhang <qiangqing.zhang@nxp.com>, suzuki.poulose@arm.com,
 peterz@infradead.org, robin.murphy@arm.com, linuxarm@huawei.com,
 acme@kernel.org, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, james.clark@arm.com,
 namhyung@kernel.org, jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>>
>>> Why don't we just expose SMMU_IIDR in the SMMUv3 PMU directory, so that
>>> you can key off that?
>>
>> That does not sound like a standard sysfs interface.
> 
> It's standard in the sense that PMUs already have their own directory under
> sysfs where you can put things. 

Sure, but then the perf tool will need to be able to interpret all these 
custom PMU files, which has scalability issues.

Maybe this would work and I did consider it, but another concern is that 
the PMU drivers will have problems making available some 
implementation-specific identifier at all.

For example, the "caps" directory is a
> dumping ground for all sorts of PMU-specific information.
> 
> On the other hand, saying "please go figure out which SoC you're on"
> certainly isn't standard and is likely to lead to unreliable, spaghetti
> code.

I'm not sure how. The perf tool PMU event aliasing already takes a few 
certain steps to figure out which cpuid to use:

static char *perf_pmu__getcpuid(struct perf_pmu *pmu)
{
	char *cpuid;
	static bool printed;

	cpuid = getenv("PERF_CPUID");
	if (cpuid)
		cpuid = strdup(cpuid);
	if (!cpuid)
		cpuid = get_cpuid_str(pmu);
	if (!cpuid)
		return NULL;

	if (!printed) {
		pr_debug("Using CPUID %s\n", cpuid);
		printed = true;
	}
	return cpuid;
}

And this would be something similar - just read some sysfs file.

> 
>> Anyway, I don't think that works for every case, quoting from
>> https://lkml.org/lkml/2019/10/16/465:
>>
>> "> Note: I do acknowledge that an overall issue is that we assume all PMCG
>> IMP DEF events are same for a given SMMU model.
>>
>> That assumption does technically fail already - I know MMU-600 has
>> different IMP-DEF events for its TCU and TBUs, however as long as we can
>> get as far as "this is some part of an MMU-600" the driver should be
>> able to figure out the rest ..."
> 
> Perhaps I'm misreading this, but it sounds like if you knew it was an
> MMU-600 then you'd be ok. I also don't understand how a SoC ID makes things
> any easier in this regard.

It's doesn't necessarily make things easier in this regard. But using a 
SoC ID is an alternative to checking the SMMU_ID or the kernel driver 
having to know that it was a MMU-600 at all.

> 
>> So even if it is solvable here, the kernel driver(s) will need to be
>> reworked. And that is just solving one case in many.
> 
> PMU drivers will need to expose more information to userspace so that they
> can be identified more precisely, yes. I wouldn't say they would need to be
> "reworked".

OK, so some combination of changes would still be required for the SMMU 
PMCG, IORT, and SMMUv3 drivers.

These changes were included in my RFC.

> 
>> I'm nervous about coming up with a global "SYSID"
>>> when we don't have the ability to standardise anything in that space.
>>
>> I understand totally, especially if any sysid is based on DT bindings.
> 
> Well if this is going to be ACPI-only then it's a non-starter.

No, in fact I would rather not rely on ACPI or DT at all.

> 
>> But this is some sort of standardization:
>> https://developer.arm.com/docs/den0028/c, see SMCCC_ARCH_SOC_ID
> 
> Yay, firmware :/
>  > Even if this was widely implemented (it's not),

The spec is in beta stage now.

And if it's not implemented, then simply the perf tool cannot make PMU 
aliases for those DDRC or similar PMUs (and we would find that the DDRC 
or similar JSON files for those platforms would not be added until it 
does support it).

>I still think that it's
> the wrong level of abstraction. 

As I said above, we could try to expand the PMU sysfs entries for this, 
but I have concerns on how we make some imp specific identifier or what 
this would look like.

Why not do away with ACPI/DT entirely
> and predicate everything off the SoC ID?

As constantly checking what the SoC ID means throughout system 
components does not scale.

John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
