Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF667C09F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8cxxn1f+pd/WC39OOY6szJ678iTH7rBoqxoNy/72U7k=; b=Gcn5iC1ho6wDvJ
	Y1Tsy7VtnpSwRB+mUXqg2KiTft5Dt68Y1PkrjlF8gojq0vpH1zs8R8xPAT7Agxrsaqiylqj3FP8i4
	K6NKIEd3zOelkubNkJGPI3cCZmpvlU+oMDxIQnvpX5DEnfwn+gaziWaE8+mJeNAjT0wcqRzLLYoCz
	s0KftWnGBDb/O1su9fzvTwmLRmhGf6OdAqMsSjFy4dbt7GgLty3mASODfYGGbeunWNY0h75Pzx2mC
	ceyzMMM/n9M/zrWHsDrtXWGhW+ZtTpuNIErvFV6nxX1T1kqf9TNDBXsTyY4SprARia/hbJk9r1o7d
	DN2ZpsPG34elbxz8tpxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnJL-0007Eg-Hw; Wed, 31 Jul 2019 12:02:27 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnJE-0007EF-J4
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:02:22 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: aOXXuc5p8mcm9W4svbErvAw8zDEnWX/xu0aNxswsJyJuhyMe99u47Jm1prVHQolWOyNCDfjIuz
 2KyP8Vie8Ke/iYGSsF9kTc/4qyYziM4P3uVCki6ZJ2Ec/JwzXlPUKsPcJW/zR8JoVLWIFTKGv3
 SSFveGNhVDFv/PkILzMw7ZbwXVZwQBzAn9G7yEgxBnVmom/o6CWRWha/JTkYBQjgXwF7LiJq2l
 PwF15dCwaJq6eekR8qgPW6a62S/Vq7HQUUQUHKOIh1ah/aubb5L2m2DbWcI2soprYL8bXzyJ09
 8ww=
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="40418042"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jul 2019 05:02:17 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 31 Jul 2019 05:02:17 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Wed, 31 Jul 2019 05:02:15 -0700
Date: Wed, 31 Jul 2019 14:01:21 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH] hwrng: Use device-managed registration API
Message-ID: <20190731120121.yarswvuz3avyc6re@M43218.corp.atmel.com>
Mail-Followup-To: Chuhong Yuan <hslester96@gmail.com>,
 Matt Mackall <mpm@selenic.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>,
 Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Deepak Saxena <dsaxena@plexity.net>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Patrice Chotard <patrice.chotard@st.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
References: <20190725080155.19875-1-hslester96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725080155.19875-1-hslester96@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_050220_667696_0699B5E8 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Deepak Saxena <dsaxena@plexity.net>, Benjamin
 Herrenschmidt <benh@kernel.crashing.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?utf-8?Q?=C5=81ukasz?=
 Stelmach <l.stelmach@samsung.com>, Krzysztof
 Kozlowski <krzk@kernel.org>, Patrice Chotard <patrice.chotard@st.com>,
 linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Matt Mackall <mpm@selenic.com>, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 04:01:55PM +0800, Chuhong Yuan wrote:
> External E-Mail
> 
> 
> Use devm_hwrng_register to simplify the implementation.
> Manual unregistration and some remove functions can be
> removed now.
> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
>  drivers/char/hw_random/atmel-rng.c     |  3 +--

Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

Thanks

