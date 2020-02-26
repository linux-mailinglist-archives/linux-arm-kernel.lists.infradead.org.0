Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB3216F586
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 03:12:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jJiOmL7mbw1xodYWIaegm97nJ5yaichtHNH5KMaKJPY=; b=g7+UGGKM430+Q2
	/PfL4b0fNNPQZtY0L/oeUjLUxi1w+AUonRZPJaSWdiS5ZOxv0XQgQYtDg7Pfd8HZb1IyjLLLQBkY/
	02Xa6pNMLzhnjc+j1KiJmxoo+mX1nZBWqWLcPRDZp1umIOPFNNpfmPfH4MRgu6xHZeT89yhNwn4ii
	zcDlZKGkUDCV2pwiMXkvwJ1R+/BUGjuw9d3B8zN9X18m2jPbvtO7GzH79dwxflXnIyQTZUxMDnpQA
	StevMEmlXVg0Txf218zUr7LAhKx9CJ0z2eZKSOsjWthYf4b8mbIrGy+aBWnZfLjDkt3zFDbG1vlgD
	/Z7KJmJovCkONDb/KNbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6mB7-0004YB-QK; Wed, 26 Feb 2020 02:12:01 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6mAv-0004XE-KK; Wed, 26 Feb 2020 02:11:51 +0000
X-UUID: ff906e24f1014167bd6b73d91c8fb295-20200225
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=5gQw0zrOUHDrCBSICicGAtsSYh73NvfJUD3qiJATi0Y=; 
 b=mRB0wEP/F5vuVB6TSohC4dFayY0au+kOV627Mi5JbYjNnp4KWseNMt7QXL3bT8VjzqtlZO/4aabqvC61R4+kbXNs7G2U1msD30/6xuzKNZu/K38UfihDUTvJz4gerbYpitoott+dLgEuGsfe4VcVNH+6ldtfuilakC3baz0zAGM=;
X-UUID: ff906e24f1014167bd6b73d91c8fb295-20200225
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 623865294; Tue, 25 Feb 2020 18:11:46 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 18:11:43 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Feb 2020 10:09:08 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 26 Feb 2020 10:11:51 +0800
Message-ID: <1582683102.16944.11.camel@mtksdaap41>
Subject: Re: [PATCH v8 7/7] drm/mediatek: set dpi pin mode to gpio low to
 avoid leakage current
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Wed, 26 Feb 2020 10:11:42 +0800
In-Reply-To: <20200225094057.120144-8-jitao.shi@mediatek.com>
References: <20200225094057.120144-1-jitao.shi@mediatek.com>
 <20200225094057.120144-8-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 23A290A4F303B13413DC230C06E07F5D9F1D9150BAFE1A2424A844D25E8EE80F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_181149_673464_62D7BF16 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, 2020-02-25 at 17:40 +0800, Jitao Shi wrote:
> Config dpi pins mode to output and pull low when dpi is disabled.
> Aovid leakage current from some dpi pins (Hsync Vsync DE ... ).
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_dpi.c | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
> index db3272f7a4c4..d6a570c03ee9 100644
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
> @@ -719,6 +730,25 @@ static int mtk_dpi_probe(struct platform_device *pdev)
>  	of_property_read_u32_index(dev->of_node, "pclk-sample", 1,
>  				   &dpi->pclk_sample);
>  
> +	dpi->pinctrl = devm_pinctrl_get(&pdev->dev);
> +	if (IS_ERR(dpi->pinctrl)) {
> +		dpi->pinctrl = NULL;
> +		dev_dbg(&pdev->dev, "Cannot find pinctrl!\n");
> +	}
> +	dpi->pins_gpio = pinctrl_lookup_state(dpi->pinctrl, "gpiomode");

When dpi->pinctrl is NULL, you pass it into pinctrl_lookup_state() would
get something wrong, so call this function only when dpi->pinctrl is not
NULL.

> +	if (IS_ERR(dpi->pins_gpio)) {
> +		dpi->pins_gpio = NULL;
> +		dev_dbg(&pdev->dev, "Cannot find pinctrl gpiomode!\n");
> +	}
> +	if (dpi->pinctrl && dpi->pins_gpio)
> +		pinctrl_select_state(dpi->pinctrl, dpi->pins_gpio);
> +
> +	dpi->pins_dpi = pinctrl_lookup_state(dpi->pinctrl, "dpimode");

Ditto.

Regards,
CK

> +	if (IS_ERR(dpi->pins_dpi)) {
> +		dpi->pins_dpi = NULL;
> +		dev_dbg(&pdev->dev, "Cannot find pinctrl dpimode!\n");
> +	}
> +
>  	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	dpi->regs = devm_ioremap_resource(dev, mem);
>  	if (IS_ERR(dpi->regs)) {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
