Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD95013A99D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 13:46:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6D+76xHx1accwLUYPZlijgYfhchULvNNFflNU4Lrhg=; b=f1yMPVVy4PoqNd
	VQ7S8X+vFi1ZR+07DNN8eofAe2PUGJr6NIhB2Bw5JgXRJZllqcvdYuDYzH8r+10XukXvm2S0RtiNw
	+OraOXZDW38X7YEx3d8i3wfU8a32yZBFI7IkXDgATSsH+QdnUnucjG++6H70c5f/pFWMFmr4Q2H1p
	neNohDLKlj4x6P/uIwLDQonB9ZuGjX2wbCTW9G+0ONbOKrmWSAnOk/rsVkQu4dfSctRY9FBVDwPh/
	Md9OCXMEh8+Erzdco8drsVAQZq+9OgCcV3vxXqS/o3zywChjddCycxK4wqQ0aD4WPYZ0rmifJv19b
	1U7QcQt72Jitv1t4nlSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irLa4-00063b-FV; Tue, 14 Jan 2020 12:46:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irLZt-00062f-1c
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 12:45:53 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 933DE2072B;
 Tue, 14 Jan 2020 12:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579005948;
 bh=5Xx/5E6xOw7Km9R4I0Y6ZaqaGkVDzTuF66OmQwdPn0E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bDc54IzA8ITZll+FHhUYtsE6hTFFY9uwR6VuweAldUJOd68jiEkQPnwPebJRTLQO+
 /JK0iqybSZ6IFE7ctCE9JOcIWFAbKtuHzaLB8CQ1OvRQF4IwDwk7m4hMTAhOhYIATp
 YxYGMSEdh6ZleqDwG8kEfIHWmFTlT3zfbWbqdSMM=
Date: Tue, 14 Jan 2020 12:45:42 +0000
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 13/13] iommu/arm-smmu-v3: Add support for PCI PASID
Message-ID: <20200114124541.GE29222@willie-the-truck>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
 <20191219163033.2608177-14-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219163033.2608177-14-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_044549_129158_E7765085 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 eric.auger@redhat.com, linux-pci@vger.kernel.org, joro@8bytes.org,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 jonathan.cameron@huawei.com, guohanjun@huawei.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 05:30:33PM +0100, Jean-Philippe Brucker wrote:
> Enable PASID for PCI devices that support it. Since the SSID tables are
> allocated by arm_smmu_attach_dev(), PASID has to be enabled early enough.
> arm_smmu_dev_feature_enable() would be too late, since by that time the

What is arm_smmu_dev_feature_enable()?

> main DMA domain has already been attached. Do it in add_device() instead.
> 
> Tested-by: Zhangfei Gao <zhangfei.gao@linaro.org>
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 55 ++++++++++++++++++++++++++++++++++++-
>  1 file changed, 54 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index e62ca80f2f76..8e95ecad4c9a 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -2644,6 +2644,53 @@ static void arm_smmu_disable_ats(struct arm_smmu_master *master)
>  	atomic_dec(&smmu_domain->nr_ats_masters);
>  }
>  
> +static int arm_smmu_enable_pasid(struct arm_smmu_master *master)
> +{
> +	int ret;
> +	int features;
> +	int num_pasids;
> +	struct pci_dev *pdev;
> +
> +	if (!dev_is_pci(master->dev))
> +		return -ENODEV;
> +
> +	pdev = to_pci_dev(master->dev);
> +
> +	features = pci_pasid_features(pdev);
> +	if (features < 0)
> +		return features;
> +
> +	num_pasids = pci_max_pasids(pdev);
> +	if (num_pasids <= 0)
> +		return num_pasids;
> +
> +	ret = pci_enable_pasid(pdev, features);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to enable PASID\n");
> +		return ret;
> +	}
> +
> +	master->ssid_bits = min_t(u8, ilog2(num_pasids),
> +				  master->smmu->ssid_bits);
> +	return 0;
> +}
> +
> +static void arm_smmu_disable_pasid(struct arm_smmu_master *master)
> +{
> +	struct pci_dev *pdev;
> +
> +	if (!dev_is_pci(master->dev))
> +		return;
> +
> +	pdev = to_pci_dev(master->dev);
> +
> +	if (!pdev->pasid_enabled)
> +		return;
> +
> +	master->ssid_bits = 0;
> +	pci_disable_pasid(pdev);
> +}
> +
>  static void arm_smmu_detach_dev(struct arm_smmu_master *master)
>  {
>  	unsigned long flags;
> @@ -2852,13 +2899,16 @@ static int arm_smmu_add_device(struct device *dev)
>  
>  	master->ssid_bits = min(smmu->ssid_bits, fwspec->num_pasid_bits);
>  
> +	/* Note that PASID must be enabled before, and disabled after ATS */
> +	arm_smmu_enable_pasid(master);

Is that part of the PCIe specs? If so, please can you add a citation to the
comment?

Are there any other ordering requirements, i.e. with respect to enabling
substreams at the SMMU? For example, can a speculative ATS request provide
a PASID?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
