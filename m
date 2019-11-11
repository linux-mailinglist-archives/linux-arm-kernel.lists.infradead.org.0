Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E045DF783C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 16:59:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQlB8QY0ht6gspe+hyExC4vQ5C3ic2n5XHxxZaHJJLI=; b=KdguoLShIwfPGo
	8TROS/WHpn0HDW0hmgLoN1MCLPzodAb3bK6HGImuNW8kswSlzZgsGTDmYg/KBWhHLn+TpjY/dCgl6
	O/Ja0+bySWUsdujmqOuOE6bB8SrJBGQOc9rKwyi3gkO+73X5kruOrNEe9URc9K6dllMV0HiMYlwDL
	Rs6dpAn1fBClgcZy8gyh8pJBH1wETz26ScWlC0HRV1XSlUQVH90dpq1KqkI/dGd7FURPNClOcpaLm
	LQndZ6wMB3Zt0RCj7FqT/84kR75HMUVGWHC4aC5V3DA8T6g86fvqUsbnYcNWUdURdW2mKS3fWXuQa
	JUxpQIBrKi0G+38Rg4Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUC5i-0008Nt-2D; Mon, 11 Nov 2019 15:58:58 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUC5Z-0008ND-6y
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 15:58:50 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A07C8F3FE9416791CFD4;
 Mon, 11 Nov 2019 23:58:46 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Mon, 11 Nov 2019
 23:58:39 +0800
Date: Mon, 11 Nov 2019 15:58:30 +0000
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v2 7/8] iommu/arm-smmu-v3: Improve add_device() error
 handling
Message-ID: <20191111155830.00000a56@huawei.com>
In-Reply-To: <20191108152508.4039168-8-jean-philippe@linaro.org>
References: <20191108152508.4039168-1-jean-philippe@linaro.org>
 <20191108152508.4039168-8-jean-philippe@linaro.org>
Organization: Huawei
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_075849_422988_6A0B675F 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 eric.auger@redhat.com, robin.murphy@arm.com, joro@8bytes.org,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, guohanjun@huawei.com,
 zhangfei.gao@linaro.org, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 8 Nov 2019 16:25:07 +0100
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> Let add_device() clean up after itself. The iommu_bus_init() function
> does call remove_device() on error, but other sites (e.g. of_iommu) do
> not.
> 
> Don't free level-2 stream tables because we'd have to track if we
> allocated each of them or if they are used by other endpoints. It's not
> worth the hassle since they are managed resources.
> 
> Reviewed-by: Eric Auger <eric.auger@redhat.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

Potentially some fun around reordering of last few actions, but
doesn't seem there is any real connection between them so should be
fine.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

> ---
>  drivers/iommu/arm-smmu-v3.c | 28 +++++++++++++++++++++-------
>  1 file changed, 21 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 82eac89ee187..88ec0bf33492 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -2826,14 +2826,16 @@ static int arm_smmu_add_device(struct device *dev)
>  	for (i = 0; i < master->num_sids; i++) {
>  		u32 sid = master->sids[i];
>  
> -		if (!arm_smmu_sid_in_range(smmu, sid))
> -			return -ERANGE;
> +		if (!arm_smmu_sid_in_range(smmu, sid)) {
> +			ret = -ERANGE;
> +			goto err_free_master;
> +		}
>  
>  		/* Ensure l2 strtab is initialised */
>  		if (smmu->features & ARM_SMMU_FEAT_2_LVL_STRTAB) {
>  			ret = arm_smmu_init_l2_strtab(smmu, sid);
>  			if (ret)
> -				return ret;
> +				goto err_free_master;
>  		}
>  	}
>  
> @@ -2843,13 +2845,25 @@ static int arm_smmu_add_device(struct device *dev)
>  		master->ssid_bits = min_t(u8, master->ssid_bits,
>  					  CTXDESC_LINEAR_CDMAX);
>  
> +	ret = iommu_device_link(&smmu->iommu, dev);
> +	if (ret)
> +		goto err_free_master;
> +
>  	group = iommu_group_get_for_dev(dev);
> -	if (!IS_ERR(group)) {
> -		iommu_group_put(group);
> -		iommu_device_link(&smmu->iommu, dev);
> +	if (IS_ERR(group)) {
> +		ret = PTR_ERR(group);
> +		goto err_unlink;
>  	}
>  
> -	return PTR_ERR_OR_ZERO(group);
> +	iommu_group_put(group);
> +	return 0;
> +
> +err_unlink:
> +	iommu_device_unlink(&smmu->iommu, dev);
> +err_free_master:
> +	kfree(master);
> +	fwspec->iommu_priv = NULL;
> +	return ret;
>  }
>  
>  static void arm_smmu_remove_device(struct device *dev)



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
