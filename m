Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A1011B915
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 17:45:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gf/RlrAcfMaYlMgwM4PZ/h9XTa+UqcrTJrtltCot76Y=; b=VcHrmhroYo2+Ex
	lw/d+5p4vcxG8R3OM9Yx+CD2rmL4NNY6BZTy/vmSoYR/cvOw0785tfObFUr6zh3qwIvaGhYHAhvRM
	WfMIWtWwP7vj62GX8l4skOCEa0eHc6VKyNZfBTNKkpsAoFgdG4mZNlSuP3lEv5KtrOW/AF4uvm2Cr
	+G5cYTJfUBH/5ahVNeY1vvNGcANaawZDwtYapCbtQzCljdPkQxEdxT8aMl9hgX+rfKIR4O+IKzwsi
	QLQjrRrUpanFY6OomQFUnXY25uxcEkadtnJxExv50KEVXX45Nm3OyAAKr4jLbb7vumgQgH4igolZz
	szOYKU0XhOA67vHt4daw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if572-0007nL-Qt; Wed, 11 Dec 2019 16:45:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if56r-0007UA-RK
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 16:45:12 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1if56e-0003fN-Rr; Wed, 11 Dec 2019 17:44:56 +0100
Message-ID: <fe8b8b2aac6d92a1d7ffc32ea012db9898ab6857.camel@pengutronix.de>
Subject: Re: [PATCH v6 2/2] watchdog: mtk_wdt: mt8183: Add reset controller
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>, yong.liang@mediatek.com, 
 wim@linux-watchdog.org, linux@roeck-us.net, matthias.bgg@gmail.com, 
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org
Date: Wed, 11 Dec 2019 17:44:55 +0100
In-Reply-To: <1576081356-18298-3-git-send-email-jiaxin.yu@mediatek.com>
References: <1576081356-18298-1-git-send-email-jiaxin.yu@mediatek.com>
 <1576081356-18298-3-git-send-email-jiaxin.yu@mediatek.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_084509_889153_BE83D4C5 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: sboyd@kernel.org, yingjoe.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, 2019-12-12 at 00:22 +0800, Jiaxin Yu wrote:
> From: "yong.liang" <yong.liang@mediatek.com>
> 
> Add reset controller API in watchdog driver.
> Besides watchdog, MTK toprgu module alsa provide sub-system (eg, audio,
> camera, codec and connectivity) software reset functionality.

Do any of the listed sub-systems use the reset_control_reset()
functionality? Is there no delay requirement between assert and
deassert? Otherwise it would be safer not to implement the .reset()
operation at all.

> 
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> ---
>  drivers/watchdog/Kconfig   |   1 +
>  drivers/watchdog/mtk_wdt.c | 109 ++++++++++++++++++++++++++++++++++++-
>  2 files changed, 109 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 2e07caab9db2..629249fe5305 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -717,6 +717,7 @@ config MEDIATEK_WATCHDOG
>  	tristate "Mediatek SoCs watchdog support"
>  	depends on ARCH_MEDIATEK || COMPILE_TEST
>  	select WATCHDOG_CORE
> +	select RESET_CONTROLLER
>  	help
>  	  Say Y here to include support for the watchdog timer
>  	  in Mediatek SoCs.
> diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
> index 9c3d0033260d..667380031dfd 100644
> --- a/drivers/watchdog/mtk_wdt.c
> +++ b/drivers/watchdog/mtk_wdt.c
> @@ -9,6 +9,9 @@
>   * Based on sunxi_wdt.c
>   */
>  
> +#include <dt-bindings/reset-controller/mt2712-resets.h>
> +#include <dt-bindings/reset-controller/mt8183-resets.h>
> +#include <linux/delay.h>
>  #include <linux/err.h>
>  #include <linux/init.h>
>  #include <linux/io.h>
> @@ -16,10 +19,12 @@
>  #include <linux/module.h>
>  #include <linux/moduleparam.h>
>  #include <linux/of.h>
> +#include <linux/of_device.h>
>  #include <linux/platform_device.h>
> +#include <linux/reset-controller.h>
> +#include <linux/slab.h>

What is this required for?

>  #include <linux/types.h>
>  #include <linux/watchdog.h>
> -#include <linux/delay.h>
>
>  #define WDT_MAX_TIMEOUT		31
>  #define WDT_MIN_TIMEOUT		1
> @@ -44,6 +49,9 @@
>  #define WDT_SWRST		0x14
>  #define WDT_SWRST_KEY		0x1209
>  
> +#define WDT_SWSYSRST		0x18U
> +#define WDT_SWSYS_RST_KEY	0x88000000
> +
>  #define DRV_NAME		"mtk-wdt"
>  #define DRV_VERSION		"1.0"
>  
> @@ -53,8 +61,97 @@ static unsigned int timeout;
>  struct mtk_wdt_dev {
>  	struct watchdog_device wdt_dev;
>  	void __iomem *wdt_base;
> +	spinlock_t lock; /* protects WDT_SWSYSRST reg */
> +	struct reset_controller_dev rcdev;
> +};
> +
> +struct mtk_wdt_data {
> +	int infracfg_sw_rst_num;

This is not used at all, better remove it.

> +	int toprgu_sw_rst_num;
> +};
> +
> +static const struct mtk_wdt_data mt2712_data = {
> +	.toprgu_sw_rst_num = MT2712_TOPRGU_SW_RST_NUM,
> +};
> +
> +static const struct mtk_wdt_data mt8183_data = {
> +	.infracfg_sw_rst_num = MT8183_INFRACFG_SW_RST_NUM,

Same as above.

> +	.toprgu_sw_rst_num = MT8183_TOPRGU_SW_RST_NUM,
> +};
> +
> +static int toprgu_reset_update(struct reset_controller_dev *rcdev,
> +			       unsigned long id, bool assert)
> +{
> +	unsigned int tmp;
> +	unsigned long flags;
> +

This empty line can be removed.

> +	struct mtk_wdt_dev *data =
> +		 container_of(rcdev, struct mtk_wdt_dev, rcdev);
> +
> +	spin_lock_irqsave(&data->lock, flags);
> +
> +	tmp = readl(data->wdt_base + WDT_SWSYSRST);
> +	if (assert)
> +		tmp |= BIT(id);
> +	else
> +		tmp &= ~BIT(id);
> +	tmp |= WDT_SWSYS_RST_KEY;
> +	writel(tmp, data->wdt_base + WDT_SWSYSRST);
> +
> +	spin_unlock_irqrestore(&data->lock, flags);
> +
> +	return 0;
> +}
> +
> +static int toprgu_reset_assert(struct reset_controller_dev *rcdev,
> +			       unsigned long id)
> +{
> +	return toprgu_reset_update(rcdev, id, true);
> +}
> +
> +static int toprgu_reset_deassert(struct reset_controller_dev *rcdev,
> +				 unsigned long id)
> +{
> +	return toprgu_reset_update(rcdev, id, false);
> +}
> +
> +static int toprgu_reset(struct reset_controller_dev *rcdev,
> +			unsigned long id)
> +{
> +	int ret;
> +
> +	ret = toprgu_reset_assert(rcdev, id);
> +	if (ret)
> +		return ret;
> +
> +	return toprgu_reset_deassert(rcdev, id);
> +}

As mentioned above, is this needed? Does this work for all modules?
Only implement this if you are sure both are true.

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
