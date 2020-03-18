Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A361D18A75B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 22:49:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxYJOGNV/LMQ2AiEkbNIK9QGvFZzt8DpaymusQvyfq4=; b=JJ41EUP45LwVR7
	a434IX3lzMFuzQlJj2pRqotAoceZoRAvDNsUdxzN33ZJkbUkmSBX+gJstDFD/y0AWrRG/PglBXwu8
	1JMfGirajT0naxTZXeCoKjodr/ap59VPLKHYTf4aKfRcaTjTLwNGwAQzNmRZK5DipxHZOGHOO3Dvj
	IWgVN+7D1wTgsi6zOZCA0xLgwmo6Mm/7DcnCKs4FwxMNABbyaC0d9V//tRGKR21L4ntXp9LrT49EA
	+GKDpRWD40BN3KOT+S00HCcH6l5YdA/RRJKBut3/WtjEb61WvSqK0GMsiFM5H8t2vxmnAN1tOl4Dk
	bbdQ446k2WlklM/LudTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEgZQ-0005qX-9Q; Wed, 18 Mar 2020 21:49:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEgZG-0005pn-F9
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 21:49:39 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3AB5F20754;
 Wed, 18 Mar 2020 21:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584568177;
 bh=P5WR7+CCKYuF1D3YjB6Qxj3jRbK8RLNPfWPK6xDhFJU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MYDwg6ol1Z+QGh9/zDrDHt8bnPDtWLxTMCHZXahQMrF2zKu+dxR/eo1lJ1FPMFmub
 rYxZ8TlyKf1p57qSoAehM9cwXmkd62W+Yj/ZFIe/fzmdsKEaGLM6wI5Isl4w5zHhXz
 i2Fyra1JtidfYnS4VkKmkpnTCTdgAjhqKz+PtDSA=
Date: Wed, 18 Mar 2020 21:49:30 +0000
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v2 07/11] iommu/arm-smmu-v3: Use pci_ats_supported()
Message-ID: <20200318214930.GB8477@willie-the-truck>
References: <20200311124506.208376-1-jean-philippe@linaro.org>
 <20200311124506.208376-8-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311124506.208376-8-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_144938_530136_7970920C 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 liviu.dudau@arm.com, guohanjun@huawei.com, frowand.list@gmail.com,
 lorenzo.pieralisi@arm.com, corbet@lwn.net, joro@8bytes.org,
 linux-acpi@vger.kernel.org, lenb@kernel.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, bhelgaas@google.com, linux-arm-kernel@lists.infradead.org,
 dwmw2@infradead.org, rjw@rjwysocki.net, iommu@lists.linux-foundation.org,
 sudeep.holla@arm.com, baolu.lu@linux.intel.com, robin.murphy@arm.com,
 amurray@thegoodpenguin.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 01:45:02PM +0100, Jean-Philippe Brucker wrote:
> The new pci_ats_supported() function checks if a device supports ATS and
> is allowed to use it.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 18 +++---------------
>  1 file changed, 3 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 4f0a38dae6db..87ae31ef35a1 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -2592,26 +2592,14 @@ static void arm_smmu_install_ste_for_dev(struct arm_smmu_master *master)
>  	}
>  }
>  
> -#ifdef CONFIG_PCI_ATS
>  static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
>  {
> -	struct pci_dev *pdev;
> +	struct device *dev = master->dev;
>  	struct arm_smmu_device *smmu = master->smmu;
> -	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(master->dev);
> -
> -	if (!(smmu->features & ARM_SMMU_FEAT_ATS) || !dev_is_pci(master->dev) ||
> -	    !(fwspec->flags & IOMMU_FWSPEC_PCI_RC_ATS) || pci_ats_disabled())
> -		return false;
>  
> -	pdev = to_pci_dev(master->dev);
> -	return !pdev->untrusted && pdev->ats_cap;
> +	return (smmu->features & ARM_SMMU_FEAT_ATS) && dev_is_pci(dev) &&
> +		pci_ats_supported(to_pci_dev(dev));
>  }
> -#else
> -static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
> -{
> -	return false;
> -}
> -#endif

Acked-by: Will Deacon <will@kernel.org>

Cheers for doing this.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
