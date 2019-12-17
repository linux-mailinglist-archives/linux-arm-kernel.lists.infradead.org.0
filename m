Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4868712214A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 02:12:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZsEz2x/kJrT3ZuJH1S+tiNCykfGfChBRcoPZwH/gO4=; b=KOJWiM6pR3YwgQ
	bMvP0Mx44agTVIlxeNC0WUN2oRlHOjIvBJYnRH1JZnLTgh+02w7iWhy3dIcosMXF278wyBSKuKIuf
	kzcMv+jSrIEQCuMmNjZUZm8ZEnj+tMsjCsm4inOZr9BqV8LP4jQzTDJn7ZjsrwIn0RXfMo3n/UEKB
	8IF6DPAIr2W7YK8dGAZ84wb/V62ibNVGls4hGl+TUeofE3iIYwNOKkwfwMS9cXJq0jzXMGS2owLhL
	2Sk9Y+e+N5yTjBef8HUJf8S03gsjbhfqEUsYEZlUW3HPkiZhzrqaORcNKOjr2TBcxfqnoXzR6vEFJ
	h7e20nliqZq35hqUMd0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih1Pt-0000h5-P0; Tue, 17 Dec 2019 01:12:49 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih1Pl-0000fW-8R; Tue, 17 Dec 2019 01:12:43 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 93CEC9C5;
 Tue, 17 Dec 2019 02:12:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1576545147;
 bh=KcjcirugnejZF/v8qYCaUPEjRMBZVSzSBT527du65ro=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ud8Pp6GNKk4VcnODZGhTIPdvic9f0EE0uzu/AAfk2bEcRKWujIP+SVNygSd9k21Gb
 DVO6vq1bgcVLDVrJXIgx0bDBc93dTNvbxS9tvJFvDxOuW3JTGYv0dIsw5Z0diCsI6L
 9RMPQHAJ8kEN1Gd9ZH6orkpF5w+Ad7q9Pquc6Yuo=
Date: Tue, 17 Dec 2019 03:12:15 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 5/6] drm/mediatek: Convert to use CMA helpers
Message-ID: <20191217011215.GM4856@pendragon.ideasonboard.com>
References: <20191021214550.1461-1-robh@kernel.org>
 <20191021214550.1461-6-robh@kernel.org>
 <1cbca96c-19dd-1d15-949c-7fbcc15369b4@gmail.com>
 <CAL_JsqL6G=F45G+-QXF6T1269f9YquXfYtjoUkCpAoNartxM=Q@mail.gmail.com>
 <1571864784.19128.8.camel@mtksdaap41>
 <CAL_JsqJJ2ET2oCCkE=fqk7PWTWp3xiMRiMM_AmxRDws-NaKoOg@mail.gmail.com>
 <1571900577.27203.6.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571900577.27203.6.camel@mtksdaap41>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_171241_605458_033A6210 
X-CRM114-Status: GOOD (  26.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>, Daniel Kurtz <djkurtz@chromium.org>,
 Sandy Huang <hjc@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Yannick Fertre <yannick.fertre@st.com>,
 Nicolas Boichat <drinkcat@chromium.org>, Kevin Hilman <khilman@baylibre.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Xinliang Liu <z.liuxinliang@hisilicon.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>, CK Hu <ck.hu@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Ulrich Hecht <uli@fpond.eu>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chen Feng <puck.chen@hisilicon.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Philippe Cornu <philippe.cornu@st.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rongrong Zou <zourongrong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Thu, Oct 24, 2019 at 03:02:57PM +0800, CK Hu wrote:
> On Wed, 2019-10-23 at 17:56 -0500, Rob Herring wrote:
> > On Wed, Oct 23, 2019 at 4:06 PM CK Hu wrote:
> > > On Wed, 2019-10-23 at 12:42 -0500, Rob Herring wrote:
> > > > On Tue, Oct 22, 2019 at 12:07 PM Matthias Brugger wrote:
> > > > > On 21/10/2019 23:45, Rob Herring wrote:
> > > > > > The only reason the Mediatek driver doesn't use the CMA helpers is it
> > > > > > sets DMA_ATTR_NO_KERNEL_MAPPING and does a vmap() on demand. Using
> > > > > > vmap() is not even guaranteed to work as DMA buffers may not have a
> > > > > > struct page. Now that the CMA helpers support setting
> > > > > > DMA_ATTR_NO_KERNEL_MAPPING as needed or not, convert Mediatek driver to
> > > > > > use CMA helpers.
> > > > > >
> > > > > > Cc: CK Hu <ck.hu@mediatek.com>
> > > > > > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > > > > > Cc: David Airlie <airlied@linux.ie>
> > > > > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > > > > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > > > > > Cc: linux-arm-kernel@lists.infradead.org
> > > > > > Cc: linux-mediatek@lists.infradead.org
> > > > > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > > > > ---
> > > > >
> > > > > I tested this on my Chromebook with some patches on top of v5.4-rc1 [1], which
> > > > > work. If I add your patches on top of that, the system does not boot up.
> > > > > Unfortunately I don't have a serial console, so I wasn't able to see if there is
> > > > > any error message.
> > > >
> > > > Thanks for testing. I'm based on drm-misc-next, but don't see anything
> > > > obvious there that would matter. There are some mmap changes, but I
> > > > think they shouldn't matter.
> > > >
> > > > Did you have fbcon enabled? That may give more clues about where the problem is.
> > >
> > > There are priv->dma_dev for dma device, but it is not drm device. In
> > > mt8173.dtsi [1], there are mmsys device and ovl device, mmsys device is
> > > drm device and ovl device is mmsys's sub device which provide dma
> > > function, so ovl is the priv->dma_dev. I think your patch directly use
> > > drm device for dma operation and this would cause dma function fail.
> > > Please use priv->dma_dev for dma operation.
> > 
> > Right, thanks for catching that. Either we'll need to make CMA GEM
> > object have a struct device ptr or adjust the drm_device.dev to have
> > the necessary DMA setup.
> > 
> > One question though, why do you use CMA when you have an IOMMU? That's
> > not optimal as CMA size may be limited. Or you don't always have an
> > IOMMU?

Please note that the DRM GEM CMA helpers are misnamed, they use the DMA
coherent allocation API, and thus don't use CMA if the device is backed
by an IOMMU. They should really have been named DRM GEM DMA helpers.

> For all upstreamed mediatek SoC, all has IOMMU, so it does not need CMA.
> I think we use CMA just because we refer to other drm driver to
> implement mediatek drm driver and we misused CMA helper function but it
> works. I think we should change to more accurate implementation. If you
> want, you could modify it in this series.
> 

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
