Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA2B110444
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 19:30:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z//tcA/ZFUs/D6eCCOJ1Un4ZRxBxKFckfZLDXOto8/8=; b=aM7PSx5ubqZk3t
	YkRLxJVbWURHz2O5i2F9Gz2pcADHPemit1ndl+7GWBfLFBw0tjA9aaZ8RSvNJqhCiFoVM6hettKfZ
	2lRFdeceiRnq0KyNazypMDcq6557wDx2zaNNAvYqfMspvXaQ482rA903NBpTVTVWOWoIbuPbWEbqe
	iarZIFZQ23C3DjJkuH52c120BgStwVw4SnBEOlIIWMpVrUg3zKKI3h//dGqMScy+xBFFXPTL/yLnv
	9SLproQGGj8RTZoCfh7l7pXWer8Yn5gl6I6kRyU3o0oSC/Y2wGy26MdqQTewg64SGRmwiGXojDMY3
	bswTXpYSdDT/tgAXFwQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icCwm-0003ZR-BY; Tue, 03 Dec 2019 18:30:52 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icCwg-0003Yf-UF
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 18:30:48 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xB3ITmIe106750;
 Tue, 3 Dec 2019 12:29:48 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1575397788;
 bh=Gw61uIAfava2/lngpu+oIWDBGa+goOCXS+FsGSp85fc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=UYEdb/3CyAB5c31EColIaixSWffTaKrqzACvQleAmF4c+NQ1SlH7q5ixI9j5Yvf6M
 1UGO+MO0e4WDvxz27Xq2Uh9aFBlE7WhIaJlGyC2J4p+mgtm9tyrnyow4nzRSLjl72q
 jlw0QGDfb+72bYwN0sEPEQCNz/WteaYd9nXEF4ug=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB3ITmRf077980;
 Tue, 3 Dec 2019 12:29:48 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 3 Dec
 2019 12:29:48 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 3 Dec 2019 12:29:48 -0600
Received: from [10.1.3.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB3ITjfK031299;
 Tue, 3 Dec 2019 12:29:46 -0600
Subject: Re: [PATCH] drm/tilcdc: Switch to using GPIO descriptors
To: Linus Walleij <linus.walleij@linaro.org>,
 <dri-devel@lists.freedesktop.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
References: <20191203130916.155779-1-linus.walleij@linaro.org>
From: Jyri Sarha <jsarha@ti.com>
Openpgp: preference=signencrypt
Autocrypt: addr=jsarha@ti.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <b3e3e44b-3061-7531-4e88-7ee9b44f40a7@ti.com>
Date: Tue, 3 Dec 2019 20:29:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191203130916.155779-1-linus.walleij@linaro.org>
Content-Language: en-GB
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_103047_063666_20D9A913 
X-CRM114-Status: GOOD (  24.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>,
 David Lechner <david@lechnology.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/12/2019 15:09, Linus Walleij wrote:
> The TI LCDC picks a GPIO line from the device tree to use
> for DPMS power on/off. We can switch this to use a GPIO
> descriptor pretty easily. Make sure to request the GPIO
> "as is" so that the DPMS state that we start (boot) in is
> preserved.
> 

Hmmm, I have been considering ditching this driver all together since no
mainline platform has ever used it. Also, if anybody ever wants to
connect tfp410 to tilcdc, he should use drm/bridge/ti-tfp410.c instead.

But since the patch is there, maybe I should pick it up, and remove the
bundled driver later a bit later.

BR,
Jyri

> Cc: Jyri Sarha <jsarha@ti.com>
> Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
> Cc: David Lechner <david@lechnology.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  drivers/gpu/drm/tilcdc/tilcdc_tfp410.c | 30 ++++++++++++--------------
>  1 file changed, 14 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c b/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c
> index 530edb3b51cc..41cd9a7c4316 100644
> --- a/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c
> +++ b/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c
> @@ -4,9 +4,8 @@
>   * Author: Rob Clark <robdclark@gmail.com>
>   */
>  
> -#include <linux/gpio.h>
> +#include <linux/gpio/consumer.h>
>  #include <linux/mod_devicetable.h>
> -#include <linux/of_gpio.h>
>  #include <linux/pinctrl/consumer.h>
>  #include <linux/platform_device.h>
>  
> @@ -21,7 +20,7 @@
>  struct tfp410_module {
>  	struct tilcdc_module base;
>  	struct i2c_adapter *i2c;
> -	int gpio;
> +	struct gpio_desc *power_gpiod;
>  };
>  #define to_tfp410_module(x) container_of(x, struct tfp410_module, base)
>  
> @@ -58,10 +57,10 @@ static void tfp410_encoder_dpms(struct drm_encoder *encoder, int mode)
>  
>  	if (mode == DRM_MODE_DPMS_ON) {
>  		DBG("Power on");
> -		gpio_direction_output(tfp410_encoder->mod->gpio, 1);
> +		gpiod_direction_output(tfp410_encoder->mod->power_gpiod, 1);
>  	} else {
>  		DBG("Power off");
> -		gpio_direction_output(tfp410_encoder->mod->gpio, 0);
> +		gpiod_direction_output(tfp410_encoder->mod->power_gpiod, 0);
>  	}
>  
>  	tfp410_encoder->dpms = mode;
> @@ -318,17 +317,17 @@ static int tfp410_probe(struct platform_device *pdev)
>  
>  	of_node_put(i2c_node);
>  
> -	tfp410_mod->gpio = of_get_named_gpio_flags(node, "powerdn-gpio",
> -			0, NULL);
> -	if (tfp410_mod->gpio < 0) {
> -		dev_warn(&pdev->dev, "No power down GPIO\n");
> -	} else {
> -		ret = gpio_request(tfp410_mod->gpio, "DVI_PDn");
> -		if (ret) {
> -			dev_err(&pdev->dev, "could not get DVI_PDn gpio\n");
> -			goto fail_adapter;
> -		}
> +	tfp410_mod->power_gpiod = devm_gpiod_get_optional(&pdev->dev,
> +							  "powerdn",
> +							  GPIOD_ASIS);
> +	if (IS_ERR(tfp410_mod->power_gpiod)) {
> +		dev_err(&pdev->dev, "could not get DVI_PDn gpio\n");
> +		goto fail_adapter;
>  	}
> +	if (!tfp410_mod->power_gpiod)
> +		dev_warn(&pdev->dev, "No power down GPIO\n");
> +	else
> +		gpiod_set_consumer_name(tfp410_mod->power_gpiod, "DVI_PDn");
>  
>  	return 0;
>  
> @@ -346,7 +345,6 @@ static int tfp410_remove(struct platform_device *pdev)
>  	struct tfp410_module *tfp410_mod = to_tfp410_module(mod);
>  
>  	i2c_put_adapter(tfp410_mod->i2c);
> -	gpio_free(tfp410_mod->gpio);
>  
>  	tilcdc_module_cleanup(mod);
>  
> 


-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
