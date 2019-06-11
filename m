Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68999417D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 00:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UaVGzpIMcy0Nfh+4YX5z2V4NJK5LAbo4wBfiK9mspQo=; b=IZ2Fw7aAgNKgBq
	eleegX+lolykF4tHmUm7NudHwX14Ok0eH8dpObuy55kJRU/xMcDCFWI0LK/51s4/KxshXaJe/K6U2
	BoDytpjhFdi0C1W9q2n0w6LjMHKTn0bvX4w7ohjhVN5mVa0PS+eYveOGrPk8nFYuqnAj9otGsB+mp
	Sap9eH8O9lf/nodquP/bNCcDKUst3BaHxW9FrXHRDhB2j1rbHnCAfw51rg1/2AI+8SCfempEof6aK
	heQwjHl7KjeLLgjDUjjN1B7wfA0FY7Qv3K+CG05gX8OQPcCW4wKQIFF1/uezuhalZM//v6Ku8k5ER
	T7IVuPEVR0+TIlrjlUlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haoqP-0005hl-4O; Tue, 11 Jun 2019 22:02:17 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haoqC-0005gR-Ds
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 22:02:05 +0000
Received: by mail-vs1-xe44.google.com with SMTP id q64so8982008vsd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 15:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R9aK4K+mYhxsBGuDL1wSkT9a9QdB+QJqvCcQqCRoZqk=;
 b=jynV4LeLSkp8mY/yMLs3t4Pg5sizpYJiXBSRzIWuITTAmY09IkU049XMUREkVXni+g
 JYmm1KjaWGlZolbGVaL1OfPnf3JRGs5E9Tzrgf9suFhpZzr0hUOGtfsAg/LWhL40oakz
 62yF0xRTAYPtIkJav7muvoNoGgY8jAOJHKSgg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R9aK4K+mYhxsBGuDL1wSkT9a9QdB+QJqvCcQqCRoZqk=;
 b=R0+5DbO3kIUcs7b4Y+Q0/O81C//Tfb9U1CuYZhbg+YgerJtdClq8BSXjKFxRLKltF8
 sEod4shZlHsbg/i+bRJTNoxiJ+ZBNHGFLakzbPFim3TCMFNVpGMJCrxrDb0lJ1Ebamnv
 KdOTmWsDqG0iHs0WB5NbMWNLh+pgENKcs8WprHwIQXUZR2CBo/fzOp79EwRtdoWyLksI
 H7OGUlPA/dfNBfciS8m946NeZKiMhc11tKfmXzhZw0Xvn/Udz9EsjghhxglNcy+1hN6A
 rD97zcEg7tYcELFLUEK5KejaiSIroVbrMJGwYg4tUFoRFOzpZ2dkGr9XeLYSgX/hS3gr
 e3Pw==
X-Gm-Message-State: APjAAAVbdlVxpJo7wCg31LfyQggdHN5lzx5NHYvn93pL4sSFFcb0jkRH
 FvnC6rvR+pXaKbhVVSNPEXzUFsRk1QRT5zRcRuatbA==
X-Google-Smtp-Source: APXvYqw0envY6zW+Lz/LpkpAKuJuPPY1ZENACuLJfRT4NvK+IVqHR36Y7gi5Vlqk+iKUf5BiCUj6/+NTISBNAEyEhIk=
X-Received: by 2002:a67:d384:: with SMTP id b4mr9315081vsj.152.1560290519746; 
 Tue, 11 Jun 2019 15:01:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-3-dbasehore@chromium.org>
 <CAL_JsqLM1CikZ8+NPjLk2CEW-z9vPynZpVG20x0jsa7hVq0LvA@mail.gmail.com>
