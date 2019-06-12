Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3156A4196B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 02:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebEu3I4NPeYZh2KH3ULefrvLxt1A6+493mZn0OwqxBw=; b=CV368d3hPJTNai
	QOzHkyaYWD7tC8nFH8EDqsfuchiH2khGLRwNUbj8AgmyJEIReCX/FYTH6hEBHrhmyyetuuvYZT5pk
	lzQ8JtKJCwGs1YyNciSQ4mgvPIQCsj3XTJtYx3PGG/okbQlZlDnOPL2eik0Kyw283Uh3avnLg4SmD
	jwnilWt+B1dCwr+uAydAJIeB80KUUvt02gbCpa4U0Wf/UZA6wM4TL7wDq/p1rlmh+sBpSz/SGwAA5
	lWfS9glXC15dwOCZh23wWETj6envRyoG/DGNAtRaGJ7bMqCUoa6v9RqZTDrU90nsi7lYbnRMgVvPG
	+kNIF0EXz5vxvVglRU7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1har5b-0008JH-V8; Wed, 12 Jun 2019 00:26:07 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1har5T-0008Ij-CC
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 00:26:01 +0000
Received: by mail-vs1-xe42.google.com with SMTP id d128so9151362vsc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 17:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KRAxkF68gmKecn3z+xJVKQmHHe3fhnjLkR6e2Rk4Xyw=;
 b=fJnj+niayR1N1ZzWwcqhYntA6jPdSi35aIBMUPGQoq+fZuXbt6Wr6mmgcT8Li0DIbl
 mZ2rnLWVOMBADToUfCnXK8dduYeGZIhdvwAbBqOL/0VDH2EXhFYIC3SscfoxzwRtMruh
 aQxEGghx7B2GqXT7GjKG0V9vlxKyPvJG2ZRNA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KRAxkF68gmKecn3z+xJVKQmHHe3fhnjLkR6e2Rk4Xyw=;
 b=GPPLFmZG2kJwV3jUaPI2+Hut+y2BVeujzwQRuJTSG3aLm/tCOS5cLkVOu3SSogEQxs
 9FWcuvSPj0apRsO2Y7ZSSxAU92wVT74jkIlMs2858WfRKiyQ5fIHbqJJ90EZRa5wreuN
 34f3un//R1pYqaU3GjbGWxu4i3i+XAI5d30bm9LV2nw7YKqHB7D2dLjVo0dZy6MQNb5J
 U8MvojSp9Pi26BGnB3wMq6wlIf1U4DwImO2zRUjF4K4cu30CaxBRT6+x4+O5N8usBhs5
 YtTFbTNC+eX52wADlokhu3AhWWswgsOWcOV4YYsF78+3w1zrxq6wEOiyXLzsDjBVNhSc
 rwHQ==
X-Gm-Message-State: APjAAAUQ4V/20j7LwtYVihlJWaeBvEi5OBLjzKcpdRFf759lUYPwoB3I
 /k8sQ38OiWE9QUhl20Wvo1nZBGkp7ZQj1cjKnGnogw==
X-Google-Smtp-Source: APXvYqyBOE2/PeatQjMLag/dgZW9nIv+g21QttCDT2gu4AyyqqE25wxvF/WmWHqkySY61fNGAHCWU09UoCZNZ8g35DI=
X-Received: by 2002:a67:ea42:: with SMTP id r2mr31201742vso.207.1560299158074; 
 Tue, 11 Jun 2019 17:25:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-4-dbasehore@chromium.org>
 <20190611085722.GX21222@phenom.ffwll.local>
