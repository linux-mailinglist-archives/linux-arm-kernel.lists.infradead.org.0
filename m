Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7CD160946
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:52:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bDp0YpZYEhT9cAkTFimfF95d9o8gxB+6rxugFtmpgfA=; b=Y+xerAR77RPshH
	2s2h1AY/YMGMJxU83ymF5ZfTfD+Y+kk8AjDsAMaN4Nxi7uj6v/rzHNo9c1hJx6uf6eF4BrqD5v/yy
	4SAyeNaMpGm73aaLPIjJrxWoDauladOob573A3j/EvsSZfyBr3pUex28qMSEJlARUK2XDcaTWn9m6
	N8Fgm+T3MHnMgkF1TNupuhidGUSn0H4fj78QokIV/2rZ6je6P5Rfic0Vx0K2dXTc9gcJYseLN5IbB
	NJQegr+XXR78lIX9wsi3jfdB6+4BC1/X5rFsaDAC++oQk8tWpDEszotgyyqbH1Gh+PXM3D5/3yuRO
	xOEH+oqSVOxv/yl7NFlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3XST-00050m-Cu; Mon, 17 Feb 2020 03:52:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3XSI-00050E-El; Mon, 17 Feb 2020 03:52:23 +0000
X-UUID: a1b5bd5c727a437aaa0670529c15806e-20200216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=oOYnDTaPt4d2SztN+2gFkz5sbV1QrJ72DYNKiC6jaZ4=; 
 b=SpSxJD+kzNk7x+akrGkeowgjJzlJ5FQvaRO4wNBHSTYqWYLlgcKL+qwMIyTTx1DXtCu8Se+XVUSAI6LTERFqUpNNY//orGGUZqAAyaStepeA1izG15ZS6tlki+4ECe27gTPplT/zCokbadgR3UFpCEaboRJGLhK7GUVHO96ouSU=;
X-UUID: a1b5bd5c727a437aaa0670529c15806e-20200216
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ran.bi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1227258070; Sun, 16 Feb 2020 19:52:18 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 16 Feb 2020 19:53:05 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs02n1.mediatek.inc
 (172.21.101.77) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 17 Feb 2020 11:50:21 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 17 Feb 2020 11:51:25 +0800
Message-ID: <1581911502.20099.13.camel@mhfsdcap03>
Subject: Re: [PATCH v8 4/5] rtc: mt6397: Add support for the MediaTek MT6358
 RTC
From: Ran Bi <ran.bi@mediatek.com>
To: Yingjoe Chen <yingjoe.chen@mediatek.com>
Date: Mon, 17 Feb 2020 11:51:42 +0800
In-Reply-To: <1580748607.31376.3.camel@mtksdaap41>
References: <1580730044-30501-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1580730044-30501-5-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1580748607.31376.3.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_195222_501373_A3544328 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 Frank Wunderlich <frank-w@public-files.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sean
 Wang <sean.wang@mediatek.com>, Josef Friedl <josef.friedl@speed.at>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-02-04 at 00:50 +0800, Yingjoe Chen wrote:
> > diff --git a/include/linux/mfd/mt6397/rtc.h b/include/linux/mfd/mt6397/rtc.h
> > index f84b916..fffe34a 100644
> > --- a/include/linux/mfd/mt6397/rtc.h
> > +++ b/include/linux/mfd/mt6397/rtc.h
> > @@ -18,7 +18,8 @@
> >  #define RTC_BBPU_CBUSY         BIT(6)
> >  #define RTC_BBPU_KEY            (0x43 << 8)
> >  
> > -#define RTC_WRTGR              0x003c
> > +#define RTC_WRTGR_MT6358       0x3a
> > +#define RTC_WRTGR_MT6397       0x3c
> >  
> >  #define RTC_IRQ_STA            0x0002
> >  #define RTC_IRQ_STA_AL         BIT(0)
> > @@ -57,6 +58,10 @@
> >  #define MTK_RTC_POLL_DELAY_US  10
> >  #define MTK_RTC_POLL_TIMEOUT   (jiffies_to_usecs(HZ))
> >  
> > +struct mtk_rtc_data {
> > +	u32			wrtgr;
> > +};
> > +
> >  struct mt6397_rtc {
> >  	struct device           *dev;
> >  	struct rtc_device       *rtc_dev;
> > @@ -66,6 +71,15 @@ struct mt6397_rtc {
> >  	struct regmap           *regmap;
> >  	int                     irq;
> >  	u32                     addr_base;
> > +	const struct mtk_rtc_data *data;
> > +};
> > +
> > +static const struct mtk_rtc_data mt6358_rtc_data = {
> > +	.wrtgr = RTC_WRTGR_MT6358,
> > +};
> > +
> > +static const struct mtk_rtc_data mt6397_rtc_data = {
> > +	.wrtgr = RTC_WRTGR_MT6397,
> >  };
> 
> Hi,
> 
> Putting these in header file doesn't looks right to me.
> Who need this? can you move them back to rtc-mt6397.c?
> 
> Joe.C
> 

This could also effect kernel/drivers/power/reset/mt6323-poweroff.c
which using same region of RTC registers.
There are 2 ways of modification:
1. kernel/drivers/rtc/rtc-mt6397.c implement do_pwroff function and
export to mt6323-poweroff.c
2. Just modify mt6323-poweroff.c file to compatible this patch. I mean
using RTC_WRTGR_MT6397 to replace RTC_WRTGR. Or modify mt6323-poweroff.c
like rtc-mt6397.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
