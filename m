Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D91CD11C307
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 03:10:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mDIfusl6AVXTSCH4nASRH2M7f9jaEySR4Xu4VQU/lk=; b=KgLTJn3W8UDWYn
	jdt28w6neEU6YVEhWmkinxAD/o7Yqmwcq+YT4pSTjC4/V/Nn1o6P6xM3dJTIeTQxScB9eGxt8no5l
	vAXR/j5aZimdxSIBjaPO2gkjZ1B0ak5oJrC3eUJ3wBNS4KswTPqw3nz6A0BowR4PX7yNpKOQSrmKB
	DF1K2nKYPdc5P9BSacSJ5f7t+9XfXiH0CEj/hoo47y4hzhTrReobfR1Ut6I1rXfS7WoENpjmxNSla
	cbucV/Elsbxk2a7aDx2Gv0bAISCaw9hh4A6Wvr+Xkznr7JfG0GP2soFPYjGeiBFY0sYp9J9cSacHq
	j1dBXh0nQQQLf+gq0Edw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifDvt-0000VU-66; Thu, 12 Dec 2019 02:10:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifDvi-0000Tc-M6; Thu, 12 Dec 2019 02:10:16 +0000
X-UUID: d10d9ba7de7c4c5698d0a1a33dabf7c6-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=VpgZcjR1SsBox1/HBPJxCX6RUerx/cuwQ7AnJYi8EIw=; 
 b=Z5p2DvWal3e/7IeGOleH+vXEvlNBDBTrfvFXgvC1bwpuKZsaIBKJOuDNG8VbYyi/rYl0kdsNR849fB5vwgiSrbgJzNZSWrm5rQEZVXiL5KFX9eKcxlg0esk34IaCRdT1su7AqznzmbufOiJcKrW6cdhI2yqYV34Zf1wKI/nwVh0=;
X-UUID: d10d9ba7de7c4c5698d0a1a33dabf7c6-20191211
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 302151473; Wed, 11 Dec 2019 18:10:12 -0800
Received: from MTKMBS32N2.mediatek.inc (172.27.4.72) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 18:10:26 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS32N2.mediatek.inc
 (172.27.4.72) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 12 Dec 2019 10:05:23 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 10:10:06 +0800
Message-ID: <1576116600.21256.3.camel@mhfsdcap03>
Subject: Re: [PATCH v2 4/4] usb: usb3503: Convert to use GPIO descriptors
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Date: Thu, 12 Dec 2019 10:10:00 +0800
In-Reply-To: <20191211145226.25074-1-m.szyprowski@samsung.com>
References: <20191211145054.24835-1-m.szyprowski@samsung.com>
 <CGME20191211145231eucas1p29d4e0ed105274c79682b48a613b45904@eucas1p2.samsung.com>
 <20191211145226.25074-1-m.szyprowski@samsung.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3AA4084B10160E7ED06A631047B49B5C3DEDD960766FE10618DCAC976FA6C5572000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_181014_737363_9F5BE408 
