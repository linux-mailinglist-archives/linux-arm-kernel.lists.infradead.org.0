Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B25F2D75
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 12:31:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/5GLHQndOt9EhH8Uw3avb6xbC6+LONC1213Bhl7DAA=; b=uNzWvb9p7olsba
	17p3iU1v+MkEfIhQM02K4oUMh+6M2RCBTdjaBjqyhk5U0cTtaOS2Fj1fOMsnjpQW5+rux6aJNy4O8
	4ySpN9s2tWmn99bUEgV2JMXTq3l8EgtUldvmgA3t0Xc7+64BOE9OILImTDvkFOh4X1vyMyh4jerKa
	TG5Cx7CJiS1a+3oS/DASPSw8/DQDenbKge7AzMOIMB4A2Bu/FddluBPZI7zh8av7l7l9d50fAplyf
	MzTF+h6hRaDrhSq+b30xqc7MbJsDHpaXBq/PDW94WZIMlgC60VWfCzLbEbNMGwiXWByXcMlitnhD+
	JuDS075WLv441RbvNcYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSg0U-0008Ew-Qr; Thu, 07 Nov 2019 11:31:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSg0N-0008EX-61
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 11:31:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A9B3B31B;
 Thu,  7 Nov 2019 03:31:08 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DBC643F6C4;
 Thu,  7 Nov 2019 03:31:07 -0800 (PST)
Date: Thu, 7 Nov 2019 11:31:00 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH] drivers/perf: hisi: update the sccl_id/ccl_id for
 certain HiSilicon platform
Message-ID: <20191107113100.GA4711@lakrids.cambridge.arm.com>
References: <1573113364-32531-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573113364-32531-1-git-send-email-zhangshaokun@hisilicon.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_033111_309590_5A851F39 
X-CRM114-Status: GOOD (  21.68  )
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
 linux-arm-kernel@lists.infradead.org, Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 03:56:04PM +0800, Shaokun Zhang wrote:
> For some HiSilicon platform, the originally designed SCCL_ID and CCL_ID
> are not satisfied with much rich topology when the MT is set, so we
> extend the SCCL_ID to MPIDR[aff3] and CCL_ID to MPIDR[aff2]. Let's
> update this for HiSilicon uncore PMU driver.
> 
> Cc: John Garry <john.garry@huawei.com>
> Cc: Hanjun Guo <guohanjun@huawei.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> ---
>  drivers/perf/hisilicon/hisi_uncore_pmu.c | 26 ++++++++++++++++++--------
>  1 file changed, 18 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/perf/hisilicon/hisi_uncore_pmu.c b/drivers/perf/hisilicon/hisi_uncore_pmu.c
> index 79f76f8dda8e..96183e31b96a 100644
> --- a/drivers/perf/hisilicon/hisi_uncore_pmu.c
> +++ b/drivers/perf/hisilicon/hisi_uncore_pmu.c
> @@ -15,6 +15,7 @@
>  #include <linux/errno.h>
>  #include <linux/interrupt.h>
>  
> +#include <asm/cputype.h>
>  #include <asm/local64.h>
>  
>  #include "hisi_uncore_pmu.h"
> @@ -338,8 +339,10 @@ void hisi_uncore_pmu_disable(struct pmu *pmu)
>  
>  /*
>   * Read Super CPU cluster and CPU cluster ID from MPIDR_EL1.
> - * If multi-threading is supported, CCL_ID is the low 3-bits in MPIDR[Aff2]
> - * and SCCL_ID is the upper 5-bits of Aff2 field; if not, SCCL_ID
> + * If multi-threading is supported, On Huawei Kunpeng 920 SoC whose cpu
> + * core is tsv110, CCL_ID is the low 3-bits in MPIDR[Aff2] and SCCL_ID
> + * is the upper 5-bits of Aff2 field; while for other cpu types, SCCL_ID
> + * is in MPIDR[Aff3] and CCL_ID is in MPIDR[Aff2], if not, SCCL_ID
>   * is in MPIDR[Aff2] and CCL_ID is in MPIDR[Aff1].
>   */

Is TSV110 in any other SoCs, where the mapping of MPIDR to SCCL/CCL IDs
differs?

The comment would be much easier to read as something like:

/*
 * The Super CPU Cluster (SCCL) and CPU Cluster (CCL) IDs can be
 * determined from the MPIDR_EL1, but the encoding varies by CPU:
 *
 * - For TSV110 (e.g. found in Kunpeng 920):
 *   SCCL is Aff2[7:3], CCL is Aff2[2:0]
 *
 * - For other MT parts:
 *   SCCL is Aff3[7:0], CCL is Aff2[7:0]
 *
 * - For other (non-MT) parts:
 *   SCCL is Aff2[7:0], CCL is Aff1[7:0]
 */

If TSV110 is always MT, then it would be better to structure the code
similarly to that comment:

static void hisi_read_sccl_and_ccl_id(int *scclp, int *cclp)
{
	u64 mpidr = read_cpuid_mpidr();
	int aff3 = MPIDR_AFFINITY_LEVEL(mpidr, 3);
	int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
	int aff1 = MPIDR_AFFINITY_LEVEL(mpidr, 1);
	int sccl, ccl;

	if (read_cpuid_part_number() == HISI_CPU_PART_TSV110) {
		sccl = aff2 >> 3;
		ccl = aff2 & 0x7;
	} else if (mpidr & MPIDR_MT_BITMASK) {
		sccl = aff3;
		ccl = aff2;
	} else {
		sccl = aff2;
		ccl = aff1;
	}

	if (scclp)
		*scclp = sccl;
	if (cclp)
		*cclp = ccl;
}

Thanks,
Mark.

>  static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
> @@ -347,12 +350,19 @@ static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
>  	u64 mpidr = read_cpuid_mpidr();
>  
>  	if (mpidr & MPIDR_MT_BITMASK) {
> -		int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
> -
> -		if (sccl_id)
> -			*sccl_id = aff2 >> 3;
> -		if (ccl_id)
> -			*ccl_id = aff2 & 0x7;
> +		if (read_cpuid_part_number() == HISI_CPU_PART_TSV110) {
> +			int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
> +
> +			if (sccl_id)
> +				*sccl_id = aff2 >> 3;
> +			if (ccl_id)
> +				*ccl_id = aff2 & 0x7;
> +		} else {
> +			if (sccl_id)
> +				*sccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 3);
> +			if (ccl_id)
> +				*ccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
> +		}
>  	} else {
>  		if (sccl_id)
>  			*sccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
