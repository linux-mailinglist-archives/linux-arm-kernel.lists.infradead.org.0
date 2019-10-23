Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B60A8E26BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 00:56:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9x70Ueo0ThNzCiEGB4Ar0vJFAhecFzd6zoE1zMal+c4=; b=FfyugueX3THO0W
	ojxqTC5+1VJ6eXdC1Pw4JtoSvSnfQ3KVxa2w4qpnWsjmkH9e8tWX6zCqVNqjFGzH3Gx6pSRCO1o3b
	ICkWi3WEDk90j5lHNn+gtcWGF7h7gAg3V4L5ixQo0FM3pWOom8aaEY1PSsPgj4fFWdjBUJKPDwEet
	au3gS6AnZ9ONzCJBveeAKEB+PZCa1ELF7QVC82YJQyS2F8Ap7qVNxibYXfZY4YOdGNp0klJ1CS6Xw
	wgwRrs0KfHB2LEBMQVoqWBlQ/5swnr1EC+MJ2Rv/zjf9U62JJgQjMH8vtjjyiO8xHeyjXdTZ98CRa
	3Zj/yPtKB48ryr8flmcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNPYN-0006E4-7Q; Wed, 23 Oct 2019 22:56:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNPYA-0006Db-Ie; Wed, 23 Oct 2019 22:56:21 +0000
Received: from mail-yw1-f42.google.com (mail-yw1-f42.google.com
 [209.85.161.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8AE282084C;
 Wed, 23 Oct 2019 22:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571871377;
 bh=LhcrwyC5PZJloPX3jFhnfrduPAW8ErL0lMICTFLMMe0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FEKPr5N2JCYWNSiyISiceh+xZCp4T71Q3Po7Ky4T6gFGRtpvdViVF7xmqTSYCBLl5
 /0l+w5j5gT8omSw9W1gzO/nYbezt7OcLBs2y9vN+EYjeIUF4tLusPrm98OYivPxEDl
 Dr3liqNTOym28LQ2P+7mXcKiewau21GT3XuEDaiY=
Received: by mail-yw1-f42.google.com with SMTP id s6so7995841ywe.5;
 Wed, 23 Oct 2019 15:56:17 -0700 (PDT)
X-Gm-Message-State: APjAAAUQoQ5BEV+qfX8h5/OJOBWYNeaPd/FWi0oRwFPg3DTKvQj3lO/x
 +66XaGjCzn/afWwKTYpzKO+P8GtkdmbLXGItug==
X-Google-Smtp-Source: APXvYqz8tk6cy33E2kjPb39rGitBh+OZdCbHVzL15q8iWarg/LpfsD8EOA+hxKTc+k0xKkmN+I8Mi6KKtv6gFF41Jc4=
X-Received: by 2002:a0d:d307:: with SMTP id v7mr4908901ywd.507.1571871376689; 
 Wed, 23 Oct 2019 15:56:16 -0700 (PDT)
MIME-Version: 1.0
References: <20191021214550.1461-1-robh@kernel.org>
 <20191021214550.1461-6-robh@kernel.org>
 <1cbca96c-19dd-1d15-949c-7fbcc15369b4@gmail.com>
 <CAL_JsqL6G=F45G+-QXF6T1269f9YquXfYtjoUkCpAoNartxM=Q@mail.gmail.com>
 <1571864784.19128.8.camel@mtksdaap41>
In-Reply-To: <1571864784.19128.8.camel@mtksdaap41>
From: Rob Herring <robh@kernel.org>
Date: Wed, 23 Oct 2019 17:56:02 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJJ2ET2oCCkE=fqk7PWTWp3xiMRiMM_AmxRDws-NaKoOg@mail.gmail.com>
Message-ID: <CAL_JsqJJ2ET2oCCkE=fqk7PWTWp3xiMRiMM_AmxRDws-NaKoOg@mail.gmail.com>
Subject: Re: [PATCH 5/6] drm/mediatek: Convert to use CMA helpers
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_155618_661172_A05E6F27 
X-CRM114-Status: GOOD (  25.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>, Daniel Kurtz <djkurtz@chromium.org>,
 Sandy Huang <hjc@rock-chips.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Yannick Fertre <yannick.fertre@st.com>,
 Nicolas Boichat <drinkcat@chromium.org>, Kevin Hilman <khilman@baylibre.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Xinliang Liu <z.liuxinliang@hisilicon.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>,
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

On Wed, Oct 23, 2019 at 4:06 PM CK Hu <ck.hu@mediatek.com> wrote:
>
> Hi, Rob:
>
> On Wed, 2019-10-23 at 12:42 -0500, Rob Herring wrote:
> > On Tue, Oct 22, 2019 at 12:07 PM Matthias Brugger
> > <matthias.bgg@gmail.com> wrote:
> > >
> > > Hi Rob,
> > >
> > > On 21/10/2019 23:45, Rob Herring wrote:
> > > > The only reason the Mediatek driver doesn't use the CMA helpers is it
> > > > sets DMA_ATTR_NO_KERNEL_MAPPING and does a vmap() on demand. Using
> > > > vmap() is not even guaranteed to work as DMA buffers may not have a
> > > > struct page. Now that the CMA helpers support setting
> > > > DMA_ATTR_NO_KERNEL_MAPPING as needed or not, convert Mediatek driver to
> > > > use CMA helpers.
> > > >
> > > > Cc: CK Hu <ck.hu@mediatek.com>
> > > > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > > > Cc: David Airlie <airlied@linux.ie>
> > > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > > > Cc: linux-arm-kernel@lists.infradead.org
> > > > Cc: linux-mediatek@lists.infradead.org
> > > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > > ---
> > >
> > > I tested this on my Chromebook with some patches on top of v5.4-rc1 [1], which
> > > work. If I add your patches on top of that, the system does not boot up.
> > > Unfortunately I don't have a serial console, so I wasn't able to see if there is
> > > any error message.
> >
> > Thanks for testing. I'm based on drm-misc-next, but don't see anything
> > obvious there that would matter. There are some mmap changes, but I
> > think they shouldn't matter.
> >
> > Did you have fbcon enabled? That may give more clues about where the problem is.
>
> There are priv->dma_dev for dma device, but it is not drm device. In
> mt8173.dtsi [1], there are mmsys device and ovl device, mmsys device is
> drm device and ovl device is mmsys's sub device which provide dma
> function, so ovl is the priv->dma_dev. I think your patch directly use
> drm device for dma operation and this would cause dma function fail.
> Please use priv->dma_dev for dma operation.

Right, thanks for catching that. Either we'll need to make CMA GEM
object have a struct device ptr or adjust the drm_device.dev to have
the necessary DMA setup.

One question though, why do you use CMA when you have an IOMMU? That's
not optimal as CMA size may be limited. Or you don't always have an
IOMMU?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
