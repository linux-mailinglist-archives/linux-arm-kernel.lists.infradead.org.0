Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA6DF3D42
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 02:16:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/r3xKAn+IIdLyWmUHHsqYb9dw9hHXsoMpEj1yBLKso=; b=L9wDDL3LUIXtVw
	To+e3uiP1VLYaiMDgF1Nq9n43C0/0I8/5/ZwsVJyizZC/C4f/ls25Al8AcqyeAnMJ/RRMGKmlowcO
	Uw1BKBY6Sq+nwLMAjaY4597nDXsoV7VqWHC0ON+8z2c/FXsOG8zb7rPtawyRdYsuA2H1hdHj36RTz
	yTAybJlXpvpWSd9fm2xLPfu//PcMJ0Cd6dvkZ6JJStcBArj3W4Yqr4cOjIgLOBZtuB1UBIhkQWKxy
	H4uj9x5VKBNrn31ObW3li5WqV6M2M7YjiX4sbU0L3R+kndiYffbpFhq8K/8g8Yag+JB84s+DDrsD5
	/ZlcGbIj+F3My1YXEQQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSsst-00079y-8n; Fri, 08 Nov 2019 01:16:19 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSssm-00079Y-5R
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 01:16:14 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 9EB77961D09A7F459505;
 Fri,  8 Nov 2019 09:16:07 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Fri, 8 Nov 2019
 09:15:57 +0800
Subject: Re: [PATCH] drivers/perf: hisi: update the sccl_id/ccl_id for certain
 HiSilicon platform
To: Mark Rutland <mark.rutland@arm.com>, John Garry <john.garry@huawei.com>
References: <1573113364-32531-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191107114041.GB11587@willie-the-truck>
 <52f89b8c-0baf-77d0-4bbd-1e129f8e5ed2@huawei.com>
 <20191107115650.GA4948@lakrids.cambridge.arm.com>
 <14e778fb-7b71-3927-134a-415f9a83eae7@huawei.com>
 <20191107121151.GB4948@lakrids.cambridge.arm.com>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <db8d4a23-0622-4deb-6125-53ff8637b5b7@hisilicon.com>
Date: Fri, 8 Nov 2019 09:15:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20191107121151.GB4948@lakrids.cambridge.arm.com>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_171612_390569_A4FE12D5 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 2019/11/7 20:11, Mark Rutland wrote:
> On Thu, Nov 07, 2019 at 12:06:24PM +0000, John Garry wrote:
>> On 07/11/2019 11:56, Mark Rutland wrote:
>>> On Thu, Nov 07, 2019 at 11:50:30AM +0000, John Garry wrote:
>>>> On 07/11/2019 11:40, Will Deacon wrote:
>>>>> Hi,
>>>>>
>>>>> On Thu, Nov 07, 2019 at 03:56:04PM +0800, Shaokun Zhang wrote:
>>>>>> @@ -338,8 +339,10 @@ void hisi_uncore_pmu_disable(struct pmu *pmu)
>>>>>>    /*
>>>>>>     * Read Super CPU cluster and CPU cluster ID from MPIDR_EL1.
>>>>>> - * If multi-threading is supported, CCL_ID is the low 3-bits in MPIDR[Aff2]
>>>>>> - * and SCCL_ID is the upper 5-bits of Aff2 field; if not, SCCL_ID
>>>>>> + * If multi-threading is supported, On Huawei Kunpeng 920 SoC whose cpu
>>>>>> + * core is tsv110, CCL_ID is the low 3-bits in MPIDR[Aff2] and SCCL_ID
>>>>>> + * is the upper 5-bits of Aff2 field; while for other cpu types, SCCL_ID
>>>>>> + * is in MPIDR[Aff3] and CCL_ID is in MPIDR[Aff2], if not, SCCL_ID
>>>>>>     * is in MPIDR[Aff2] and CCL_ID is in MPIDR[Aff1].
>>>>>>     */
>>>>>>    static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
>>>>>> @@ -347,12 +350,19 @@ static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
>>>>>>    	u64 mpidr = read_cpuid_mpidr();
>>>>>>    	if (mpidr & MPIDR_MT_BITMASK) {
>>>>>> -		int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
>>>>>> -
>>>>>> -		if (sccl_id)
>>>>>> -			*sccl_id = aff2 >> 3;
>>>>>> -		if (ccl_id)
>>>>>> -			*ccl_id = aff2 & 0x7;
>>>>>> +		if (read_cpuid_part_number() == HISI_CPU_PART_TSV110) {
>>>>>> +			int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
>>>>>> +
>>>>>> +			if (sccl_id)
>>>>>> +				*sccl_id = aff2 >> 3;
>>>>>> +			if (ccl_id)
>>>>>> +				*ccl_id = aff2 & 0x7;
>>>>>> +		} else {
>>>>>> +			if (sccl_id)
>>>>>> +				*sccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 3);
>>>>>> +			if (ccl_id)
>>>>>> +				*ccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
>>>>>> +		}
>>>>>
>>>>> [I prefer Mark's version, so please reply to indicate whether or not it
>>>>>    works for you]
>>>>
>>>> Replying on Shaokun's behalf as he appears offline now.
>>>>
>>>> In response to "> If TSV110 is always MT, ":
>>>>
>>>> It isn't. There are 2 spins of Huawei Kunpeng 920 SoC which includes
>>>> TaishanV110 aka TSV110: one has the MT bit set and the other without.
>>>
>>> Just to check, for the non-MT variant is the SCCL/CCL assignment
>>> Aff2/Aff1 as with other non-MT parts?
>>
>> We don't support any other non-MT parts for this driver.
> 
> The driver claimed to support non-MT parts before TSV110 came around, so that
> statement confuses me.
> 

