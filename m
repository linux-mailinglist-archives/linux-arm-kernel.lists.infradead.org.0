Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2081AD8F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 10:50:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lJ1XKEwxRYlxSyDk/Or5RsSHChGyv1JgXDWP6eRCLag=; b=elhpLT9gOya+FK
	XSY9qlaQhkSAXyN2B+440iR2/Xj2vP7o8ZULW7NKtxQey0glYhQMZDeKN4ocHvToHmEtpTkq7cW4i
	RKDek7wUQgaQqWkrZ00CTzyv8vRcWvDwiWEJwZQvkG7VsAj4eo8+GCaqCBwe2nUBkPKbwROqN8sK1
	nhzNPqowBWQiHaQwnWSu079xdsR/bj5k2kmwJ3wP0HITZOElr90R1r7hOKkPlXmkr5JExIdn7Dr8K
	ojw+ViwrMmAL/SEDspsDzYR1JD//qLgWJEMzsCBAFog3h6REW7oHu8QhpmE1D7wEqqNEar4/uMaM3
	pSBjs/Z5SdvXJCfVzKbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPMhl-0007Jo-97; Fri, 17 Apr 2020 08:50:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPMhd-0007JO-G1; Fri, 17 Apr 2020 08:50:26 +0000
X-UUID: aa163e5ede1946888b43677e2d2c2bfa-20200417
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=CvLwXNbZt4YLZj84U8Z1qWNABI7ku9CPPMrN1RBYWo4=; 
 b=dWjdb0Qq2FqWB9CgJutYv88Jk3cuRB6e7sGPsY1SmMa/L7HZ0B096+OwuUx1o+YirKE6alxIjAWXolVuUSYA3ZQ9EbzTXX5cjHVKXRwehlTq4cIHZTnxIyKBvdN2KghdETXHmmleq3bjuMUY6iPMfYLnbYUrZxvW2pQGWhyNoOU=;
X-UUID: aa163e5ede1946888b43677e2d2c2bfa-20200417
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ran.bi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1499942287; Fri, 17 Apr 2020 00:50:17 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 17 Apr 2020 01:50:19 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs05n1.mediatek.inc
 (172.21.101.15) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 17 Apr 2020 16:50:19 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 17 Apr 2020 16:50:16 +0800
Message-ID: <1587113392.13323.3.camel@mhfsdcap03>
Subject: Re: [PATCH v12 5/6] rtc: mt6397: Add support for the MediaTek
 MT6358 RTC
From: Ran Bi <ran.bi@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>
Date: Fri, 17 Apr 2020 16:49:52 +0800
In-Reply-To: <1587112169.12875.2.camel@mhfsdcap03>
References: <1586333531-21641-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1586333531-21641-6-git-send-email-hsin-hsiung.wang@mediatek.com>
 <20200416091438.GA2167633@dell> <1587112169.12875.2.camel@mhfsdcap03>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_015025_545986_E73937BB 
X-CRM114-Status: GOOD (  20.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kate
 Stewart <kstewart@linuxfoundation.org>, Alexandre
 Belloni <alexandre.belloni@bootlin.com>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, Frank Wunderlich <frank-w@public-files.de>,
 Sean Wang <sean.wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>, srv_heupstream@mediatek.com,
 Sebastian Reichel <sre@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-04-17 at 16:29 +0800, Ran Bi wrote:
> On Thu, 2020-04-16 at 10:14 +0100, Lee Jones wrote:
> > On Wed, 08 Apr 2020, Hsin-Hsiung Wang wrote:
> > 
> > > From: Ran Bi <ran.bi@mediatek.com>
> > > 
> > > This add support for the MediaTek MT6358 RTC. Driver using
> > > compatible data to store different RTC_WRTGR address offset.
> > > This replace RTC_WRTGR to RTC_WRTGR_MT6323 in mt6323-poweroff
> > > driver which only needed by armv7 CPU without ATF.
> > > 
> > > Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>
> > > Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> > > Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > > Acked-by: Sebastian Reichel <sre@kernel.org>
> > > Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> > > Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> > 
> > Please place these in chronological order.  They should provide some
> > history, rather than a unordered slab list of random sign-offs.
> > 
> 
> I suppose that you mean the order should be like below, right?
> Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> Acked-by: Sebastian Reichel <sre@kernel.org>
> Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> 

Correction, I think following is the correct chronological order:
Signed-off-by: Ran Bi <ran.bi@mediatek.com>
Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Acked-by: Sebastian Reichel <sre@kernel.org>
Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>

> > > ---
> > >  drivers/power/reset/mt6323-poweroff.c |  2 +-
> > >  drivers/rtc/rtc-mt6397.c              | 18 +++++++++++++++---
> > >  include/linux/mfd/mt6397/rtc.h        |  9 ++++++++-
> > >  3 files changed, 24 insertions(+), 5 deletions(-)
> > 
> > [...]
> > 
> > > diff --git a/include/linux/mfd/mt6397/rtc.h b/include/linux/mfd/mt6397/rtc.h
> > > index 7dfb63b..6200f3b 100644
> > > --- a/include/linux/mfd/mt6397/rtc.h
> > > +++ b/include/linux/mfd/mt6397/rtc.h
> > > @@ -18,7 +18,9 @@
> > >  #define RTC_BBPU_CBUSY         BIT(6)
> > >  #define RTC_BBPU_KEY            (0x43 << 8)
> > >  
> > > -#define RTC_WRTGR              0x003c
> > > +#define RTC_WRTGR_MT6358       0x3a
> > > +#define RTC_WRTGR_MT6397       0x3c
> > 
> > Why remove the leading 00's?
> > 
> > These are now different to the other regs defined in this header.
> > 
> 
> I will fix this at next patch.
> 
> > > +#define RTC_WRTGR_MT6323       RTC_WRTGR_MT6397
> > >  
> > >  #define RTC_IRQ_STA            0x0002
> > 
> > Like here for instance  --^
> > 
> > >  #define RTC_IRQ_STA_AL         BIT(0)
> > > @@ -65,6 +67,10 @@
> > >  #define MTK_RTC_POLL_DELAY_US  10
> > >  #define MTK_RTC_POLL_TIMEOUT   (jiffies_to_usecs(HZ))
> > >  
> > > +struct mtk_rtc_data {
> > > +	u32                     wrtgr;
> > > +};
> > > +
> > >  struct mt6397_rtc {
> > >  	struct device           *dev;
> > >  	struct rtc_device       *rtc_dev;
> > > @@ -74,6 +80,7 @@ struct mt6397_rtc {
> > >  	struct regmap           *regmap;
> > >  	int                     irq;
> > >  	u32                     addr_base;
> > > +	const struct mtk_rtc_data *data;
> > >  };
> > >  
> > >  #endif /* _LINUX_MFD_MT6397_RTC_H_ */
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
