Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5AACFBFF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 16:09:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLNea6wpgT6MTO1HWw0QtHUYllahlIWrHXBjLGbYILU=; b=m4Nwd+B1jRVkws
	paTubx4/0fo7GMVI2ev6gaUdWMmPw4T5m8atpJZczbMWYfV0rex2VkGOJyawFIVS+5RYLb2cd7h84
	mglQCpK+YU5DWtN812oYwZJoFzsyADGbbzb4/hcQbBREFTCYhqJBv+UPKdrkG1aB8ZaYjB9JLqEWu
	A63UWiCVQEvn8r7LE9kJgzBr9X7pSGRKVKPIFFEJDVvLWeCsc5A3p88cj7PsFOoac5Xca7ny8VKO5
	LB9L0cVvhA1cphV52VepevaG74/T2PWPPjXcRL6CiIjdjrHE3Khl4NWUGoFdDI7iXoA1Q+yA3Tydr
	Psfh6DN5R2uhkTQphuUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqB0-0003Pi-QH; Tue, 08 Oct 2019 14:09:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqAr-0003OO-LG
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 14:09:15 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iHqAL-0005tE-74; Tue, 08 Oct 2019 16:08:41 +0200
Message-ID: <1570543719.18914.7.camel@pengutronix.de>
Subject: Re: [PATCH v2 2/4] watchdog: mtk_wdt: mt8183: Add reset controller
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Guenter Roeck <linux@roeck-us.net>, Yingjoe Chen
 <yingjoe.chen@mediatek.com>
Date: Tue, 08 Oct 2019 16:08:39 +0200
In-Reply-To: <70b77fb3-7186-734d-3415-64acb30bab8f@roeck-us.net>
References: <1569580317-21181-1-git-send-email-jiaxin.yu@mediatek.com>
 <1569580317-21181-3-git-send-email-jiaxin.yu@mediatek.com>
 <a0b2e9a3-ca77-814f-b7bd-edc69f00fce2@roeck-us.net>
 <1570255179.29077.24.camel@mtksdaap41>
 <70b77fb3-7186-734d-3415-64acb30bab8f@roeck-us.net>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_070913_701365_6F8A1139 
X-CRM114-Status: GOOD (  20.16  )
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
Cc: mark.rutland@arm.com, alsa-devel@alsa-project.org, broonie@kernel.org,
 yong.liang@mediatek.com, Jiaxin Yu <jiaxin.yu@mediatek.com>,
 lgirdwood@gmail.com, tzungbi@google.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, eason.yen@mediatek.com, perex@perex.cz,
 wim@linux-watchdog.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Guenter, Yingjoe,

On Sat, 2019-10-05 at 07:46 -0700, Guenter Roeck wrote:
> On 10/4/19 10:59 PM, Yingjoe Chen wrote:
> > On Thu, 2019-10-03 at 06:49 -0700, Guenter Roeck wrote:
> > > On 9/27/19 3:31 AM, Jiaxin Yu wrote:
> > 
> > <snip..>
> > 
> > 
> > > > +static int toprgu_reset_assert(struct reset_controller_dev *rcdev,
> > > > +			       unsigned long id)
> > > > +{
> > > > +	unsigned int tmp;
> > > > +	unsigned long flags;
> > > > +	struct toprgu_reset *data = container_of(rcdev,
> > > > +				struct toprgu_reset, rcdev);
> > > > +
> > > > +	spin_lock_irqsave(&data->lock, flags);
> > > > +
> > > > +	tmp = __raw_readl(data->toprgu_swrst_base + data->regofs);
> > > > +	tmp |= BIT(id);
> > > > +	tmp |= WDT_SWSYS_RST_KEY;
> > > > +	writel(tmp, data->toprgu_swrst_base + data->regofs);
> > > > +
> > > > +	spin_unlock_irqrestore(&data->lock, flags);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int toprgu_reset_deassert(struct reset_controller_dev *rcdev,
> > > > +				 unsigned long id)
> > > > +{
> > > > +	unsigned int tmp;
> > > > +	unsigned long flags;
> > > > +	struct toprgu_reset *data = container_of(rcdev,
> > > > +					struct toprgu_reset, rcdev);
> > > > +
> > > > +	spin_lock_irqsave(&data->lock, flags);
> > > > +
> > > > +	tmp = __raw_readl(data->toprgu_swrst_base + data->regofs);
> > > > +	tmp &= ~BIT(id);
> > > > +	tmp |= WDT_SWSYS_RST_KEY;
> > > > +	writel(tmp, data->toprgu_swrst_base + data->regofs);
> > > > +
> > > > +	spin_unlock_irqrestore(&data->lock, flags);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int toprgu_reset(struct reset_controller_dev *rcdev,
> > > > +			unsigned long id)
> > > > +{
> > > > +	int ret;
> > > > +
> > > > +	ret = toprgu_reset_assert(rcdev, id);
> > > > +	if (ret)
> > > > +		return ret;
> > > > +
> > > > +	return toprgu_reset_deassert(rcdev, id);
> > > 
> > > Unless there is additional synchronization elsewhere, parallel calls
> > > to the -> assert, and ->reset callbacks may result in the reset being
> > > deasserted while at least one caller (the one who called the ->assert
> > > function) believes that it is still asserted.
> > > 
> > > [ ... and if there _is_ additional synchronization elsewhere, the
> > >     local spinlock would be unnecessary ]
> > > 
> > 
> > I'm not sure if this count as additional synchronization, but you could
> > get exclusive control to the reset by calling
> > reset_control_get_exclusive so others won't try to reset the component
> > while you are using it.
> > 
> > In this case, you still need spinlock because other drivers might trying
> > to reset their components and they share same register.
> 
> That isn't what I meant. I referred to synchronization in the reset
> controller core. AFAICS the reset controller core prevents parallel
> calls into the same reset controller driver using atomics.

No, it doesn't. The atomics in struct reset_control prevent parallel
calls on the same, reset control only, for shared reset controls.
Two calls on different reset controls can still run simultaneously on
the same rcdev.

> Unfortunately, it is not well defined if additional synchronization on
> driver level is needed - some drivers implement it, some drivers
> don't,

I think all drivers protect read/modify/write cycles to shared registers
with a spinlock. Those that don't either have separate set/clear
registers or use regmap, otherwise it might be a bug.

> and I don't find a documentation.

I am aware this is a problem.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
