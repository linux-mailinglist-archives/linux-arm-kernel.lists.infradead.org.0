Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3A7D003F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 19:58:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GdXAhAg1b0rdOGeM2Rk6YENyKKQft9+D7qx7cn+cidk=; b=beFJI7adOCYxDs
	dTb43xIGy+k82B4NHj9gxTWdNhV4kpENX2woGGChH+Ynf9wuV67LQwkU/ciNgldb0wPtY2yw6DSG5
	vtRCWrfTfOdSqqLSOj9jydN8ulbrdwQaQ/6eozv70mM4e0DsJRXf09ablmsAVO8UBkEhslHALZw9O
	eNi0rEnuJBgNijTO3qfDm7QfoEsVL9O5+s1n6FgEdqRCJWDRmUiztS+UmGCn6blsdixQCoKGxAPyi
	/f0B/sa5Y8CqXbYKsv71bIKWVXDx846DiqD/3zqfp/UKSDYyUyh8bEuW4REwTesQqzAp2jc5Zcasp
	im3H/s1+PEqaHRnBBqIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHtko-0003SC-1v; Tue, 08 Oct 2019 17:58:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHtke-0003Qk-4V; Tue, 08 Oct 2019 17:58:26 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iHtkV-0002h5-9E; Tue, 08 Oct 2019 19:58:15 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH] iommu/rockchip: Don't loop until failure to count
 interrupts
Date: Tue, 08 Oct 2019 19:58:14 +0200
Message-ID: <3132916.nyj3dfveGU@diego>
In-Reply-To: <20191008135843.30640-1-enric.balletbo@collabora.com>
References: <20191008135843.30640-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_105824_327894_AE139213 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 dianders@chromium.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux-foundation.org, mka@chromium.org, groeck@chromium.org,
 kernel@collabora.com, bleung@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Enric,

Am Dienstag, 8. Oktober 2019, 15:58:43 CEST schrieb Enric Balletbo i Serra:
> As platform_get_irq() now prints an error when the interrupt does not
> exist, counting interrupts by looping until failure causes the printing
> of scary messages like:
> 
>  rk_iommu ff924000.iommu: IRQ index 1 not found
>  rk_iommu ff914000.iommu: IRQ index 1 not found
>  rk_iommu ff903f00.iommu: IRQ index 1 not found
>  rk_iommu ff8f3f00.iommu: IRQ index 1 not found
>  rk_iommu ff650800.iommu: IRQ index 1 not found
> 
> Fix this by using the platform_irq_count() helper to avoid touching
> non-existent interrupts.

It looks like we did the same fix ... see my patch from september 25:
https://patchwork.kernel.org/patch/11161221/


> Fixes: 7723f4c5ecdb8d83 ("driver core: platform: Add an error message to platform_get_irq*()")
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
> 
>  drivers/iommu/rockchip-iommu.c | 35 +++++++++++++++++++++++-----------
>  1 file changed, 24 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 26290f310f90..8c6318bd1b37 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -1136,7 +1136,7 @@ static int rk_iommu_probe(struct platform_device *pdev)
>  	struct rk_iommu *iommu;
>  	struct resource *res;
>  	int num_res = pdev->num_resources;
> -	int err, i, irq;
> +	int err, i, irq, num_irqs;
>  
>  	iommu = devm_kzalloc(dev, sizeof(*iommu), GFP_KERNEL);
>  	if (!iommu)
> @@ -1219,20 +1219,28 @@ static int rk_iommu_probe(struct platform_device *pdev)
>  
>  	pm_runtime_enable(dev);
>  
> -	i = 0;
> -	while ((irq = platform_get_irq(pdev, i++)) != -ENXIO) {
> -		if (irq < 0)
> -			return irq;
> +	num_irqs = platform_irq_count(pdev);
> +	if (num_irqs < 0) {
> +		err = num_irqs;
> +		goto err_disable_pm_runtime;
> +	}

By moving the basic irq count above the pm_runtime_enable
you save some lines and the whole goto logic ... see my patch
for reference :-D

Heiko

> +
> +	for (i = 0; i < num_irqs; i++) {
> +		irq = platform_get_irq(pdev, i);
> +		if (irq < 0) {
> +			err = irq;
> +			goto err_disable_pm_runtime;
> +		}
>  
>  		err = devm_request_irq(iommu->dev, irq, rk_iommu_irq,
>  				       IRQF_SHARED, dev_name(dev), iommu);
> -		if (err) {
> -			pm_runtime_disable(dev);
> -			goto err_remove_sysfs;
> -		}
> +		if (err)
> +			goto err_disable_pm_runtime;
>  	}
>  
>  	return 0;
> +err_disable_pm_runtime:
> +	pm_runtime_disable(dev);
>  err_remove_sysfs:
>  	iommu_device_sysfs_remove(&iommu->iommu);
>  err_put_group:
> @@ -1245,10 +1253,15 @@ static int rk_iommu_probe(struct platform_device *pdev)
>  static void rk_iommu_shutdown(struct platform_device *pdev)
>  {
>  	struct rk_iommu *iommu = platform_get_drvdata(pdev);
> -	int i = 0, irq;
> +	int i, irq, num_irqs;
>  
> -	while ((irq = platform_get_irq(pdev, i++)) != -ENXIO)
> +	num_irqs = platform_irq_count(pdev);
> +	for (i = 0; i < num_irqs; i++) {
> +		irq = platform_get_irq(pdev, i);
> +		if (irq < 0)
> +			continue;
>  		devm_free_irq(iommu->dev, irq, iommu);
> +	}
>  
>  	pm_runtime_force_suspend(&pdev->dev);
>  }
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
