Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F755127699
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 08:38:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMhzSwA56pOuOk/UPXUPg5o0QQV0JLg87Qwg6zqkZXI=; b=RscCGW3jhbISk8
	maIoM86QEEVpBN5xsGsetDwHaISdUgr709uHUqjVLRzyF/NpiuWkgRahtuwTyUkmzxjTzioa0WpKP
	7i0G6X8lp12zLaC49U0PMg3PEDowPmLcFcm8ZxgZyKsKZQl5+aiczmW+iiuyeKPSkWmb4d7VgoDiP
	z7weeoKLTGed9UAbM8Fy3cLeFPTfKqeqmHLpJ/iflUHBoU9uQchAgzkxhceDpOFnoyFfh6De/lo7B
	/d90hkwNY9iGNa/b0EirkXs7euOr5UWb5bXigCeM3tKafzoEwHdf9J8QJBjVKWPqe0mb9acCoQtz/
	BYUhhGtXaWKyn1K/IPcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiCrT-0001in-Gj; Fri, 20 Dec 2019 07:38:11 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiCrG-0001hf-KO
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 07:38:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576827475;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fPptbBAOO0GcMCPdxf9qZyN4g0rcLLRix/sll54J6WU=;
 b=QMk7O7FGw7hwxpGTM0zfPK9+zZ3Pfc+CnGB5TrrxN/C0hSvWrirL1qGSbZuk1NqJh04xlz
 dei8MqPwbmKQXWR/Wta+PneUb8bPmkII3wNVKp32c6jYRu2cRJ+C3e6c+B7Zlhb3NpCE1g
 prghsPC7QFWFF7+dq9RAYj84/XRU0JU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-163-9VEu2D28Oh-yyCnTTKDODw-1; Fri, 20 Dec 2019 02:37:52 -0500
X-MC-Unique: 9VEu2D28Oh-yyCnTTKDODw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B3863184BEC0;
 Fri, 20 Dec 2019 07:37:49 +0000 (UTC)
Received: from [10.36.116.117] (ovpn-116-117.ams2.redhat.com [10.36.116.117])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 89EE25DA2C;
 Fri, 20 Dec 2019 07:37:40 +0000 (UTC)
Subject: Re: [PATCH v4 13/13] iommu/arm-smmu-v3: Add support for PCI PASID
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
 <20191219163033.2608177-14-jean-philippe@linaro.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <8c843513-15a4-e51a-a32c-6316273c3289@redhat.com>
Date: Fri, 20 Dec 2019 08:37:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191219163033.2608177-14-jean-philippe@linaro.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_233758_756215_FA8B5FD4 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net, robh+dt@kernel.org,
 jonathan.cameron@huawei.com, sudeep.holla@arm.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, will@kernel.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jean,

On 12/19/19 5:30 PM, Jean-Philippe Brucker wrote:
> Enable PASID for PCI devices that support it. Since the SSID tables are
> allocated by arm_smmu_attach_dev(), PASID has to be enabled early enough.
> arm_smmu_dev_feature_enable() would be too late, since by that time the
> main DMA domain has already been attached. Do it in add_device() instead.
> 
> Tested-by: Zhangfei Gao <zhangfei.gao@linaro.org>
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric

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
> +
>  	if (!(smmu->features & ARM_SMMU_FEAT_2_LVL_CDTAB))
>  		master->ssid_bits = min_t(u8, master->ssid_bits,
>  					  CTXDESC_LINEAR_CDMAX);
>  
>  	ret = iommu_device_link(&smmu->iommu, dev);
>  	if (ret)
> -		goto err_free_master;
> +		goto err_disable_pasid;
>  
>  	group = iommu_group_get_for_dev(dev);
>  	if (IS_ERR(group)) {
> @@ -2871,6 +2921,8 @@ static int arm_smmu_add_device(struct device *dev)
>  
>  err_unlink:
>  	iommu_device_unlink(&smmu->iommu, dev);
> +err_disable_pasid:
> +	arm_smmu_disable_pasid(master);
>  err_free_master:
>  	kfree(master);
>  	fwspec->iommu_priv = NULL;
> @@ -2891,6 +2943,7 @@ static void arm_smmu_remove_device(struct device *dev)
>  	arm_smmu_detach_dev(master);
>  	iommu_group_remove_device(dev);
>  	iommu_device_unlink(&smmu->iommu, dev);
> +	arm_smmu_disable_pasid(master);
>  	kfree(master);
>  	iommu_fwspec_free(dev);
>  }
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
