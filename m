Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50A781312
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 09:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YUnTA29XdBKwU3VRfz9qUnXovOyYay1iUHR8/dFK5oc=; b=Y9H/+GOk54ML0J
	gkgF2BAHico8x+FdA7TNondb6b9KwbrhnlGEnU7bCbWQ4tpS/Tc/VttVeWl4z6yqlGjcn/M3lL08o
	O1XydDgQg+4dtICrEMkP+KqP6xlRiggbPo2MpJcYwgwqIFv1cTu+6kFDMkACdrhZe2BHTYlCoprEw
	87NktgQVrBhcxqjPb4qYebGS6vvPpCButqheMsxVfHq35pvP1xco+PmqKf/BUAvBe3BFYFT9ssiWv
	n/fiU4nOQSfahSQ+9v54ujZR2DgRHpaHlh13dgTZ+qe+8v3bOpTN9SLMhO+AsOfdSXYx0Uxlb/KVI
	L4ljSpIrP/aM2pDrkhkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huXLo-0006Vq-Hz; Mon, 05 Aug 2019 07:24:12 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huXLa-0006VB-5u; Mon, 05 Aug 2019 07:24:00 +0000
X-Originating-IP: 82.246.155.60
Received: from localhost (hy283-1-82-246-155-60.fbx.proxad.net [82.246.155.60])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 2239CC0004;
 Mon,  5 Aug 2019 07:23:40 +0000 (UTC)
Date: Mon, 5 Aug 2019 09:23:38 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v4 10/10] rtc: Add support for the MediaTek MT6358 RTC
Message-ID: <20190805072338.GB3600@piout.net>
References: <1564982518-32163-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1564982518-32163-11-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564982518-32163-11-git-send-email-hsin-hsiung.wang@mediatek.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_002358_529751_966080B5 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Allison Randal <allison@lohutok.net>,
 linux-rtc@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>, Kate Stewart <kstewart@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

The subject should be:

"rtc: mt6397: Add support for the MediaTek MT6358 RTC"

On 05/08/2019 13:21:58+0800, Hsin-Hsiung Wang wrote:
> From: Ran Bi <ran.bi@mediatek.com>
> 
> This add support for the MediaTek MT6358 RTC. Driver using
> compatible data to store different RTC_WRTGR address offset.
> 
> Review-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> ---
>  drivers/rtc/rtc-mt6397.c | 43 +++++++++++++++++++++++++++++++++++--------
>  1 file changed, 35 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> index 828def7..e23c215 100644
> --- a/drivers/rtc/rtc-mt6397.c
> +++ b/drivers/rtc/rtc-mt6397.c
> @@ -12,6 +12,7 @@
>  #include <linux/irqdomain.h>
>  #include <linux/platform_device.h>
>  #include <linux/of_address.h>
> +#include <linux/of_device.h>
>  #include <linux/of_irq.h>
>  #include <linux/io.h>
>  #include <linux/mfd/mt6397/core.h>
> @@ -19,7 +20,8 @@
>  #define RTC_BBPU		0x0000
>  #define RTC_BBPU_CBUSY		BIT(6)
>  
> -#define RTC_WRTGR		0x003c
> +#define RTC_WRTGR_MT6358	0x3a
> +#define RTC_WRTGR_MT6397	0x3c
>  
>  #define RTC_IRQ_STA		0x0002
>  #define RTC_IRQ_STA_AL		BIT(0)
> @@ -63,6 +65,10 @@
>  #define RTC_NUM_YEARS		128
>  #define RTC_MIN_YEAR_OFFSET	(RTC_MIN_YEAR - RTC_BASE_YEAR)
>  
> +struct mtk_rtc_compatible {

I would name that struct mtk_rtc_data

> +	u32			wrtgr_addr;

and this member should be wrtgr_offset or simply wrtgr.

> +};
> +
>  struct mt6397_rtc {
>  	struct device		*dev;
>  	struct rtc_device	*rtc_dev;
> @@ -70,7 +76,25 @@ struct mt6397_rtc {
>  	struct regmap		*regmap;
>  	int			irq;
>  	u32			addr_base;
> +	const struct mtk_rtc_compatible *dev_comp;
> +};
> +
> +static const struct mtk_rtc_compatible mt6358_rtc_compat = {
> +	.wrtgr_addr = RTC_WRTGR_MT6358,
> +};
> +
> +static const struct mtk_rtc_compatible mt6397_rtc_compat = {
> +	.wrtgr_addr = RTC_WRTGR_MT6397,
> +};
> +
> +static const struct of_device_id mt6397_rtc_of_match[] = {
> +	{ .compatible = "mediatek,mt6358-rtc",
> +		.data = (void *)&mt6358_rtc_compat, },
> +	{ .compatible = "mediatek,mt6397-rtc",
> +		.data = (void *)&mt6397_rtc_compat, },
> +	{}
>  };
> +MODULE_DEVICE_TABLE(of, mt6397_rtc_of_match);
>  
>  static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
>  {
> @@ -78,7 +102,8 @@ static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
>  	int ret;
>  	u32 data;
>  
> -	ret = regmap_write(rtc->regmap, rtc->addr_base + RTC_WRTGR, 1);
> +	ret = regmap_write(rtc->regmap,
> +			   rtc->addr_base + rtc->dev_comp->wrtgr_addr, 1);
>  	if (ret < 0)
>  		return ret;
>  
> @@ -324,6 +349,7 @@ static int mtk_rtc_probe(struct platform_device *pdev)
>  	struct resource *res;
>  	struct mt6397_chip *mt6397_chip = dev_get_drvdata(pdev->dev.parent);
>  	struct mt6397_rtc *rtc;
> +	const struct of_device_id *of_id;
>  	int ret;
>  
>  	rtc = devm_kzalloc(&pdev->dev, sizeof(struct mt6397_rtc), GFP_KERNEL);
> @@ -333,6 +359,13 @@ static int mtk_rtc_probe(struct platform_device *pdev)
>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	rtc->addr_base = res->start;
>  
> +	of_id = of_match_device(mt6397_rtc_of_match, &pdev->dev);
> +	if (!of_id) {
> +		dev_err(&pdev->dev, "Failed to probe of_node\n");
> +		return -EINVAL;

This will never happen because probe would not be called if there is no
match. You could also use of_device_get_match_data to avoid having to
move the of_device_id table.

> +	}
> +	rtc->dev_comp = of_id->data;
> +
>  	rtc->irq = platform_get_irq(pdev, 0);
>  	if (rtc->irq < 0)
>  		return rtc->irq;
> @@ -408,12 +441,6 @@ static int mt6397_rtc_resume(struct device *dev)
>  static SIMPLE_DEV_PM_OPS(mt6397_pm_ops, mt6397_rtc_suspend,
>  			mt6397_rtc_resume);
>  
> -static const struct of_device_id mt6397_rtc_of_match[] = {
> -	{ .compatible = "mediatek,mt6397-rtc", },
> -	{ }
> -};
> -MODULE_DEVICE_TABLE(of, mt6397_rtc_of_match);
> -
>  static struct platform_driver mtk_rtc_driver = {
>  	.driver = {
>  		.name = "mt6397-rtc",
> -- 
> 2.6.4
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
