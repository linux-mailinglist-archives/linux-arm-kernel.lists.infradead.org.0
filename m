Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B4BD10A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 15:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cruggJq3Jp32kyKB3AiNjwGn6aVDMf0U9BSMyXv6WDQ=; b=gAyIx1jUmN/uBG
	5Al4oUy2j8cRyTQGRJaanbUCejR6TFBkdWG8mwQYSCe3m6V6iXN69b5/Mk2V3MvZXe2E27Qx144Kv
	1Otyavh0My1bMkZHRlbSZxzxlet99oM9G8p6SzWe/vp5DQgkRhLzMZSMnWzVCTgl0bNtiW0pZltYl
	zUxeXECQNXh8Lsa9NitcLv1mceQmIEm37gDjN9EjExoOARye4PKN8oPACXL0/4ErFK2w+RQrOYmLB
	usC6De6pH9YPHv6qqMSVJUKRe+2abfiQHRgjIwEV5iIh4WKkuy3rFtdeaVscc6ksdpYjjkMZ99d5j
	izb/aeqIsB43QLr4YHug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iICQr-0006wp-HO; Wed, 09 Oct 2019 13:55:13 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iICQY-0006vm-VR
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 13:54:59 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 2Xl7UaHbX/XBwKudh3GNDw3t7vZb5xSHn+qO3PjAJXY1cjVXcwlc1uVVmakt6K5huOLo6QWmcf
 blVmeni2K07fxDUzTNq62aDW2f/CZkCmlQ6on9DkCw2+c7McLMRqJFMGhHbJSNc4eQWifsD5+O
 guWOQJUPi91uhJyZsHbxwYQOHoD2lUPQY3wmZ0v25wjGgpsJijEd27qA+Ekp2qlS+9cxrrq+if
 bK1sBYo8EpwivEeMKpf0Dzff1qltqg7iRQ8Ij94MhY8BqkSVCQrWUdVSx1gUK2Ba8SM3qa2yp2
 8c4=
X-IronPort-AV: E=Sophos;i="5.67,276,1566889200"; d="scan'208";a="53595269"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Oct 2019 06:54:52 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 9 Oct 2019 06:54:52 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Wed, 9 Oct 2019 06:54:51 -0700
Date: Wed, 9 Oct 2019 15:55:00 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 2/4] i2c: at91: implement i2c bus recovery
Message-ID: <20191009135500.ufkxcemccwfcfys7@M43218.corp.atmel.com>
Mail-Followup-To: Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Wolfram Sang <wsa@the-dreams.de>, linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20191002144658.7718-1-kamel.bouhara@bootlin.com>
 <20191002144658.7718-3-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002144658.7718-3-kamel.bouhara@bootlin.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_065456_440558_211C7064 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Wolfram Sang <wsa@the-dreams.de>, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, Thomas
 Petazzoni <thomas.petazzoni@bootlin.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 04:46:56PM +0200, Kamel Bouhara wrote:
> External E-Mail
> 
> 
> Implement i2c bus recovery when slaves devices might hold SDA low.
> In this case re-assign SCL/SDA to gpios and issue 9 dummy clock pulses
> until the slave release SDA.
> 

Hi Kamel,

Thanks for adding this new feature. As I see patches only for sama5d3 and
sama5d4, I assume it has not been tested with a sama5d2, isn't it?

I doubt it works with a sama5d2 because of the pinctrl. I also wonder if it can
work if we add .strict = true to pinmux_ops which is something plan for the
future...

Are you able to test these points? It would be nice to be aware of
possible side effects.

Regards

Ludovic

> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  drivers/i2c/busses/i2c-at91-master.c | 63 ++++++++++++++++++++++++++++
>  drivers/i2c/busses/i2c-at91.h        |  8 ++++
>  2 files changed, 71 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
> index a3fcc35ffd3b..df5bb93f952d 100644
> --- a/drivers/i2c/busses/i2c-at91-master.c
> +++ b/drivers/i2c/busses/i2c-at91-master.c
> @@ -18,11 +18,13 @@
>  #include <linux/dma-mapping.h>
>  #include <linux/dmaengine.h>
>  #include <linux/err.h>
> +#include <linux/gpio/consumer.h>
>  #include <linux/i2c.h>
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> +#include <linux/pinctrl/consumer.h>
>  #include <linux/platform_device.h>
>  #include <linux/platform_data/dma-atmel.h>
>  #include <linux/pm_runtime.h>
> @@ -768,6 +770,63 @@ static int at91_twi_configure_dma(struct at91_twi_dev *dev, u32 phy_addr)
>  	return ret;
>  }
>  
> +static void at91_prepare_twi_recovery(struct i2c_adapter *adap)
> +{
> +	struct at91_twi_dev *dev = i2c_get_adapdata(adap);
> +
> +	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_gpio);
> +}
> +
> +static void at91_unprepare_twi_recovery(struct i2c_adapter *adap)
> +{
> +	struct at91_twi_dev *dev = i2c_get_adapdata(adap);
> +
> +	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_default);
> +}
> +
> +static int at91_init_twi_recovery_info(struct platform_device *pdev,
> +				       struct at91_twi_dev *dev)
> +{
> +	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
> +
> +	dev->pinctrl = devm_pinctrl_get(&pdev->dev);
> +	if (!dev->pinctrl || IS_ERR(dev->pinctrl)) {
> +		dev_info(dev->dev, "can't get pinctrl, bus recovery not supported\n");
> +		return PTR_ERR(dev->pinctrl);
> +	}
> +
> +	dev->pinctrl_pins_default = pinctrl_lookup_state(dev->pinctrl,
> +							 PINCTRL_STATE_DEFAULT);
> +	dev->pinctrl_pins_gpio = pinctrl_lookup_state(dev->pinctrl,
> +						      "gpio");
> +	rinfo->sda_gpiod = devm_gpiod_get(&pdev->dev, "sda", GPIOD_IN);
> +	if (PTR_ERR(rinfo->sda_gpiod) == -EPROBE_DEFER)
> +		return -EPROBE_DEFER;
> +
> +	rinfo->scl_gpiod = devm_gpiod_get(&pdev->dev, "scl",
> +					  GPIOD_OUT_HIGH_OPEN_DRAIN);
> +	if (PTR_ERR(rinfo->scl_gpiod) == -EPROBE_DEFER)
> +		return -EPROBE_DEFER;
> +
> +	if (IS_ERR(rinfo->sda_gpiod) ||
> +		   IS_ERR(rinfo->scl_gpiod) ||
> +		   IS_ERR(dev->pinctrl_pins_default) ||
> +		   IS_ERR(dev->pinctrl_pins_gpio)) {
> +		dev_info(&pdev->dev, "recovery information incomplete\n");
> +		return -EINVAL;
> +	}
> +
> +	dev_info(&pdev->dev, "using scl%s for recovery\n",
> +		 rinfo->sda_gpiod ? ",sda" : "");
> +
> +	rinfo->prepare_recovery = at91_prepare_twi_recovery;
> +	rinfo->unprepare_recovery = at91_unprepare_twi_recovery;
> +	rinfo->recover_bus = i2c_generic_scl_recovery;
> +	dev->adapter.bus_recovery_info = rinfo;
> +
> +	return 0;
> +}
> +
>  int at91_twi_probe_master(struct platform_device *pdev,
>  			  u32 phy_addr, struct at91_twi_dev *dev)
>  {
> @@ -795,6 +854,10 @@ int at91_twi_probe_master(struct platform_device *pdev,
>  
>  	at91_calc_twi_clock(dev);
>  
> +	rc = at91_init_twi_recovery_info(pdev, dev);
> +	if (rc == -EPROBE_DEFER)
> +		return rc;
> +
>  	dev->adapter.algo = &at91_twi_algorithm;
>  	dev->adapter.quirks = &at91_twi_quirks;
>  
> diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
> index 499b506f6128..b89dab55e776 100644
> --- a/drivers/i2c/busses/i2c-at91.h
> +++ b/drivers/i2c/busses/i2c-at91.h
> @@ -141,6 +141,10 @@ struct at91_twi_dev {
>  	u32 fifo_size;
>  	struct at91_twi_dma dma;
>  	bool slave_detected;
> +	struct i2c_bus_recovery_info rinfo;
> +	struct pinctrl *pinctrl;
> +	struct pinctrl_state *pinctrl_pins_default;
> +	struct pinctrl_state *pinctrl_pins_gpio;
>  #ifdef CONFIG_I2C_AT91_SLAVE_EXPERIMENTAL
>  	unsigned smr;
>  	struct i2c_client *slave;
> @@ -158,6 +162,10 @@ void at91_init_twi_bus_master(struct at91_twi_dev *dev);
>  int at91_twi_probe_master(struct platform_device *pdev, u32 phy_addr,
>  			  struct at91_twi_dev *dev);
>  
> +void at91_twi_prepare_recovery(struct i2c_adapter *adap);
> +void at91_twi_unprepare_recovery(struct i2c_adapter *adap);
> +void at91_twi_init_recovery_info(struct at91_twi_dev *dev);
> +
>  #ifdef CONFIG_I2C_AT91_SLAVE_EXPERIMENTAL
>  void at91_init_twi_bus_slave(struct at91_twi_dev *dev);
>  int at91_twi_probe_slave(struct platform_device *pdev, u32 phy_addr,
> -- 
> 2.23.0
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
