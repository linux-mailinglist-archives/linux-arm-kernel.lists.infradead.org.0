Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A91A316099A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 05:20:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3TVegZ3Lkzb2/WpHozkHsWvu54xorDsRgpgXkzi5TkM=; b=qT5gl/pk3X+oLY
	ocIPVOQCmKmdCyyPzdJM9SXwa4tbEJ8DKPyr/1u4bfct9cfsjnlrb2IK9c18uCzyTOOM6WvBsWS8P
	iCOB598lpReLxZY3r+Gf+76UDILBre4N6TxP6YzLcOVcII4L/y3OPdvNRB8qduKqBd/3W/1Ed/qeA
	/X+B/cwwZDdsutY6KikY48wHhmIOwiGxF0FRfvsAzD4IUxvafru57Aigvhtv+EMDl5/D6mt4p+OMt
	1X36la2rislsXdi8F+CCXB/tow24i7MEpVpLktTRS2eCjSb3bb+d6sPvrjs/RX0ccB8JL761ORU3X
	lytpeZf2iWcb8jTHAqkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Xt1-0001x0-L6; Mon, 17 Feb 2020 04:19:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Xsr-0001wg-8X
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 04:19:50 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE99B20679;
 Mon, 17 Feb 2020 04:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581913188;
 bh=vSJhH4hRafpBeA3RpiwKl7g8fobMI6k5ZvEMdAV6M0U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fwbH4t9J6U6wr0FuZn6up3R2tTvlBCdv0J+FfeIGqeOdJQuev2GFB1wC3wIuGj9CH
 CL1msGCwJ7N+KUY+qLicZj16qmSLFHq0cIdb2lwl2H+Zu/xWqB1cJxyeHMh3cV2+BU
 e9n2Nuq5Wxk93gyLNelA+YurjPjyxEwSP9i46gOA=
Date: Mon, 17 Feb 2020 12:19:40 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Christian Gmeiner <christian.gmeiner@gmail.com>
Subject: Re: [PATCH] ARM: multi_v7_defconfig: enable drm imx support
Message-ID: <20200217041936.GH5395@dragon>
References: <20200124084359.16817-1-christian.gmeiner@gmail.com>
 <CAH9NwWfMwN9cRgMHPF5zPCmdmnrfX7E6cAYW8yfUGTf+t3=HzA@mail.gmail.com>
 <CAJKOXPdM4s8DAVPh1zOt5kYyEjp4dmbseC3RdrKaVk4H41XOwg@mail.gmail.com>
 <CAH9NwWdg5r1T9TkXAe4=3Zui2vMcnOc2UJ=e02NFbiPhb5n48w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAH9NwWdg5r1T9TkXAe4=3Zui2vMcnOc2UJ=e02NFbiPhb5n48w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_201949_344422_B170E2C6 
X-CRM114-Status: GOOD (  20.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Tony Lindgren <tony@atomide.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 LKML <linux-kernel@vger.kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Lubomir Rintel <lkundrak@v3.sk>,
 Patrice Chotard <patrice.chotard@st.com>, Joel Stanley <joel@jms.id.au>,
 Philipp Zabel <p.zabel@pengutronix.de>, Olof Johansson <olof@lixom.net>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 02:30:12PM +0100, Christian Gmeiner wrote:
> Am Mo., 10. Feb. 2020 um 11:58 Uhr schrieb Krzysztof Kozlowski
> <krzk@kernel.org>:
> >
> > On Mon, 10 Feb 2020 at 11:54, Christian Gmeiner
> > <christian.gmeiner@gmail.com> wrote:
> > >
> > > Am Fr., 24. Jan. 2020 um 09:44 Uhr schrieb Christian Gmeiner
> > > <christian.gmeiner@gmail.com>:
> > > >
> > > > Makes it possible to multi v7 defconfig for stm32 and imx based devices with

What do you mean by stm32 based devices here?

Shawn

> > > > full drm support.
> > > >
> > > > Signed-off-by: Christian Gmeiner <christian.gmeiner@gmail.com>
> > > > ---
> > > >  arch/arm/configs/multi_v7_defconfig | 6 ++++++
> > > >  1 file changed, 6 insertions(+)
> > > >
> > > > diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> > > > index 3f1b96dc7faa..d213a35557ed 100644
> > > > --- a/arch/arm/configs/multi_v7_defconfig
> > > > +++ b/arch/arm/configs/multi_v7_defconfig
> > > > @@ -637,6 +637,7 @@ CONFIG_CEC_PLATFORM_DRIVERS=y
> > > >  CONFIG_VIDEO_SAMSUNG_S5P_CEC=m
> > > >  CONFIG_VIDEO_ADV7180=m
> > > >  CONFIG_VIDEO_ML86V7667=m
> > > > +CONFIG_IMX_IPUV3_CORE=m
> > > >  CONFIG_DRM=y
> > > >  # CONFIG_DRM_I2C_CH7006 is not set
> > > >  # CONFIG_DRM_I2C_SIL164 is not set
> > > > @@ -652,6 +653,11 @@ CONFIG_ROCKCHIP_ANALOGIX_DP=y
> > > >  CONFIG_ROCKCHIP_DW_HDMI=y
> > > >  CONFIG_ROCKCHIP_DW_MIPI_DSI=y
> > > >  CONFIG_ROCKCHIP_INNO_HDMI=y
> > > > +CONFIG_DRM_IMX=m
> > > > +CONFIG_DRM_IMX_PARALLEL_DISPLAY=m
> > > > +CONFIG_DRM_IMX_TVE=m
> > > > +CONFIG_DRM_IMX_LDB=m
> > > > +CONFIG_DRM_IMX_HDMI=m
> > > >  CONFIG_DRM_ATMEL_HLCDC=m
> > > >  CONFIG_DRM_RCAR_DU=m
> > > >  CONFIG_DRM_RCAR_LVDS=y
> > > > --
> > > > 2.24.1
> > > >
> > >
> > >
> > > ping
> >
> > Hi,
> >
> > It looks like you entirely skipped iMX maintainers in Cc/to list, so
> > whom are you pinging?
> >
> 
> I did use git send-email --cc-cmd='./scripts/get_maintainer.pl .. to
> send out this patch so I am not the one to blame here.
> 
> Adding some imx maintainers...
> 
> -- 
> Thanks
> --
> Christian Gmeiner, MSc
> 
> https://christian-gmeiner.info/privacypolicy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
