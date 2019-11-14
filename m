Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEDDFC7D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 14:37:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBQEfVWD1kAYOC6rW/EF/9wfIaaRO/Y55bkJJ468BUQ=; b=eRiK4iRAad9HN/
	1n8wIOyYX0R90AyDHlILQJClCk0sMV7G8hORQED5SbdPVxg2KJkQuYMHW8IqGh8FnHZnP8UjfZ4Fe
	0z4SXHssb+2ypgDRSAbdNWDbul5yAgFRuZEzxMV0faoRO9Iv8HaWG79S6d59c9pbIOioTcthFhe8v
	DCPztjS8epkQOVOMzqKh+OmrGseF8pqC3y1RrFnAo7fvgjq1SVffTEHvuMfdctXfNIg5C9VCOU/Z2
	Ta7HLxG53hLeuwdCC322X7PCV85ATKffm/aL3LfXEzKocjat0j537W01VonG1lfhsqMZzBd6FdUgI
	OOsGaq3DuomSQP7yKCQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVFJP-0006Xn-94; Thu, 14 Nov 2019 13:37:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVFJF-0006X9-5T
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 13:37:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5C60731B;
 Thu, 14 Nov 2019 05:37:13 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A84AB3F52E;
 Thu, 14 Nov 2019 05:37:12 -0800 (PST)
Date: Thu, 14 Nov 2019 13:37:10 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH v2] drivers/perf: hisi: Simplify
 hisi_read_sccl_and_ccl_id and its comment
Message-ID: <20191114133710.GB37865@lakrids.cambridge.arm.com>
References: <1573693023-64564-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573693023-64564-1-git-send-email-zhangshaokun@hisilicon.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_053717_294383_A81A5A1F 
X-CRM114-Status: GOOD (  19.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: John Garry <john.garry@huawei.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 08:57:03AM +0800, Shaokun Zhang wrote:
> hisi_read_sccl_and_ccl_id is not readable and its comment is a little
> confused, so simplify the function and its comment as Mark's suggestion.
> 
> Cc: John Garry <john.garry@huawei.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Suggested-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>

Acked-by: Mark Rutland <mark.rutland@arm.com>

I assume that Will can pick this up.

Mark.

> ---
> ChangeLog from V2:
>     Address John's comment: remove the confusing 'Kunpeng 920' comment who
> has two types.
> 
>  drivers/perf/hisilicon/hisi_uncore_pmu.c | 58 ++++++++++++++++++--------------
>  1 file changed, 32 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/perf/hisilicon/hisi_uncore_pmu.c b/drivers/perf/hisilicon/hisi_uncore_pmu.c
> index 96183e31b96a..584de8f807cc 100644
> --- a/drivers/perf/hisilicon/hisi_uncore_pmu.c
> +++ b/drivers/perf/hisilicon/hisi_uncore_pmu.c
> @@ -337,38 +337,44 @@ void hisi_uncore_pmu_disable(struct pmu *pmu)
>  	hisi_pmu->ops->stop_counters(hisi_pmu);
>  }
>  
> +
>  /*
> - * Read Super CPU cluster and CPU cluster ID from MPIDR_EL1.
> - * If multi-threading is supported, On Huawei Kunpeng 920 SoC whose cpu
> - * core is tsv110, CCL_ID is the low 3-bits in MPIDR[Aff2] and SCCL_ID
> - * is the upper 5-bits of Aff2 field; while for other cpu types, SCCL_ID
> - * is in MPIDR[Aff3] and CCL_ID is in MPIDR[Aff2], if not, SCCL_ID
> - * is in MPIDR[Aff2] and CCL_ID is in MPIDR[Aff1].
> + * The Super CPU Cluster (SCCL) and CPU Cluster (CCL) IDs can be
> + * determined from the MPIDR_EL1, but the encoding varies by CPU:
> + *
> + * - For MT variants of TSV110:
> + *   SCCL is Aff2[7:3], CCL is Aff2[2:0]
> + *
> + * - For other MT parts:
> + *   SCCL is Aff3[7:0], CCL is Aff2[7:0]
> + *
> + * - For non-MT parts:
> + *   SCCL is Aff2[7:0], CCL is Aff1[7:0]
>   */
> -static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
> +static void hisi_read_sccl_and_ccl_id(int *scclp, int *cclp)
>  {
>  	u64 mpidr = read_cpuid_mpidr();
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
>  	} else {
> -		if (sccl_id)
> -			*sccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
> -		if (ccl_id)
> -			*ccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 1);
> +		sccl = aff2;
> +		ccl = aff1;
>  	}
> +
> +	if (scclp)
> +		*scclp = sccl;
> +	if (cclp)
> +		*cclp = ccl;
>  }
>  
>  /*
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
