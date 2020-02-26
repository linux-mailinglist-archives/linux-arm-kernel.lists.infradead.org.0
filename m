Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F77616F95C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 09:13:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Iw8ojKSQcRTCIssSeG6tlXFzsORHDYOJY5JUrjRGGQ=; b=DWb3y39uIYXcW1
	lTPGFx+o1VRKIHB3Qm+m7GfGSAMezYj22Le4fXGP78TKaqtUzJHGgDmuCyJxPeGXo1Tswxs3lnOP4
	eH9Y51M/i7WUP+9yR/jxUAbGyOZE89di7M9L652Rb9bdBjdW5ULiDBhhcvlBVVMOkLGbiqdRhnnPH
	zDh9lZMwtFzCUSOPj3t8PGvPJCu3zPWMEd+foUmkT7rTaEXqx4QDJHZVPEpnqcTFw97kj6NVW3ClH
	lRzE0DK5DnSABYfH3b+WsCKdHMd8+m2GWjeNsFXEQThNPdi8qgtv9ktMxegXFzVq52YBfEJBSfgxO
	TaEcv9EH+P7C4iHiDcvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6rok-0002vY-M3; Wed, 26 Feb 2020 08:13:18 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6roY-0002ua-Kw; Wed, 26 Feb 2020 08:13:08 +0000
X-UUID: 8fd1994aad2e45d9b43e8c0dc5274e81-20200226
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=noxquxXfq+6mXpmYdqPQhbsR120SnaVrynFCGzYug/4=; 
 b=FrduCwNsqTc82igR71qirzITQlHEg0jpki5wYi/J0KOAA3P23LOsbUYlIkcs+Ndw0JEqr/6qWjJrfp3ptbCqN7xBg9vyTbGPVreVIk/L6R/nCwna4Mbj1Q4qEgq8jwerPKbv5gu8hE9CKjGko4U/GeUY72vfJX5FkLDQ2uGbSXQ=;
X-UUID: 8fd1994aad2e45d9b43e8c0dc5274e81-20200226
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 982495471; Wed, 26 Feb 2020 00:13:00 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Feb 2020 00:14:04 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Feb 2020 16:11:04 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 26 Feb 2020 16:13:05 +0800
Message-ID: <1582704777.11957.1.camel@mtksdaap41>
Subject: Re: [PATCH v9 5/5] drm/mediatek: set dpi pin mode to gpio low to
 avoid leakage current
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Wed, 26 Feb 2020 16:12:57 +0800
In-Reply-To: <20200226053238.31646-6-jitao.shi@mediatek.com>
References: <20200226053238.31646-1-jitao.shi@mediatek.com>
 <20200226053238.31646-6-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_001306_688126_5CF19287 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 bibby.hsieh@mediatek.com, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, huijuan.xie@mediatek.com, stonea168@163.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 cawa.cheng@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Jitao:

On Wed, 2020-02-26 at 13:32 +0800, Jitao Shi wrote:
> Config dpi pins mode to output and pull low when dpi is disabled.
> Aovid leakage current from some dpi pins (Hsync Vsync DE ... ).
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_dpi.c | 31 ++++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
> index db3272f7a4c4..ae4c6308bb68 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dpi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
> @@ -10,7 +10,9 @@
>  #include <linux/kernel.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> +#include <linux/of_gpio.h>
>  #include <linux/of_graph.h>
> +#include <linux/pinctrl/consumer.h>
>  #include <linux/platform_device.h>
>  #include <linux/types.h>
>  
> @@ -74,6 +76,9 @@ struct mtk_dpi {
>  	enum mtk_dpi_out_yc_map yc_map;
>  	enum mtk_dpi_out_bit_num bit_num;
>  	enum mtk_dpi_out_channel_swap channel_swap;
> +	struct pinctrl *pinctrl;
> +	struct pinctrl_state *pins_gpio;
> +	struct pinctrl_state *pins_dpi;
>  	int refcount;
>  	u32 pclk_sample;
>  };
> @@ -387,6 +392,9 @@ static void mtk_dpi_power_off(struct mtk_dpi *dpi)
>  	if (--dpi->refcount != 0)
>  		return;
>  
> +	if (dpi->pinctrl && dpi->pins_gpio)
> +		pinctrl_select_state(dpi->pinctrl, dpi->pins_gpio);
> +
>  	mtk_dpi_disable(dpi);
>  	clk_disable_unprepare(dpi->pixel_clk);
>  	clk_disable_unprepare(dpi->engine_clk);
> @@ -411,6 +419,9 @@ static int mtk_dpi_power_on(struct mtk_dpi *dpi)
>  		goto err_pixel;
>  	}
>  
> +	if (dpi->pinctrl && dpi->pins_dpi)
> +		pinctrl_select_state(dpi->pinctrl, dpi->pins_dpi);
> +
>  	mtk_dpi_enable(dpi);
>  	return 0;
>  
> @@ -719,6 +730,26 @@ static int mtk_dpi_probe(struct platform_device *pdev)
>  	of_property_read_u32_index(dev->of_node, "pclk-sample", 1,
>  				   &dpi->pclk_sample);
>  
> +	dpi->pinctrl = devm_pinctrl_get(&pdev->dev);
> +	if (IS_ERR(dpi->pinctrl)) {
> +		dpi->pinctrl = NULL;
> +		dev_dbg(&pdev->dev, "Cannot find pinctrl!\n");
> +	}
> +	if (dpi->pinctrl) {
> +		dpi->pins_gpio = pinctrl_lookup_state(dpi->pinctrl, "gpiomode");
> +		if (IS_ERR(dpi->pins_gpio)) {
> +			dpi->pins_gpio = NULL;
> +			dev_dbg(&pdev->dev, "Cannot find pinctrl gpiomode!\n");
> +		}
> +		if (dpi->pins_gpio)
> +			pinctrl_select_state(dpi->pinctrl, dpi->pins_gpio);
> +
> +		dpi->pins_dpi = pinctrl_lookup_state(dpi->pinctrl, "dpimode");
> +		if (IS_ERR(dpi->pins_dpi)) {
> +			dpi->pins_dpi = NULL;
> +			dev_dbg(&pdev->dev, "Cannot find pinctrl dpimode!\n");
> +		}
> +	}
>  	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	dpi->regs = devm_ioremap_resource(dev, mem);
>  	if (IS_ERR(dpi->regs)) {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
