Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1F0CEEC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 00:02:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WeVtl7dA1JdE5M3YzMgq3NYW4RJHwFG2Pr/nZVqXdGM=; b=DUSNB2Mqsu5z/j
	w+p24f3OVb+Ils9+evir5lwT1mp4XxZkJb4dxBul0tKnBXDbmhtf/AjZpPgXNjOU9nW7wiQlVxQF5
	aTQdlUp+XLklSJorpOPeD+dOrvP8DloaHK9v6YeGOmNSNS8LTieh0KGu9yC1vyUfyhCqVNGXJLmmB
	sJ5HbZIUbHuljwhe5APGGC0q8KrS+3AqEZBOTRxfCsrr9dwJsmG12ss+JaSF2G9fECg8OaWbQGPci
	YWDLjbF6r2oNyQ40w8lWIsfJJtChkB00QsLQPE1NOL9CMon6FdndlPCLPACgK53ILaYwQ2969YD8f
	XuzKOinrKp/awKt9uz9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHb4i-0005Y9-CR; Mon, 07 Oct 2019 22:01:52 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHb4a-0005VS-9B
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 22:01:46 +0000
Received: by mail-vs1-xe43.google.com with SMTP id d3so10013459vsr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 15:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v7q4a7E/bdzfnNuFtukASfjvtCW3DHRys6DRIedS+0A=;
 b=RljdPAbkJW3MbYTayN5MGD6cp8EX4dG5a5C6Jn+mUt1MmgZYsKfmiYgiJpNaIv39uL
 AIao7+d9Jaqe5PCcr2tpzFRZHVZ2UVypS5FQgiZCurdgdnh6SGBAG9S0vzfSHSUIjYDS
 Nxl9ESSdgWOftZCM9y7ob4eHSujVf11Gye0TA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v7q4a7E/bdzfnNuFtukASfjvtCW3DHRys6DRIedS+0A=;
 b=kOCpR6omqlMQzOisvoXhtYzLvpfJYC++L6HdRwBUU7+lbdOBBvi8V4QESMwG3ekUzd
 8R9N9E8ytUtMM651z/ut5JnrQ2O7QiMRN4BTM/HPqGG3g5cNZDJfBGRddBclYxGfe38T
 dUtmIe/WZNqrWxPOK+sLoU+03/ZhTt1tgP3oGqBPahs8cK3uM2Gcv3Ab/l8XfNFPtqDj
 SZsjW8wsPmNcOawlW+3DXZMJX7lXrH6zodk4RSstoknk+SdmerX/A3geNCzx4/6PTrn8
 id5fvlpp10WAZEKqRXfXtDAbEwrUDgLzZarAOkz1pQr82g3yoMkS2m47dG5goWJlGtjb
 VP+A==
X-Gm-Message-State: APjAAAX+vmkJkahR6/w9j7aKPqLMNTuMvxyc6w7pLA7CaNb/60+Q/Vx9
 KKptKgiOP0e/seiDbt36f+ntSL953DKvyTgpIjyBgA==
X-Google-Smtp-Source: APXvYqzwdHa5sY9iQn67YNrZItWTla9P194bydzs4g44hAbColKb9C8i4kQLgtGVXwIOJdtnP9jcB7U3GD0bMGCInxM=
X-Received: by 2002:a67:f0dd:: with SMTP id j29mr9044915vsl.92.1570485697452; 
 Mon, 07 Oct 2019 15:01:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190925225833.7310-3-dbasehore@chromium.org>
 <20190929052307.GA28304@jamwan02-TSP300>
 <CAGAzgspEA0mcEHwgxyWWh3Gn-iC+a21g5GUrhsRJrTHQ_OAYqQ@mail.gmail.com>
 <20191007164441.GB126146@art_vandelay>
