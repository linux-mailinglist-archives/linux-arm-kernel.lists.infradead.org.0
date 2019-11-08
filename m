Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFCDF3D6B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 02:29:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OuAK8vn3o2ipcErnwUlKtSRluE26czDIEy6uoMbgOrI=; b=aZcNA8HYtc+1hC
	GJqCfX7BhTkKI0ke/Eni/EitUgojgpLRRfTZ/57pkoizAHYnfxPbLq8Akj0eZFqEaLIQBVjUCo9Yo
	SkPF3SLSc01Egq948GH5WDPWrWEeN4V3np+BE4cO+ufkEIFBGNTq8prAwN9tPXSlp3ewq9o+oI4IH
	DBrqBIeq7xbwqhSjs3czkTD8WqgrXIKnI/8jj8WwTonEdiUlQPt5lvkvjF/m4R3PGmTJKbFI8BlJc
	31nAPTi3WG1wZnwkNk12ha8YJVPNkvQqFQFVUjtVhWRPbCWQfhXAqx2Zs0+vycTLt/g+FHI9hBHVk
	USU7jDwb5Kbv6Epsqbqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSt5E-00036c-Se; Fri, 08 Nov 2019 01:29:04 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSt54-000361-Ks
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 01:28:56 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 6A2A37C9FA8F5FC5D7E8;
 Fri,  8 Nov 2019 09:28:51 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Fri, 8 Nov 2019
 09:28:45 +0800
Subject: Re: [PATCH] drivers/perf: hisi: update the sccl_id/ccl_id for certain
 HiSilicon platform
To: Will Deacon <will@kernel.org>
References: <1573113364-32531-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191107114041.GB11587@willie-the-truck>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <f2e329c9-11d1-0f47-5392-dc2a067af084@hisilicon.com>
Date: Fri, 8 Nov 2019 09:28:44 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20191107114041.GB11587@willie-the-truck>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_172854_867027_48C20FE8 
X-CRM114-Status: GOOD (  13.12  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, John Garry <john.garry@huawei.com>,
 linux-arm-kernel@lists.infradead.org, Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2019/11/7 19:40, Will Deacon wrote:
> Hi,
> 
> On Thu, Nov 07, 2019 at 03:56:04PM +0800, Shaokun Zhang wrote:
>> @@ -338,8 +339,10 @@ void hisi_uncore_pmu_disable(struct pmu *pmu)
>>  
>>  /*
>>   * Read Super CPU cluster and CPU cluster ID from MPIDR_EL1.
>> - * If multi-threading is supported, CCL_ID is the low 3-bits in MPIDR[Aff2]
>> - * and SCCL_ID is the upper 5-bits of Aff2 field; if not, SCCL_ID
>> + * If multi-threading is supported, On Huawei Kunpeng 920 SoC whose cpu
>> + * core is tsv110, CCL_ID is the low 3-bits in MPIDR[Aff2] and SCCL_ID
>> + * is the upper 5-bits of Aff2 field; while for other cpu types, SCCL_ID
>> + * is in MPIDR[Aff3] and CCL_ID is in MPIDR[Aff2], if not, SCCL_ID
>>   * is in MPIDR[Aff2] and CCL_ID is in MPIDR[Aff1].
>>   */
>>  static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
>> @@ -347,12 +350,19 @@ static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
>>  	u64 mpidr = read_cpuid_mpidr();
>>  
>>  	if (mpidr & MPIDR_MT_BITMASK) {
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
>  works for you]
> 
> So I'll take this, but the lesson here seems to be that it's a terrible idea
> to infer system topology from CPU ID registers. In future, I'm going to
> insist that this comes from firmware tables because hacks like the above are

My bad, I shall do it in future.

Thanks,
Shaokun

> not sustainable.
> 
> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
