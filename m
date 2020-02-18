Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EAA3162717
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T4LcZVw0nw5l/mvbDBZSWXgF4GZ3wkFJz/JX9sbuSIQ=; b=hcAYbOD66hoJEIMNjcdcBfJBK
	gD+tKwLpu5fnvglnrbQNloanj7uG0jdXmWOszr1QUDBfEGDHzcfU/C8CoYqIsSIEoTsuPBBSsMBaO
	NfCQZDVErXRCMtCFCxGMe1o1pFXcaNvGtwHBuHziU4uN89TCLlk7l81VgsxpQ5tKYpBd9ATPZkCKq
	jIwGXJIeH7A/Oe+E1TVPC4IEM79KmZUFlp+dAcngknGVEAkZBkTcwG3D92MLthqBBSxlzeA+YVJdM
	9/EfvVPqEdYI3wscjkh5pDd8/vTGA1PCGdf99XeD5r3HBVOL+advPhIT9A7fwl/cUjk+XjD6OEtSd
	k1LoU9RlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j42sF-0001VE-1c; Tue, 18 Feb 2020 13:25:15 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j42rv-0001UA-Gw
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:24:57 +0000
Received: from lhreml701-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 7A16C82D34BC3905797B;
 Tue, 18 Feb 2020 13:24:40 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml701-cah.china.huawei.com (10.201.108.42) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 18 Feb 2020 13:24:40 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Tue, 18 Feb
 2020 13:24:39 +0000
Subject: Re: [PATCH RFC 0/7] perf pmu-events: Support event aliasing for
 system PMUs
To: Will Deacon <will@kernel.org>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <20200218125707.GB20212@willie-the-truck>
From: John Garry <john.garry@huawei.com>
Message-ID: <a40903fe-d52f-96c6-a06a-fe834d71d625@huawei.com>
Date: Tue, 18 Feb 2020 13:24:38 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200218125707.GB20212@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml703-chm.china.huawei.com (10.201.108.52) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_052455_711317_244214C3 
X-CRM114-Status: GOOD (  19.63  )
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
Cc: mark.rutland@arm.com, ak@linux.intel.com, suzuki.poulose@arm.com,
 peterz@infradead.org, robin.murphy@arm.com, linuxarm@huawei.com,
 acme@kernel.org, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, james.clark@arm.com,
 namhyung@kernel.org, jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/02/2020 12:57, Will Deacon wrote:
> On Fri, Jan 24, 2020 at 10:34:58PM +0800, John Garry wrote:
>> Currently event aliasing for only CPU and uncore PMUs is supported. In
>> fact, only uncore PMUs aliasing for when the uncore PMUs are fixed for a
>> CPU is supported, which may not always be the case for certain
>> architectures.
>>
>> This series adds support for PMU event aliasing for system and other
>> uncore PMUs which are not fixed to a specific CPU.
>>
>> For this, we introduce support for another per-arch mapfile, which maps a
>> particular system identifier to a set of system PMU events for that
>> system. This is much the same as what we do for CPU event aliasing.
>>
>> To support this, we need to change how we match a PMU to a mapfile,
>> whether it should use a CPU or system mapfile. For this we do the
>> following:
>>
>> - For CPU PMU, we always match for the event mapfile based on the CPUID.
>>    This has not changed.
>>
>> - For an uncore or system PMU, we match first based on the SYSID (if set).
>>    If this fails, then we match on the CPUID.
>>
>>    This works for x86, as x86 would not have any system mapfiles for uncore
>>    PMUs (and match on the CPUID).
>>
>> Initial reference support is also added for ARM SMMUv3 PMCG (Performance
>> Monitor Event Group) PMU for HiSilicon hip08 platform with only a single
>> event so far - see driver in drivers/perf/arm_smmuv3_pmu.c for that driver.
> 
> Why don't we just expose SMMU_IIDR in the SMMUv3 PMU directory, so that
> you can key off that? 

That does not sound like a standard sysfs interface.

Anyway, I don't think that works for every case, quoting from 
https://lkml.org/lkml/2019/10/16/465:

"> Note: I do acknowledge that an overall issue is that we assume all 
PMCG IMP DEF events are same for a given SMMU model.

That assumption does technically fail already - I know MMU-600 has
different IMP-DEF events for its TCU and TBUs, however as long as we can
get as far as "this is some part of an MMU-600" the driver should be
able to figure out the rest ..."

So even if it is solvable here, the kernel driver(s) will need to be 
reworked. And that is just solving one case in many.

I'm nervous about coming up with a global "SYSID"
> when we don't have the ability to standardise anything in that space.

I understand totally, especially if any sysid is based on DT bindings.

But this is some sort of standardization:
https://developer.arm.com/docs/den0028/c, see SMCCC_ARCH_SOC_ID

John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
