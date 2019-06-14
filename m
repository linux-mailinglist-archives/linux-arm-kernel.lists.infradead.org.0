Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E0545094
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 02:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oUx7Z+VDTV4eYe2NutxGwsP+kQZVR9tjiQiPsyU410Y=; b=GiK+LSM8FOndwC
	Wbp7NK/noKTj4uo7HoCMj1S4A8Xq5izDcKind6xLKtQGYgANy3XIwBIUD1DitBUA9Zezph2RjGtRv
	5wepbv+bcDZvtwfhpXaIu1xJ5ZmSuLDvngZ7xdyerUcHytf8m/Z4/0gdmyTZlOFkds3XpppVibqAO
	GK7GNDbP8QL/FQo6IvtKeY9p6hdndDSrfOf8I0dqRb3FHKKVWC8mNaFJFggchNTVecH/b9strdE9l
	TmtBG7bTCj81gLWQXbuaevjlMdQ4PMHzpbw7NmskJ8XJk8cbJd5pHAtBYjNkr2yDL0NgWoz2Zb8oM
	fJfYZ1RqnJzXxHYw9y+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hba99-0007wk-7o; Fri, 14 Jun 2019 00:32:47 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hba8w-0007vJ-Kt
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 00:32:36 +0000
Received: by mail-vs1-xe44.google.com with SMTP id g24so666062vso.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 17:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5o5a2UNvqnt2IqG/d30r1Z1PI+lkRFVIZCDDvP3GRa4=;
 b=QSPL5o2oBNVzptcEqAin35G0xLo0WWvgdOOO2+lJQerKfjKIYK/6oBSgxbDxGyOeXK
 xc1Z2RyR8khlsHj7h/56FHn401h/hL1ihSqJACQe/klR228W7RgTufBtib0cQQpfqY5/
 S4NO2rnjTaZdsxN6OkMcnGXhGm9ft7LyISYAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5o5a2UNvqnt2IqG/d30r1Z1PI+lkRFVIZCDDvP3GRa4=;
 b=istqxDT4rScNnysp36ryOO57fhEGIri+/8UauYmHyDjxNexcpxoS5m2xDm9nqgLHaY
 3dd1B59otNsw2htvNaWhMhb4BfRQcSrcQqVWuhcit3ULT4nWvJ0mynFyE0pE3kOxxLw8
 Idq0pLHghq7QvJByFNNdGlLrghYf1zhVqkyool3im6TOQA1rA+LYlPzJZK/pkuxSQXCx
 mYWDJh87unvWcLnirlDqZ4mhedPmLjZZE7EPhoWhe9E/SO2unEMETc8H01PG0IayUNJC
 AXbnK5XhthydPGVh526o8Pqr/ayzmo8/Y546Ai452jbpdM2HORaLDrNb5pu3zC+zs/++
 4Hvw==
X-Gm-Message-State: APjAAAVg7AC+MmvykcnWF26b60KcmYRA85l9GXKQp/OKkGGFyj7fS99v
 VwBFkuv+zTrqevWC9MHSbawG++PKnSsSORg5Ez7f+w==
X-Google-Smtp-Source: APXvYqyFuFyDZEX0VGqPH3v35EIiUK6ftc8JlgTdYuQL9iHMbG0bt8E4uHg/PoKRrVKv16C9BEZM1mqeIvYNB77SyX0=
X-Received: by 2002:a67:d384:: with SMTP id b4mr18708468vsj.152.1560472352531; 
 Thu, 13 Jun 2019 17:32:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-2-dbasehore@chromium.org>
 <20190612212054.GB13155@ravnborg.org>
In-Reply-To: <20190612212054.GB13155@ravnborg.org>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Thu, 13 Jun 2019 17:32:21 -0700
Message-ID: <CAGAzgspS_cSDYDUTgApK4R814r3gZk63oe+CdtqDuiXrTG5JdA@mail.gmail.com>
Subject: Re: [PATCH 1/5] drm/panel: Add helper for reading DT rotation
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_173234_684048_BF495E82 
X-CRM114-Status: GOOD (  21.16  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
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

On Wed, Jun 12, 2019 at 2:20 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Derek.
>
> On Mon, Jun 10, 2019 at 09:03:46PM -0700, Derek Basehore wrote:
> > This adds a helper function for reading the rotation (panel
> > orientation) from the device tree.
> >
> > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > ---
> >  drivers/gpu/drm/drm_panel.c | 41 +++++++++++++++++++++++++++++++++++++
> >  include/drm/drm_panel.h     |  7 +++++++
> >  2 files changed, 48 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> > index dbd5b873e8f2..3b689ce4a51a 100644
> > --- a/drivers/gpu/drm/drm_panel.c
> > +++ b/drivers/gpu/drm/drm_panel.c
> > @@ -172,6 +172,47 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
> >       return ERR_PTR(-EPROBE_DEFER);
> >  }
> >  EXPORT_SYMBOL(of_drm_find_panel);
> > +
> > +/**
> > + * of_drm_get_panel_orientation - look up the rotation of the panel using a
> > + * device tree node
> > + * @np: device tree node of the panel
> > + * @orientation: orientation enum to be filled in
> > + *
> > + * Looks up the rotation of a panel in the device tree. The rotation in the
> > + * device tree is counter clockwise.
> > + *
> > + * Return: 0 when a valid rotation value (0, 90, 180, or 270) is read or the
> > + * rotation property doesn't exist. -EERROR otherwise.
> > + */
> > +int of_drm_get_panel_orientation(const struct device_node *np, int *orientation)
> > +{
> > +     int rotation, ret;
> > +
> > +     ret = of_property_read_u32(np, "rotation", &rotation);
>
> I just noticed that everywhere this code talks about orientation,
> but the property that it reads are rotation.
> To my best understanding these are not the same.

This is because both were previously defined in the kernel. Rotation
was defined as a binding in the devicetree for panels (which is where
we wanted to put this property) and orientation already exists as a
DRM property.

If we want to change one, I would suggest the rotation binding since
it doesn't have any upstream users yet.

>
>         Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
