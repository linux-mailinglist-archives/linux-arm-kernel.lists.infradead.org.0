Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDED19BA7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 04:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9Mqswt18Xvr6iwPGaOvII45F09forYsW+wllnTgdSw=; b=lcJLyaQjxxzVUh
	PKFPR+wAzqeOn2CFt+pA+B5q1dF/o8cX7tzbFg8ZVvFtSK0KUpd8t6RhBGZxZGP33VdHF2wHD295u
	t20g/ufRjB4a9v4hhDvyQ4FQyjqvoyDQwNPUllJYTugoJosckmGhXv6PMfnVq9CZpvz3IC9KYMOHy
	swUb/oCHXDfpbnrViuOkSgpQmXmdpuaao3uTs2xReTykcRG7ufUpzwWAnODvD5n5GI8qOvkwHm+5F
	vZE+6L+gOoGvJny/p8gmW0LhaYQu+8hFrISZDBtXNuz4KU+SUMzdyLn4x3AuNPa0xuSJBtwQ03kGw
	oPcrNBmQ3pinR3p5ntgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJpvx-0000cj-1N; Thu, 02 Apr 2020 02:50:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJpvm-0008Jy-PG; Thu, 02 Apr 2020 02:50:12 +0000
X-UUID: fa6da213356d47bd8ff0f8fa32aa6262-20200401
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=P6AXl14409aeLCBpPKkU44gdGTRy5JIxj8i/NJ61DK8=; 
 b=R+WAuqV4NaHAeSkH/LdPNNeyxXO4mFtZdsgFWw+33GfWqKr6oGHK1BXgS0T7ZiQ2sE4vVc7ECyNKzLk4BRq+pB48Ns89S9Biphhbhlqf/sM7+gEUdqaO9f4bVhxF23YnL95JMZWXh1tLDcqCK0chwT1VGWyVxzPfWyiNdYxDsyQ=;
X-UUID: fa6da213356d47bd8ff0f8fa32aa6262-20200401
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1139957167; Wed, 01 Apr 2020 18:50:04 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 1 Apr 2020 19:48:12 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Apr 2020 10:48:11 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 2 Apr 2020 10:48:10 +0800
Message-ID: <1585795691.27527.14.camel@mtksdaap41>
Subject: Re: [PATCH V4 06/13] soc: mediatek: add MT8183 dvfsrc support
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>
Date: Thu, 2 Apr 2020 10:48:11 +0800
In-Reply-To: <4220e681-80b6-f9af-ddd1-b28aabe513cf@linaro.org>
References: <1584092066-24425-1-git-send-email-henryc.chen@mediatek.com>
 <1584092066-24425-7-git-send-email-henryc.chen@mediatek.com>
 <4220e681-80b6-f9af-ddd1-b28aabe513cf@linaro.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_195010_858652_8D77B02A 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Mike Turquette <mturquette@linaro.org>, srv_heupstream@mediatek.com,
 James Liao <jamesjj.liao@mediatek.com>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Fan Chen <fan.chen@mediatek.com>, devicetree@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Ryan Case <ryandcase@chromium.org>,
 Arvin Wang <arvin.wang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Georgi,

On Wed, 2020-04-01 at 17:41 +0300, Georgi Djakov wrote:
> Hi Henry,
> 
> On 3/13/20 11:34, Henry Chen wrote:
> > Add dvfsrc driver for MT8183
> > 
> > Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
> > ---
> >  drivers/soc/mediatek/Kconfig      |  15 ++
> >  drivers/soc/mediatek/Makefile     |   1 +
> >  drivers/soc/mediatek/mtk-dvfsrc.c | 434 ++++++++++++++++++++++++++++++++++++++
> >  include/soc/mediatek/mtk_dvfsrc.h |  30 +++
> >  4 files changed, 480 insertions(+)
> >  create mode 100644 drivers/soc/mediatek/mtk-dvfsrc.c
> >  create mode 100644 include/soc/mediatek/mtk_dvfsrc.h
> > 
> > diff --git a/drivers/soc/mediatek/Kconfig b/drivers/soc/mediatek/Kconfig
> > index f837b3c..44808f4 100644
> > --- a/drivers/soc/mediatek/Kconfig
> > +++ b/drivers/soc/mediatek/Kconfig
> > @@ -16,6 +16,21 @@ config MTK_CMDQ
> >  	  time limitation, such as updating display configuration during the
> >  	  vblank.
> >  
> > +config MTK_DVFSRC
> > +	bool "MediaTek DVFSRC Support"
> > +	depends on ARCH_MEDIATEK
> > +	default ARCH_MEDIATEK
> > +	select MTK_INFRACFG
> > +	select PM_GENERIC_DOMAINS if PM
> > +	depends on MTK_SCPSYS
> > +	help
> > +	  Say yes here to add support for the MediaTek DVFSRC (dynamic voltage
> > +	  and frequency scaling resource collector) found
> > +	  on different MediaTek SoCs. The DVFSRC is a proprietary
> > +	  hardware which is used to collect all the requests from
> > +	  system and turn into the decision of minimum Vcore voltage
> > +	  and minimum DRAM frequency to fulfill those requests.
> > +
> >  config MTK_PMIC_WRAP
> >  	tristate "MediaTek PMIC Wrapper Support"
> >  	depends on RESET_CONTROLLER
> > diff --git a/drivers/soc/mediatek/Makefile b/drivers/soc/mediatek/Makefile
> > index 2b2c2537..84182f0 100644
> > --- a/drivers/soc/mediatek/Makefile
> > +++ b/drivers/soc/mediatek/Makefile
> > @@ -1,4 +1,5 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  obj-$(CONFIG_MTK_CMDQ) += mtk-cmdq-helper.o
> > +obj-$(CONFIG_MTK_DVFSRC) += mtk-dvfsrc.o
> >  obj-$(CONFIG_MTK_PMIC_WRAP) += mtk-pmic-wrap.o
> >  obj-$(CONFIG_MTK_SCPSYS) += mtk-scpsys.o
> > diff --git a/drivers/soc/mediatek/mtk-dvfsrc.c b/drivers/soc/mediatek/mtk-dvfsrc.c
> > new file mode 100644
> > index 0000000..85b3572
> > --- /dev/null
> > +++ b/drivers/soc/mediatek/mtk-dvfsrc.c
> > @@ -0,0 +1,434 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2018 MediaTek Inc.
> > + */
> > +#include <linux/arm-smccc.h>
> > +#include <linux/clk.h>
> > +#include <linux/io.h>
> > +#include <linux/iopoll.h>
> > +#include <linux/module.h>
> > +#include <linux/notifier.h>
> > +#include <linux/of_device.h>
> > +#include <linux/platform_device.h>
> > +#include <soc/mediatek/mtk_dvfsrc.h>
> > +#include <soc/mediatek/mtk_sip.h>
> > +#include <dt-bindings/power/mt8183-power.h>
> 
> Looks like this depends on a header which is not part of this patch-set.
> It would be nice to list any dependencies in the cover letter.
> 
> Thanks,
> Georgi

I disregarded to list here. Thanks for your friendly reminder.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
