Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C03061826C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 02:44:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=23VSK7T3/9XuOtXwVq4gfWzvIVjAa7csIypaTh3ew5M=; b=BbeRdcZxMMC3mNQadUYji2MxA
	whYyH6QRjKrxJ+9vnMDtxGnzwcB9PckYExuQk+wr8LNjQCm6Kkr/+CiuC7n95WBE23sf7ZnD8KHtB
	HLqQ16LtuXDe0WxgX4ypBpKK00exJtl5RVrUJGUsUtu3clECfmIW9dJU9iLRiY+9IIh2MMl5r2Cz1
	D6Q2FCvMr8dGGPCYdnt7BUdSo9kgjVgPNoqbr67/ZNahXb1vXpZluGV/rRb1yHKIB7BlBEtfPjMuH
	TvvEzUP3j7ESTEFKWpXZA+nd/UjjETM55aMphVq6rPOYC9KRhr/zdQ6PP/ya0NpkKhoxAiPk41j6g
	jvsUCRXKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCCtk-0004bM-NS; Thu, 12 Mar 2020 01:44:32 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCCtd-0004aq-FC
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 01:44:26 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 18:44:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,543,1574150400"; d="scan'208";a="443763768"
Received: from blu2-mobl3.ccr.corp.intel.com (HELO [10.254.208.137])
 ([10.254.208.137])
 by fmsmga006.fm.intel.com with ESMTP; 11 Mar 2020 18:44:18 -0700
Subject: Re: [PATCH v2 08/11] iommu/vt-d: Use pci_ats_supported()
To: Jean-Philippe Brucker <jean-philippe@linaro.org>, bhelgaas@google.com,
 will@kernel.org, robh+dt@kernel.org, joro@8bytes.org, sudeep.holla@arm.com,
 linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org
References: <20200311124506.208376-1-jean-philippe@linaro.org>
 <20200311124506.208376-9-jean-philippe@linaro.org>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <7019230c-3c56-e6db-6704-d73f23fa39b5@linux.intel.com>
Date: Thu, 12 Mar 2020 09:44:16 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200311124506.208376-9-jean-philippe@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_184425_523328_477B4316 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, frowand.list@gmail.com,
 corbet@lwn.net, rjw@rjwysocki.net, amurray@thegoodpenguin.co.uk,
 liviu.dudau@arm.com, guohanjun@huawei.com, lenb@kernel.org,
 robin.murphy@arm.com, dwmw2@infradead.org, baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jean,

On 2020/3/11 20:45, Jean-Philippe Brucker wrote:
> The pci_ats_supported() function checks if a device supports ATS and is
> allowed to use it.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>   drivers/iommu/intel-iommu.c | 9 +++------
>   1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
> index 6fa6de2b6ad5..17208280ef5c 100644
> --- a/drivers/iommu/intel-iommu.c
> +++ b/drivers/iommu/intel-iommu.c
> @@ -1454,8 +1454,7 @@ static void iommu_enable_dev_iotlb(struct device_domain_info *info)
>   	    !pci_reset_pri(pdev) && !pci_enable_pri(pdev, 32))
>   		info->pri_enabled = 1;
>   #endif
> -	if (!pdev->untrusted && info->ats_supported &&
> -	    pci_ats_page_aligned(pdev) &&
> +	if (info->ats_supported && pci_ats_page_aligned(pdev) &&
>   	    !pci_enable_ats(pdev, VTD_PAGE_SHIFT)) {
>   		info->ats_enabled = 1;
>   		domain_update_iotlb(info->domain);
> @@ -2611,10 +2610,8 @@ static struct dmar_domain *dmar_insert_one_dev_info(struct intel_iommu *iommu,
>   	if (dev && dev_is_pci(dev)) {
>   		struct pci_dev *pdev = to_pci_dev(info->dev);
>   
> -		if (!pdev->untrusted &&
> -		    !pci_ats_disabled() &&

The pci_ats_disabled() couldn't be replaced by pci_ats_supported(). Even
pci_ats_supported() returns true, user still can disable it. Or move
ats_disabled into pci_ats_supported()?

Best regards,
baolu

> -		    ecap_dev_iotlb_support(iommu->ecap) &&
> -		    pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_ATS) &&
> +		if (ecap_dev_iotlb_support(iommu->ecap) &&
> +		    pci_ats_supported(pdev) &&
>   		    dmar_find_matched_atsr_unit(pdev))
>   			info->ats_supported = 1;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
