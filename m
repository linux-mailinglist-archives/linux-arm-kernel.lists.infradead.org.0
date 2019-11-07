Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DA3F2DE8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 13:06:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ug5yCXuJ2QK5pPCnTAO2VNKCP9b3YhJinIB/TEqnG68=; b=WJHKJpeZbm2GYSleD11x+/8yP
	QwbFFwxJEjyjCBnZ3pC2rqBRvQ9u0gxWib7uMEk1DBaKNnjAqtCyPDP7FBKECrYWTEqw4B7H/wLZi
	61zsept9bcuJj0pVELxO0+eXEI1SFfxd+J1/RtsJyxu6OHakBxGvjA8Bw1WJe7FRs4IUo3JaPro5b
	IVyMO3PmVGB+k8EvPj81Heiau1exLDOm5wEKI5RNhIZAIZpsuQ6Cux5Oc6MHBmYD4wlAyzN1XVrki
	PIva55+86VFW516LLwa3jDxcE65+fc/e3ck6z7mhLherj+9ii4sA3IOrCMJeTfqxuCNFB0hzvu0sL
	FZ6VEG1Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSgYm-0006FI-3O; Thu, 07 Nov 2019 12:06:44 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSgYb-0006EI-4r
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 12:06:34 +0000
Received: from LHREML713-CAH.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 688E4500C01669F9E361;
 Thu,  7 Nov 2019 12:06:26 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML713-CAH.china.huawei.com (10.201.108.36) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 7 Nov 2019 12:06:26 +0000
Received: from [127.0.0.1] (10.202.226.46) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Thu, 7 Nov 2019
 12:06:25 +0000
Subject: Re: [PATCH] drivers/perf: hisi: update the sccl_id/ccl_id for certain
 HiSilicon platform
To: Mark Rutland <mark.rutland@arm.com>
References: <1573113364-32531-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191107114041.GB11587@willie-the-truck>
 <52f89b8c-0baf-77d0-4bbd-1e129f8e5ed2@huawei.com>
 <20191107115650.GA4948@lakrids.cambridge.arm.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <14e778fb-7b71-3927-134a-415f9a83eae7@huawei.com>
Date: Thu, 7 Nov 2019 12:06:24 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20191107115650.GA4948@lakrids.cambridge.arm.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.46]
X-ClientProxiedBy: lhreml703-chm.china.huawei.com (10.201.108.52) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_040633_332425_026CF367 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Hanjun Guo <guohanjun@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/11/2019 11:56, Mark Rutland wrote:
> On Thu, Nov 07, 2019 at 11:50:30AM +0000, John Garry wrote:
>> On 07/11/2019 11:40, Will Deacon wrote:
>>> Hi,
>>>
>>> On Thu, Nov 07, 2019 at 03:56:04PM +0800, Shaokun Zhang wrote:
>>>> @@ -338,8 +339,10 @@ void hisi_uncore_pmu_disable(struct pmu *pmu)
>>>>    /*
>>>>     * Read Super CPU cluster and CPU cluster ID from MPIDR_EL1.
>>>> - * If multi-threading is supported, CCL_ID is the low 3-bits in MPIDR[Aff2]
>>>> - * and SCCL_ID is the upper 5-bits of Aff2 field; if not, SCCL_ID
>>>> + * If multi-threading is supported, On Huawei Kunpeng 920 SoC whose cpu
>>>> + * core is tsv110, CCL_ID is the low 3-bits in MPIDR[Aff2] and SCCL_ID
>>>> + * is the upper 5-bits of Aff2 field; while for other cpu types, SCCL_ID
>>>> + * is in MPIDR[Aff3] and CCL_ID is in MPIDR[Aff2], if not, SCCL_ID
>>>>     * is in MPIDR[Aff2] and CCL_ID is in MPIDR[Aff1].
>>>>     */
>>>>    static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
>>>> @@ -347,12 +350,19 @@ static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
>>>>    	u64 mpidr = read_cpuid_mpidr();
>>>>    	if (mpidr & MPIDR_MT_BITMASK) {
>>>> -		int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
>>>> -
>>>> -		if (sccl_id)
>>>> -			*sccl_id = aff2 >> 3;
>>>> -		if (ccl_id)
>>>> -			*ccl_id = aff2 & 0x7;
>>>> +		if (read_cpuid_part_number() == HISI_CPU_PART_TSV110) {
>>>> +			int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
>>>> +
>>>> +			if (sccl_id)
>>>> +				*sccl_id = aff2 >> 3;
>>>> +			if (ccl_id)
>>>> +				*ccl_id = aff2 & 0x7;
>>>> +		} else {
>>>> +			if (sccl_id)
>>>> +				*sccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 3);
>>>> +			if (ccl_id)
>>>> +				*ccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
>>>> +		}
>>>
>>> [I prefer Mark's version, so please reply to indicate whether or not it
>>>    works for you]
>>
>> Replying on Shaokun's behalf as he appears offline now.
>>
>> In response to "> If TSV110 is always MT, ":
>>
>> It isn't. There are 2 spins of Huawei Kunpeng 920 SoC which includes
>> TaishanV110 aka TSV110: one has the MT bit set and the other without.
> 
> Just to check, for the non-MT variant is the SCCL/CCL assignment
> Aff2/Aff1 as with other non-MT parts?

We don't support any other non-MT parts for this driver.

Thanks,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
