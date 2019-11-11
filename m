Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB49F755B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 14:49:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UhYBWGymi24J5eKfOHV826GNafWFAOOglwcwc0Z2zEk=; b=O8lBQDow9/KvBE/CCmErgVgrK
	9QY5HdUGlXVaeLtKUZcbp3Si2qRrqCrX3IlGIv6rAyLM5jvVVotvv1zeCJPadVjPhYeWHzQEgB+JF
	NIbUtsHuAdXa4CGtuw8wUaj3K+NQQnpRCiSdq8YJcmL5FYhY00zoyLAKpjAk5pW0lR93k8+E3emHu
	MZ71ahXWtrv6T5YVd8jiaGnM0zkTDVe02iO9Vx/Q+JGBvzZi2SH+4PFvcawSXSXHVqAo3VPXiZ4R2
	zJoi4CQV/sMvTqAo+l1+IZS+PbKhyB0lFYD2R7/VumFh6CCkXIGAzy4PHdRp6jw8968QRdz84NJel
	wZhhuNX5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUA4X-0007BB-Go; Mon, 11 Nov 2019 13:49:37 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUA4M-0007AO-Ke
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 13:49:28 +0000
Received: from lhreml702-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 27AB7E33CAE9EF379688;
 Mon, 11 Nov 2019 13:49:21 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml702-cah.china.huawei.com (10.201.108.43) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 11 Nov 2019 13:49:20 +0000
Received: from [127.0.0.1] (10.202.226.46) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 11 Nov
 2019 13:49:20 +0000
Subject: Re: [PATCH] drivers/perf: hisi: Simplify hisi_read_sccl_and_ccl_id
 and its comment
To: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 <linux-arm-kernel@lists.infradead.org>
References: <20191108094940.GA18838@willie-the-truck>
 <1573267867-21991-1-git-send-email-zhangshaokun@hisilicon.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <365e965d-b24b-1316-e818-a3d6ad7caf6e@huawei.com>
Date: Mon, 11 Nov 2019 13:49:20 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <1573267867-21991-1-git-send-email-zhangshaokun@hisilicon.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.46]
X-ClientProxiedBy: lhreml713-chm.china.huawei.com (10.201.108.64) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_054926_825175_0F57D6AD 
X-CRM114-Status: GOOD (  19.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/11/2019 02:51, Shaokun Zhang wrote:
> hisi_read_sccl_and_ccl_id is not readable

That's a little strong :)

  and its comment is a little
> confused, so simplify the function and its comment as Mark's suggestion.
> 
> Cc: John Garry <john.garry@huawei.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Suggested-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> ---
>   drivers/perf/hisilicon/hisi_uncore_pmu.c | 58 ++++++++++++++++++--------------
>   1 file changed, 32 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/perf/hisilicon/hisi_uncore_pmu.c b/drivers/perf/hisilicon/hisi_uncore_pmu.c
> index 96183e31b96a..9e9625a1f388 100644
> --- a/drivers/perf/hisilicon/hisi_uncore_pmu.c
> +++ b/drivers/perf/hisilicon/hisi_uncore_pmu.c
> @@ -337,38 +337,44 @@ void hisi_uncore_pmu_disable(struct pmu *pmu)
>   	hisi_pmu->ops->stop_counters(hisi_pmu);
>   }
>   
> +
>   /*
> - * Read Super CPU cluster and CPU cluster ID from MPIDR_EL1.
> - * If multi-threading is supported, On Huawei Kunpeng 920 SoC whose cpu
> - * core is tsv110, CCL_ID is the low 3-bits in MPIDR[Aff2] and SCCL_ID
> - * is the upper 5-bits of Aff2 field; while for other cpu types, SCCL_ID
> - * is in MPIDR[Aff3] and CCL_ID is in MPIDR[Aff2], if not, SCCL_ID
> - * is in MPIDR[Aff2] and CCL_ID is in MPIDR[Aff1].
> + * The Super CPU Cluster (SCCL) and CPU Cluster (CCL) IDs can be
> + * determined from the MPIDR_EL1, but the encoding varies by CPU:
> + *
> + * - For MT variants of TSV110 (e.g. found in Kunpeng 920):

I wish that you would drop the "found in Kunpeng 920", as I find it 
confusing/misleading.

Thanks,
John

> + *   SCCL is Aff2[7:3], CCL is Aff2[2:0]
> + *
> + * - For other MT parts:
> + *   SCCL is Aff3[7:0], CCL is Aff2[7:0]
> + *
> + * - For non-MT parts:
> + *   SCCL is Aff2[7:0], CCL is Aff1[7:0]
>    */
> -static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
> +static void hisi_read_sccl_and_ccl_id(int *scclp, int *cclp)
>   {
>   	u64 mpidr = read_cpuid_mpidr();
> -
> -	if (mpidr & MPIDR_MT_BITMASK) {
> -		if (read_cpuid_part_number() == HISI_CPU_PART_TSV110) {
> -			int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
> -
> -			if (sccl_id)
> -				*sccl_id = aff2 >> 3;
> -			if (ccl_id)
> -				*ccl_id = aff2 & 0x7;
> -		} else {
> -			if (sccl_id)
> -				*sccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 3);
> -			if (ccl_id)
> -				*ccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
> -		}
> +	int aff3 = MPIDR_AFFINITY_LEVEL(mpidr, 3);
> +	int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
> +	int aff1 = MPIDR_AFFINITY_LEVEL(mpidr, 1);
> +	bool mt = mpidr & MPIDR_MT_BITMASK;
> +	int sccl, ccl;
> +
> +	if (mt && read_cpuid_part_number() == HISI_CPU_PART_TSV110) {
> +		sccl = aff2 >> 3;
> +		ccl = aff2 & 0x7;
> +	} else if (mt) {
> +		sccl = aff3;
> +		ccl = aff2;
>   	} else {
> -		if (sccl_id)
> -			*sccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
> -		if (ccl_id)
> -			*ccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 1);
> +		sccl = aff2;
> +		ccl = aff1;
>   	}
> +
> +	if (scclp)
> +		*scclp = sccl;
> +	if (cclp)
> +		*cclp = ccl;
>   }
>   
>   /*
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
