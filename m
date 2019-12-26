Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 870D012AAD1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 08:43:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/AVIg57L2Qb0UI0LnCgK6Ha/vRkkOAN5tokLyUC9Jvw=; b=geiE3nhypOxpow
	nu/fmwUrePwTh3pCMLJdwhLCrvZMpc/rDod0nkuqTvMFkWI5Jh0EfhNt98lDVyytDQjqI+Ohm3Y2B
	rU7QzP+i/yFdEvafp19T2CI2IgNyqdVmt4X0d3P7E5m5Ps4SbNrIVf9ZWEqcPWZWKSmc0cAsr/BM8
	kGv9a9nVhdgLAmYkCY71/DTuN0iGhU5H0K4y55JG247UELQ1Y2tlAebmps5M24M+xVhXa0tZTxM0U
	tAaNJuo3RfguaveQ4n44DSN0vti8HNmBbeakibgd9CD2Nfb57moZhgzZEemefi5dF/OeDm0rGr2eq
	0SmWWa9WvpgXaYZ2CUHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikNnP-0003mE-ES; Thu, 26 Dec 2019 07:42:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikNnD-0003ld-Ox; Thu, 26 Dec 2019 07:42:50 +0000
X-UUID: e88a83898ede4aa48abeeb6d3b494270-20191225
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=B8FgD3ZrjisgjSkL3JaHceiILrlLNx2yrKhwr8RakCI=; 
 b=LZdR0xLrEYvhQJGiDA3Mue8i2JMovgNzQ6JSwmdkVunNdVu5g16UY4b002ZkDZrKeOkDIil+AgRb4p9gyjb4yRweZJYwQQhzqVfr6SJAMeTSH6gQTYr+0iKQ9X097YLztJtWKa+9Qoon34gxo9W8ZOM2vSqo23WQrLiHgKFSRio=;
X-UUID: e88a83898ede4aa48abeeb6d3b494270-20191225
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 995227162; Wed, 25 Dec 2019 23:42:40 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Dec 2019 23:43:03 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 26 Dec 2019 15:42:07 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 26 Dec 2019 15:42:28 +0800
Message-ID: <1577346109.20923.3.camel@mhfsdcap03>
Subject: Re: [PATCH v6 2/2] watchdog: mtk_wdt: mt8183: Add reset controller
From: Yong Liang <yong.liang@mediatek.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu, 26 Dec 2019 15:41:49 +0800
In-Reply-To: <fe8b8b2aac6d92a1d7ffc32ea012db9898ab6857.camel@pengutronix.de>
References: <1576081356-18298-1-git-send-email-jiaxin.yu@mediatek.com>
 <1576081356-18298-3-git-send-email-jiaxin.yu@mediatek.com>
 <fe8b8b2aac6d92a1d7ffc32ea012db9898ab6857.camel@pengutronix.de>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8574F099F3B0AD104410C800107372672A0E4739F5A4B188550EFA2C7F63128E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_234247_820980_AA4289DE 
