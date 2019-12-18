Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9436C12443C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:18:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zfr+PNB49NcXyGHtaGuXCZZJKqYzZd7eaqlmOc/iwu8=; b=bH3mXrLiKSy0Rb
	VuXe2mxzBa6Z+yDMqCfazY/QttKVLqK/+n7jAFwXwzXEpeC3iqSdSsqkspYTO10bDZi6oemqw6/Qx
	INnTIycVep8MpQztImEoyoEJtW4jPvzLXuL61cl2nEJxME9/fHkzONqXFqvj2XCDGUEL4JTwZ/Fex
	73G5lBDEfQA4t/2mDWY3diJib9CLkd5r67p/7NKqDTOnhtPc6q31SzSCw+XBltyftx3006sp9C029
	QMNRFJZ/LrQMD2j1dQD60Ir/LwPWfxwtEsoPFje7hue5OYePIw6q3JK/uEXCdwmFgFj1wbfFeeFLr
	vNvXyKBv3Oj6gMDxyixw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWPO-0004pu-P2; Wed, 18 Dec 2019 10:18:22 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWOu-0004iE-2m
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:17:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576664270;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ak6ATDFUqAlrkDJyAcSn/Y2cYfzHlLjmCX8QIyVg8Ig=;
 b=M5Kw2qyItRBFXQp94mhk+01Z+7Q0toKtETlA8ZPTAUwrvSD0Fdu3HhFNZIvFrC6le8Bcd7
 t0viA5dDdnGjHQYVdqqkDtBFLE+jydISSEdI4v+JcoOISnBlWVxYIPVpk4w4xAeEB24Dz+
 Cn/KnNDXqeWuNXA6GxygaBpcUoUUwXo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-270-lTO4kAjwMJqiIHHZkW6rbQ-1; Wed, 18 Dec 2019 05:17:48 -0500
X-MC-Unique: lTO4kAjwMJqiIHHZkW6rbQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 166DEDB22;
 Wed, 18 Dec 2019 10:17:46 +0000 (UTC)
Received: from [10.36.116.117] (ovpn-116-117.ams2.redhat.com [10.36.116.117])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E974E68882;
 Wed, 18 Dec 2019 10:17:41 +0000 (UTC)
Subject: Re: [PATCH v3 03/13] iommu/arm-smmu-v3: Support platform SSID
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
References: <20191209180514.272727-1-jean-philippe@linaro.org>
 <20191209180514.272727-4-jean-philippe@linaro.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <06c57de4-cfca-f95f-ac06-ab6f49a028a3@redhat.com>
Date: Wed, 18 Dec 2019 11:17:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191209180514.272727-4-jean-philippe@linaro.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_021752_214119_2438C1A2 
X-CRM114-Status: GOOD (  23.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
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

On 12/9/19 7:05 PM, Jean-Philippe Brucker wrote:
> For platform devices that support SubstreamID (SSID), firmware provides
> the number of supported SSID bits. Restrict it to what the SMMU supports
> and cache it into master->ssid_bits, which will also be used for PCI
> PASID.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
the title of the patch does not really explain what it actually does. At
this stage we are far from supporting SSIDs ;-) Same for 04?

Thanks

Eric
> ---
>  drivers/iommu/arm-smmu-v3.c | 13 +++++++++++++
>  drivers/iommu/of_iommu.c    |  6 +++++-
>  include/linux/iommu.h       |  2 ++
>  3 files changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index d4e8b7f8d9f4..837b4283b4dc 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -292,6 +292,12 @@
>  
>  #define CTXDESC_CD_1_TTB0_MASK		GENMASK_ULL(51, 4)
>  
> +/*
> + * When the SMMU only supports linear context descriptor tables, pick a
> + * reasonable size limit (64kB).
> + */
> +#define CTXDESC_LINEAR_CDMAX		ilog2(SZ_64K / (CTXDESC_CD_DWORDS << 3))
> +
>  /* Convert between AArch64 (CPU) TCR format and SMMU CD format */
>  #define ARM_SMMU_TCR2CD(tcr, fld)	FIELD_PREP(CTXDESC_CD_0_TCR_##fld, \
>  					FIELD_GET(ARM64_TCR_##fld, tcr))
> @@ -638,6 +644,7 @@ struct arm_smmu_master {
>  	u32				*sids;
>  	unsigned int			num_sids;
>  	bool				ats_enabled;
> +	unsigned int			ssid_bits;
>  };
>  
>  /* SMMU private data for an IOMMU domain */
> @@ -2571,6 +2578,12 @@ static int arm_smmu_add_device(struct device *dev)
>  		}
>  	}
>  
> +	master->ssid_bits = min(smmu->ssid_bits, fwspec->num_pasid_bits);
> +
> +	if (!(smmu->features & ARM_SMMU_FEAT_2_LVL_CDTAB))
> +		master->ssid_bits = min_t(u8, master->ssid_bits,
> +					  CTXDESC_LINEAR_CDMAX);
> +
>  	group = iommu_group_get_for_dev(dev);
>  	if (!IS_ERR(group)) {
>  		iommu_group_put(group);
> diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
> index 026ad2b29dcd..b3ccb2f7f1c7 100644
> --- a/drivers/iommu/of_iommu.c
> +++ b/drivers/iommu/of_iommu.c
> @@ -196,8 +196,12 @@ const struct iommu_ops *of_iommu_configure(struct device *dev,
>  			if (err)
>  				break;
>  		}
> -	}
>  
> +		fwspec = dev_iommu_fwspec_get(dev);
> +		if (!err && fwspec)
> +			of_property_read_u32(master_np, "pasid-num-bits",
> +					     &fwspec->num_pasid_bits);
> +	}
>  
>  	/*
>  	 * Two success conditions can be represented by non-negative err here:
> diff --git a/include/linux/iommu.h b/include/linux/iommu.h
> index 3a113c5d7394..bd46775c3329 100644
> --- a/include/linux/iommu.h
> +++ b/include/linux/iommu.h
> @@ -581,6 +581,7 @@ struct iommu_group *fsl_mc_device_group(struct device *dev);
>   * @ops: ops for this device's IOMMU
>   * @iommu_fwnode: firmware handle for this device's IOMMU
>   * @iommu_priv: IOMMU driver private data for this device
> + * @num_pasid_bits: number of PASID bits supported by this device
>   * @num_ids: number of associated device IDs
>   * @ids: IDs which this device may present to the IOMMU
>   */
> @@ -589,6 +590,7 @@ struct iommu_fwspec {
>  	struct fwnode_handle	*iommu_fwnode;
>  	void			*iommu_priv;
>  	u32			flags;
> +	u32			num_pasid_bits;
>  	unsigned int		num_ids;
>  	u32			ids[1];
>  };
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
