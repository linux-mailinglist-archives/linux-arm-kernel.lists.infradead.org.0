Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C681147E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 11:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/AKkGxVZFKUfVBxg6M0oMi2SVfrrP6QwRtIqPzCSES4=; b=jhMhIPsQxTbn+R
	7L7GhdvvzqqwRwfmhe6zr1DFdp/955qEUXG1LhUsgJOTWkQR67WcwrYEGcn4fao64/LiwTvmT8Vnw
	HmRrQqsCoXHUgxSOgPVUj53bz4FkvOT6S8+i2FZ3FIPgcdFoWlqCVVOaXHeDd43RscFvf3/nkvqzt
	aW4V6PWjF/VBJGBOwayRRIDhMUfMJmhhU2+8RekCxPiRgp7nKcOmcgq7ZvFUXrlu/T+cq1goLbNkE
	4N8JuB7Fwr/o0heovVzNy7c+9xUteT+ujjOSCwh9yfw6YXUv9tzGSoo5h3cyLoePRYZ+4OGoeSuIJ
	bd1Jgdd0hFMJaODeJwOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNaMZ-0001yJ-28; Mon, 06 May 2019 09:56:47 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNaMN-0001xT-S5
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 09:56:38 +0000
Received: by mail-io1-xd42.google.com with SMTP id v7so4201619iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 02:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GKysu+ggf2+uQ2eAYt5TABC1hM3kbCmZ2bSj1OoK+OM=;
 b=MhppLfhCXW0INxzbxBlzLRgcumDMA+umn+ZIMi6q0SEj+gA8/uRdEhMghQ4vKoYlde
 wny1k8TC8SRS3s4LbUOF7CBlrkRiJGnGlgqons8KzzHCVS0QGRKKj7maoD8EyAmx/H/P
 ZQzliTixtkHeJsxdpySNWEHEBjUraQGgGtZIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GKysu+ggf2+uQ2eAYt5TABC1hM3kbCmZ2bSj1OoK+OM=;
 b=YnFaf2Sy1qq5CCQfpFU5Lpd4tQWjmKRTIXSnT+Lcrw/0XoP57tkM+BIiRYAhlVxO/t
 ir/F5zrLSNMWmDBiMxlJ/DlKKGPUhHBfkP2DivET6+GvATdV+0uAIm/+XVL6FbOVxXez
 kGmf43rRacBY16DqNwA+X6z6gYM10bNOP/f3nl/DyIKsZRxi/wA0NRR1dOER4UpXpn1c
 q1cIgs9aLaTuMF8TFxWWr3VEJ1eIvq7YOEMV+nhb+XiHxtH9wsO2JAiYv4Lxj88FIbnp
 7L4CZ+tVsXKYebtuFMlqV996DC0rvkAH6NsfHXdj3EAdjOI90gSiy5K9vC+ayuuoWBtO
 FWjg==
X-Gm-Message-State: APjAAAWHGX+M8DkFNyK0Q+rfWpyviaaoLGc3vRuo37owPo083Xds45xz
 wdR2ccmspvNBDsHDujczqIEIrmK5+g4eQJZOjYRQZQ==
X-Google-Smtp-Source: APXvYqxnO2dIWJ1E/SWJUjsbW7VCI6mmCoIsPzRHG8r3fnfPHd+tzQrIUou2K1SZ7cU+q2Nd+dainfJ8cFKvythXg7c=
X-Received: by 2002:a6b:bb82:: with SMTP id l124mr2188291iof.252.1557136594368; 
 Mon, 06 May 2019 02:56:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190501121448.3812-1-jagan@amarulasolutions.com>
 <20190501193429.GA9075@ravnborg.org>
