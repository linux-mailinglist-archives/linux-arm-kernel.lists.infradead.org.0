Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D21444DFD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 23:00:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8koqx+/KXXtIRCPerLZmH8VqWg8soIRfLcfIt0XAf7I=; b=NtK6Sg/7hb2v3p
	ELanRcTC3X1eLSS5pPxQ84aAwArFw/XC7xRQYSMAF10b91cfX7BEiasIsHE6CKXnZAtnq+vU3mjub
	B0t4i4tMHjiBNjuKCIhMRICbLUFZJ92mynw3RCoMVDQlfCTAi1pPVqBnwe2MuFN38h6UHc9Le3Kbj
	h05fWMHrzteT07Xc5Y79Hb0Ls/RcxIYXjbNVpQrnFloNN7qkdo92oL4+YP9GKYBbteBcnC3NM9jFu
	MH7pbLp7D1wRfryjHNk6IYJ+8ZdG6QBkUAhzQVKr1l2YPzmyZEJOnlfof7sNMstmxmmKZHPb6+juo
	lsZtAB5LsecfQjS6FjCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbWq6-0006YQ-4d; Thu, 13 Jun 2019 21:00:54 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbWpt-0006XH-KW
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 21:00:43 +0000
Received: by mail-ua1-x944.google.com with SMTP id 8so80070uaz.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 14:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ANvjNrcE6QQq73dnlL+mZyHS0xmMxjzetcJMdK2W1jQ=;
 b=CXaGzb143DooLWuwJbQV6crBWgqXBWrbK4+440tGPl1wKAyG8snXREUHW1cU4JZmsm
 FByj4Hbh/N7MYr7J1mbnB5t09OsVMCB1N4NOkq7QEs9SD5IFkvvlk2kM4aqXonR4pgZ7
 0hbbny8wK43pD9gCj8eWhwnzsqv2xTicEtM7Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ANvjNrcE6QQq73dnlL+mZyHS0xmMxjzetcJMdK2W1jQ=;
 b=KAOwBaO1z8RiLZi634ttHooxG8vEVyf9lT3nWwW9/3nAa0R+ifHRpsqiblVXCMFbAC
 debrDixcIc382fdYp3qA0wzYujLwK+s7n3L37wOXXzK6YMX8/lt25MTuZn/zXXQC7z2o
 CdveN1xTT5xD9e/aMJsaG988c5noxpjVBM1TQMIeS4i8tbMELLApqeRRAzfrG0YrRc/5
 PDRV5vgOHdyPl1jVTxTL/ZIj0PajDOgxlOGSNky9w488D9mO4hIXpsy2ay/a7VbtRZcG
 P9Su32k1zg1EgLMxYunJaqREFyn2KG4A+/T3JYNc7hIW+O0gbLkn5lIDopVwrB3vey8N
 zG1g==
X-Gm-Message-State: APjAAAUYwRmQVILvNtzhQggimb9clNuyqbaDL3csqhnPAI3p3QvdcZVB
 Raz5Hp2LRJ/TqExJ7wRpWIiAH2I4v2GFk3P+3w8MxQ==
X-Google-Smtp-Source: APXvYqzlG0QFlUSsjLJYtq2bSsXOqJPxL2qmav8y+XGpEorpyChcZ6aWL5jxAoS7c6ipQTO+UOtbuYWiPAgZ4BuXj/Q=
X-Received: by 2002:ab0:3d2:: with SMTP id 76mr17494821uau.12.1560459637540;
 Thu, 13 Jun 2019 14:00:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-3-dbasehore@chromium.org>
 <CAL_JsqLM1CikZ8+NPjLk2CEW-z9vPynZpVG20x0jsa7hVq0LvA@mail.gmail.com>
 <CAGAzgsoWGqf0JQPNyRFnv2xZTMxje6idce7Dy5FZzuxj30mQyw@mail.gmail.com>
 <CAL_Jsq+9K764hFT6GG=4paumGaxOUbnts4VJvTZ9a8Y-YPWdhg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+9K764hFT6GG=4paumGaxOUbnts4VJvTZ9a8Y-YPWdhg@mail.gmail.com>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Thu, 13 Jun 2019 14:00:26 -0700
