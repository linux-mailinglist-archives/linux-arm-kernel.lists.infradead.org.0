Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2295943612
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 14:52:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fyGs1aU9UKLo/vWUmJnae4zHP+Q8NTk4HIInK1efDc0=; b=ctV2yTA263By1x
	YGl7L7T/eOqt9rdTQhLm/umW3myNb4UByM+c4WybTCuCNbwTCTuLn+Ohy8TWs1Oi6sPCQYzRXYCRF
	KwslRfDqp8C7yVhpoGDDa9I8Nn68g4lhkcYRep7eSPDb+50woKZJkZTfwR2a6RRxckBXOVkMwQW94
	K43ZMgN4/dDkcoS3OZ8qdI9d6RlT4xMr6tsYcIEoJC0qP5yAqXyU/0mderp/wbxYXaJnpT32VMxUL
	9L2nGXG2E0qCZm5KeOSgQ/b/Zhk46CuSHMtaCNwPzI9QfHtyh/USD7SUsNYI6RXrWD4edTnam7bg3
	npLKTy5a8YA6rg/se/DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPDK-0004xV-WE; Thu, 13 Jun 2019 12:52:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPD5-0004wR-Ri; Thu, 13 Jun 2019 12:52:09 +0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8CEE3217F9;
 Thu, 13 Jun 2019 12:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560430325;
 bh=hGTL0UDB9YcWjm74Ir6wQQkX+JwdFyiJOCXF2M+5evU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=wTbq5CEloa5SHhkjgeBYGYhL8+3cX1A9KNfN+w4wcEsou4uoK3R8GYYknSIbC0XIw
 yMulQoFX7Op9+tmF1uisRQ1zdrMdT6oHMrM5jwVwc6ZR0HX/6KT6sJuFaqhby7RTL4
 hoqPqr8M2vylF39fcb7bXFgXZLZDkOMCY3ZSYu+A=
Received: by mail-qt1-f181.google.com with SMTP id x47so22311519qtk.11;
 Thu, 13 Jun 2019 05:52:05 -0700 (PDT)
X-Gm-Message-State: APjAAAVFpVhI9CpQLtZIRpiLcR2ytijYgjBR1muM+/NgEfLISBdHD25/
 rXztghjvdo9cRKlUYz6823rD00D5ZjBdOVzjWQ==
X-Google-Smtp-Source: APXvYqyQSf3AAUre27+KCK29BAV13oivw2pUie02NLqVC7Y0PandMlDUCad0+vn9k1QO92NFUsbnlgd0BItkrNEdFVo=
X-Received: by 2002:a0c:b786:: with SMTP id l6mr3426471qve.148.1560430324645; 
 Thu, 13 Jun 2019 05:52:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-3-dbasehore@chromium.org>
 <CAL_JsqLM1CikZ8+NPjLk2CEW-z9vPynZpVG20x0jsa7hVq0LvA@mail.gmail.com>
 <CAGAzgsoWGqf0JQPNyRFnv2xZTMxje6idce7Dy5FZzuxj30mQyw@mail.gmail.com>
In-Reply-To: <CAGAzgsoWGqf0JQPNyRFnv2xZTMxje6idce7Dy5FZzuxj30mQyw@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 13 Jun 2019 06:51:52 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+9K764hFT6GG=4paumGaxOUbnts4VJvTZ9a8Y-YPWdhg@mail.gmail.com>
Message-ID: <CAL_Jsq+9K764hFT6GG=4paumGaxOUbnts4VJvTZ9a8Y-YPWdhg@mail.gmail.com>
Subject: Re: [PATCH 2/5] dt-bindings: display/panel: Expand rotation
 documentation
To: "dbasehore ." <dbasehore@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_055207_930038_7DA6B0D9 
X-CRM114-Status: GOOD (  24.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, Jun 11, 2019 at 4:02 PM dbasehore . <dbasehore@chromium.org> wrote:
>
> On Tue, Jun 11, 2019 at 8:25 AM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Mon, Jun 10, 2019 at 10:03 PM Derek Basehore <dbasehore@chromium.org> wrote:
> > >
> > > This adds to the rotation documentation to explain how drivers should
> > > use the property and gives an example of the property in a devicetree
> > > node.
> > >
> > > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > > ---
> > >  .../bindings/display/panel/panel.txt          | 32 +++++++++++++++++++
> > >  1 file changed, 32 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/panel/panel.txt b/Documentation/devicetree/bindings/display/panel/panel.txt
> > > index e2e6867852b8..f35d62d933fc 100644
> > > --- a/Documentation/devicetree/bindings/display/panel/panel.txt
> > > +++ b/Documentation/devicetree/bindings/display/panel/panel.txt
> > > @@ -2,3 +2,35 @@ Common display properties
> > >  -------------------------
> > >
> > >  - rotation:    Display rotation in degrees counter clockwise (0,90,180,270)
> > > +
> > > +Property read from the device tree using of of_drm_get_panel_orientation
> >
> > Don't put kernel specifics into bindings.
>
> Will remove that. I'll clean up the documentation to indicate that
> this binding creates a panel orientation property unless the rotation
> is handled in the Timing Controller on the panel if that sounds fine.

Even if the timing ctrlr handles it, don't you still need to know what
the native orientation is?

> > > +
> > > +The panel driver may apply the rotation at the TCON level, which will
> >
> > What's TCON? Something Mediatek specific IIRC.
>
> The TCON is the Timing controller, which is on the panel. Every panel
> has one. I'll add to the doc that the TCON is in the panel, etc.
>
> >
> > > +make the panel look like it isn't rotated to the kernel and any other
> > > +software.
> > > +
> > > +If not, a panel orientation property should be added through the SoC
> > > +vendor DRM code using the drm_connector_init_panel_orientation_property
> > > +function.
> >
> > The 'rotation' property should be defined purely based on how the
> > panel is mounted relative to a device's orientation. If the display
> > pipeline has some ability to handle rotation, that's a feature of the
> > display pipeline and not the panel.
>
> This is how the panel orientation property is already handled in the
> kernel. See drivers/gpu/drm/i915/vlv_dsi.c for more details.

The point is your description is all about the kernel. This is a
binding which is not kernel specific.

> > > +
> > > +Example:
> >
> > This file is a collection of common properties. It shouldn't have an
> > example especially as this example is mostly non-common properties.
>
> Just copied one of our DTS entries that uses the property. I'll remove
> everything under compatible except for rotation and status.

Just remove the example or add what you want to the "boe,himax8279d8p"
binding doc. We are moving towards examples being compiled and
validated, so incomplete ones won't work.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
