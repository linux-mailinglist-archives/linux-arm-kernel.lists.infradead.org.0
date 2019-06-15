Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9536846D47
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 02:44:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytuj9uCs0RCSJTbwwqH5/rqgKCMwMMWQ7HgZH+rWBDE=; b=Ne9Th0YfNGBuL1
	YEbXwrnKYXobySgBFmn4zRBNnfzegUvb/RI15QfBjtkcLJEkPHEVISdO+pKm4sYmnNjzp7KRldf9y
	/nDp/Y/z3pfnLVIGcbfjqexcc87VGg6TL103+8DC8Zp//40rtoJMrUSQDWqw9OuzwUB2+kj8arc3s
	FoCdY5vahaYqs8BEbVWC6XPxv8orsKvphI/VFivYi+qceSdZtcYL32WEvgTMzs1pgIqnE9w7ZnPpR
	1QZFjJ3ocHOoER1nnv/7paUsxx0V6nkjcg5hsOD/O9ahJXCKgylyBzex7kYMB9EYhB+8R4Ot9LK29
	sVTlNo/Y2+3PF9C6i5WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbwoL-0005Js-KJ; Sat, 15 Jun 2019 00:44:49 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbwo8-0005Iw-I9
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 00:44:38 +0000
Received: by mail-ua1-x944.google.com with SMTP id r7so1590901ual.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 17:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hqhu3iKjp8F7B0PNppJXXZGMbjFkFcAKAjlOSHZGpCw=;
 b=BtucgTmjUbw04kv6gLtiH5nn5+UMipRd1oqlFsMTR2xCAp7dX7SUmOFAn+CiWX1/b0
 hhfIE8TVXUaoZx+P37dcbybW/6oDUCNAojfJQ3XVpYGMNP//S4/I38oQKNIvywS47Ah3
 eIKb/hDcaVeqiHgUKu6Oac7LI+kqGw2jXUavc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hqhu3iKjp8F7B0PNppJXXZGMbjFkFcAKAjlOSHZGpCw=;
 b=WVbYGp5WkdcJorHqK63b6WTFu1c86WQ6YNUAaGydtLEjoFnQKio0JRDgDwvFQiuYz1
 No20LGsiaWB82Kru8rCWW0+8LGyu2wAn/+PxFMlB4bV7ziSRg9UhBaCPz44TkLvc5Z8G
 z49wjs5O3RaTqsmY5cU2zMg8CYcY5KZzTCCf8h2biZZwhgPRSg28GFwgW3a08Owc6aUE
 U+U97QUum3E33t6jaSZStiAtLL/wnlMTVcORVnuCBz+54C88qCKRpoRcmmwiHGnPWKkH
 IT5r52/L/Z8E2ZWnDN2HBPi4cWZGBTQAFOkQ7wvO/In7HdF6yBrIipSZUFOqTgEw03vY
 rknA==
X-Gm-Message-State: APjAAAXyJqVpJaNXZJsCt6IrMzEJg5kCyQehYqH9EJNhS5qxr5BQaFu4
 sheeesL9lXzH8QIEkRvUuTajbPGo7wiDvfhlL8/hlQ==
X-Google-Smtp-Source: APXvYqzjiaDBlFO8bdV4IvvtCzZkmZFMZ8APcuYtyha2wtOhOiLtK7BKGsOv/u0x5QU1iMYswss+zrH9W2lUt/K8C88=
X-Received: by 2002:a9f:31a2:: with SMTP id v31mr1811971uad.15.1560559475175; 
 Fri, 14 Jun 2019 17:44:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-2-dbasehore@chromium.org>
 <20190612211807.GA13155@ravnborg.org>
 <CAGAzgsqgbr5rWpyWB1H_66=kxBRb7kw4wE7h34TJfE7eJ1mSQQ@mail.gmail.com>
