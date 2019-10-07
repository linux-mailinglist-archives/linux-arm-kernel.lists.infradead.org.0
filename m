Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41908CEEE9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 00:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CuC/aIjOPuRIEcDF8haCRQc/UUyfrvIX8yBul5hIImc=; b=Ho2rqZMOuum5QY
	XyL1X+E+QUVbJsV/FWnXAYTqyccxqt3i8uTI5BxdCYFdhS0WIM+aqVjI4HhB5K0mc8W/AS+SzL8tb
	FEbdilmUqaRV7705VX6TQvaiBBMrkYNhR/14mLFJjHBS1TvEwVaBgdjoOA9oqA8HeHDafNduvy+Km
	QHIDvREDdhNDsWdAbd4KnW5utFY3uiwrPd08cj4kxTMkXe5buHlPFOT5lSz1nl0x1RE/YOSUs0rMT
	sJ4STpvynXbPAbRbmr42agf8nTPleysh3K4uAyaOSbqAHLbMJ+OFm2CmdVRFswsb3Art8mgeDIkbH
	Br37TzgsWxjLzd4Kfttw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHbEr-0001G3-P2; Mon, 07 Oct 2019 22:12:21 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHbEk-0001F9-4W
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 22:12:15 +0000
Received: by mail-ua1-x944.google.com with SMTP id k24so4579538uag.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 15:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+x3+NIU7NmFQGG7aY+XAxLXvLzEYeAhpOrsYIv4oDkM=;
 b=MRy0AppFIQGOlY6L6gMMEunAMXL17PrnNxCObaQGdWiDqCIMWNkg6d5h2eu2WrGsUo
 isbpiMoDVCMNQvERIIm5fZzgOV9cvY+1+AfjY/rODIpIhEefkrJ5GDUVMpt12++LLjRp
 9Vn/Kcj1lKTBr5qjg8tHk7Co5qMshcdfb/qIg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+x3+NIU7NmFQGG7aY+XAxLXvLzEYeAhpOrsYIv4oDkM=;
 b=IVsYDnsohkSL0bwpX2eN+OLNVazhzuE1Kh3zYyVaibn+Lr5FAYUvnaNgCli0yjSMOn
 X45/8COgv/CwyiC1kkuwaOOAZneDycSOA/OMO6SPTHLcGKlPeUm6qqRASoEIPcc4D6XP
 yc8clt7oC6crG6WymFogyQ95Vm9MssczxBRfj7kMSBMbp3phC1g3u1eGI7A4fMuwsRwS
 7fXAO/cm/+ANk83kBzAvHakb/J7ixdNLXLl0431UDq3K+ZfAvgQw+BlplTwNCQ+lb6yT
 Mx45u0MXAy4V2JDzqjjCy5yX58KWd7TJhYHyKNdqJGTCxKSIBByQXci1x8xKMb3wk23Y
 7kfw==
X-Gm-Message-State: APjAAAVGLFnGJJz58FY0iKu2JkC+O/nDEzUQoVGBeFJ8zcKaa3HWVML2
 NSPvGHj+PAo515Mri3RRbn4WJ4+FaHEw6TI6DGaaYQ==
X-Google-Smtp-Source: APXvYqyj2OkEFxcgaK3ee1ZsjfoQHllyB0cVUX7JFrkWjEJQF39euy4IXlYwvBX6Hqde2i9o6z7Czff2zEOecIzL9i0=
X-Received: by 2002:a9f:2746:: with SMTP id a64mr3186185uaa.66.1570486332696; 
 Mon, 07 Oct 2019 15:12:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190925225833.7310-1-dbasehore@chromium.org>
 <20190925225833.7310-2-dbasehore@chromium.org>
 <20191007163822.GA126146@art_vandelay>
