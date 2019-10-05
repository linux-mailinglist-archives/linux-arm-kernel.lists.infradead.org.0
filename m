Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33251CC842
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 08:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/84f8npm35aHVvjQ6jxNwYVa/uB9csQv61lzkF/JbeE=; b=IYcdUoi7PuQspU
	IcaWZuge4RcjxQGM/D5/hsf/atWB7u5/5MF0hfw+3OByFyz5GFOAvOtMCIzsyskWMxPRLNEY/HHNg
	q0+QHXnPgDvWS01RVnsx1kp93lD3H6u4Mk9sZ/txE/a2J08d3cgImx9HGtTHkvYQm7B0+HncoZJLg
	obZve99u46fjq9FH8Kg4iS/qp+a/b6TwtbAfsvNs4j4QK/20eci49BI/3klSTR31GEKLCOu9wvafJ
	ssb4Qg8dvzSvMaShhdbJQNtBkTggZWGoz46LSNGlu3CW2u9FS84/U72YAqktxe6uTS/7FMM38Vk7U
	4BW+3jTJbaSYDmskLE6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGd6k-00014h-DO; Sat, 05 Oct 2019 05:59:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGd6d-00014K-EN; Sat, 05 Oct 2019 05:59:52 +0000
X-UUID: c748c4276be64511a29d19ff715779d8-20191004
X-UUID: c748c4276be64511a29d19ff715779d8-20191004
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 685131817; Fri, 04 Oct 2019 21:59:48 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 4 Oct 2019 22:59:47 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 5 Oct 2019 13:59:38 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 5 Oct 2019 13:59:38 +0800
Message-ID: <1570255179.29077.24.camel@mtksdaap41>
Subject: Re: [PATCH v2 2/4] watchdog: mtk_wdt: mt8183: Add reset controller
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Guenter Roeck <linux@roeck-us.net>
Date: Sat, 5 Oct 2019 13:59:39 +0800
In-Reply-To: <a0b2e9a3-ca77-814f-b7bd-edc69f00fce2@roeck-us.net>
References: <1569580317-21181-1-git-send-email-jiaxin.yu@mediatek.com>
 <1569580317-21181-3-git-send-email-jiaxin.yu@mediatek.com>
 <a0b2e9a3-ca77-814f-b7bd-edc69f00fce2@roeck-us.net>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_225951_496012_6AA89671 
X-CRM114-Status: GOOD (  11.97  )
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
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 eason.yen@mediatek.com, perex@perex.cz, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-10-03 at 06:49 -0700, Guenter Roeck wrote:
> On 9/27/19 3:31 AM, Jiaxin Yu wrote:

<snip..>


> > +static int toprgu_reset_assert(struct reset_controller_dev *rcdev,
> > +			       unsigned long id)
> > +{
> > +	unsigned int tmp;
> > +	unsigned long flags;
> > +	struct toprgu_reset *data = container_of(rcdev,
> > +				struct toprgu_reset, rcdev);
> > +
> > +	spin_lock_irqsave(&data->lock, flags);
> > +
> > +	tmp = __raw_readl(data->toprgu_swrst_base + data->regofs);
> > +	tmp |= BIT(id);
> > +	tmp |= WDT_SWSYS_RST_KEY;
> > +	writel(tmp, data->toprgu_swrst_base + data->regofs);
> > +
> > +	spin_unlock_irqrestore(&data->lock, flags);
> > +
> > +	return 0;
> > +}
> > +
> > +static int toprgu_reset_deassert(struct reset_controller_dev *rcdev,
> > +				 unsigned long id)
> > +{
> > +	unsigned int tmp;
> > +	unsigned long flags;
> > +	struct toprgu_reset *data = container_of(rcdev,
> > +					struct toprgu_reset, rcdev);
> > +
> > +	spin_lock_irqsave(&data->lock, flags);
> > +
> > +	tmp = __raw_readl(data->toprgu_swrst_base + data->regofs);
> > +	tmp &= ~BIT(id);
> > +	tmp |= WDT_SWSYS_RST_KEY;
> > +	writel(tmp, data->toprgu_swrst_base + data->regofs);
> > +
> > +	spin_unlock_irqrestore(&data->lock, flags);
> > +
> > +	return 0;
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
> 
> Unless there is additional synchronization elsewhere, parallel calls
> to the -> assert, and ->reset callbacks may result in the reset being
> deasserted while at least one caller (the one who called the ->assert
> function) believes that it is still asserted.
> 
> [ ... and if there _is_ additional synchronization elsewhere, the
>    local spinlock would be unnecessary ]
> 

I'm not sure if this count as additional synchronization, but you could
get exclusive control to the reset by calling
reset_control_get_exclusive so others won't try to reset the component
while you are using it.

In this case, you still need spinlock because other drivers might trying
to reset their components and they share same register.

Joe.C



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
