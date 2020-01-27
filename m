Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0372514A013
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 09:51:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXYqOVgowgWS1GQ9GHohwTCH08bAaiAQWb3Wu5RHwxU=; b=da6j25P6QdALI3
	OplNvQnpzdVLhGfLH+a498AuiwHmOo+G460/GDQqch49CQGYX0aG6KUBryw1oBzU4hxMj3ogjZDOe
	ToShIfGgBKzLvqB0mxAr1nt81F6EZfBustxNCXlcH7zt8Cvc9U+aJlCEBHapfIkYlXANVNGmlWl5D
	4s9q0U/ZNU/QqlrkWfq/5PrJl7iLz6HN1Bk30Sl64hyPJhEf6MdxiljzFb/dzKRnN7oaoVruguAoQ
	xZzZEfpjM75OWRLc3v0GtGWcYZF2LpxhBQPub2jnpp6d1fJ6LbayFjq3ACCREwqfJtP7zD5uB//VC
	7ZnrZ+VzJ1YYBcc+2Mpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw07K-0002NE-F4; Mon, 27 Jan 2020 08:51:34 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw079-0002ME-BO
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 08:51:24 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
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
IronPort-SDR: AxAwd0T3ZOmV0XLI2LYNOrI/YJoJkdhfnjSn5h5cXH3thlUN4Ju0axioMoSydwZrDv6iNwH1Y1
 UTnNmsXFX98ErPpA6hBTBPvCO70Rgu0z03tDTMuejhrkdicshIX7J9EBM6eB0cCQdynEQdnlJw
 y2vCPb12x4FERSVS7YSztdAjU4wE56wK1aT89TfpXsYXzPRKhDg/wIXDdTUudyGnhpt6phFFmA
 G9XTTHWYBrKAMsNt0zHR37PMj+vv7g1ppC0SS2VQ8sYDlFNNkIw6fjoa5cwMIMlrALNJoZy4cm
 TdE=
X-IronPort-AV: E=Sophos;i="5.70,369,1574146800"; d="scan'208";a="62246076"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Jan 2020 01:51:16 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 27 Jan 2020 01:51:14 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 27 Jan 2020 01:51:14 -0700
Date: Mon, 27 Jan 2020 09:50:49 +0100
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH v3 2/6] i2c: at91: implement i2c bus recovery
Message-ID: <20200127085049.itsxvqm5dlypzc4x@M43218.corp.atmel.com>
Mail-Followup-To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kamel.bouhara@bootlin.com, wsa@the-dreams.de,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
 robh@kernel.org, peda@axentia.se, linux@armlinux.org.uk
References: <20200115115422.17097-1-codrin.ciubotariu@microchip.com>
 <20200115115422.17097-3-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115115422.17097-3-codrin.ciubotariu@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_005123_430499_C91F1A4B 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 kamel.bouhara@bootlin.com, wsa@the-dreams.de, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, peda@axentia.se, linux@armlinux.org.uk,
 robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 01:54:18PM +0200, Codrin Ciubotariu wrote:
> From: Kamel Bouhara <kamel.bouhara@bootlin.com>
> 
> Implement i2c bus recovery when slaves devices might hold SDA low.
> In this case re-assign SCL/SDA to gpios and issue 9 dummy clock pulses
> until the slave release SDA.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

> ---
> 
> Changes in v3:
>  - removed unnecessary condition from info print;
>  - removed unneded declarations;
> 
> Changes in v2:
>  - called i2c_recover_bus() after an error occurs, if SDA is down;
>  - release gpios if recovery information is incomplete;
> 
>  drivers/i2c/busses/i2c-at91-master.c | 78 ++++++++++++++++++++++++++++
>  drivers/i2c/busses/i2c-at91.h        |  4 ++
>  2 files changed, 82 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
> index 7a862e00b475..0aba51a7df32 100644
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
> @@ -478,6 +480,7 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
>  	unsigned long time_left;
>  	bool has_unre_flag = dev->pdata->has_unre_flag;
>  	bool has_alt_cmd = dev->pdata->has_alt_cmd;
> +	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
>  
>  	/*
>  	 * WARNING: the TXCOMP bit in the Status Register is NOT a clear on
> @@ -637,6 +640,13 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
>  		at91_twi_write(dev, AT91_TWI_CR,
>  			       AT91_TWI_THRCLR | AT91_TWI_LOCKCLR);
>  	}
> +
> +	if (rinfo->get_sda && !(rinfo->get_sda(&dev->adapter))) {
> +		dev_dbg(dev->dev,
> +			"SDA is down; clear bus using gpio\n");
> +		i2c_recover_bus(&dev->adapter);
> +	}
> +
>  	return ret;
>  }
>  
> @@ -806,6 +816,70 @@ static int at91_twi_configure_dma(struct at91_twi_dev *dev, u32 phy_addr)
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
> +	    IS_ERR(rinfo->scl_gpiod) ||
> +	    IS_ERR(dev->pinctrl_pins_default) ||
> +	    IS_ERR(dev->pinctrl_pins_gpio)) {
> +		dev_info(&pdev->dev, "recovery information incomplete\n");
> +		if (!IS_ERR(rinfo->sda_gpiod)) {
> +			gpiod_put(rinfo->sda_gpiod);
> +			rinfo->sda_gpiod = NULL;
> +		}
> +		if (!IS_ERR(rinfo->scl_gpiod)) {
> +			gpiod_put(rinfo->scl_gpiod);
> +			rinfo->scl_gpiod = NULL;
> +		}
> +		return -EINVAL;
> +	}
> +
> +	dev_info(&pdev->dev, "using scl, sda for recovery\n");
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
> @@ -838,6 +912,10 @@ int at91_twi_probe_master(struct platform_device *pdev,
>  						     "i2c-analog-filter");
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
> index 977a67bc0f88..f57a6cab96b4 100644
> --- a/drivers/i2c/busses/i2c-at91.h
> +++ b/drivers/i2c/busses/i2c-at91.h
> @@ -151,6 +151,10 @@ struct at91_twi_dev {
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
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
