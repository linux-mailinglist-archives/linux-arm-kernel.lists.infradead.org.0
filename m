Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E5DF2D98
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 12:41:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JgfObvsG9xi3bPVWp9Do61VxcB/kR0SCBh8oJSGEBM=; b=dtwTOU7GOdiKpB
	GVGdD7lvv3WtiY5Oc3LczGOYYKEMQurNNyQWGq6/yWGNIXo9707L7qR+HfqrXKcFN8bqBDn9/vkW4
	qv/6uJi2ZLP+DCeYq5JA9AZNbeQM0bJoXzMZ/sIHXzUczp+Evt0dCsPKXWzOUfEvLY8T1h5+caoVO
	9yAp4so/dRxj07GyOjy3qO//EaC5PPPuks7uFaIOODT2wGVdS03GiMHjVtQ26h6e4EudnrN5cR+3X
	B+7CY7EkuwOKg3GjEjQXcmH/QC69VZyoXVO6PTOINx8laKo848j2Quo5LRPnYSaymLlDbXd57cgmh
	byTc+gYRS4o/6TuTHNKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSg9m-0003ln-A0; Thu, 07 Nov 2019 11:40:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSg9f-0003lO-8G
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 11:40:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 385E22084D;
 Thu,  7 Nov 2019 11:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573126846;
 bh=ndsP69B1SieU3mT0ZOhjIcdA53S2kT40pNTgT/GKfpM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zIBaPcI+tr+IRV5my7zmMzryZv4FB70tGKLmr37d6/Ph6kX7GKCSbQuEkneMBBEXD
 mY/j3qy9i/vABka0AHlH8HHVSa5NNl6Gt/mMpxMWBTqrnWBp02tU2uqnI25oS6l+os
 KolasrgY3qiX6bpTqJgKjj1YlFDUN0CCxDVhNiZ8=
Date: Thu, 7 Nov 2019 11:40:42 +0000
From: Will Deacon <will@kernel.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH] drivers/perf: hisi: update the sccl_id/ccl_id for
 certain HiSilicon platform
Message-ID: <20191107114041.GB11587@willie-the-truck>
References: <1573113364-32531-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573113364-32531-1-git-send-email-zhangshaokun@hisilicon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_034047_315082_6F0DD598 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Hi,

On Thu, Nov 07, 2019 at 03:56:04PM +0800, Shaokun Zhang wrote:
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

[I prefer Mark's version, so please reply to indicate whether or not it
 works for you]

So I'll take this, but the lesson here seems to be that it's a terrible idea
to infer system topology from CPU ID registers. In future, I'm going to
insist that this comes from firmware tables because hacks like the above are
not sustainable.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