In-Reply-To: <20190501193429.GA9075@ravnborg.org>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 6 May 2019 15:26:22 +0530
Message-ID: <CAMty3ZAfwVyvmAmenhrQHJcy3eq-Yb61a4WLop_8jS-7vM940A@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/panel: simple: Add FriendlyELEC HD702E 800x1280
 LCD panel
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_025636_403008_81D5E558 
X-CRM114-Status: GOOD (  25.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sam,

On Thu, May 2, 2019 at 1:04 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Jagan
>
> On Wed, May 01, 2019 at 05:44:47PM +0530, Jagan Teki wrote:
> > HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
> > resolution. It has built in Goodix, GT9271 captive touchscreen
> > with backlight adjustable via PWM.
> >
> > Add support for it.
> >
> > Cc: Thierry Reding <thierry.reding@gmail.com>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: dri-devel@lists.freedesktop.org
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>
> Please submit the binding in a separate patch as per
> Documentation/devicetree/bindings/submitting-patches.txt

Hmm.. prepared like this initially but few of my patches were combined
earlier even-though I sent it separately. anyway let me separate it
again.

>
> The binding looks like it is compatible with common-panel and
> simple-panel - please say so in the bindings.
> See for example the last few binding documents added to the kernel tree.

Correct, will update.

>
> > ---
> >  .../display/panel/friendlyarm,hd702e.txt      | 29 +++++++++++++++++++
> >  drivers/gpu/drm/panel/panel-simple.c          | 26 +++++++++++++++++
> >  2 files changed, 55 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt b/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
> > new file mode 100644
> > index 000000000000..67349d7f79be
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
> > @@ -0,0 +1,29 @@
> > +FriendlyELEC HD702E 800x1280 LCD panel
> > +
> > +HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
> > +resolution. It has built in Goodix, GT9271 captive touchscreen
> > +with backlight adjustable via PWM.
> > +
> > +Required properties:
> > +- compatible: should be "friendlyarm,hd702e"
> > +- power-supply: regulator to provide the supply voltage
> > +
> > +Optional properties:
> > +- backlight: phandle of the backlight device attached to the panel
> > +
> > +Optional nodes:
> > +- Video port for LCD panel input.
> > +
> > +Example:
> > +
> > +     panel {
> > +             compatible ="friendlyarm,hd702e";
> > +             backlight = <&backlight>;
> > +             power-supply = <&vcc3v3_sys>;
> > +
> > +             port {
> > +                     panel_in_edp: endpoint {
> > +                             remote-endpoint = <&edp_out_panel>;
> > +                     };
> > +             };
> > +     };
> > diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> > index 9e8218f6a3f2..9db3c0c65ef2 100644
> > --- a/drivers/gpu/drm/panel/panel-simple.c
> > +++ b/drivers/gpu/drm/panel/panel-simple.c
> > @@ -1184,6 +1184,29 @@ static const struct panel_desc foxlink_fl500wvr00_a0t = {
> >       .bus_format = MEDIA_BUS_FMT_RGB888_1X24,
> >  };
> >
> > +static const struct drm_display_mode friendlyarm_hd702e_mode = {
> > +     .clock          = 67185,
> > +     .hdisplay       = 800,
> > +     .hsync_start    = 800 + 20,
> > +     .hsync_end      = 800 + 20 + 24,
> > +     .htotal         = 800 + 20 + 24 + 20,
> > +     .vdisplay       = 1280,
> > +     .vsync_start    = 1280 + 4,
> > +     .vsync_end      = 1280 + 4 + 8,
> > +     .vtotal         = 1280 + 4 + 8 + 4,
> > +     .vrefresh       = 60,
> > +     .flags          = DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
> > +};
> > +
> > +static const struct panel_desc friendlyarm_hd702e = {
> > +     .modes = &friendlyarm_hd702e_mode,
> > +     .num_modes = 1,
> > +     .size = {
> > +             .width  = 94,
> > +             .height = 151,
> > +     },
> > +};
> As I read the datasheet then this panel needs at least a prepare delay
> of 10 ms (it says > 10 ms from VGH until Data).
> And then we also know that VGH shall be valid at least 10 ms after DVDD
> so prepare is likely 20 ms.
>
> Based on datasheet found here:
> https://pan.baidu.com/s/1geEfBLh/
>
> Please evaluate all delays.

This part I'm unclear, I tried to get the datasheet of this but
couldn't find it either. I have a reference for these FriendlyELEC
panels from https://github.com/friendlyarm/kernel-rockchip/blob/nanopi4-linux-v4.4.y/drivers/gpu/drm/panel/panel-friendlyelec.c
but they are not using any of these delays.

>
> > +
> >  static const struct drm_display_mode giantplus_gpg482739qs5_mode = {
> >       .clock = 9000,
> >       .hdisplay = 480,
> > @@ -2634,6 +2657,9 @@ static const struct of_device_id platform_of_match[] = {
> >       }, {
> >               .compatible = "edt,etm0700g0edh6",
> >               .data = &edt_etm0700g0bdh6,
> > +     }, {
> > +             .compatible = "friendlyarm,hd702e",
> > +             .data = &friendlyarm_hd702e,
> >       }, {
> >               .compatible = "foxlink,fl500wvr00-a0t",
> >               .data = &foxlink_fl500wvr00_a0t,
>
> Add these in sorted order.
> "fox" is before "fri"

True, will sort it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
