Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D721F162D92
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:59:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ua0B6m/bfA7065bcxPEonkxFZT83t+3vBwSCWQTFR/I=; b=ZST/uQHKd1+CDqaDF4d95XF+j
	U4YL5/wkt9RIvImQnB6HfLEUeImXQvz3TNzfNTuhsFhO1d0KdedeE7VWBW1T6sYxGtVn8hqoM+1EX
	hgNM8UI+VnT8BkgOeCTd2bZF7fJqwEM5AG6+RpJs9pAvQLZ9U8hzAGh+7jdmSjEmWX5YjKaM9VTBz
	o99w2bwyWMEf9oFGffZmGtpwgoSeYeuCfHkSEv0SlkRBp3I0iZI0NIYxaSghpUbmEXGcRtLpvqFMh
	EBJVCBCtf9MzNGLVJjpE6t0PeWRdGQo23yUeHJ8aOoyDN6YjQhrl7wl3eJs7JPmu85vrgBAg8c/GX
	Iq3kAnLYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j479E-0000A0-OH; Tue, 18 Feb 2020 17:59:04 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4792-00009D-7V
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:58:54 +0000
Received: from lhreml702-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id ECFB53CC3478A73BE448;
 Tue, 18 Feb 2020 17:58:47 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml702-cah.china.huawei.com (10.201.108.43) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 18 Feb 2020 17:58:47 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Tue, 18 Feb
 2020 17:58:47 +0000
Subject: Re: [PATCH RFC 0/7] perf pmu-events: Support event aliasing for
 system PMUs
To: Mark Rutland <mark.rutland@arm.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <20200218125707.GB20212@willie-the-truck>
 <a40903fe-d52f-96c6-a06a-fe834d71d625@huawei.com>
 <20200218133943.GF20212@willie-the-truck>
 <627cbc50-4b36-7f7f-179d-3d27d9e0215a@huawei.com>
 <20200218170803.GA9968@lakrids.cambridge.arm.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <cb004f43-b2a4-ae23-9fd3-0f70bd69701b@huawei.com>
Date: Tue, 18 Feb 2020 17:58:46 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200218170803.GA9968@lakrids.cambridge.arm.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml703-chm.china.huawei.com (10.201.108.52) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_095852_418587_FEB56E29 
X-CRM114-Status: GOOD (  19.65  )
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
Cc: "ak@linux.intel.com" <ak@linux.intel.com>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jolsa@redhat.com" <jolsa@redhat.com>, Linuxarm <linuxarm@huawei.com>,
 "acme@kernel.org" <acme@kernel.org>, Joakim Zhang <qiangqing.zhang@nxp.com>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 "alexander.shishkin@linux.intel.com" <alexander.shishkin@linux.intel.com>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "james.clark@arm.com" <james.clark@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/02/2020 17:08, Mark Rutland wrote:
>>> I also don't understand how a SoC ID makes things
>>> any easier in this regard.
>> It's doesn't necessarily make things easier in this regard. But using a SoC
>> ID is an alternative to checking the SMMU_ID or the kernel driver having to
>> know that it was a MMU-600 at all.
> Using SOC_ID means that going forward, userspace needs to learn about
> the integration details of each SoC in order to identify a component. As
> you said:
> 
> | As constantly checking what the SoC ID means throughout system components
> | does not scale.
> 
> ... and I think that equally applies to userspace in this case. Who knows how
> many SoCs are going to have MMU-600?
> 
> I also know that SOC_ID is going to be optional, and I think it's near-certain
> that someone will end up producing two SoCs exposing the same ID.

Wouldn't different SoCs having same SMC SOC_ID and revision be a 
(fixable) mistake in the SMC FW?

And if it's not implemented, then no PMU events aliasing in perf tool 
for those uncore PMUs - nothing gets broken though and no regression. 
But I do understand your concern here.

> 
> For system PMUs, I'd rather the system PMU driver exposed some sort of
> implementation ID. e.g. the SMMU_ID for SMMU. We can give that a generic name,
> and mandate that where a driver exposes it, the format/meaning is defined in
> the documentation for the driver.

Then doesn't that per-PMU ID qualify as brittle and non-standard also?

At least the SMC SoC ID is according to some standard.

And typically most PMU HW would have no ID reg, so where to even get 
this identification info? Joakim Zhang seems to have this problem for 
the imx8 DDRC PMU driver.

> 
> That can be namespace by driver, so e.g. keys would be smmu_sysfs_name/<id> and
> ddrc_sysfs_name/<id>.
> 
>>>> So even if it is solvable here, the kernel driver(s) will need to be
>>>> reworked. And that is just solving one case in many.
>>> PMU drivers will need to expose more information to userspace so that they
>>> can be identified more precisely, yes. I wouldn't say they would need to be
>>> "reworked".
>> OK, so some combination of changes would still be required for the SMMU
>> PMCG, IORT, and SMMUv3 drivers.
> To expose the SMMU ID, surely that's just the driver? 

This case is complicated, like others I anticipate.

So the SMMU PMCG HW has no ID register itself, and this idea relies on 
using the associated SMMUv3 IIDR in lieu. For that, we need to involve 
the IORT, SMMUv3, and SMMU PMCG drivers to create this linkage, and even 
then I still have my doubts on whether this is even proper.

Please see 
https://lore.kernel.org/linux-iommu/1569854031-237636-1-git-send-email-john.garry@huawei.com/ 
for reference.

Or are there
> implementations where the ID register is bogus and have to be overridden?
> 

I will also note that perf tool PMU events framework relies today on 
generating a table of events aliases per CPU and matching based on that. 
If you want to totally disassociate a CPU or any SoC ID mapping, then 
this will require big perf tool rework.

Thanks,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
