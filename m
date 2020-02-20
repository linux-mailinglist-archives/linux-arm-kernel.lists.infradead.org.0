Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 772071669FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 22:38:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSdcCfqgfI7CwIg3rX6ADr9Cv1NKCgpISsjoPK9obl0=; b=IF5UczU5jVfCOG
	WutoFNAVoc0+CyCha5rxK2GuDSsX+OQthIDXS3vrwISUCajgdKm/ySl4l07tmlV58wtG0orJxvyyi
	byGru5zfRorK8P5OK15ESMDrWOESpppeG7j34pltzmFToN2qMgCJA41DBEoEY8mFQKTe6j9gC3rJo
	LZOGRvUwk/3CB0hfAnIKlPKrZMEKxwfxCMNH53eMjBjNv+O7qlIyezdqtS7zNHB96i31jE1QSZdTx
	zXSZ7++ejXBbaoEPYwq8HSB42/2VCn/nGuK4pSuEP0wLj2ppzVpD2f9sxDAgTVxF6ariUx4SBBsqd
	7jB6I5SYRMxRwKCH3qUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4tWR-0007eD-SX; Thu, 20 Feb 2020 21:38:15 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4tW7-0007Uk-25
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 21:37:57 +0000
Received: by mail-qk1-x741.google.com with SMTP id j8so5026827qka.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 13:37:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mtH2MLidwl9++wyo68VivOeVZ1eKeqRlT2z3fduTibk=;
 b=r2fzHkSmmhSOpPfv60LemDTCouA+wqlfydNS58a7/9b6oAvY7dvlVy0m1X9qfp6GFO
 f8E4BulhWJ1JfqyMWvEnqCzi+E+mm+IjnNRN8kwLQaQiT9H+EvvnG/RhhzXYfJm7/1vG
 xXgnpVsIPdwy1iPX/czKlk6DJtKpuMkcby6F3bYuSSj67Xe3d2tJM+maIgbKPxiF8Rxe
 0qmU0XioEhfpkCjkSMaWNsAzW7rbkRERdPsFzUYmcbsAnXMnJZiF75GLubTl1qR6RRn0
 Rc5Bky5Lyws72PzUbnl8udHa/xLeqLCTmPnIJbo3yEXex3g6FU/60garybwdad8FNYGg
 f5ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mtH2MLidwl9++wyo68VivOeVZ1eKeqRlT2z3fduTibk=;
 b=Sce2tBVxlPvufEMTshYNDICUUIxjdXlhl0Zyrcb+EuTL+UmzDual7LV/4Yvd8gU4ot
 ZotfCFH/JpD4fVrwOQwPD/LkjJsRutqlffh45XtDYDvySA9aP0u3uOMZXk/j8HXvSa3R
 A42c5iPriCsGNHxyY7KYXAv8axZFIsC0yZYOcq+5yzf+7Qz0qIrCNlExJzC/P1mXRAVO
 k9lgIIix7eL6GEbMkspJLTUB6DeYLrRLBjuJ5+XYGg4P6/cV1fbYnLLAANAU+NZ53byn
 Q2sQFZs4DQfMPBka2QPtoo9k1v5D6/ADmm2atvDFCmNgsX8JCpthi3WwhJZ/r7vIi1A+
 Mzwg==
X-Gm-Message-State: APjAAAUhcZUBjCUNjkz1U64mcUf/QF5e3QFk90dDfTl5HayAayoq7jN2
 iyZyn713lsxI6gtw4w599s+eU0kJ96pJmalHLKI=
X-Google-Smtp-Source: APXvYqzC17jJf8WSEQarDVhinql9TAMsf5KB/vSzhkgDO/I0O9wFO00fmXTLO3jktl0H/mpFHoh4KIlD6179zJYx+90=
X-Received: by 2002:a37:b285:: with SMTP id b127mr3343845qkf.413.1582234673672; 
 Thu, 20 Feb 2020 13:37:53 -0800 (PST)
MIME-Version: 1.0
References: <20200220083508.792071-1-anarsoul@gmail.com>
 <20200220083508.792071-6-anarsoul@gmail.com>
 <20200220135929.GF4998@pendragon.ideasonboard.com>