>  drivers/char/hw_random/cavium-rng-vf.c | 11 +----------
>  drivers/char/hw_random/exynos-trng.c   |  3 +--
>  drivers/char/hw_random/n2-drv.c        |  4 +---
>  drivers/char/hw_random/nomadik-rng.c   |  3 +--
>  drivers/char/hw_random/omap-rng.c      |  3 +--
>  drivers/char/hw_random/powernv-rng.c   | 10 +---------
>  drivers/char/hw_random/st-rng.c        |  4 +---
>  drivers/char/hw_random/xgene-rng.c     |  4 +---
>  9 files changed, 9 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/char/hw_random/atmel-rng.c b/drivers/char/hw_random/atmel-rng.c
> index 433426242b87..e55705745d5e 100644
> --- a/drivers/char/hw_random/atmel-rng.c
> +++ b/drivers/char/hw_random/atmel-rng.c
> @@ -86,7 +86,7 @@ static int atmel_trng_probe(struct platform_device *pdev)
>  	trng->rng.name = pdev->name;
>  	trng->rng.read = atmel_trng_read;
>  
> -	ret = hwrng_register(&trng->rng);
> +	ret = devm_hwrng_register(&pdev->dev, &trng->rng);
>  	if (ret)
>  		goto err_register;
>  
> @@ -103,7 +103,6 @@ static int atmel_trng_remove(struct platform_device *pdev)
>  {
>  	struct atmel_trng *trng = platform_get_drvdata(pdev);
>  
> -	hwrng_unregister(&trng->rng);
>  
>  	atmel_trng_disable(trng);
>  	clk_disable_unprepare(trng->clk);
> diff --git a/drivers/char/hw_random/cavium-rng-vf.c b/drivers/char/hw_random/cavium-rng-vf.c
> index 2d1352b67168..3de4a6a443ef 100644
> --- a/drivers/char/hw_random/cavium-rng-vf.c
> +++ b/drivers/char/hw_random/cavium-rng-vf.c
> @@ -67,7 +67,7 @@ static int cavium_rng_probe_vf(struct	pci_dev		*pdev,
>  
>  	pci_set_drvdata(pdev, rng);
>  
> -	ret = hwrng_register(&rng->ops);
> +	ret = devm_hwrng_register(&pdev->dev, &rng->ops);
>  	if (ret) {
>  		dev_err(&pdev->dev, "Error registering device as HWRNG.\n");
>  		return ret;
> @@ -76,14 +76,6 @@ static int cavium_rng_probe_vf(struct	pci_dev		*pdev,
>  	return 0;
>  }
>  
> -/* Remove the VF */
> -static void  cavium_rng_remove_vf(struct pci_dev *pdev)
> -{
> -	struct cavium_rng *rng;
> -
> -	rng = pci_get_drvdata(pdev);
> -	hwrng_unregister(&rng->ops);
> -}
>  
>  static const struct pci_device_id cavium_rng_vf_id_table[] = {
>  	{ PCI_DEVICE(PCI_VENDOR_ID_CAVIUM, 0xa033), 0, 0, 0},
> @@ -95,7 +87,6 @@ static struct pci_driver cavium_rng_vf_driver = {
>  	.name		= "cavium_rng_vf",
>  	.id_table	= cavium_rng_vf_id_table,
>  	.probe		= cavium_rng_probe_vf,
> -	.remove		= cavium_rng_remove_vf,
>  };
>  module_pci_driver(cavium_rng_vf_driver);
>  
> diff --git a/drivers/char/hw_random/exynos-trng.c b/drivers/char/hw_random/exynos-trng.c
> index 94235761955c..b4b52ab23b6b 100644
> --- a/drivers/char/hw_random/exynos-trng.c
> +++ b/drivers/char/hw_random/exynos-trng.c
> @@ -153,7 +153,7 @@ static int exynos_trng_probe(struct platform_device *pdev)
>  		goto err_clock;
>  	}
>  
> -	ret = hwrng_register(&trng->rng);
> +	ret = devm_hwrng_register(&pdev->dev, &trng->rng);
>  	if (ret) {
>  		dev_err(&pdev->dev, "Could not register hwrng device.\n");
>  		goto err_register;
> @@ -179,7 +179,6 @@ static int exynos_trng_remove(struct platform_device *pdev)
>  {
>  	struct exynos_trng_dev *trng =  platform_get_drvdata(pdev);
>  
> -	hwrng_unregister(&trng->rng);
>  	clk_disable_unprepare(trng->clk);
>  
>  	pm_runtime_put_sync(&pdev->dev);
> diff --git a/drivers/char/hw_random/n2-drv.c b/drivers/char/hw_random/n2-drv.c
> index d4cab105796f..2d256b3470db 100644
> --- a/drivers/char/hw_random/n2-drv.c
> +++ b/drivers/char/hw_random/n2-drv.c
> @@ -768,7 +768,7 @@ static int n2rng_probe(struct platform_device *op)
>  	np->hwrng.data_read = n2rng_data_read;
>  	np->hwrng.priv = (unsigned long) np;
>  
> -	err = hwrng_register(&np->hwrng);
> +	err = devm_hwrng_register(&pdev->dev, &np->hwrng);
>  	if (err)
>  		goto out_hvapi_unregister;
>  
> @@ -793,8 +793,6 @@ static int n2rng_remove(struct platform_device *op)
>  
>  	cancel_delayed_work_sync(&np->work);
>  
> -	hwrng_unregister(&np->hwrng);
> -
>  	sun4v_hvapi_unregister(HV_GRP_RNG);
>  
>  	return 0;
> diff --git a/drivers/char/hw_random/nomadik-rng.c b/drivers/char/hw_random/nomadik-rng.c
> index fc0f6b0cb80d..74ed29f42e4f 100644
> --- a/drivers/char/hw_random/nomadik-rng.c
> +++ b/drivers/char/hw_random/nomadik-rng.c
> @@ -57,7 +57,7 @@ static int nmk_rng_probe(struct amba_device *dev, const struct amba_id *id)
>  	if (!base)
>  		goto out_release;
>  	nmk_rng.priv = (unsigned long)base;
> -	ret = hwrng_register(&nmk_rng);
> +	ret = devm_hwrng_register(&dev->dev, &nmk_rng);
>  	if (ret)
>  		goto out_release;
>  	return 0;
> @@ -71,7 +71,6 @@ static int nmk_rng_probe(struct amba_device *dev, const struct amba_id *id)
>  
>  static int nmk_rng_remove(struct amba_device *dev)
>  {
> -	hwrng_unregister(&nmk_rng);
>  	amba_release_regions(dev);
>  	clk_disable(rng_clk);
>  	return 0;
> diff --git a/drivers/char/hw_random/omap-rng.c b/drivers/char/hw_random/omap-rng.c
> index e9b6ac61fb7f..b27f39688b5e 100644
> --- a/drivers/char/hw_random/omap-rng.c
> +++ b/drivers/char/hw_random/omap-rng.c
> @@ -500,7 +500,7 @@ static int omap_rng_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_register;
>  
> -	ret = hwrng_register(&priv->rng);
> +	ret = devm_hwrng_register(&pdev->dev, &priv->rng);
>  	if (ret)
>  		goto err_register;
>  
> @@ -525,7 +525,6 @@ static int omap_rng_remove(struct platform_device *pdev)
>  {
>  	struct omap_rng_dev *priv = platform_get_drvdata(pdev);
>  
> -	hwrng_unregister(&priv->rng);
>  
>  	priv->pdata->cleanup(priv);
>  
> diff --git a/drivers/char/hw_random/powernv-rng.c b/drivers/char/hw_random/powernv-rng.c
> index f2e8272e276a..8da1d7917bdc 100644
> --- a/drivers/char/hw_random/powernv-rng.c
> +++ b/drivers/char/hw_random/powernv-rng.c
> @@ -33,18 +33,11 @@ static struct hwrng powernv_hwrng = {
>  	.read = powernv_rng_read,
>  };
>  
> -static int powernv_rng_remove(struct platform_device *pdev)
> -{
> -	hwrng_unregister(&powernv_hwrng);
> -
> -	return 0;
> -}
> -
>  static int powernv_rng_probe(struct platform_device *pdev)
>  {
>  	int rc;
>  
> -	rc = hwrng_register(&powernv_hwrng);
> +	rc = devm_hwrng_register(&pdev->dev, &powernv_hwrng);
>  	if (rc) {
>  		/* We only register one device, ignore any others */
>  		if (rc == -EEXIST)
> @@ -70,7 +63,6 @@ static struct platform_driver powernv_rng_driver = {
>  		.of_match_table = powernv_rng_match,
>  	},
>  	.probe	= powernv_rng_probe,
> -	.remove = powernv_rng_remove,
>  };
>  module_platform_driver(powernv_rng_driver);
>  
> diff --git a/drivers/char/hw_random/st-rng.c b/drivers/char/hw_random/st-rng.c
> index bd6a98b3479b..863448360a7d 100644
> --- a/drivers/char/hw_random/st-rng.c
> +++ b/drivers/char/hw_random/st-rng.c
> @@ -102,7 +102,7 @@ static int st_rng_probe(struct platform_device *pdev)
>  
>  	dev_set_drvdata(&pdev->dev, ddata);
>  
> -	ret = hwrng_register(&ddata->ops);
> +	ret = devm_hwrng_register(&pdev->dev, &ddata->ops);
>  	if (ret) {
>  		dev_err(&pdev->dev, "Failed to register HW RNG\n");
>  		clk_disable_unprepare(clk);
> @@ -118,8 +118,6 @@ static int st_rng_remove(struct platform_device *pdev)
>  {
>  	struct st_rng_data *ddata = dev_get_drvdata(&pdev->dev);
>  
> -	hwrng_unregister(&ddata->ops);
> -
>  	clk_disable_unprepare(ddata->clk);
>  
>  	return 0;
> diff --git a/drivers/char/hw_random/xgene-rng.c b/drivers/char/hw_random/xgene-rng.c
> index 8c6f9f63da5e..7e568db87ae2 100644
> --- a/drivers/char/hw_random/xgene-rng.c
> +++ b/drivers/char/hw_random/xgene-rng.c
> @@ -361,7 +361,7 @@ static int xgene_rng_probe(struct platform_device *pdev)
>  
>  	xgene_rng_func.priv = (unsigned long) ctx;
>  
> -	rc = hwrng_register(&xgene_rng_func);
> +	rc = devm_hwrng_register(&pdev->dev, &xgene_rng_func);
>  	if (rc) {
>  		dev_err(&pdev->dev, "RNG registering failed error %d\n", rc);
>  		if (!IS_ERR(ctx->clk))
> @@ -375,7 +375,6 @@ static int xgene_rng_probe(struct platform_device *pdev)
>  			rc);
>  		if (!IS_ERR(ctx->clk))
>  			clk_disable_unprepare(ctx->clk);
> -		hwrng_unregister(&xgene_rng_func);
>  		return rc;
>  	}
>  
> @@ -392,7 +391,6 @@ static int xgene_rng_remove(struct platform_device *pdev)
>  		dev_err(&pdev->dev, "RNG init wakeup failed error %d\n", rc);
>  	if (!IS_ERR(ctx->clk))
>  		clk_disable_unprepare(ctx->clk);
> -	hwrng_unregister(&xgene_rng_func);
>  
>  	return rc;
>  }
> -- 
> 2.20.1
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