Message-ID: <CAGAzgsrNhumP2DEOff34cZ3UY=CV-EG1RM06Uf_tX3gdUMeSQg@mail.gmail.com>
Subject: Re: [PATCH 2/5] dt-bindings: display/panel: Expand rotation
 documentation
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_140041_672880_6D708147 
X-CRM114-Status: GOOD (  26.76  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Thu, Jun 13, 2019 at 5:52 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Tue, Jun 11, 2019 at 4:02 PM dbasehore . <dbasehore@chromium.org> wrote:
> >
> > On Tue, Jun 11, 2019 at 8:25 AM Rob Herring <robh+dt@kernel.org> wrote:
> > >
> > > On Mon, Jun 10, 2019 at 10:03 PM Derek Basehore <dbasehore@chromium.org> wrote:
> > > >
> > > > This adds to the rotation documentation to explain how drivers should
> > > > use the property and gives an example of the property in a devicetree
> > > > node.
> > > >
> > > > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > > > ---
> > > >  .../bindings/display/panel/panel.txt          | 32 +++++++++++++++++++
> > > >  1 file changed, 32 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/display/panel/panel.txt b/Documentation/devicetree/bindings/display/panel/panel.txt
> > > > index e2e6867852b8..f35d62d933fc 100644
> > > > --- a/Documentation/devicetree/bindings/display/panel/panel.txt
> > > > +++ b/Documentation/devicetree/bindings/display/panel/panel.txt
> > > > @@ -2,3 +2,35 @@ Common display properties
> > > >  -------------------------
> > > >
> > > >  - rotation:    Display rotation in degrees counter clockwise (0,90,180,270)
> > > > +
> > > > +Property read from the device tree using of of_drm_get_panel_orientation
> > >
> > > Don't put kernel specifics into bindings.
> >
> > Will remove that. I'll clean up the documentation to indicate that
> > this binding creates a panel orientation property unless the rotation
> > is handled in the Timing Controller on the panel if that sounds fine.
>
> Even if the timing ctrlr handles it, don't you still need to know what
> the native orientation is?

Not really. For all intents and purposes, the orientation of the panel
has changed.

>
> > > > +
> > > > +The panel driver may apply the rotation at the TCON level, which will
> > >
> > > What's TCON? Something Mediatek specific IIRC.
> >
> > The TCON is the Timing controller, which is on the panel. Every panel
> > has one. I'll add to the doc that the TCON is in the panel, etc.
> >
> > >
> > > > +make the panel look like it isn't rotated to the kernel and any other
> > > > +software.
> > > > +
> > > > +If not, a panel orientation property should be added through the SoC
> > > > +vendor DRM code using the drm_connector_init_panel_orientation_property
> > > > +function.
> > >
> > > The 'rotation' property should be defined purely based on how the
> > > panel is mounted relative to a device's orientation. If the display
> > > pipeline has some ability to handle rotation, that's a feature of the
> > > display pipeline and not the panel.
> >
> > This is how the panel orientation property is already handled in the
> > kernel. See drivers/gpu/drm/i915/vlv_dsi.c for more details.
>
> The point is your description is all about the kernel. This is a
> binding which is not kernel specific.

Ah, I see. I thought you were saying what the implementation should be.

>
> > > > +
> > > > +Example:
> > >
> > > This file is a collection of common properties. It shouldn't have an
> > > example especially as this example is mostly non-common properties.
> >
> > Just copied one of our DTS entries that uses the property. I'll remove
> > everything under compatible except for rotation and status.
>
> Just remove the example or add what you want to the "boe,himax8279d8p"
> binding doc. We are moving towards examples being compiled and
> validated, so incomplete ones won't work.

Ok, will do.

>
> Rob

Thanks for the quick reviews.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