Apologies that I reply a little later because of stepout and other things, I was
not online.

My description is a little obscure so the comment is really confused:
Under the condition that MT field is set, TSV110 core on Kunpeng 920:
SCCL is Aff2[7:3], CCL is Aff2[2:0];

If MT field is not, TSV110 core on Kunpeng 920:
SCCL is Aff2[7:0], CCL is Aff1[7:0]
And as John said that "We don't support any other non-MT parts for this driver."

> For a non-MT TSV110, is Aff2 the SCCL and Aff1 the CCL? That's what the

Right.

> existing code (and Shaokun's patch) assumed.
> 
> Assuming that is the case, I'd suggest we have the following:
> 
> /*
>  * The Super CPU Cluster (SCCL) and CPU Cluster (CCL) IDs can be
>  * determined from the MPIDR_EL1, but the encoding varies by CPU:
>  *
>  * - For MT variants of TSV110 (e.g. found in Kunpeng 920):
>  *   SCCL is Aff2[7:3], CCL is Aff2[2:0]
>  *
>  * - For other MT parts:
>  *   SCCL is Aff3[7:0], CCL is Aff2[7:0]
>  *
>  * - For non-MT parts:
>  *   SCCL is Aff2[7:0], CCL is Aff1[7:0]
>  */
> static void hisi_read_sccl_and_ccl_id(int *scclp, int *cclp)
> {
> 	u64 mpidr = read_cpuid_mpidr();
> 	int aff3 = MPIDR_AFFINITY_LEVEL(mpidr, 3);
> 	int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
> 	int aff1 = MPIDR_AFFINITY_LEVEL(mpidr, 1);
> 	bool mt = mpdir & MPIDR_MT_BITMASK;
> 	int sccl, ccl;
> 
> 	if (mt && read_cpuid_part_number() == HISI_CPU_PART_TSV110) {
> 		sccl = aff2 >> 3;
> 		ccl = aff2 & 0x7;
> 	} else if (mt) {
> 		sccl = aff3;
> 		ccl = aff2;
> 	} else {
> 		sccl = aff2;
> 		ccl = aff1;
> 	}
> 
> 	if (scclp)
> 		*scclp = sccl;
> 	if (cclp)
> 		*cclp = ccl;
> }
> 

It works and Thanks your nice comment.

> Thanks,
> Mark.
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
