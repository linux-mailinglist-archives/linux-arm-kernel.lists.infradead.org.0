Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0BBF2DB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 12:51:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PQOzpgc8IYm+dV46Gb8S2vZcm62n31z1DkZC2u/cBTo=; b=Fk/p3sj8P8GTHVTLkYI8bXVSf
	F0bAqTMhBnRcYYadIvGsxr5KNO/CzqGB2T/jHIfP5UBdYM5n0HlX7FAilqPF84jg/XH1xGP7ksW1j
	E8CO+/byZvour9EtCDFqZmj27tCtmiutTFOeZqbiJuqVIJjbZtG3YzwqvKK4upjYcGbD5FlNyr5YA
	jRCvQ2d5aUFeiKF6THrNce5Ok+senqO/EiktVeV546fw17+NyONbFiz/i7HOHanI5DwBJpNRt6p7X
	82g80XM9cYHqI1YN+oPuhIO2ePfJy109AVrWRvi34hjuo/jFflnRC4oiaBAsns4HRk6tvHzpA6m00
	HPY8LT2oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSgJU-0007cs-Dl; Thu, 07 Nov 2019 11:50:56 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSgJM-0007bC-9z
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 11:50:49 +0000
Received: from lhreml706-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 152E1C1D0D40B226AFED;
 Thu,  7 Nov 2019 11:50:32 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml706-cah.china.huawei.com (10.201.108.47) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 7 Nov 2019 11:50:31 +0000
Received: from [127.0.0.1] (10.202.226.46) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Thu, 7 Nov 2019
 11:50:31 +0000
Subject: Re: [PATCH] drivers/perf: hisi: update the sccl_id/ccl_id for certain
 HiSilicon platform
To: Will Deacon <will@kernel.org>, Shaokun Zhang <zhangshaokun@hisilicon.com>
References: <1573113364-32531-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191107114041.GB11587@willie-the-truck>
From: John Garry <john.garry@huawei.com>
Message-ID: <52f89b8c-0baf-77d0-4bbd-1e129f8e5ed2@huawei.com>
Date: Thu, 7 Nov 2019 11:50:30 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20191107114041.GB11587@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.202.226.46]
X-ClientProxiedBy: lhreml703-chm.china.huawei.com (10.201.108.52) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_035048_493876_C1A4F7FE 
X-CRM114-Status: GOOD (  16.51  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org,
 Hanjun Guo <guohanjun@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/11/2019 11:40, Will Deacon wrote:
> Hi,
> 
> On Thu, Nov 07, 2019 at 03:56:04PM +0800, Shaokun Zhang wrote:
>> @@ -338,8 +339,10 @@ void hisi_uncore_pmu_disable(struct pmu *pmu)
>>   
>>   /*
>>    * Read Super CPU cluster and CPU cluster ID from MPIDR_EL1.
>> - * If multi-threading is supported, CCL_ID is the low 3-bits in MPIDR[Aff2]
>> - * and SCCL_ID is the upper 5-bits of Aff2 field; if not, SCCL_ID
>> + * If multi-threading is supported, On Huawei Kunpeng 920 SoC whose cpu
>> + * core is tsv110, CCL_ID is the low 3-bits in MPIDR[Aff2] and SCCL_ID
>> + * is the upper 5-bits of Aff2 field; while for other cpu types, SCCL_ID
>> + * is in MPIDR[Aff3] and CCL_ID is in MPIDR[Aff2], if not, SCCL_ID
>>    * is in MPIDR[Aff2] and CCL_ID is in MPIDR[Aff1].
>>    */
>>   static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
>> @@ -347,12 +350,19 @@ static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
>>   	u64 mpidr = read_cpuid_mpidr();
>>   
>>   	if (mpidr & MPIDR_MT_BITMASK) {
>> -		int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
>> -
>> -		if (sccl_id)
>> -			*sccl_id = aff2 >> 3;
>> -		if (ccl_id)
>> -			*ccl_id = aff2 & 0x7;
>> +		if (read_cpuid_part_number() == HISI_CPU_PART_TSV110) {
>> +			int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
>> +
>> +			if (sccl_id)
>> +				*sccl_id = aff2 >> 3;
>> +			if (ccl_id)
>> +				*ccl_id = aff2 & 0x7;
>> +		} else {
>> +			if (sccl_id)
>> +				*sccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 3);
>> +			if (ccl_id)
>> +				*ccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
>> +		}
> 
> [I prefer Mark's version, so please reply to indicate whether or not it
>   works for you]

Replying on Shaokun's behalf as he appears offline now.

In response to "> If TSV110 is always MT, ":

It isn't. There are 2 spins of Huawei Kunpeng 920 SoC which includes 
TaishanV110 aka TSV110: one has the MT bit set and the other without.

We did ask for this not to be changed...

> 
> So I'll take this, but the lesson here seems to be that it's a terrible idea
> to infer system topology from CPU ID registers. In future, I'm going to
> insist that this comes from firmware tables because hacks like the above are
> not sustainable.
> 

Hopefully it will not change again, but maybe we can use PPTT instead.

Thanks,
John

> Will
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
