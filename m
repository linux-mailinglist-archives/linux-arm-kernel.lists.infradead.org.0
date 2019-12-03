Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D49C10F56D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 04:06:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vgKxtcfnC1ezeYN5JEI3mwapxHPxuYwJz76iEWZYxks=; b=bxnlOZzOW/seRQ
	OfePUnoIXiDy5zLp0O6htNZKDqA1Quf5Y4uzx1G+k1LG2lNQuJcS6SYWb2psYqTtc/RUyyBPijeka
	R2Fm5UyQnMxtUTCsCSITZUcNPUYCEj54y/vdd+1MyGm+vbkxtyzclkd9/sJ4US4JJAeUiHrY/cONx
	YY8QGUxvcIOHIMeF+lxrrA48t/CExXcvBnmC8XuTassgGQOeCRdsGbeV+6ov5iYJMooHeAJvUTJ85
	Sqdw8J62shBjoFtPndfWgyKK/LWvCJ7yQYlVC2/27kIjq+JFaYk2QOcOp99kIE3+noMVk44CWPmdz
	OgQYz9/zVovyvCUP/pMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibyWT-0006aI-7i; Tue, 03 Dec 2019 03:06:45 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibyW3-0006KU-CZ; Tue, 03 Dec 2019 03:06:21 +0000
X-UUID: c1a1ba0c802b4db28d45884c4f41f8f2-20191202
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=pmVMm5SOfCFhpHw4vOj3FTnsiDgBoQKAvwJKCKcst2Q=; 
 b=M9RMVVU3ClZgl7kr+w58TYfLI85oC+ADmSf2PhCOeLhnpnaMqU8do2YuHeNhK49abHcPrIa3AHGKqOjPRnJqNzpLTYiu7jkwRAejXqsLCmz7Db+aQdphG/QjNj29q1Rw8s86iMmLQ+pARe6nxQHVTz8RxYmFV9Q5z3tsMGBhRuo=;
X-UUID: c1a1ba0c802b4db28d45884c4f41f8f2-20191202
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1032841279; Mon, 02 Dec 2019 19:06:13 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Dec 2019 19:02:52 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 3 Dec 2019 11:02:01 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 3 Dec 2019 11:01:56 +0800
Message-ID: <1575342124.7013.13.camel@mhfsdcap03>
Subject: Re: [PATCH v5 2/2] watchdog: mtk_wdt: mt8183: Add reset controller
From: Yong Liang <yong.liang@mediatek.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue, 3 Dec 2019 11:02:04 +0800
In-Reply-To: <88994e7445df8b2d98f3548e2043eb29bf5fa95f.camel@pengutronix.de>
References: <20191125061627.GA7313@roeck-us.net>
 <e138b69efad563822da1db8e160d43458c21eae1.camel@pengutronix.de>
 <1575016588.7013.8.camel@mhfsdcap03>
 <88994e7445df8b2d98f3548e2043eb29bf5fa95f.camel@pengutronix.de>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 82EBD1AB543FDABB01B85E3B0278C45DF1646569865AE3A902AE5107D2AF64112000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_190619_428519_8D7BEA60 