X-CRM114-Status: GOOD (  21.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Stefan Agner <stefan@agner.ch>, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, linux-mediatek@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-12-11 at 15:52 +0100, Marek Szyprowski wrote:
> From: Linus Walleij <linus.walleij@linaro.org>
> 
> This converts the USB3503 to pick GPIO descriptors from the
> device tree instead of iteratively picking out GPIO number
> references and then referencing these from the global GPIO
> numberspace.
> 
> The USB3503 is only used from device tree among the in-tree
> platforms. If board files would still desire to use it they can
> provide machine descriptor tables.
> 
> Make sure to preserve semantics such as the reset delay
> introduced by Stefan.
> 
> Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>
> Cc: Marek Szyprowski <m.szyprowski@samsung.com>
> Cc: Stefan Agner <stefan@agner.ch>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> [mszyprow: invert the logic behind reset GPIO line]
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
>  drivers/usb/misc/usb3503.c            | 94 ++++++++++-----------------
>  include/linux/platform_data/usb3503.h |  3 -
>  2 files changed, 35 insertions(+), 62 deletions(-)
> 
> diff --git a/drivers/usb/misc/usb3503.c b/drivers/usb/misc/usb3503.c
> index 72f39a9751b5..116bd789e568 100644
> --- a/drivers/usb/misc/usb3503.c
> +++ b/drivers/usb/misc/usb3503.c
> @@ -7,11 +7,10 @@
>  
>  #include <linux/clk.h>
>  #include <linux/i2c.h>
> -#include <linux/gpio.h>
> +#include <linux/gpio/consumer.h>
>  #include <linux/delay.h>
>  #include <linux/slab.h>
>  #include <linux/module.h>
> -#include <linux/of_gpio.h>
>  #include <linux/platform_device.h>
>  #include <linux/platform_data/usb3503.h>
>  #include <linux/regmap.h>
> @@ -47,19 +46,19 @@ struct usb3503 {
>  	struct device		*dev;
>  	struct clk		*clk;
>  	u8	port_off_mask;
> -	int	gpio_intn;
> -	int	gpio_reset;
> -	int	gpio_connect;
> +	struct gpio_desc	*intn;
> +	struct gpio_desc 	*reset;
> +	struct gpio_desc 	*connect;
>  	bool	secondary_ref_clk;
>  };
>  
>  static int usb3503_reset(struct usb3503 *hub, int state)
>  {
> -	if (!state && gpio_is_valid(hub->gpio_connect))
> -		gpio_set_value_cansleep(hub->gpio_connect, 0);
> +	if (!state && hub->connect)
> +		gpiod_set_value_cansleep(hub->connect, 0);
>  
> -	if (gpio_is_valid(hub->gpio_reset))
> -		gpio_set_value_cansleep(hub->gpio_reset, state);
> +	if (hub->reset)
> +		gpiod_set_value_cansleep(hub->reset, !state);
What about preparing another patch for @state before this path?

>  
>  	/* Wait T_HUBINIT == 4ms for hub logic to stabilize */
>  	if (state)
> @@ -115,8 +114,8 @@ static int usb3503_connect(struct usb3503 *hub)
>  		}
>  	}
>  
> -	if (gpio_is_valid(hub->gpio_connect))
> -		gpio_set_value_cansleep(hub->gpio_connect, 1);
> +	if (hub->connect)
> +		gpiod_set_value_cansleep(hub->connect, 1);
>  
>  	hub->mode = USB3503_MODE_HUB;
>  	dev_info(dev, "switched to HUB mode\n");
> @@ -163,13 +162,11 @@ static int usb3503_probe(struct usb3503 *hub)
>  	int err;
>  	u32 mode = USB3503_MODE_HUB;
>  	const u32 *property;
> +	enum gpiod_flags flags;
>  	int len;
>  
>  	if (pdata) {
>  		hub->port_off_mask	= pdata->port_off_mask;
> -		hub->gpio_intn		= pdata->gpio_intn;
> -		hub->gpio_connect	= pdata->gpio_connect;
> -		hub->gpio_reset		= pdata->gpio_reset;
>  		hub->mode		= pdata->initial_mode;
>  	} else if (np) {
>  		u32 rate = 0;
> @@ -230,59 +227,38 @@ static int usb3503_probe(struct usb3503 *hub)
>  			}
>  		}
>  
> -		hub->gpio_intn	= of_get_named_gpio(np, "intn-gpios", 0);
> -		if (hub->gpio_intn == -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> -		hub->gpio_connect = of_get_named_gpio(np, "connect-gpios", 0);
> -		if (hub->gpio_connect == -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> -		hub->gpio_reset = of_get_named_gpio(np, "reset-gpios", 0);
> -		if (hub->gpio_reset == -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
>  		of_property_read_u32(np, "initial-mode", &mode);
>  		hub->mode = mode;
>  	}
>  
> -	if (hub->port_off_mask && !hub->regmap)
> -		dev_err(dev, "Ports disabled with no control interface\n");
> -
> -	if (gpio_is_valid(hub->gpio_intn)) {
> -		int val = hub->secondary_ref_clk ? GPIOF_OUT_INIT_LOW :
> -						   GPIOF_OUT_INIT_HIGH;
> -		err = devm_gpio_request_one(dev, hub->gpio_intn, val,
> -					    "usb3503 intn");
> -		if (err) {
> -			dev_err(dev,
> -				"unable to request GPIO %d as interrupt pin (%d)\n",
> -				hub->gpio_intn, err);
> -			return err;
> -		}
> -	}
> -
> -	if (gpio_is_valid(hub->gpio_connect)) {
> -		err = devm_gpio_request_one(dev, hub->gpio_connect,
> -				GPIOF_OUT_INIT_LOW, "usb3503 connect");
> -		if (err) {
> -			dev_err(dev,
> -				"unable to request GPIO %d as connect pin (%d)\n",
> -				hub->gpio_connect, err);
> -			return err;
> -		}
> -	}
> -
> -	if (gpio_is_valid(hub->gpio_reset)) {
> -		err = devm_gpio_request_one(dev, hub->gpio_reset,
> -				GPIOF_OUT_INIT_LOW, "usb3503 reset");
> +	if (hub->secondary_ref_clk)
> +		flags = GPIOD_OUT_LOW;
> +	else
> +		flags = GPIOD_OUT_HIGH;
> +	hub->intn = devm_gpiod_get_optional(dev, "intn", flags);
> +	if (IS_ERR(hub->intn))
> +		return PTR_ERR(hub->intn);
> +	if (hub->intn)
> +		gpiod_set_consumer_name(hub->intn, "usb3503 intn");
> +
> +	hub->connect = devm_gpiod_get_optional(dev, "connect", GPIOD_OUT_LOW);
> +	if (IS_ERR(hub->connect))
> +		return PTR_ERR(hub->connect);
> +	if (hub->connect)
> +		gpiod_set_consumer_name(hub->connect, "usb3503 connect");
> +
> +	hub->reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
> +	if (IS_ERR(hub->reset))
> +		return PTR_ERR(hub->reset);
> +	if (hub->reset) {
>  		/* Datasheet defines a hardware reset to be at least 100us */
>  		usleep_range(100, 10000);
> -		if (err) {
> -			dev_err(dev,
> -				"unable to request GPIO %d as reset pin (%d)\n",
> -				hub->gpio_reset, err);
> -			return err;
> -		}
> +		gpiod_set_consumer_name(hub->reset, "usb3503 reset");
>  	}
>  
> +	if (hub->port_off_mask && !hub->regmap)
> +		dev_err(dev, "Ports disabled with no control interface\n");
> +
>  	usb3503_switch_mode(hub, hub->mode);
>  
>  	dev_info(dev, "%s: probed in %s mode\n", __func__,
> diff --git a/include/linux/platform_data/usb3503.h b/include/linux/platform_data/usb3503.h
> index e049d51c1353..d01ef97ddf36 100644
> --- a/include/linux/platform_data/usb3503.h
> +++ b/include/linux/platform_data/usb3503.h
> @@ -17,9 +17,6 @@ enum usb3503_mode {
>  struct usb3503_platform_data {
>  	enum usb3503_mode	initial_mode;
>  	u8	port_off_mask;
> -	int	gpio_intn;
> -	int	gpio_connect;
> -	int	gpio_reset;
>  };
>  
>  #endif

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