In-Reply-To: <20191007163822.GA126146@art_vandelay>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Mon, 7 Oct 2019 15:12:00 -0700
Message-ID: <CAGAzgspJa1b1V06s3Om+OAbPLqWsWSptbVtQApEPAXDA7W-VSQ@mail.gmail.com>
Subject: Re: [PATCH v8 1/4] drm/panel: Add helper for reading DT rotation
To: Sean Paul <sean@poorly.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_151214_204767_CEA9CEBE 
X-CRM114-Status: GOOD (  27.20  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>, David Airlie <airlied@linux.ie>,
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

On Mon, Oct 7, 2019 at 9:38 AM Sean Paul <sean@poorly.run> wrote:
>
> On Wed, Sep 25, 2019 at 03:58:30PM -0700, Derek Basehore wrote:
> > This adds a helper function for reading the rotation (panel
> > orientation) from the device tree.
> >
> > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
>
> The patch LGTM, but I don't see it used anywhere later in the patch? Is there a
> panel driver incoming?

Yeah, the boe-tv101wum-nl6 panel will use it. It's not in the patch
currently sent upstream since I don't want to step on their toes, but
I plan on sending a patch to add it as soon as that is merged.

I could hold back on this patch until that panel driver is merged too.
Another alternative is to throw this into the generic drm_panel code,
but there's no obvious place to put it since DRM seems to leave
reading the DTS up to the panel drivers themselves.

>
> Sean
>
> > ---
> >  drivers/gpu/drm/drm_panel.c | 43 +++++++++++++++++++++++++++++++++++++
> >  include/drm/drm_panel.h     |  9 ++++++++
> >  2 files changed, 52 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> > index 6b0bf42039cf..0909b53b74e6 100644
> > --- a/drivers/gpu/drm/drm_panel.c
> > +++ b/drivers/gpu/drm/drm_panel.c
> > @@ -264,6 +264,49 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
> >       return ERR_PTR(-EPROBE_DEFER);
> >  }
> >  EXPORT_SYMBOL(of_drm_find_panel);
> > +
> > +/**
> > + * of_drm_get_panel_orientation - look up the orientation of the panel through
> > + * the "rotation" binding from a device tree node
> > + * @np: device tree node of the panel
> > + * @orientation: orientation enum to be filled in
> > + *
> > + * Looks up the rotation of a panel in the device tree. The orientation of the
> > + * panel is expressed as a property name "rotation" in the device tree. The
> > + * rotation in the device tree is counter clockwise.
> > + *
> > + * Return: 0 when a valid rotation value (0, 90, 180, or 270) is read or the
> > + * rotation property doesn't exist. -EERROR otherwise.
> > + */
> > +int of_drm_get_panel_orientation(const struct device_node *np,
> > +                              enum drm_panel_orientation *orientation)
> > +{
> > +     int rotation, ret;
> > +
> > +     ret = of_property_read_u32(np, "rotation", &rotation);
> > +     if (ret == -EINVAL) {
> > +             /* Don't return an error if there's no rotation property. */
> > +             *orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
> > +             return 0;
> > +     }
> > +
> > +     if (ret < 0)
> > +             return ret;
> > +
> > +     if (rotation == 0)
> > +             *orientation = DRM_MODE_PANEL_ORIENTATION_NORMAL;
> > +     else if (rotation == 90)
> > +             *orientation = DRM_MODE_PANEL_ORIENTATION_RIGHT_UP;
> > +     else if (rotation == 180)
> > +             *orientation = DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP;
> > +     else if (rotation == 270)
> > +             *orientation = DRM_MODE_PANEL_ORIENTATION_LEFT_UP;
> > +     else
> > +             return -EINVAL;
> > +
> > +     return 0;
> > +}
> > +EXPORT_SYMBOL(of_drm_get_panel_orientation);
> >  #endif
> >
> >  MODULE_AUTHOR("Thierry Reding <treding@nvidia.com>");
> > diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> > index 624bd15ecfab..d16158deacdc 100644
> > --- a/include/drm/drm_panel.h
> > +++ b/include/drm/drm_panel.h
> > @@ -34,6 +34,8 @@ struct drm_device;
> >  struct drm_panel;
> >  struct display_timing;
> >
> > +enum drm_panel_orientation;
> > +
> >  /**
> >   * struct drm_panel_funcs - perform operations on a given panel
> >   *
> > @@ -165,11 +167,18 @@ int drm_panel_get_modes(struct drm_panel *panel);
> >
> >  #if defined(CONFIG_OF) && defined(CONFIG_DRM_PANEL)
> >  struct drm_panel *of_drm_find_panel(const struct device_node *np);
> > +int of_drm_get_panel_orientation(const struct device_node *np,
> > +                              enum drm_panel_orientation *orientation);
> >  #else
> >  static inline struct drm_panel *of_drm_find_panel(const struct device_node *np)
> >  {
> >       return ERR_PTR(-ENODEV);
> >  }
> > +static inline int of_drm_get_panel_orientation(const struct device_node *np,
> > +             enum drm_panel_orientation *orientation)
> > +{
> > +     return -ENODEV;
> > +}
> >  #endif
> >
> >  #endif
> > --
> > 2.23.0.351.gc4317032e6-goog
> >
>
> --
> Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