X-CRM114-Status: GOOD (  27.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 Jiaxin Yu =?UTF-8?Q?=28=E4=BF=9E=E5=AE=B6=E9=91=AB=29?=
 <Jiaxin.Yu@mediatek.com>, "perex@perex.cz" <perex@perex.cz>,
 "tzungbi@google.com" <tzungbi@google.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Eason Yen =?UTF-8?Q?=28=E9=A1=8F=E5=BB=B7=E4=BB=BB=29?=
 <Eason.Yen@mediatek.com>,
 Yingjoe Chen =?UTF-8?Q?=28=E9=99=B3=E8=8B=B1=E6=B4=B2=29?=
 <Yingjoe.Chen@mediatek.com>, "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-12-02 at 21:02 +0800, Philipp Zabel wrote:
> On Fri, 2019-11-29 at 16:36 +0800, Yong Liang wrote:
> > On Mon, 2019-11-25 at 17:51 +0800, Philipp Zabel wrote:
> > > On Sun, 2019-11-24 at 22:16 -0800, Guenter Roeck wrote:
> > > > On Mon, Nov 25, 2019 at 11:03:50AM +0800, Jiaxin Yu wrote:
> > > > > From: "yong.liang" <yong.liang@mediatek.com>
> > > > > 
> > > > > Add reset controller API in watchdog driver.
> > > > > Besides watchdog, MTK toprgu module also provide sub-system (eg, audio,
> > > > > camera, codec and connectivity) software reset functionality.
> > > > > 
> > > > > Signed-off-by: yong.liang <yong.liang@mediatek.com>
> > > > > Signed-off-by: jiaxin.yu <jiaxin.yu@mediatek.com>
> > > > > Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> > > > > ---
> > > > >  drivers/watchdog/Kconfig   |   1 +
> > > > >  drivers/watchdog/mtk_wdt.c | 111 ++++++++++++++++++++++++++++++++++++-
> > > > >  2 files changed, 111 insertions(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> > > > > index 2e07caab9db2..629249fe5305 100644
> > > > > --- a/drivers/watchdog/Kconfig
> > > > > +++ b/drivers/watchdog/Kconfig
> > > > > @@ -717,6 +717,7 @@ config MEDIATEK_WATCHDOG
> > > > >  	tristate "Mediatek SoCs watchdog support"
> > > > >  	depends on ARCH_MEDIATEK || COMPILE_TEST
> > > > >  	select WATCHDOG_CORE
> > > > > +	select RESET_CONTROLLER
> > > > >  	help
> > > > >  	  Say Y here to include support for the watchdog timer
> > > > >  	  in Mediatek SoCs.
> > > > > diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
> > > > > index 9c3d0033260d..d29484c7940a 100644
> > > > > --- a/drivers/watchdog/mtk_wdt.c
> > > > > +++ b/drivers/watchdog/mtk_wdt.c
> > > > > @@ -9,6 +9,9 @@
> > > > >   * Based on sunxi_wdt.c
> > > > >   */
> > > > >  
> > > > > +#include <dt-bindings/reset-controller/mt2712-resets.h>
> > > > > +#include <dt-bindings/reset-controller/mt8183-resets.h>
> > > > > +#include <linux/delay.h>
> > > > >  #include <linux/err.h>
> > > > >  #include <linux/init.h>
> > > > >  #include <linux/io.h>
> > > > > @@ -16,10 +19,12 @@
> > > > >  #include <linux/module.h>
> > > > >  #include <linux/moduleparam.h>
> > > > >  #include <linux/of.h>
> > > > > +#include <linux/of_device.h>
> > > > >  #include <linux/platform_device.h>
> > > > > +#include <linux/reset-controller.h>
> > > > > +#include <linux/slab.h>
> > > > >  #include <linux/types.h>
> > > > >  #include <linux/watchdog.h>
> > > > > -#include <linux/delay.h>
> > > > >  
> > > > >  #define WDT_MAX_TIMEOUT		31
> > > > >  #define WDT_MIN_TIMEOUT		1
> > > > > @@ -44,6 +49,9 @@
> > > > >  #define WDT_SWRST		0x14
> > > > >  #define WDT_SWRST_KEY		0x1209
> > > > >  
> > > > > +#define WDT_SWSYSRST		0x18U
> > > > > +#define WDT_SWSYS_RST_KEY	0x88000000
> > > > > +
> > > > >  #define DRV_NAME		"mtk-wdt"
> > > > >  #define DRV_VERSION		"1.0"
> > > > >  
> > > > > @@ -53,8 +61,99 @@ static unsigned int timeout;
> > > > >  struct mtk_wdt_dev {
> > > > >  	struct watchdog_device wdt_dev;
> > > > >  	void __iomem *wdt_base;
> > > > > +	spinlock_t lock; /* protects WDT_SWSYSRST reg */
> > > > > +	struct reset_controller_dev rcdev;
> > > > > +};
> > > > > +
> > > > > +struct mtk_wdt_data {
> > > > > +	int sw_rst_num;
> > > > >  };
> > > > >  
> > > > > +static const struct mtk_wdt_data mt2712_data = {
> > > > > +	.sw_rst_num = MT2712_TOPRGU_SW_RST_NUM,
> > > > > +};
> > > > > +
> > > > > +static const struct mtk_wdt_data mt8183_data = {
> > > > > +	.sw_rst_num = MT8183_TOPRGU_SW_RST_NUM,
> > > > > +};
> > > > 
> > > > The number of resets can be set in .data directly; there is no need
> > > > for the structures.
> > 
> >     We want to put all properities in mtxxxx-resets.h and it easy to
> > manager. If there are new properity in the feture, we can put it in
> > mtk_wdt_data mtxxxx_data
> 
> Do you expect there will be more properties in the future?

  Yes, We may put some infra reset bit and max number in mtxxxx-resets.h
> 
> > > > > +static int toprgu_reset_deassert(struct reset_controller_dev *rcdev,
> > > > > +				 unsigned long id)
> > > > > +{
> > > > > +	unsigned int tmp;
> > > > > +	unsigned long flags;
> > > > > +	struct mtk_wdt_dev *data =
> > > > > +		 container_of(rcdev, struct mtk_wdt_dev, rcdev);
> > > > > +
> > > > > +	spin_lock_irqsave(&data->lock, flags);
> > > > > +
> > > > > +	tmp = __raw_readl(data->wdt_base + WDT_SWSYSRST);
> > > > > +	tmp &= ~BIT(id);
> > > > > +	tmp |= WDT_SWSYS_RST_KEY;
> > > > > +	writel(tmp, data->wdt_base + WDT_SWSYSRST);
> > > > > +
> > > > > +	spin_unlock_irqrestore(&data->lock, flags);
> > > > > +
> > > > > +	return 0;
> > > > > +}
> > > > 
> > > > There is a lot of duplication in those functions. Only one line
> > > > is different. I think this is a good example where a helper function
> > > > with an additional argument indicating set or reset would be helpful.
> > > > 
> >     .assert and .dessert are two numbers of struct reset_control_ops.
> >      I think it's better to define both of them.
> 
> The suggestion was to have two very short _assert and _deassert
> functions that only contain a single call to a common helper function.
> See the reset-a10sr.c driver for an example.

  OK. I will modify it as reset-a10sr.c do.
> 
> regards
> Philipp
> 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
