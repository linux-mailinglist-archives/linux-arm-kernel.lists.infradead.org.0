Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB121E4BE6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 19:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uzhUsBr9oNQKqgTMp7J10gbeMMkPsV9xEQtwuiqjPFU=; b=Dvg5Kj2LCLmklkFZFGmevq38g
	5KfSsqTMkdZflDpZYTdtM36iV4/LmO85mN+Nu/XGnC0EAKUiqdLae55dt/IO/XEXkCJ2K8LCWsavY
	+eqqDIR2s55P4wdLt7Azv8gZzXNDuQa1b53yylfyv0aWv45L2g9Yqtg4w1TZENN50+1AkAqI0+II8
	WWJfNeNLUGfS5Xp8myMSvLjSf4/HUEd+Y6Sn3ydSVoRLoFgtcVOCwhqmCR7zTyRQPHGL2Yr0VeQII
	PWLDArJ0K30sziRrZMcSziGxXyfPGUrq0l45cxuC6WIA+JB+UNEd477crMeQGortYnnvl1BLS53w0
	iEPFMvynQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdztG-0007Os-Bf; Wed, 27 May 2020 17:30:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdzsi-0007Fc-MT
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 17:30:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F0DCB31B;
 Wed, 27 May 2020 10:30:19 -0700 (PDT)
Received: from [10.57.2.168] (unknown [10.57.2.168])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D2B73F305;
 Wed, 27 May 2020 10:30:17 -0700 (PDT)
Subject: Re: [RFC PATCH] iommu/arm-smmu: Add module parameter to set msi iova
 address
To: Srinath Mannam <srinath.mannam@broadcom.com>,
 Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>
References: <1590595398-4217-1-git-send-email-srinath.mannam@broadcom.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f9b221cf-1c7f-9f95-133b-dca65197b6c2@arm.com>
Date: Wed, 27 May 2020 18:30:15 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1590595398-4217-1-git-send-email-srinath.mannam@broadcom.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_103020_836519_ED834598 
X-CRM114-Status: GOOD (  22.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-27 17:03, Srinath Mannam wrote:
> This patch gives the provision to change default value of MSI IOVA base
> to platform's suitable IOVA using module parameter. The present
> hardcoded MSI IOVA base may not be the accessible IOVA ranges of platform.

That in itself doesn't seem entirely unreasonable; IIRC the current 
address is just an arbitrary choice to fit nicely into Qemu's memory 
map, and there was always the possibility that it wouldn't suit everything.

> Since commit aadad097cd46 ("iommu/dma: Reserve IOVA for PCIe inaccessible
> DMA address"), inaccessible IOVA address ranges parsed from dma-ranges
> property are reserved.

That, however, doesn't seem to fit here; iommu-dma maps MSI doorbells 
dynamically, so they aren't affected by reserved regions any more than 
regular DMA pages are. In fact, it explicitly ignores the software MSI 
region, since as the comment says, it *is* the software that manages those.

The MSI_IOVA_BASE region exists for VFIO, precisely because in that case 
the kernel *doesn't* control the address space, but still needs some way 
to steal a bit of it for MSIs that the guest doesn't necessarily know 
about, and give userspace a fighting chance of knowing what it's taken. 
I think at the time we discussed the idea of adding something to the 
VFIO uapi such that userspace could move this around if it wanted or 
needed to, but decided we could live without that initially. Perhaps now 
the time has come?

Robin.

> If any platform has the limitaion to access default MSI IOVA, then it can
> be changed using "arm-smmu.msi_iova_base=0xa0000000" command line argument.
> 
> Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
> ---
>   drivers/iommu/arm-smmu.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 4f1a350..5e59c9d 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -72,6 +72,9 @@ static bool disable_bypass =
>   module_param(disable_bypass, bool, S_IRUGO);
>   MODULE_PARM_DESC(disable_bypass,
>   	"Disable bypass streams such that incoming transactions from devices that are not attached to an iommu domain will report an abort back to the device and will not be allowed to pass through the SMMU.");
> +static unsigned long msi_iova_base = MSI_IOVA_BASE;
> +module_param(msi_iova_base, ulong, S_IRUGO);
> +MODULE_PARM_DESC(msi_iova_base, "msi iova base address.");
>   
>   struct arm_smmu_s2cr {
>   	struct iommu_group		*group;
> @@ -1566,7 +1569,7 @@ static void arm_smmu_get_resv_regions(struct device *dev,
>   	struct iommu_resv_region *region;
>   	int prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;
>   
> -	region = iommu_alloc_resv_region(MSI_IOVA_BASE, MSI_IOVA_LENGTH,
> +	region = iommu_alloc_resv_region(msi_iova_base, MSI_IOVA_LENGTH,
>   					 prot, IOMMU_RESV_SW_MSI);
>   	if (!region)
>   		return;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