In-Reply-To: <20191007164441.GB126146@art_vandelay>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Mon, 7 Oct 2019 15:01:25 -0700
Message-ID: <CAGAzgsoGNNTeYTmRyC5YNGDHL+SBB2oCFaHFubYa=dnPst=f8Q@mail.gmail.com>
Subject: Re: [v8,2/4] drm/panel: set display info in panel attach
To: Sean Paul <sean@poorly.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_150144_321269_D56F49CD 
X-CRM114-Status: GOOD (  26.93  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 "james qian wang \(Arm Technology China\)" <james.qian.wang@arm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 nd <nd@arm.com>, Sam Ravnborg <sam@ravnborg.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 9:44 AM Sean Paul <sean@poorly.run> wrote:
>
> On Mon, Sep 30, 2019 at 04:14:54PM -0700, dbasehore . wrote:
> > On Sat, Sep 28, 2019 at 10:23 PM james qian wang (Arm Technology
> > China) <james.qian.wang@arm.com> wrote:
> > >
> > > On Wed, Sep 25, 2019 at 03:58:31PM -0700, Derek Basehore wrote:
> > > > Devicetree systems can set panel orientation via a panel binding, but
> > > > there's no way, as is, to propagate this setting to the connector,
> > > > where the property need to be added.
> > > > To address this, this patch sets orientation, as well as other fixed
> > > > values for the panel, in the drm_panel_attach function. These values
> > > > are stored from probe in the drm_panel struct.
> > > >
> > > > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > > > Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> > > > ---
> > > >  drivers/gpu/drm/drm_panel.c | 28 +++++++++++++++++++++
> > > >  include/drm/drm_panel.h     | 50 +++++++++++++++++++++++++++++++++++++
> > > >  2 files changed, 78 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> > > > index 0909b53b74e6..1cd2b56c9fe6 100644
> > > > --- a/drivers/gpu/drm/drm_panel.c
> > > > +++ b/drivers/gpu/drm/drm_panel.c
> > > > @@ -104,11 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
> > > >   */
> > > >  int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
> > > >  {
> > > > +     struct drm_display_info *info;
> > > > +
> > > >       if (panel->connector)
> > > >               return -EBUSY;
> > > >
> > > >       panel->connector = connector;
> > > >       panel->drm = connector->dev;
> > > > +     info = &connector->display_info;
> > > > +     info->width_mm = panel->width_mm;
> > > > +     info->height_mm = panel->height_mm;
> > > > +     info->bpc = panel->bpc;
> > > > +     info->panel_orientation = panel->orientation;
> > > > +     info->bus_flags = panel->bus_flags;
> > > > +     if (panel->bus_formats)
> > > > +             drm_display_info_set_bus_formats(&connector->display_info,
> > > > +                                              panel->bus_formats,
> > > > +                                              panel->num_bus_formats);
> > > >
> > > >       return 0;
> > > >  }
> > > > @@ -126,6 +138,22 @@ EXPORT_SYMBOL(drm_panel_attach);
> > > >   */
> > > >  void drm_panel_detach(struct drm_panel *panel)
> > > >  {
> > > > +     struct drm_display_info *info;
> > > > +
> > > > +     if (!panel->connector)
> > > > +             goto out;
> > > > +
> > > > +     info = &panel->connector->display_info;
> > > > +     info->width_mm = 0;
> > > > +     info->height_mm = 0;
> > > > +     info->bpc = 0;
> > > > +     info->panel_orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
> > > > +     info->bus_flags = 0;
> > > > +     kfree(info->bus_formats);
> > > > +     info->bus_formats = NULL;
> > > > +     info->num_bus_formats = 0;
> > > > +
> > > > +out:
> > > >       panel->connector = NULL;
> > > >       panel->drm = NULL;
> > > >  }
> > > > diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> > > > index d16158deacdc..f3587a54b8ac 100644
> > > > --- a/include/drm/drm_panel.h
> > > > +++ b/include/drm/drm_panel.h
> > > > @@ -141,6 +141,56 @@ struct drm_panel {
> > > >        */
> > > >       const struct drm_panel_funcs *funcs;
> > > >
> > >
> > > All these new added members seems dupliated with drm_display_info,
> > > So I think, can we add a new drm_plane_funcs func:
> > >
> > > int (*set_display_info)(struct drm_panel *panel,
> > >                         struct drm_display_info *info);
> >
> > I don't disagree personally, since I originally wrote it this way, but
> > 2 maintainers, Daniel Vetter and Thierry Reding, requested that it be
> > changed. Unless that decision is reversed, I won't be changing this.
> >
>
> Reading back the feedback on v1, I don't think anyone said they were against
> storing a drm_display_info struct in drm_panel (no one really weighed in on
> it one way or another). IMO duplicating a bunch of fields feels pretty icky.

Thanks for the review. Should we duplicate the entire struct, or just
create a sub-struct, say, physical_properties that will be part of
drm_display_info and drm_panel?

>
> I think most fields in drm_display_info have pretty reasonable defaults, so I'd
> recommend just storing a copy in drm_panel. As Thierry suggests, we can
> populate the dt parts in probe (orientation) and then copy over all or a subset
> of the struct to connector on attach.
>
> Sean
>
> > >
> > > Then in drm_panel_attach(), via this interface the specific panel
> > > driver can directly set connector->display_info. like
> > >
> > >    ...
> > >    if (panel->funcs && panel->funcs->set_display_info)
> > >                 panel->funcs->unprepare(panel, connector->display_info);
> > >    ...
> > >
> > > Thanks
> > > James
> > >
> > > > +     /**
> > > > +      * @width_mm:
> > > > +      *
> > > > +      * Physical width in mm.
> > > > +      */
> > > > +     unsigned int width_mm;
> > > > +
> > > > +     /**
> > > > +      * @height_mm:
> > > > +      *
> > > > +      * Physical height in mm.
> > > > +      */
> > > > +     unsigned int height_mm;
> > > > +
> > > > +     /**
> > > > +      * @bpc:
> > > > +      *
> > > > +      * Maximum bits per color channel. Used by HDMI and DP outputs.
> > > > +      */
> > > > +     unsigned int bpc;
> > > > +
> > > > +     /**
> > > > +      * @orientation
> > > > +      *
> > > > +      * Installation orientation of the panel with respect to the chassis.
> > > > +      */
> > > > +     int orientation;
> > > > +
> > > > +     /**
> > > > +      * @bus_formats
> > > > +      *
> > > > +      * Pixel data format on the wire.
> > > > +      */
> > > > +     const u32 *bus_formats;
> > > > +
> > > > +     /**
> > > > +      * @num_bus_formats:
> > > > +      *
> > > > +      * Number of elements pointed to by @bus_formats
> > > > +      */
> > > > +     unsigned int num_bus_formats;
> > > > +
> > > > +     /**
> > > > +      * @bus_flags:
> > > > +      *
> > > > +      * Additional information (like pixel signal polarity) for the pixel
> > > > +      * data on the bus.
> > > > +      */
> > > > +     u32 bus_flags;
> > > > +
> > > >       /**
> > > >        * @list:
> > > >        *
> >
> > Thanks for the review
>
> --
> Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
