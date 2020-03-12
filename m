Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB32182BFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:09:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FYT7Xyot+gmcImOkQ2Wy6fk4mp9/L5fUQQ6nfxcOb4M=; b=gkGbOLrm/EfpiS
	t5e9XbA5bSEQ7kxVTxd4Oihb8HHsw/5VGisPxMcbvaYvopxMENf8COsOZf7jvnxxzotwgw5TOdBQk
	AR+gfsILf7BmL2REQJXjplwVrL6/b9BM1VycRo+MiJNqJxx9saYYvRvNgHfnGQIDjkoITneJPJZDC
	XhubNSAojM8b+2uFy71hTrvGy3rPLR3L9Q7QVQ7ZoHeO0gs7h2Bt1RtXanRlYUONHkW7/VVb9yAOM
	gyoSjxW8nU5N3eoQYvVn3jR+BPCYoGRxHKicJ8N1SjREL0w7+iG6quSdX87eD4+/vtErhR92Yol5z
	zK3f5rHNmxrEYYJsBkrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCJpv-0003YA-Vl; Thu, 12 Mar 2020 09:09:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJpS-0003IJ-5i; Thu, 12 Mar 2020 09:08:35 +0000
X-UUID: d90b8380b1e94cfa8b001dbac2340833-20200312
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=3TDN1j10xZCmKTt4/HmcFKsBFN2EXb3TUfii04A/U8I=; 
 b=bCiMW4GDIepzOD3X/35p7AkrDB6cZjG2XF9ZHKl6Ue/a56QUqX0qVhUdlPk+CB2MQB355PMCkXr1eamGony6qPTV6QJZUcRuAKs21wsybRmZZJl+EPVK8lrE/Vs6AF/Xh5Q27iUiyVgJ89UXr9AZA4R7yatEKyxQy7bBTsLCoVg=;
X-UUID: d90b8380b1e94cfa8b001dbac2340833-20200312
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ran.bi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 218938399; Thu, 12 Mar 2020 01:08:20 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Mar 2020 01:58:17 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs01n2.mediatek.inc
 (172.21.101.79) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 12 Mar 2020 16:56:37 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Mar 2020 16:58:06 +0800
Message-ID: <1584003477.6269.8.camel@mhfsdcap03>
Subject: Re: [PATCH v10 4/5] rtc: mt6397: Add support for the MediaTek
 MT6358 RTC
From: Ran Bi <ran.bi@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>
Date: Thu, 12 Mar 2020 16:57:57 +0800
In-Reply-To: <20200312074407.GA3142@dell>
References: <1583918223-22506-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1583918223-22506-5-git-send-email-hsin-hsiung.wang@mediatek.com>
 <20200312074407.GA3142@dell>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 41489C93ED8253A92B734623EA5AC68DE0AA3C817D3EF1171405B84CD846F7CC2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_020834_233590_154281AD 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Frank Wunderlich <frank-w@public-files.de>,
 Josef Friedl <josef.friedl@speed.at>, linux-pm@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, Sebastian
 Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-03-12 at 07:44 +0000, Lee Jones wrote:
> On Wed, 11 Mar 2020, Hsin-Hsiung Wang wrote:
> 
> > From: Ran Bi <ran.bi@mediatek.com>
> > 
> > This add support for the MediaTek MT6358 RTC. Driver using
> > compatible data to store different RTC_WRTGR address offset.
> > This replace RTC_WRTGR to RTC_WRTGR_MT6323 in mt6323-poweroff
> > driver which only needed by armv7 CPU without ATF.
> > 
> > Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> > Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> > ---
> >  drivers/power/reset/mt6323-poweroff.c |  2 +-
> >  drivers/rtc/rtc-mt6397.c              | 32 ++++++++++++++++++++++++--------
> >  include/linux/mfd/mt6397/rtc.h        |  9 ++++++++-
> >  3 files changed, 33 insertions(+), 10 deletions(-)
> > 

<...>

> >  
> >  #define RTC_IRQ_STA            0x0002
> >  #define RTC_IRQ_STA_AL         BIT(0)
> > @@ -65,6 +67,10 @@
> >  #define MTK_RTC_POLL_DELAY_US  10
> >  #define MTK_RTC_POLL_TIMEOUT   (jiffies_to_usecs(HZ))
> >  
> > +struct mtk_rtc_data {
> > +	u32			wrtgr;
> > +};
> 
> Do you expect to add more properties to this struct?
> 
> If not, it seems a bit overkill.
> 

Yes, we would add more properties here in future patches.

> >  struct mt6397_rtc {
> >  	struct device           *dev;
> >  	struct rtc_device       *rtc_dev;
> > @@ -74,6 +80,7 @@ struct mt6397_rtc {
> >  	struct regmap           *regmap;
> >  	int                     irq;
> >  	u32                     addr_base;
> > +	const struct mtk_rtc_data *data;
> 
> 'data' is a terrible variable name.
> 
> Why do you need to store this?
> 
> It's one variable which is used once AFAICT.
> 

I would rename 'data' to 'config'.

This struct will be extended in future patches to achieve more PMIC chip
compatibility.

> >  };
> >  
> >  #endif /* _LINUX_MFD_MT6397_RTC_H_ */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