In-Reply-To: <20190611085722.GX21222@phenom.ffwll.local>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Tue, 11 Jun 2019 17:25:47 -0700
Message-ID: <CAGAzgsr2sh5B1xi_ztQPN0xoQsZd26DDXwWT_qqJ68XeKReJ_Q@mail.gmail.com>
Subject: Re: [PATCH 3/5] drm/panel: Add attach/detach callbacks
To: Derek Basehore <dbasehore@chromium.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 David Airlie <airlied@linux.ie>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Matthias Brugger <matthias.bgg@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 devicetree@vger.kernel.org, Intel Graphics <intel-gfx@lists.freedesktop.org>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_172559_465113_0409ADEB 
X-CRM114-Status: GOOD (  25.47  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
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
Cc: Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 1:57 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Mon, Jun 10, 2019 at 09:03:48PM -0700, Derek Basehore wrote:
> > This adds the attach/detach callbacks. These are for setting up
> > internal state for the connector/panel pair that can't be done at
> > probe (since the connector doesn't exist) and which don't need to be
> > repeatedly done for every get/modes, prepare, or enable callback.
> > Values such as the panel orientation, and display size can be filled
> > in for the connector.
> >
> > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > ---
> >  drivers/gpu/drm/drm_panel.c | 14 ++++++++++++++
> >  include/drm/drm_panel.h     |  4 ++++
> >  2 files changed, 18 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> > index 3b689ce4a51a..72f67678d9d5 100644
> > --- a/drivers/gpu/drm/drm_panel.c
> > +++ b/drivers/gpu/drm/drm_panel.c
> > @@ -104,12 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
> >   */
> >  int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
> >  {
> > +     int ret;
> > +
> >       if (panel->connector)
> >               return -EBUSY;
> >
> >       panel->connector = connector;
> >       panel->drm = connector->dev;
> >
> > +     if (panel->funcs->attach) {
> > +             ret = panel->funcs->attach(panel);
> > +             if (ret < 0) {
> > +                     panel->connector = NULL;
> > +                     panel->drm = NULL;
> > +                     return ret;
> > +             }
> > +     }
>
> Why can't we just implement this in the drm helpers for everyone, by e.g.
> storing a dt node in drm_panel? Feels a bit overkill to have these new
> hooks here.
>
> Also, my understanding is that this dt stuff is supposed to be
> standardized, so this should work.

So do you want all of this information added to the drm_panel struct?
If we do that, we don't necessarily even need the drm helper function.
We could just copy the values over here in the drm_panel_attach
function (and clear them in drm_panel_detach).

> -Daniel
>
> > +
> >       return 0;
> >  }
> >  EXPORT_SYMBOL(drm_panel_attach);
> > @@ -128,6 +139,9 @@ EXPORT_SYMBOL(drm_panel_attach);
> >   */
> >  int drm_panel_detach(struct drm_panel *panel)
> >  {
> > +     if (panel->funcs->detach)
> > +             panel->funcs->detach(panel);
> > +
> >       panel->connector = NULL;
> >       panel->drm = NULL;
> >
> > diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> > index 13631b2efbaa..e136e3a3c996 100644
> > --- a/include/drm/drm_panel.h
> > +++ b/include/drm/drm_panel.h
> > @@ -37,6 +37,8 @@ struct display_timing;
> >   * struct drm_panel_funcs - perform operations on a given panel
> >   * @disable: disable panel (turn off back light, etc.)
> >   * @unprepare: turn off panel
> > + * @detach: detach panel->connector (clear internal state, etc.)
> > + * @attach: attach panel->connector (update internal state, etc.)
> >   * @prepare: turn on panel and perform set up
> >   * @enable: enable panel (turn on back light, etc.)
> >   * @get_modes: add modes to the connector that the panel is attached to and
> > @@ -70,6 +72,8 @@ struct display_timing;
> >  struct drm_panel_funcs {
> >       int (*disable)(struct drm_panel *panel);
> >       int (*unprepare)(struct drm_panel *panel);
> > +     void (*detach)(struct drm_panel *panel);
> > +     int (*attach)(struct drm_panel *panel);
> >       int (*prepare)(struct drm_panel *panel);
> >       int (*enable)(struct drm_panel *panel);
> >       int (*get_modes)(struct drm_panel *panel);
> > --
> > 2.22.0.rc2.383.gf4fbbf30c2-goog
> >
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
