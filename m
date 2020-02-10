Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7701581E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 19:01:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G4fD5yu3LZMofj88Yl1MNTGB0MgYy3RSR3U7LCOoWmM=; b=BsZmDmyzjR8xZksnQpviItvoI
	tdoMEmUro43e7x9KshNg12+uasc1LiNbCJdQcmpY2kogXGQf/YW3U9532ZSeWn5X/RGt3wizRqIiq
	YwSKPItpMxuexW1s5bFYrtl1NwtNmmR0IznZQwom6FvXIDCzlRHFxV4Yib7QS7qCqT1Ow5rDdnaqJ
	jsUeLXwxwz6uyWqmVkuFcSwLCUagGRttK74Xexx4ZESBNFcf7aGGgHkO4HZYBcpCBatKc2AcV0s/L
	XQwxbhFVmJRS+9NJ1MRA5trirnj6FZbr7wc3uLLrflStxTi+ePsuhkGyBc4Nz27rtIN7ecv/Ju1V3
	UaLQ0nY4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1DN1-0003Cy-CQ; Mon, 10 Feb 2020 18:01:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1DMt-0003C1-PA
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 18:01:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0DB741FB;
 Mon, 10 Feb 2020 10:01:11 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3E9073F68F;
 Mon, 10 Feb 2020 10:01:10 -0800 (PST)
Subject: Re: [PATCH] perf/smmuv3: Use platform_get_irq_optional() for wired
 interrupt
To: John Garry <john.garry@huawei.com>, will@kernel.org, mark.rutland@arm.com
References: <1581353417-136604-1-git-send-email-john.garry@huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ce02f401-5d32-ef0e-80ed-2579bd4f08bb@arm.com>
Date: Mon, 10 Feb 2020 18:01:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1581353417-136604-1-git-send-email-john.garry@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_100111_860345_108DB1EA 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shameerali.kolothum.thodi@huawei.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/02/2020 4:50 pm, John Garry wrote:
> Even though a SMMUv3 PMCG implementation may use an MSI as the form of
> interrupt source, the kernel would still complain that it does not find
> the wired (GSIV) interrupt in this case:
> 
> root@(none)$ dmesg | grep arm-smmu-v3-pmcg | grep "not found"
> [   59.237219] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.8.auto: IRQ index 0 not found
> [   59.322841] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.9.auto: IRQ index 0 not found
> [   59.422155] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.10.auto: IRQ index 0 not found
> [   59.539014] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.11.auto: IRQ index 0 not found
> [   59.640329] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.12.auto: IRQ index 0 not found
> [   59.743112] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.13.auto: IRQ index 0 not found
> [   59.880577] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.14.auto: IRQ index 0 not found
> [   60.017528] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.15.auto: IRQ index 0 not found
> 
> Use platform_get_irq_optional() to silence the warning.
> 
> If neither interrupt source is found, then the driver will still warn that
> IRQ setup errored and the probe will fail.

Indeed, this is fallout from the core platform_get_irq() changes, but is 
clearly appropriate since the GSIV is explicitly optional in IORT. Not 
to mention we did the same thing for SMMUv3 itself already.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: John Garry <john.garry@huawei.com>
> 
> diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
> index d704eccc548f..f01a57e5a5f3 100644
> --- a/drivers/perf/arm_smmuv3_pmu.c
> +++ b/drivers/perf/arm_smmuv3_pmu.c
> @@ -771,7 +771,7 @@ static int smmu_pmu_probe(struct platform_device *pdev)
>   		smmu_pmu->reloc_base = smmu_pmu->reg_base;
>   	}
>   
> -	irq = platform_get_irq(pdev, 0);
> +	irq = platform_get_irq_optional(pdev, 0);
>   	if (irq > 0)
>   		smmu_pmu->irq = irq;
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
