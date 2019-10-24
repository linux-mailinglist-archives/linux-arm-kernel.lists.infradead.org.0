Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F0BE2AB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 09:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxtu6nb6NTEcSadaUvPgnaergcDDiFliICF+jdjzXAA=; b=OAA96X0c83Dd3j
	wlWr2WBOU3QSkMGm13UH36jQOi/Stdm4WYsacfXKogJtGDggsxFaCmpwjVaUtC739CxvUzs7xJJla
	/Spi7veop+4T+1qUvJT/X1tgEvFbJGbF1m9qmFCgFmRRStKHlwxGgS0lEEKLZq/LyQ9aTVRsVFwhs
	M9ADZxZELHFDh2k1Qn/MZjjglHuVgtTU53TNO6s/8+1jSe3nfi/0/pqFpBBuPtfT3PVLbOKjPhayZ
	2Tzu4wHqqF7QXb5lK/QaI0vT2XIw8Enfp54SCuQq3i9bL5J41XhRk/d7KgTWSGMuxIlNMPlT+yjrR
	3KRlzR7BIPGYUgWW8VTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNX9v-0004Up-H3; Thu, 24 Oct 2019 07:03:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNX9g-0004Su-N9; Thu, 24 Oct 2019 07:03:34 +0000
X-UUID: cd076735d9bc46259b261d3ecc0aa8af-20191023
X-UUID: cd076735d9bc46259b261d3ecc0aa8af-20191023
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1085928592; Wed, 23 Oct 2019 23:03:11 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 24 Oct 2019 00:03:03 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 24 Oct 2019 15:02:56 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 24 Oct 2019 15:02:56 +0800
Message-ID: <1571900577.27203.6.camel@mtksdaap41>
Subject: Re: [PATCH 5/6] drm/mediatek: Convert to use CMA helpers
From: CK Hu <ck.hu@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Thu, 24 Oct 2019 15:02:57 +0800
In-Reply-To: <CAL_JsqJJ2ET2oCCkE=fqk7PWTWp3xiMRiMM_AmxRDws-NaKoOg@mail.gmail.com>
References: <20191021214550.1461-1-robh@kernel.org>
 <20191021214550.1461-6-robh@kernel.org>
 <1cbca96c-19dd-1d15-949c-7fbcc15369b4@gmail.com>
 <CAL_JsqL6G=F45G+-QXF6T1269f9YquXfYtjoUkCpAoNartxM=Q@mail.gmail.com>
 <1571864784.19128.8.camel@mtksdaap41>
 <CAL_JsqJJ2ET2oCCkE=fqk7PWTWp3xiMRiMM_AmxRDws-NaKoOg@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_000332_759610_4C6FAB57 
X-CRM114-Status: GOOD (  27.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>, Daniel
 Kurtz <djkurtz@chromium.org>, Sandy Huang <hjc@rock-chips.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Yannick Fertre <yannick.fertre@st.com>,
 Nicolas Boichat <drinkcat@chromium.org>, Kevin Hilman <khilman@baylibre.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Xinliang Liu <z.liuxinliang@hisilicon.com>, "open list:ARM/Rockchip
 SoC..." <linux-rockchip@lists.infradead.org>, Chen-Yu Tsai <wens@csie.org>,
 Noralf =?ISO-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Ulrich Hecht <uli@fpond.eu>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chen Feng <puck.chen@hisilicon.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel
 Vetter <daniel@ffwll.ch>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Philippe Cornu <philippe.cornu@st.com>,
 Vincent Abriou <vincent.abriou@st.com>, Kieran
 Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rongrong Zou <zourongrong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Rob:

On Wed, 2019-10-23 at 17:56 -0500, Rob Herring wrote:
> On Wed, Oct 23, 2019 at 4:06 PM CK Hu <ck.hu@mediatek.com> wrote:
> >
> > Hi, Rob:
> >
> > On Wed, 2019-10-23 at 12:42 -0500, Rob Herring wrote:
> > > On Tue, Oct 22, 2019 at 12:07 PM Matthias Brugger
> > > <matthias.bgg@gmail.com> wrote:
> > > >
> > > > Hi Rob,
> > > >
> > > > On 21/10/2019 23:45, Rob Herring wrote:
> > > > > The only reason the Mediatek driver doesn't use the CMA helpers is it
> > > > > sets DMA_ATTR_NO_KERNEL_MAPPING and does a vmap() on demand. Using
> > > > > vmap() is not even guaranteed to work as DMA buffers may not have a
> > > > > struct page. Now that the CMA helpers support setting
> > > > > DMA_ATTR_NO_KERNEL_MAPPING as needed or not, convert Mediatek driver to
> > > > > use CMA helpers.
> > > > >
> > > > > Cc: CK Hu <ck.hu@mediatek.com>
> > > > > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > > > > Cc: David Airlie <airlied@linux.ie>
> > > > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > > > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > > > > Cc: linux-arm-kernel@lists.infradead.org
> > > > > Cc: linux-mediatek@lists.infradead.org
> > > > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > > > ---
> > > >
> > > > I tested this on my Chromebook with some patches on top of v5.4-rc1 [1], which
> > > > work. If I add your patches on top of that, the system does not boot up.
> > > > Unfortunately I don't have a serial console, so I wasn't able to see if there is
> > > > any error message.
> > >
> > > Thanks for testing. I'm based on drm-misc-next, but don't see anything
> > > obvious there that would matter. There are some mmap changes, but I
> > > think they shouldn't matter.
> > >
> > > Did you have fbcon enabled? That may give more clues about where the problem is.
> >
> > There are priv->dma_dev for dma device, but it is not drm device. In
> > mt8173.dtsi [1], there are mmsys device and ovl device, mmsys device is
> > drm device and ovl device is mmsys's sub device which provide dma
> > function, so ovl is the priv->dma_dev. I think your patch directly use
> > drm device for dma operation and this would cause dma function fail.
> > Please use priv->dma_dev for dma operation.
> 
> Right, thanks for catching that. Either we'll need to make CMA GEM
> object have a struct device ptr or adjust the drm_device.dev to have
> the necessary DMA setup.
> 
> One question though, why do you use CMA when you have an IOMMU? That's
> not optimal as CMA size may be limited. Or you don't always have an
> IOMMU?

For all upstreamed mediatek SoC, all has IOMMU, so it does not need CMA.
I think we use CMA just because we refer to other drm driver to
implement mediatek drm driver and we misused CMA helper function but it
works. I think we should change to more accurate implementation. If you
want, you could modify it in this series.

Regards,
CK

> 
> Rob



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
