Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA14F118E02
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 17:43:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cO9HLmzzVn4xDT6eoAfC/ixzWVthRVXxbkFvZ7rBy1A=; b=qB+mwP3THSqlzl
	03Da702RNFLGCv6AdbzRGP83lUUqBi/IkV7glxy+AnClXpq3DbiV2IKu6rR5vY01/PHVe6ua1yTXU
	Z3qEPfe97K03d5MsAToIooArawO4DlMc03adPH51fgOphx3Dgs5r6yuQbb+3fZHkgQwtnufTf5r5p
	U1y18SdFs6kvtlOosre2glT+9SLFScTt6RyHVkGv5q7pJrJjXElx51Sg1ph5Fwxs0MfMoadViErV1
	Ft2BJ4mUS+N9RHGujedCdh8vWS2VLjZLLec7khyMeBGiYEG64BZX+0DSgdGnOy5uo0QlWa45LmHs2
	vvS8Dsteja2XF8j2RVXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieibT-0004tW-Um; Tue, 10 Dec 2019 16:43:15 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieibL-0004sl-7b; Tue, 10 Dec 2019 16:43:09 +0000
X-Originating-IP: 90.182.112.136
Received: from localhost (136.112.broadband15.iol.cz [90.182.112.136])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id CF5E640012;
 Tue, 10 Dec 2019 16:42:58 +0000 (UTC)
Date: Tue, 10 Dec 2019 17:42:56 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v6 6/6] rtc: Add support for the MediaTek MT6358 RTC
Message-ID: <20191210164256.GU1463890@piout.net>
References: <1575639183-17606-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1575639183-17606-7-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575639183-17606-7-git-send-email-hsin-hsiung.wang@mediatek.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_084307_546261_72009AD6 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Eddie Huang <eddie.huang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/12/2019 21:33:03+0800, Hsin-Hsiung Wang wrote:
> From: Ran Bi <ran.bi@mediatek.com>
> 
> This add support for the MediaTek MT6358 RTC. Driver using
> compatible data to store different RTC_WRTGR address offset.
> 
> Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  drivers/rtc/rtc-mt6397.c | 38 ++++++++++++++++++++++++++++++--------
>  1 file changed, 30 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> index b216bdc..631e275 100644
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
> +struct mtk_rtc_data {
> +	u32			wrtgr;
> +};
> +
>  struct mt6397_rtc {
>  	struct device		*dev;
>  	struct rtc_device	*rtc_dev;
> @@ -70,15 +76,34 @@ struct mt6397_rtc {
>  	struct regmap		*regmap;
>  	int			irq;
>  	u32			addr_base;
> +	const struct mtk_rtc_data *data;
> +};
> +
> +static const struct mtk_rtc_data mt6358_rtc_data = {
> +	.wrtgr = RTC_WRTGR_MT6358,
>  };
>  
> +static const struct mtk_rtc_data mt6397_rtc_data = {
> +	.wrtgr = RTC_WRTGR_MT6397,
> +};
> +
> +static const struct of_device_id mt6397_rtc_of_match[] = {
> +	{ .compatible = "mediatek,mt6358-rtc",
> +		.data = (void *)&mt6358_rtc_data, },
> +	{ .compatible = "mediatek,mt6397-rtc",
> +		.data = (void *)&mt6397_rtc_data, },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, mt6397_rtc_of_match);
> +
>  static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
>  {
>  	unsigned long timeout = jiffies + HZ;
>  	int ret;
>  	u32 data;
>  
> -	ret = regmap_write(rtc->regmap, rtc->addr_base + RTC_WRTGR, 1);
> +	ret = regmap_write(rtc->regmap,
> +			   rtc->addr_base + rtc->data->wrtgr, 1);
>  	if (ret < 0)
>  		return ret;
>  
> @@ -333,6 +358,9 @@ static int mtk_rtc_probe(struct platform_device *pdev)
>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	rtc->addr_base = res->start;
>  
> +	rtc->data = (struct mtk_rtc_data *)
> +			of_device_get_match_data(&pdev->dev);
> +
>  	rtc->irq = platform_get_irq(pdev, 0);
>  	if (rtc->irq < 0)
>  		return rtc->irq;
> @@ -406,12 +434,6 @@ static int mt6397_rtc_resume(struct device *dev)
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

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