In-Reply-To: <CAL_JsqLM1CikZ8+NPjLk2CEW-z9vPynZpVG20x0jsa7hVq0LvA@mail.gmail.com>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Tue, 11 Jun 2019 15:01:48 -0700
Message-ID: <CAGAzgsoWGqf0JQPNyRFnv2xZTMxje6idce7Dy5FZzuxj30mQyw@mail.gmail.com>
Subject: Re: [PATCH 2/5] dt-bindings: display/panel: Expand rotation
 documentation
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_150204_465058_B671C6E8 
X-CRM114-Status: GOOD (  25.07  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Sean Paul <sean@poorly.run>, Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sam Ravnborg <sam@ravnborg.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 8:25 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Mon, Jun 10, 2019 at 10:03 PM Derek Basehore <dbasehore@chromium.org> wrote:
> >
> > This adds to the rotation documentation to explain how drivers should
> > use the property and gives an example of the property in a devicetree
> > node.
> >
> > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > ---
> >  .../bindings/display/panel/panel.txt          | 32 +++++++++++++++++++
> >  1 file changed, 32 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/panel.txt b/Documentation/devicetree/bindings/display/panel/panel.txt
> > index e2e6867852b8..f35d62d933fc 100644
> > --- a/Documentation/devicetree/bindings/display/panel/panel.txt
> > +++ b/Documentation/devicetree/bindings/display/panel/panel.txt
> > @@ -2,3 +2,35 @@ Common display properties
> >  -------------------------
> >
> >  - rotation:    Display rotation in degrees counter clockwise (0,90,180,270)
> > +
> > +Property read from the device tree using of of_drm_get_panel_orientation
>
> Don't put kernel specifics into bindings.

Will remove that. I'll clean up the documentation to indicate that
this binding creates a panel orientation property unless the rotation
is handled in the Timing Controller on the panel if that sounds fine.

>
> > +
> > +The panel driver may apply the rotation at the TCON level, which will
>
> What's TCON? Something Mediatek specific IIRC.

The TCON is the Timing controller, which is on the panel. Every panel
has one. I'll add to the doc that the TCON is in the panel, etc.

>
> > +make the panel look like it isn't rotated to the kernel and any other
> > +software.
> > +
> > +If not, a panel orientation property should be added through the SoC
> > +vendor DRM code using the drm_connector_init_panel_orientation_property
> > +function.
>
> The 'rotation' property should be defined purely based on how the
> panel is mounted relative to a device's orientation. If the display
> pipeline has some ability to handle rotation, that's a feature of the
> display pipeline and not the panel.

This is how the panel orientation property is already handled in the
kernel. See drivers/gpu/drm/i915/vlv_dsi.c for more details.

>
> > +
> > +Example:
>
> This file is a collection of common properties. It shouldn't have an
> example especially as this example is mostly non-common properties.

Just copied one of our DTS entries that uses the property. I'll remove
everything under compatible except for rotation and status.

>
> > +       panel: panel@0 {
> > +               compatible = "boe,himax8279d8p";
> > +               reg = <0>;
> > +               enable-gpios = <&pio 45 0>;
>
> > +               pp33-gpios = <&pio 35 0>;
> > +               pp18-gpios = <&pio 36 0>;
>
> BTW, are these upstream because they look like GPIO controlled
> supplies which we model with gpio-regulator binding typically.

The boe,himax8279 driver was sent upstream, but it doesn't appear to
be merged. I'll look into it on that thread.

>
> > +               pinctrl-names = "default", "state_3300mv", "state_1800mv";
> > +               pinctrl-0 = <&panel_pins_default>;
> > +               pinctrl-1 = <&panel_pins_3300mv>;
> > +               pinctrl-2 = <&panel_pins_1800mv>;
> > +               backlight = <&backlight_lcd0>;
> > +               rotation = <180>;
> > +               status = "okay";
> > +
> > +               port {
> > +                       panel_in: endpoint {
> > +                               remote-endpoint = <&dsi_out>;
> > +                       };
> > +               };
> > +       };
> > --
> > 2.22.0.rc2.383.gf4fbbf30c2-goog
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
