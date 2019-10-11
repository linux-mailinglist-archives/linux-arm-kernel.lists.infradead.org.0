Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33275D3FCD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 14:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUikcuFyiVp4Bc/XXURn52fy1yK8JFKxPTJ8d9m8z6o=; b=LBF9481F3rCf55
	0NPmJ2u5UPUvT9rqBXctZ5Yu/DtCoYSULt6j/9ShH+PHdZx2q6bgyF+gYZs/nsOUn1H7IES8GfI1p
	iGspJtYp+8VQl4t8nNsLq/n1IpRvovHnCj0PfqHVU6OzqvmDl26mONEbgMBX5SaHjhTmnCWFOtF4W
	4Px3kaxZv4TZFPSlaMlfRBJ/GvH6WzHBGKcrEmnafEwruREXHqSHxdKgzsIGKGDe/nV5czKTkmGnD
	5HeU+ulQTZQMUzI0n3nxgvXdJTRUapHkhavem7khcm0FqycFRQj3LJbErUtSzZ4ZsObFArn1omORp
	SXR7TdULMQx9HnF4kvdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuF6-00005l-K4; Fri, 11 Oct 2019 12:42:00 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuEX-00089U-Lk
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 12:41:28 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: A8xT/E/CVKbbleRDp0WY8b2d2QofEf8hYYdpccP6Q+ZwmJV4ZxIoEKj/2RBL7uGK34Eqe9S82e
 hsPTIsZWPDbX/WfSMIp2P9fxbWwhXaND8GlHmAvFj4Jp3YlNjKdk3oZx/XbDHkDiY82XZBSp8y
 +2e+lWXld7lUhJG/5e7gfCpSWZzkxw3ExOmVJ3rgy8jW1K92LdM/SFAb5lWM7IDpVWEcrQcXzf
 p+MbQt8XC9p1jQlmk9KSCWZG7Zwl3mUAOgycp25b6EazWaScty6b7tEkyFs/flZG2VSA7Ex8yU
 ap8=
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="51296468"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Oct 2019 05:41:22 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 11 Oct 2019 05:41:17 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 11 Oct 2019 05:41:17 -0700
Date: Fri, 11 Oct 2019 14:41:16 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Subject: Re: [PATCH 2/2] mmc: sdhci-of-at91: add DT property to enable
 calibration on full reset
Message-ID: <20191011124115.a3qqkhxri6aaydcl@M43218.corp.atmel.com>
Mail-Followup-To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, ulf.hansson@linaro.org,
 adrian.hunter@intel.com
References: <4d269f30b1122487a2b5c8b48e24f78f2b75a509.1570537903.git.nicolas.ferre@microchip.com>
 <d25c8f909d039938a5696e8de32396cf2aaf54b7.1570537903.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d25c8f909d039938a5696e8de32396cf2aaf54b7.1570537903.git.nicolas.ferre@microchip.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_054125_767862_BF5A5164 
X-CRM114-Status: GOOD (  20.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, adrian.hunter@intel.com, robh+dt@kernel.org,
 ulf.hansson@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 02:34:32PM +0200, Nicolas Ferre wrote:
> Add a property to keep the analog calibration cell powered.
> This feature is specific to the Microchip SDHCI IP and outside
> of the standard SDHCI register map.
> 
> By always keeping it on, after a full reset sequence, we make sure
> that this feature is activated and not disabled.
> 
> We expose a hardware property to the DT as this feature can be used
> to adapt SDHCI behavior vs. how the SDCAL SoC pin is connected
> on the board.
> 
> Note that managing properly this property would reduce
> power consumption on some SAMA5D2 SiP revisions.
> 
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

Thanks

Ludovic

> ---
>  drivers/mmc/host/sdhci-of-at91.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
> index e7d1920729fb..9571c4a882a9 100644
> --- a/drivers/mmc/host/sdhci-of-at91.c
> +++ b/drivers/mmc/host/sdhci-of-at91.c
> @@ -27,6 +27,9 @@
>  #define SDMMC_CACR	0x230
>  #define		SDMMC_CACR_CAPWREN	BIT(0)
>  #define		SDMMC_CACR_KEY		(0x46 << 8)
> +#define SDMMC_CALCR	0x240
> +#define		SDMMC_CALCR_EN		BIT(0)
> +#define		SDMMC_CALCR_ALWYSON	BIT(4)
>  
>  #define SDHCI_AT91_PRESET_COMMON_CONF	0x400 /* drv type B, programmable clock mode */
>  
> @@ -35,6 +38,7 @@ struct sdhci_at91_priv {
>  	struct clk *gck;
>  	struct clk *mainck;
>  	bool restore_needed;
> +	bool cal_always_on;
>  };
>  
>  static void sdhci_at91_set_force_card_detect(struct sdhci_host *host)
> @@ -116,10 +120,17 @@ static void sdhci_at91_set_uhs_signaling(struct sdhci_host *host,
>  
>  static void sdhci_at91_reset(struct sdhci_host *host, u8 mask)
>  {
> +	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> +	struct sdhci_at91_priv *priv = sdhci_pltfm_priv(pltfm_host);
> +
>  	sdhci_reset(host, mask);
>  
>  	if (host->mmc->caps & MMC_CAP_NONREMOVABLE)
>  		sdhci_at91_set_force_card_detect(host);
> +
> +	if (priv->cal_always_on && (mask & SDHCI_RESET_ALL))
> +		sdhci_writel(host, SDMMC_CALCR_ALWYSON | SDMMC_CALCR_EN,
> +			     SDMMC_CALCR);
>  }
>  
>  static const struct sdhci_ops sdhci_at91_sama5d2_ops = {
> @@ -345,6 +356,14 @@ static int sdhci_at91_probe(struct platform_device *pdev)
>  
>  	priv->restore_needed = false;
>  
> +	/*
> +	 * if SDCAL pin is wrongly connected, we must enable
> +	 * the analog calibration cell permanently.
> +	 */
> +	priv->cal_always_on =
> +		device_property_read_bool(&pdev->dev,
> +					  "microchip,sdcal-inverted");
> +
>  	ret = mmc_of_parse(host->mmc);
>  	if (ret)
>  		goto clocks_disable_unprepare;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
