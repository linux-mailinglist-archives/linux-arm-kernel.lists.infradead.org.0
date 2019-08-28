Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A82A0A05
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Asepo9iaff6AwVW7c/CE6XG8+wmeEy+2+CzgdKTbAHI=; b=Dt2Y9vqkDKZRvlpPlnXhs+JYg
	qSE+lLFBOXeOmJwuGRpXRJFPBQSRYr+7u/cWDwMDCM1BYA/rY2UzgIJoL/96c5bIbwN/U9vlVjktU
	on/K4dAJOGzWuqOB0k0LjY1WJGKDzDVwv9d2RqLG0FzLSTtnrFn7dnPORwGVvhToL1PvQkQw6oUER
	OGdzDa9HLosgVJyOvtkjLMMZtwraMW4zpBstEd7RzJTwbmcodvRgfItq7Eo9gIHVVhSFjDZAb9jzg
	bhZ3rDWjftX2qfSxFP6nUi86Xi+g1re/qr/kgrOqCtJCNnaxpea5jA2AjtkkuR18zIgdlCwYKuD7u
	q7EHz5Sgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i336c-0006oV-6o; Wed, 28 Aug 2019 18:55:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i336Q-0006nd-RF
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:55:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D8A53337;
 Wed, 28 Aug 2019 11:55:29 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EF12F3F59C;
 Wed, 28 Aug 2019 11:55:28 -0700 (PDT)
Subject: Re: [PATCH] arm-smmu: check for generic bindings first
To: Stefano Stabellini <sstabellini@kernel.org>, will@kernel.org
References: <20190828173837.29617-1-sstabellini@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f6fe31f1-52e1-8ab8-4ba4-f23db262d1b5@arm.com>
Date: Wed, 28 Aug 2019 19:55:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190828173837.29617-1-sstabellini@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_115530_967626_2A29FA61 
X-CRM114-Status: GOOD (  31.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org,
 Stefano Stabellini <stefano.stabellini@xilinx.com>, michal.simek@xilinx.com,
 linux-arm-kernel@lists.infradead.org, git@xilinx.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/08/2019 18:38, Stefano Stabellini wrote:
> From: Stefano Stabellini <stefano.stabellini@xilinx.com>
> 
> Today, the arm-smmu driver checks for mmu-masters on device tree, the
> legacy property, if it is absent it assumes that we are using the new
> bindings. If it is present it assumes that we are using the legacy
> bindings. All arm-smmus need to use the same bindings: legacy or new.
> 
> There are two issues with this:
> 
> - we are not actually checking for the new bindings explicitly
> It would be better to have an explicit check for the new bindings rather
> than assuming we must be using the new if the old are not there.

The legacy binding is the special case, though. Isn't it perfectly 
logical to check for the special case, and assume the normal case 
otherwise? ;)

> - old and new bindings cannot coexist
> It would be nice to be able to provide both old and new bindings so
> that software that hasn't been updated yet is still able to get IOMMU
> information from the legacy bindings while at the same time newer
> software can get the latest information via the new bindings. (Xen has
> not been updated to use the new binding yet for instance.) The current
> code breaks under these circumstances because if the old bindings are
> present, the new are not even checked.

FWIW that was a deliberate design decision. We didn't want to see DTs 
with both bindings at once - the legacy binding support remains only for 
the sake of DTBs deployed in fossilised firmware that can't/won't ever 
be updated. And I'm pretty sure the intervening 3 years have only 
reinforced that position. Only a couple more months now until it will 
have been deprecated for longer than it wasn't :)

Do note that "mmu-masters" isn't just deprecated for giggles either - 
the binding made some flawed assumptions, and there are Stream ID 
topologies that it cannot possibly describe, which do exist in the real 
world.

> This patch changes the scheme by checking for #iommu-cells, which is
> only present with the new bindings, before checking for mmu-masters.
> The new bindings are always favored when present. All SMMUs still need
> to use the same bindings: mix-and-matching new and old bindings between
> different SMMUs is not allowed.
> 
> Signed-off-by: Stefano Stabellini <stefano.stabellini@xilinx.com>
> ---
> 
> Let me know if you'd like me to turn the two using_*_binding variables
> into a single one.
> 
> Also, please note that this is not meant as an excuse not to get Xen
> updated to use the new binding.

Fair enough, but conversely, what makes it Linux's responsibility to 
handle? If Xen wants to deal with funky hybrid DTs then why shouldn't it 
be Xen's job to just filter deprecated properties out of whatever it 
presents to Linux?

Robin.

>   drivers/iommu/arm-smmu.c | 22 +++++++++++++---------
>   1 file changed, 13 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 64977c131ee6..79b518ff215c 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -2118,7 +2118,7 @@ static int arm_smmu_device_dt_probe(struct platform_device *pdev,
>   {
>   	const struct arm_smmu_match_data *data;
>   	struct device *dev = &pdev->dev;
> -	bool legacy_binding;
> +	bool legacy_binding, generic_binding;
>   
>   	if (of_property_read_u32(dev->of_node, "#global-interrupts",
>   				 &smmu->num_global_irqs)) {
> @@ -2132,16 +2132,20 @@ static int arm_smmu_device_dt_probe(struct platform_device *pdev,
>   
>   	parse_driver_options(smmu);
>   
> -	legacy_binding = of_find_property(dev->of_node, "mmu-masters", NULL);
> -	if (legacy_binding && !using_generic_binding) {
> -		if (!using_legacy_binding)
> -			pr_notice("deprecated \"mmu-masters\" DT property in use; DMA API support unavailable\n");
> -		using_legacy_binding = true;
> -	} else if (!legacy_binding && !using_legacy_binding) {
> +	generic_binding = of_find_property(dev->of_node, "#iommu-cells", NULL);
> +	if (generic_binding && !using_legacy_binding) {
>   		using_generic_binding = true;
>   	} else {
> -		dev_err(dev, "not probing due to mismatched DT properties\n");
> -		return -ENODEV;
> +		legacy_binding = of_find_property(dev->of_node, "mmu-masters",
> +						  NULL);
> +		if (legacy_binding && !using_generic_binding) {
> +			if (!using_legacy_binding)
> +				pr_notice("deprecated \"mmu-masters\" DT property in use; DMA API support unavailable\n");
> +			using_legacy_binding = true;
> +		} else {
> +			dev_err(dev, "not probing due to mismatched DT properties\n");
> +			return -ENODEV;
> +		}
>   	}
>   
>   	if (of_dma_is_coherent(dev->of_node))
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
