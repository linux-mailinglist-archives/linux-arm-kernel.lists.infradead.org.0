Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAAE163FAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:50:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5vFSAran4xzka3ixHvWRrNOF04r9y7OHB2kIMFtyh80=; b=HH1X4+yZg+m4xEzK2gVNoDB5N
	LTmc58K0DH4obX8TYbEFpW80P3DNS+oVwawqOQUWS4EHEnN2TgFVsk0F8h8dJxCJX6EMhuNUyN7Tv
	rkbzgelaDSaZxa96cuc9ikORcPWH7DFYtNC6yv7oVM5qtwc5sotgABa/tBcig9j0NEqs5DXDzEXMj
	8x0vSh/6sYD0Y1VCN6gyr1hlDd5jPc75f1zVi/YSdDynzxi2XtLu26cs2DlRVYtC+yrvpaHUAyP22
	NLiNNG3R9mWBfjZBDYMxM3HDGoaZp2//tf5RUzP0YVAqK/6w80MYlQubhlXTt7w6uYNemgFjWJblL
	EKXpe8lAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4L4F-0005vX-0P; Wed, 19 Feb 2020 08:50:51 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4L3k-0005eI-CZ
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:50:22 +0000
Received: from lhreml707-cah.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 94A329A75D14FEA2E52C;
 Wed, 19 Feb 2020 08:50:16 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml707-cah.china.huawei.com (10.201.108.48) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 19 Feb 2020 08:50:15 +0000
Received: from [127.0.0.1] (10.210.170.116) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 19 Feb
 2020 08:50:14 +0000
Subject: Re: [PATCH RFC 0/7] perf pmu-events: Support event aliasing for
 system PMUs
To: Mark Rutland <mark.rutland@arm.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <20200218125707.GB20212@willie-the-truck>
 <a40903fe-d52f-96c6-a06a-fe834d71d625@huawei.com>
 <20200218133943.GF20212@willie-the-truck>
 <627cbc50-4b36-7f7f-179d-3d27d9e0215a@huawei.com>
 <20200218170803.GA9968@lakrids.cambridge.arm.com>
 <cb004f43-b2a4-ae23-9fd3-0f70bd69701b@huawei.com>
 <20200218181331.GB9968@lakrids.cambridge.arm.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <822114f9-8ff4-c769-66a0-7e637ce49cd5@huawei.com>
Date: Wed, 19 Feb 2020 08:50:13 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200218181331.GB9968@lakrids.cambridge.arm.com>
Content-Language: en-US
X-Originating-IP: [10.210.170.116]
X-ClientProxiedBy: lhreml743-chm.china.huawei.com (10.201.108.193) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_005020_616125_C2B82399 
X-CRM114-Status: GOOD (  23.99  )
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

>>
>>> For system PMUs, I'd rather the system PMU driver exposed some sort of
>>> implementation ID. e.g. the SMMU_ID for SMMU. We can give that a generic name,
>>> and mandate that where a driver exposes it, the format/meaning is defined in
>>> the documentation for the driver.
>>
>> Then doesn't that per-PMU ID qualify as brittle and non-standard also?
> 
> Not in my mind; any instances of the same IP can have the same ID,
> regardless of which SoC they're in. Once userspace learns about
> device-foo-4000, it knows about it on all SoCs. That also means you can
> support heterogeneous instances in the same SoC.

Sure, but this device-foo-4000 naming is a concern for standardization, 
stable ABI, and perf tool support.

> 
> If a device varies so much on a SoC-by-SoC basis and or the driver has
> no idea what to expose, it could be legitimate for the PMU driver to
> expose the SoC ID as its PMU-specific ID, but I don't think we should
> make that the common/only case.

But where does the PMU driver get the SoC ID? Does it have to check DT 
machine ID, ACPI OEM ID, or SMCCC SOC ID?

I can't imagine that you really want this stuff in the kernel PMU 
drivers, but that's your call.

> 
>> At least the SMC SoC ID is according to some standard.
>>
>> And typically most PMU HW would have no ID reg, so where to even get this
>> identification info? Joakim Zhang seems to have this problem for the imx8
>> DDRC PMU driver.
> 
> For imx8, the DT compat string or additional properties on the DDRC node
> could be used to imply the id.

Fine, but it's the ACPI case which is what I am concerned about.

> 
>>> That can be namespace by driver, so e.g. keys would be smmu_sysfs_name/<id> and
>>> ddrc_sysfs_name/<id>.
>>>
>>>>>> So even if it is solvable here, the kernel driver(s) will need to be
>>>>>> reworked. And that is just solving one case in many.
>>>>> PMU drivers will need to expose more information to userspace so that they
>>>>> can be identified more precisely, yes. I wouldn't say they would need to be
>>>>> "reworked".
>>>> OK, so some combination of changes would still be required for the SMMU
>>>> PMCG, IORT, and SMMUv3 drivers.
>>> To expose the SMMU ID, surely that's just the driver?
>>
>> This case is complicated, like others I anticipate.
>>
>> So the SMMU PMCG HW has no ID register itself, and this idea relies on using
>> the associated SMMUv3 IIDR in lieu. For that, we need to involve the IORT,
>> SMMUv3, and SMMU PMCG drivers to create this linkage, and even then I still
>> have my doubts on whether this is even proper.
> 
> Ok, I hadn't appreciated that the PMCG did not have an ID register
> itself.
> 
> I think that the relationship between the SMMU and PMCG is a stronger
> argument against using the SOC_ID. If the PMCGs in a system are
> heterogeneous, then you must know the type of the specific instance.

Perf tool PMU events can handle that. Each PMCG PMU instance has a 
different name - the name encoding includes the HW base address, so 
always unique per system - and then so the JSON can know this and have 
events specific per instance.

> 
>> Please see https://lore.kernel.org/linux-iommu/1569854031-237636-1-git-send-email-john.garry@huawei.com/
>> for reference.
>>
>> Or are there
>>> implementations where the ID register is bogus and have to be overridden?
>>>
>>
>> I will also note that perf tool PMU events framework relies today on
>> generating a table of events aliases per CPU and matching based on that. If
>> you want to totally disassociate a CPU or any SoC ID mapping, then this will
>> require big perf tool rework.
> 
> I think that might be necessary, as otherwise we're going to back
> ourselves into a corner by building what's simple now.

I appreciate what you're saying. I'll check this idea further.

Cheers,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
