Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F9C22C4B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 08:48:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vddfX/BBVmfYy2Uy/x9huqebSD0jZeosBDzDkQSgbVs=; b=qFbPHGxvkET5EY
	3CeiKSP0Y/35IGfM0Eh12NTjjag2vxiqMZO7A4yR4W1STsCroeo0jCjwKvZFkHDr6I38cGKd0YMfJ
	47cSHPIOZ2RmXooSBgvJE0tdTqW91a7dDqg511ct3cC3NZFgklVTVG+h4gFLZiU8VXWcywJOt+U7k
	RFO7HG/ajyZZhrHOFNzBXvvzug1h5q6oobtOJtqritXJr9vSTHQTBqDc15UQNX+a9YRdAkgrb+jg6
	b7e+H9cqNDg95EtUQ4bvFb18MZKrhoMA2thgZzO8/EVeAukdHpxOkbtsncwNENtWpUbpjNErXvfPk
	jt/HXTenxGH8exghAOmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSc6E-0003Hp-Bk; Mon, 20 May 2019 06:48:42 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSc66-0003Gw-Qb; Mon, 20 May 2019 06:48:36 +0000
X-UUID: d558322e6568429480e7c9b6e55c33d9-20190519
X-UUID: d558322e6568429480e7c9b6e55c33d9-20190519
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1691588567; Sun, 19 May 2019 22:48:32 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 May 2019 23:48:31 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS33N1.mediatek.inc (172.27.4.75) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 14:48:29 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 20 May 2019 14:48:28 +0800
Message-ID: <1558334909.7311.27.camel@mtksdaap41>
Subject: Re: [v4 4/5] drm/mediatek: control dpi pins dpi or gpio mode in on
 or off
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Mon, 20 May 2019 14:48:29 +0800
In-Reply-To: <20190518095618.18454-5-jitao.shi@mediatek.com>
References: <20190518095618.18454-1-jitao.shi@mediatek.com>
 <20190518095618.18454-5-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_234834_867423_E71D94DD 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, yingjoe.chen@mediatek.com, Ajay
 Kumar <ajaykumar.rs@samsung.com>, Vincent Palatin <vpalatin@chromium.org>,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, linux-pwm@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki Dae <inki.dae@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul
 Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Kumar Gala <galak@codeaurora.org>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Jitao:

On Sat, 2019-05-18 at 17:56 +0800, Jitao Shi wrote:
> Pull dpi pins low when dpi has nothing to display. Aovid leakage
> current from some dpi pins (Hsync Vsync DE ... ).
> 
> Some chips have dpi pins, but there are some chip don't have pins.
> So this function is controlled by chips driver data.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_dpi.c | 35 +++++++++++++++++++++++++++++-
>  1 file changed, 34 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
> index 77e6e0f99188..0c4ba0a2be27 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dpi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
> @@ -17,10 +17,12 @@
>  #include <drm/drm_of.h>
>  #include <linux/kernel.h>
>  #include <linux/component.h>
> -#include <linux/platform_device.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> +#include <linux/of_gpio.h>
>  #include <linux/of_graph.h>
> +#include <linux/pinctrl/consumer.h>
> +#include <linux/platform_device.h>
>  #include <linux/interrupt.h>
>  #include <linux/types.h>
>  #include <linux/clk.h>
> @@ -79,6 +81,9 @@ struct mtk_dpi {
>  	enum mtk_dpi_out_yc_map yc_map;
>  	enum mtk_dpi_out_bit_num bit_num;
>  	enum mtk_dpi_out_channel_swap channel_swap;
> +	struct pinctrl *pinctrl;
> +	struct pinctrl_state *pins_default;
> +	struct pinctrl_state *pins_dpi;
>  	int refcount;
>  };
>  
> @@ -118,6 +123,7 @@ struct mtk_dpi_conf {
>  	u32 reg_h_fre_con;
>  	bool edge_sel_en;
>  	bool dual_edge;
> +	bool dpi_pin_ctrl;
>  };
>  
>  static void mtk_dpi_mask(struct mtk_dpi *dpi, u32 offset, u32 val, u32 mask)
> @@ -392,6 +398,9 @@ static void mtk_dpi_power_off(struct mtk_dpi *dpi)
>  	if (--dpi->refcount != 0)
>  		return;
>  
> +	if (dpi->conf->dpi_pin_ctrl)
> +		pinctrl_select_state(dpi->pinctrl, dpi->pins_default);
> +
>  	mtk_dpi_disable(dpi);
>  	clk_disable_unprepare(dpi->pixel_clk);
>  	clk_disable_unprepare(dpi->engine_clk);
> @@ -416,6 +425,9 @@ static int mtk_dpi_power_on(struct mtk_dpi *dpi)
>  		goto err_pixel;
>  	}
>  
> +	if (dpi->conf->dpi_pin_ctrl)
> +		pinctrl_select_state(dpi->pinctrl, dpi->pins_dpi);
> +
>  	mtk_dpi_enable(dpi);
>  	return 0;
>  
> @@ -724,6 +736,27 @@ static int mtk_dpi_probe(struct platform_device *pdev)
>  	dpi->dev = dev;
>  	dpi->conf = (struct mtk_dpi_conf *)of_device_get_match_data(dev);
>  
> +	if (dpi->conf->dpi_pin_ctrl) {
> +		dpi->pinctrl = devm_pinctrl_get(&pdev->dev);

Please describe this in binding document.

Regards,
CK

> +		if (IS_ERR(dpi->pinctrl)) {
> +			dev_err(&pdev->dev, "Cannot find pinctrl!\n");
> +			return PTR_ERR(dpi->pinctrl);
> +		}
> +
> +		dpi->pins_default = pinctrl_lookup_state(dpi->pinctrl,
> +							 "default");
> +		if (IS_ERR(dpi->pins_default)) {
> +			dev_err(&pdev->dev, "Cannot find pinctrl default!\n");
> +			return PTR_ERR(dpi->pins_default);
> +		}
> +
> +		dpi->pins_dpi = pinctrl_lookup_state(dpi->pinctrl, "dpimode");
> +		if (IS_ERR(dpi->pins_dpi)) {
> +			dev_err(&pdev->dev, "Cannot find pinctrl dpimode!\n");
> +			return PTR_ERR(dpi->pins_dpi);
> +		}
> +	}
> +
>  	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	dpi->regs = devm_ioremap_resource(dev, mem);
>  	if (IS_ERR(dpi->regs)) {



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