X-CRM114-Status: GOOD (  23.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jiaxin Yu =?UTF-8?Q?=28=E4=BF=9E=E5=AE=B6=E9=91=AB=29?=
 <Jiaxin.Yu@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 Yingjoe Chen =?UTF-8?Q?=28=E9=99=B3=E8=8B=B1=E6=B4=B2=29?=
 <Yingjoe.Chen@mediatek.com>, "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-12-12 at 00:44 +0800, Philipp Zabel wrote:
> Hi,
> 
> On Thu, 2019-12-12 at 00:22 +0800, Jiaxin Yu wrote:
> > From: "yong.liang" <yong.liang@mediatek.com>
> > 
> > Add reset controller API in watchdog driver.
> > Besides watchdog, MTK toprgu module alsa provide sub-system (eg, audio,
> > camera, codec and connectivity) software reset functionality.
> 
> Do any of the listed sub-systems use the reset_control_reset()
> functionality? Is there no delay requirement between assert and
> deassert? Otherwise it would be safer not to implement the .reset()
> operation at all.
> 
> > Audio use this reset API to reset audio, and it works well.
    It is no need to add delay between assert and deassert.

> > Signed-off-by: yong.liang <yong.liang@mediatek.com>
> > ---
> >  drivers/watchdog/Kconfig   |   1 +
> >  drivers/watchdog/mtk_wdt.c | 109 ++++++++++++++++++++++++++++++++++++-
> >  2 files changed, 109 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> > index 2e07caab9db2..629249fe5305 100644
> > --- a/drivers/watchdog/Kconfig
> > +++ b/drivers/watchdog/Kconfig
> > @@ -717,6 +717,7 @@ config MEDIATEK_WATCHDOG
> >  	tristate "Mediatek SoCs watchdog support"
> >  	depends on ARCH_MEDIATEK || COMPILE_TEST
> >  	select WATCHDOG_CORE
> > +	select RESET_CONTROLLER
> >  	help
> >  	  Say Y here to include support for the watchdog timer
> >  	  in Mediatek SoCs.
> > diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
> > index 9c3d0033260d..667380031dfd 100644
> > --- a/drivers/watchdog/mtk_wdt.c
> > +++ b/drivers/watchdog/mtk_wdt.c
> > @@ -9,6 +9,9 @@
> >   * Based on sunxi_wdt.c
> >   */
> >  
> > +#include <dt-bindings/reset-controller/mt2712-resets.h>
> > +#include <dt-bindings/reset-controller/mt8183-resets.h>
> > +#include <linux/delay.h>
> >  #include <linux/err.h>
> >  #include <linux/init.h>
> >  #include <linux/io.h>
> > @@ -16,10 +19,12 @@
> >  #include <linux/module.h>
> >  #include <linux/moduleparam.h>
> >  #include <linux/of.h>
> > +#include <linux/of_device.h>
> >  #include <linux/platform_device.h>
> > +#include <linux/reset-controller.h>
> > +#include <linux/slab.h>
> 
> What is this required for?

  It is no use. I will remove it.
> 
> >  #include <linux/types.h>
> >  #include <linux/watchdog.h>
> > -#include <linux/delay.h>
> >
> >  #define WDT_MAX_TIMEOUT		31
> >  #define WDT_MIN_TIMEOUT		1
> > @@ -44,6 +49,9 @@
> >  #define WDT_SWRST		0x14
> >  #define WDT_SWRST_KEY		0x1209
> >  
> > +#define WDT_SWSYSRST		0x18U
> > +#define WDT_SWSYS_RST_KEY	0x88000000
> > +
> >  #define DRV_NAME		"mtk-wdt"
> >  #define DRV_VERSION		"1.0"
> >  
> > @@ -53,8 +61,97 @@ static unsigned int timeout;
> >  struct mtk_wdt_dev {
> >  	struct watchdog_device wdt_dev;
> >  	void __iomem *wdt_base;
> > +	spinlock_t lock; /* protects WDT_SWSYSRST reg */
> > +	struct reset_controller_dev rcdev;
> > +};
> > +
> > +struct mtk_wdt_data {
> > +	int infracfg_sw_rst_num;
> 
> This is not used at all, better remove it.
  I will remove it.
> 
> > +	int toprgu_sw_rst_num;
> > +};
> > +
> > +static const struct mtk_wdt_data mt2712_data = {
> > +	.toprgu_sw_rst_num = MT2712_TOPRGU_SW_RST_NUM,
> > +};
> > +
> > +static const struct mtk_wdt_data mt8183_data = {
> > +	.infracfg_sw_rst_num = MT8183_INFRACFG_SW_RST_NUM,
> 
> Same as above.
  I will remove it.
> 
> > +	.toprgu_sw_rst_num = MT8183_TOPRGU_SW_RST_NUM,
> > +};
> > +
> > +static int toprgu_reset_update(struct reset_controller_dev *rcdev,
> > +			       unsigned long id, bool assert)
> > +{
> > +	unsigned int tmp;
> > +	unsigned long flags;
> > +
> 
> This empty line can be removed.
  I will remove it.
> 
> > +	struct mtk_wdt_dev *data =
> > +		 container_of(rcdev, struct mtk_wdt_dev, rcdev);
> > +
> > +	spin_lock_irqsave(&data->lock, flags);
> > +
> > +	tmp = readl(data->wdt_base + WDT_SWSYSRST);
> > +	if (assert)
> > +		tmp |= BIT(id);
> > +	else
> > +		tmp &= ~BIT(id);
> > +	tmp |= WDT_SWSYS_RST_KEY;
> > +	writel(tmp, data->wdt_base + WDT_SWSYSRST);
> > +
> > +	spin_unlock_irqrestore(&data->lock, flags);
> > +
> > +	return 0;
> > +}
> > +
> > +static int toprgu_reset_assert(struct reset_controller_dev *rcdev,
> > +			       unsigned long id)
> > +{
> > +	return toprgu_reset_update(rcdev, id, true);
> > +}
> > +
> > +static int toprgu_reset_deassert(struct reset_controller_dev *rcdev,
> > +				 unsigned long id)
> > +{
> > +	return toprgu_reset_update(rcdev, id, false);
> > +}
> > +
> > +static int toprgu_reset(struct reset_controller_dev *rcdev,
> > +			unsigned long id)
> > +{
> > +	int ret;
> > +
> > +	ret = toprgu_reset_assert(rcdev, id);
> > +	if (ret)
> > +		return ret;
> > +
> > +	return toprgu_reset_deassert(rcdev, id);
> > +}
> 
> As mentioned above, is this needed? Does this work for all modules?
> Only implement this if you are sure both are true.
  I think it's safe. Many modules has used it in MTK inside.
> 
> regards
> Philipp
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
