Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A09E1D7D09
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vu3kFg8dZpp8po8uJnmKvWmz4DCvR5Kj/Ys3E32+HIo=; b=sD0PunWhj3fBnY
	HoZAUCCNf/0Hyi7AboaiWWXrnYPHO93pHxram4SQHdxoCePibP4StIS4EeqGM/4qYP3cXqGBmFLkW
	82uU5pzFberw8LYMt8Gzc7zsMj4XT6qA0vT7xAUhOYuiCaw6ve9G4zmeDTbFTMZV2FRmIfM1sgwwc
	T3CrZF+NG0En9nTDL20rNgwA7ToqYImaIJ4D72sZMbzSAfnZmjTZKlZtTbTxNNPiBAPXIvxxvNaQQ
	289zarNTGs107sn+4V21YQOYLqfToZyLBRg834m8CUC8fBWWDrYflUxn5IpJE+RsW5RLViRAnJipN
	E2WVjSqUUmHvueKrOb5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahpt-0003eR-0f; Mon, 18 May 2020 15:37:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahpj-0003cz-Rq
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 15:37:41 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7CD720657;
 Mon, 18 May 2020 15:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589816259;
 bh=EhGDmXaw1hIzPjQBCe1L73zVhpK0WWSpGkldIfpkakQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=17iaSWZ809+SeQ4xkNM7+7yWrBt+CuPeic8ZjxN8zDpxcvigQFJAY6hS4xUTnZ0PV
 TVNE0WEfptLrFqoIPl+lzqq+9vY4pkCjIEfB45N5i++g4SKevueEzjo6flcMF7+Uv7
 CjtAqM5b0wEi2eNrbV0xoNpLji3A77Fduepja3Kw=
Date: Mon, 18 May 2020 16:37:34 +0100
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH 3/4] iommu/arm-smmu-v3: Use pci_ats_supported()
Message-ID: <20200518153733.GM32394@willie-the-truck>
References: <20200515104359.1178606-1-jean-philippe@linaro.org>
 <20200515104359.1178606-4-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515104359.1178606-4-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_083739_941229_0E5FA007 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: ashok.raj@intel.com, linux-pci@vger.kernel.org, joro@8bytes.org,
 alex.williamson@redhat.com, iommu@lists.linux-foundation.org,
 bhelgaas@google.com, robin.murphy@arm.com, dwmw2@infradead.org,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 12:44:01PM +0200, Jean-Philippe Brucker wrote:
> The new pci_ats_supported() function checks if a device supports ATS and
> is allowed to use it.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
> I dropped the Ack because I slightly changed the patch to keep the
> fwspec check, since last version:
> https://lore.kernel.org/linux-iommu/20200311124506.208376-8-jean-philippe@linaro.org/
> ---
>  drivers/iommu/arm-smmu-v3.c | 20 +++++---------------
>  1 file changed, 5 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 82508730feb7a1..39b935e86ab203 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -2652,26 +2652,16 @@ static void arm_smmu_install_ste_for_dev(struct arm_smmu_master *master)
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
> +	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
>  
> -	pdev = to_pci_dev(master->dev);
> -	return !pdev->untrusted && pdev->ats_cap;
> +	return (smmu->features & ARM_SMMU_FEAT_ATS) &&
> +		!(fwspec->flags & IOMMU_FWSPEC_PCI_RC_ATS) &&
> +		dev_is_pci(dev) && pci_ats_supported(to_pci_dev(dev));

nit, but I think this is clearer if you leave it split up (untested diff
below).

Will

--->8

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 82508730feb7..c5730557dbe3 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2652,26 +2652,20 @@ static void arm_smmu_install_ste_for_dev(struct arm_smmu_master *master)
 	}
 }
 
-#ifdef CONFIG_PCI_ATS
 static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
 {
-	struct pci_dev *pdev;
+	struct device *dev = master->dev;
 	struct arm_smmu_device *smmu = master->smmu;
-	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(master->dev);
+	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 
-	if (!(smmu->features & ARM_SMMU_FEAT_ATS) || !dev_is_pci(master->dev) ||
-	    !(fwspec->flags & IOMMU_FWSPEC_PCI_RC_ATS) || pci_ats_disabled())
+	if (!(smmu->features & ARM_SMMU_FEAT_ATS))
 		return false;
 
-	pdev = to_pci_dev(master->dev);
-	return !pdev->untrusted && pdev->ats_cap;
-}
-#else
-static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
-{
-	return false;
+	if (!(fwspec->flags & IOMMU_FWSPEC_PCI_RC_ATS))
+		return false;
+
+	return dev_is_pci(dev) && pci_ats_supported(to_pci_dev(dev));
 }
-#endif
 
 static void arm_smmu_enable_ats(struct arm_smmu_master *master)
 {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
