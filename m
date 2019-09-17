Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9ADB53F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 19:20:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DW6tUtBqEnHsg0Gn5jPfcJWF5tJilUZBYjpMB8BX9uw=; b=XWC9XWKctCsuoA
	FiAurfoIldIVwtr6nXXdSPgGCfSGznGjSnZiA5vubaCxP8jg7+qjgIgU1cLi7cqirQepki4uoAVnx
	VrU7t4EFXfl3JzDUXK32Flkt1Tpnk453Molka20g6WMTKr67EQP6A5kd0OpKNBtCZqHbo2+2oYvKk
	+7ypooJ3MPgKns9K+l0IZWrkVxrO1fnywNxSJpiGSY+x5Bxtusxj4wnuWrO5N82K1ut39qTrRVfl7
	tWhVbuIsPkbP0jJ9DS4DL7DL75kidtdI1lbXuYITL8ElCzUIcM1TCWPeYw99ZGCNeiGFoUbvMuWGH
	yLgo9M83Z8tTtI36iHtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAH9d-0001EG-7E; Tue, 17 Sep 2019 17:20:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAH9N-0001Db-MY
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 17:20:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C131A2053B;
 Tue, 17 Sep 2019 17:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568740825;
 bh=LwKNamw9E4oxB1xQosrZOWdgQe92VETqR14nO7/u3js=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rJlZcMxRdss/C5nXphHfwkC11ZGWaIGXj83MelUvHMUq8I5gSd3pOW0iqwlgLnYdo
 Pgfz4aYr9Vr2E/C3Kyr89FbWapiRPt+LjPYLADOrXfUF9UNAeOhYsNWikqPBTHHu5L
 OYwtmN9LUz73DR3FfZJOVIZucfs12gYrcDTf4euM=
Date: Tue, 17 Sep 2019 18:20:20 +0100
From: Will Deacon <will@kernel.org>
To: Jordan Crouse <jcrouse@codeaurora.org>
Subject: Re: [PATCH 5/7] iommu/arm-smmu: Support DOMAIN_ATTR_SPLIT_TABLES
Message-ID: <20190917172020.hpv5qqdpihvqkehp@willie-the-truck>
References: <1566327992-362-1-git-send-email-jcrouse@codeaurora.org>
 <1566327992-362-6-git-send-email-jcrouse@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566327992-362-6-git-send-email-jcrouse@codeaurora.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_102025_759271_71F123A8 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 01:06:30PM -0600, Jordan Crouse wrote:
> Support the DOMAIN_ATTR_SPLIT_TABLES attribute to let the leaf driver
> know if split pagetables are enabled for the domain.
> 
> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> ---
> 
>  drivers/iommu/arm-smmu.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 3f41cf7..6a512ff 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -1442,6 +1442,9 @@ static int arm_smmu_domain_get_attr(struct iommu_domain *domain,
>  		case DOMAIN_ATTR_NESTING:
>  			*(int *)data = (smmu_domain->stage == ARM_SMMU_DOMAIN_NESTED);
>  			return 0;
> +		case DOMAIN_ATTR_SPLIT_TABLES:
> +			*(int *)data = !!(smmu_domain->split_pagetables);
> +			return 0;

Hmm. Could you move the setting of this attribute into
arm_smmu_domain_set_attr() and reject it if the ias != 48 in there? That way
the user of the domain can request this feature, rather than us enforcing it
based on the compatible string.

I'd also prefer to call it DOMAIN_ATTR_USE_TTBR1 instead, since it's pretty
ARM specific at this point.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