In-Reply-To: <20200220135929.GF4998@pendragon.ideasonboard.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Thu, 20 Feb 2020 13:37:40 -0800
Message-ID: <CA+E=qVcNuYDHaz1WEbDqosEdwqtpte7hzL405LOw0rmraWCzWw@mail.gmail.com>
Subject: Re: [PATCH 5/6] drm/panel: simple: Add NewEast Optoelectronics CO.,
 LTD WJFH116008A panel support
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_133755_161854_40610D3C 
X-CRM114-Status: GOOD (  21.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Chen-Yu Tsai <wens@csie.org>, Icenowy Zheng <icenowy@aosc.io>,
 Stephan Gerhold <stephan@gerhold.net>, Jonas Karlman <jonas@kwiboo.se>,
 Torsten Duwe <duwe@suse.de>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 5:59 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Vasily,

Hi Laurent,

>
> Thank you for the patch.
>
> On Thu, Feb 20, 2020 at 12:35:07AM -0800, Vasily Khoruzhick wrote:
> > This commit adds support for the NewEast Optoelectronics CO., LTD
> > WJFH116008A 11.6" 1920x1080 TFT LCD panel.
> >
> > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > ---
> >  drivers/gpu/drm/panel/panel-simple.c | 47 ++++++++++++++++++++++++++++
> >  1 file changed, 47 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> > index e14c14ac62b5..aa04afaf3d26 100644
> > --- a/drivers/gpu/drm/panel/panel-simple.c
> > +++ b/drivers/gpu/drm/panel/panel-simple.c
> > @@ -2224,6 +2224,50 @@ static const struct panel_desc netron_dy_e231732 = {
> >       .bus_format = MEDIA_BUS_FMT_RGB666_1X18,
> >  };
> >
> > +static const struct drm_display_mode neweast_wjfh116008a_modes[] = {
> > +{
> > +     .clock = 138500,
> > +     .hdisplay = 1920,
> > +     .hsync_start = 1920 + 48,
> > +     .hsync_end = 1920 + 48 + 32,
> > +     .htotal = 1920 + 48 + 32 + 80,
> > +     .vdisplay = 1080,
> > +     .vsync_start = 1080 + 3,
> > +     .vsync_end = 1080 + 3 + 5,
> > +     .vtotal = 1080 + 3 + 5 + 23,
> > +     .vrefresh = 60,
> > +     .flags = DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
> > +}, {
> > +     .clock = 110920,
> > +     .hdisplay = 1920,
> > +     .hsync_start = 1920 + 48,
> > +     .hsync_end = 1920 + 48 + 32,
> > +     .htotal = 1920 + 48 + 32 + 80,
> > +     .vdisplay = 1080,
> > +     .vsync_start = 1080 + 3,
> > +     .vsync_end = 1080 + 3 + 5,
> > +     .vtotal = 1080 + 3 + 5 + 23,
> > +     .vrefresh = 48,
> > +     .flags = DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
> > +} };
>
> This should be indented one step to the right, see boe_nv101wxmn51_modes
> for instance.

Will do.

> The only different between the two modes is the clock, leading to
> different refresh rates. Are only those two clock frequencies supported,
> or does the panel support anything in-between as well ? In the latter
> case, would it make sense to use display_timing instead of
> drm_display_mode ? See dlc_dlc0700yzg_1_timing for an example.

These are coming from EDID. The datasheet [1] says typical frequency
is 138.5MHz and min/max are not specified, so I'm not sure whether it
supports anything in between. I did check that both modes work though.

[1] http://files.pine64.org/doc/datasheet/pinebook/11.6inches-1080P-IPS-LCD-Panel-spec-WJFH116008A.pdf



> > +
> > +static const struct panel_desc neweast_wjfh116008a = {
> > +     .modes = neweast_wjfh116008a_modes,
> > +     .num_modes = 2,
> > +     .bpc = 6,
> > +     .size = {
> > +             .width = 260,
> > +             .height = 150,
> > +     },
> > +     .delay = {
> > +             .prepare = 110,
> > +             .enable = 20,
> > +             .unprepare = 500,
> > +     },
> > +     .bus_format = MEDIA_BUS_FMT_RGB666_1X18,
> > +     .connector_type = DRM_MODE_CONNECTOR_eDP,
> > +};
> > +
> >  static const struct drm_display_mode newhaven_nhd_43_480272ef_atxl_mode = {
> >       .clock = 9000,
> >       .hdisplay = 480,
> > @@ -3399,6 +3443,9 @@ static const struct of_device_id platform_of_match[] = {
> >       }, {
> >               .compatible = "netron-dy,e231732",
> >               .data = &netron_dy_e231732,
> > +     }, {
> > +             .compatible = "neweast,wjfh116008a",
> > +             .data = &neweast_wjfh116008a,
> >       }, {
> >               .compatible = "newhaven,nhd-4.3-480272ef-atxl",
> >               .data = &newhaven_nhd_43_480272ef_atxl,
>
> --
> Regards,
>
> Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