In-Reply-To: <CAGAzgsqgbr5rWpyWB1H_66=kxBRb7kw4wE7h34TJfE7eJ1mSQQ@mail.gmail.com>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Fri, 14 Jun 2019 17:44:24 -0700
Message-ID: <CAGAzgsqv8qYM-+_4bPLHtyiaox2jFLMMka8n1Wnk-q5LVPKqDg@mail.gmail.com>
Subject: Re: [PATCH 1/5] drm/panel: Add helper for reading DT rotation
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_174436_598124_23DDF186 
X-CRM114-Status: GOOD (  29.72  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 5:43 PM dbasehore . <dbasehore@chromium.org> wrote:
>
> On Wed, Jun 12, 2019 at 2:18 PM Sam Ravnborg <sam@ravnborg.org> wrote:
> >
> > Hi Derek.
> >
> > On Mon, Jun 10, 2019 at 09:03:46PM -0700, Derek Basehore wrote:
> > > This adds a helper function for reading the rotation (panel
> > > orientation) from the device tree.
> > >
> > > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > > ---
> > >  drivers/gpu/drm/drm_panel.c | 41 +++++++++++++++++++++++++++++++++++++
> > >  include/drm/drm_panel.h     |  7 +++++++
> > >  2 files changed, 48 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> > > index dbd5b873e8f2..3b689ce4a51a 100644
> > > --- a/drivers/gpu/drm/drm_panel.c
> > > +++ b/drivers/gpu/drm/drm_panel.c
> > > @@ -172,6 +172,47 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
> > >       return ERR_PTR(-EPROBE_DEFER);
> > >  }
> > >  EXPORT_SYMBOL(of_drm_find_panel);
> > > +
> > > +/**
> > > + * of_drm_get_panel_orientation - look up the rotation of the panel using a
> > > + * device tree node
> > > + * @np: device tree node of the panel
> > > + * @orientation: orientation enum to be filled in
> > The comment says "enum" but the type used is an int.
> > Why not use enum drm_panel_orientation?
> >
>
> The binding is just an int value, but I can change it to the enum.

Oops, I see what happened here. The way I wrote it should actually use the enum

>
> > > + *
> > > + * Looks up the rotation of a panel in the device tree. The rotation in the
> > > + * device tree is counter clockwise.
> > > + *
> > > + * Return: 0 when a valid rotation value (0, 90, 180, or 270) is read or the
> > > + * rotation property doesn't exist. -EERROR otherwise.
> > > + */
> > Initially I read -EEROOR as a specific error code.
> > But I gues the semantic is to say that a negative error code is returned
> > if something was wrong.
> > As we do not use the "-EERROR" syntax anywhere else in drm, please
> > reword like we do in other places.
> >
> >
> > Also - it is worth to mention that the rotation returned is
> > DRM_MODE_PANEL_ORIENTATION_UNKNOWN if the property is not specified.
> > I wonder if this is correct, as no property could also been
> > interpretated as DRM_MODE_PANEL_ORIENTATION_NORMAL.
> > And in most cases the roation property is optional, so one could
> > assume that no property equals 0 degree.
> >
> >
> >         Sam
> >
> > > +int of_drm_get_panel_orientation(const struct device_node *np, int *orientation)
> > > +{
> > > +     int rotation, ret;
> > > +
> > > +     ret = of_property_read_u32(np, "rotation", &rotation);
> > > +     if (ret == -EINVAL) {
> > > +             /* Don't return an error if there's no rotation property. */
> > > +             *orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
> > > +             return 0;
> > > +     }
> > > +
> > > +     if (ret < 0)
> > > +             return ret;
> > > +
> > > +     if (rotation == 0)
> > > +             *orientation = DRM_MODE_PANEL_ORIENTATION_NORMAL;
> > > +     else if (rotation == 90)
> > > +             *orientation = DRM_MODE_PANEL_ORIENTATION_RIGHT_UP;
> > > +     else if (rotation == 180)
> > > +             *orientation = DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP;
> > > +     else if (rotation == 270)
> > > +             *orientation = DRM_MODE_PANEL_ORIENTATION_LEFT_UP;
> > > +     else
> > > +             return -EINVAL;
> > > +
> > > +     return 0;
> > > +}
> > > +EXPORT_SYMBOL(of_drm_get_panel_orientation);
> > >  #endif
> > >
> > >  MODULE_AUTHOR("Thierry Reding <treding@nvidia.com>");
> > > diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> > > index 8c738c0e6e9f..13631b2efbaa 100644
> > > --- a/include/drm/drm_panel.h
> > > +++ b/include/drm/drm_panel.h
> > > @@ -197,11 +197,18 @@ int drm_panel_detach(struct drm_panel *panel);
> > >
> > >  #if defined(CONFIG_OF) && defined(CONFIG_DRM_PANEL)
> > >  struct drm_panel *of_drm_find_panel(const struct device_node *np);
> > > +int of_drm_get_panel_orientation(const struct device_node *np,
> > > +                              int *orientation);
> > >  #else
> > >  static inline struct drm_panel *of_drm_find_panel(const struct device_node *np)
> > >  {
> > >       return ERR_PTR(-ENODEV);
> > >  }
> > > +int of_drm_get_panel_orientation(const struct device_node *np,
> > > +                              int *orientation)
> > > +{
> > > +     return -ENODEV;
> > > +}
> > >  #endif
> > >
> > >  #endif
> > > --
> > > 2.22.0.rc2.383.gf4fbbf30c2-goog

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
