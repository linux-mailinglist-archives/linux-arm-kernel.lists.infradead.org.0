Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC211353DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 08:49:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SfiuSTTKFOsni+OLt0x/Y08A4r8Hdz8RZanjxLvdYKA=; b=sh82uamwy3TQ04
	cxaosGwZl2xHnPshMfh8CX7tboK7vwfx5gLEEwsRX6A/o33cFVMlfFOC1B5w8rr6Q5YQHPDf+mIFf
	jsQLqvD5Ituacp6SeOlj56uk9SdZGbO9vHec/F0htQx4IN/07YO3sIZzNwVbaP381zDzURt6Mq8oy
	Vs9cTMiJn5ZCb0G5ze7in69Z8k1SRYNnathxk8hiF2NDu/OOkhubGrzfyJVaYFfdTD2ZOYHj+p31T
	S+nwbGrmPk4CqL1DrRGPPIHSRcMUAdZ1pKwHLT8fk8nO1IoDnxCngHSvYepGwUn7PdUCnOkbeWiBz
	RWyJOUk49hJnKYvAmjlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSYv-0007Tz-IV; Thu, 09 Jan 2020 07:49:01 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSYl-0007TA-LW
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 07:48:53 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: rG1Whl6gGJ0wvj4joH9EGcUs6mAaYZ9l6hAj/qsmuIp8l+Z8h4ITGtskG3vkjGQxC+an+0UsR/
 TCsdTvsoFVGNsVs4nii1bsrwvqlODakTvaFWRt2TuUuqLOuCrnnm5I4EiGGloSMU1yWc56bQXN
 RYqLAjkDs6uzNqERXeEN9LqV6ybHvnqHoHhnDnHxKY9lXxaBU4mb3yp41hwTEEGl+z7R0d+y/z
 Hc/H6EMyw2GxJ4FvlyXI2n4X4bQKyU0OB1XfHfHMVD7KX9ddw0peK6Qj+MXOPEqzQKp3/MeCxG
 REI=
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="62680662"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jan 2020 00:48:50 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 9 Jan 2020 00:48:48 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 9 Jan 2020 00:48:48 -0700
Date: Thu, 9 Jan 2020 08:48:19 +0100
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Codrin Ciubotariu - M19940 <Codrin.Ciubotariu@microchip.com>
Subject: Re: [PATCH v2 2/6] i2c: at91: implement i2c bus recovery
Message-ID: <20200109074819.rhlaxg3sgwlng5xm@M43218.corp.atmel.com>
Mail-Followup-To: Codrin Ciubotariu - M19940 <Codrin.Ciubotariu@microchip.com>, 
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kamel.bouhara@bootlin.com" <kamel.bouhara@bootlin.com>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 Nicolas Ferre - M43238 <Nicolas.Ferre@microchip.com>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "robh@kernel.org" <robh@kernel.org>
References: <20200103094821.13185-1-codrin.ciubotariu@microchip.com>
 <20200103094821.13185-3-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200103094821.13185-3-codrin.ciubotariu@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_234851_719388_8DC78C61 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "kamel.bouhara@bootlin.com" <kamel.bouhara@bootlin.com>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 03, 2020 at 09:49:07AM +0000, Codrin Ciubotariu - M19940 wrote:
> From: Kamel Bouhara <kamel.bouhara@bootlin.com>
> 
> Implement i2c bus recovery when slaves devices might hold SDA low.
> In this case re-assign SCL/SDA to gpios and issue 9 dummy clock pulses
> until the slave release SDA.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> [codrin.ciubotariu@microchip.com: release gpios on error; move i2c_recover_bus]
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> ---
> 
> Changes in v2:
>  - called i2c_recover_bus() after an error occurs, if SDA is down;
>  - release gpios if recovery information is incomplete;
> 
>  drivers/i2c/busses/i2c-at91-master.c | 79 ++++++++++++++++++++++++++++
>  drivers/i2c/busses/i2c-at91.h        |  8 +++
>  2 files changed, 87 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
> index 7a862e00b475..c55e8ff35201 100644
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
> @@ -806,6 +816,71 @@ static int at91_twi_configure_dma(struct at91_twi_dev *dev, u32 phy_addr)
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
> +	dev_info(&pdev->dev, "using scl%s for recovery\n",
> +		 rinfo->sda_gpiod ? ",sda" : "");

Is it possible to have scl without sda? From the condition before, if
there is an error for sda or scl, an error is returned.

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
> @@ -838,6 +913,10 @@ int at91_twi_probe_master(struct platform_device *pdev,
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
> index 977a67bc0f88..eb335b71e775 100644
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
> @@ -171,6 +175,10 @@ void at91_init_twi_bus_master(struct at91_twi_dev *dev);
>  int at91_twi_probe_master(struct platform_device *pdev, u32 phy_addr,
>  			  struct at91_twi_dev *dev);
>  

Wrong names here:

> +void at91_twi_prepare_recovery(struct i2c_adapter *adap);
at91_prepare_twi_recovery

> +void at91_twi_unprepare_recovery(struct i2c_adapter *adap);
at91_unprepare_twi_recovery

> +void at91_twi_init_recovery_info(struct at91_twi_dev *dev);
at91_init_twi_recovery_info

Are these declarations still needed?

Ludovic

> +
>  #ifdef CONFIG_I2C_AT91_SLAVE_EXPERIMENTAL
>  void at91_init_twi_bus_slave(struct at91_twi_dev *dev);
>  int at91_twi_probe_slave(struct platform_device *pdev, u32 phy_addr,
> -- 
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
