Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0088F10F9A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 09:18:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M75yu/KG8lPkp/dfrrgsyCjXQ0VaDm64zdEZ52gvJKs=; b=JmqzuNQUwhgI0y
	0Mxge8CxmsCSOcQ7SnrRjkBBV7FQghQ3i9LkAzBrJ/xZlMQ1kaoM1hxGqYfklj60FpbS72763MAgp
	3N4GhaqckxIqdGjyDX8a3DjqmGYuMEqR86LMpNGFB1qRzwNZnqb9EEwgofHp47Zi7S3X4OzplYlOS
	qeLpCF3F99jNMcuwu97DfnSjYk1bWc7M6kZIHKLFbxsQ4xZWxcHJSDJRcxL3C1QQQHxAvxd2xaTCp
	8RqOqsPHVmxnUbBDpu9A5GVCA+p5dlK0wtFZhPkR2ZvllkrMdPuLxvi5DskwSEPUI7i4cFgeZXAMo
	1M65F/jkvdh76z2YCjrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic3O1-00040S-RZ; Tue, 03 Dec 2019 08:18:21 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic3Nt-0003zR-4j; Tue, 03 Dec 2019 08:18:14 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id E0FEC309;
 Tue,  3 Dec 2019 09:18:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1575361090;
 bh=jWj05kR5wYrupjrk3T8+pen6tr588LJHj3LcaenLTzA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=npbVtp4q7zoyBlia/uuSsc2CFM8DP7lrbQZ3pr/jKboayvD4s/ufTfOUmgwJGJkFJ
 UdYBFDJyCu6pB6gK8cGfJa/veMnt5ai0Cd1G4DmwQj3iK4L3OXPV4RkOg8wGtuC/Im
 gSs9p6lunYZnoWaIzBS4ugcXSBqQ9ngY/W9OT+OY=
Date: Tue, 3 Dec 2019 10:18:03 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v1 07/26] drm/panel: remove get_timings
Message-ID: <20191203081803.GA12294@pendragon.ideasonboard.com>
References: <20191202193230.21310-1-sam@ravnborg.org>
 <20191202193230.21310-8-sam@ravnborg.org>
 <20191203074659.ilsyv4yx7pzw5vax@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203074659.ilsyv4yx7pzw5vax@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_001813_479468_F8435F5E 
X-CRM114-Status: GOOD (  26.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 NXP Linux Team <linux-imx@nxp.com>, Jagan Teki <jagan@amarulasolutions.com>,
 Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-mediatek@lists.infradead.org,
 Stefan Agner <stefan@agner.ch>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Purism Kernel Team <kernel@puri.sm>, linux-renesas-soc@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

On Tue, Dec 03, 2019 at 08:46:59AM +0100, Maxime Ripard wrote:
> On Mon, Dec 02, 2019 at 08:32:11PM +0100, Sam Ravnborg wrote:
> > There was no users - so remove it.
> > The callback was implemented in two drivers - deleted.
> >
> > Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Thierry Reding <thierry.reding@gmail.com>
> > Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > ---
> >  drivers/gpu/drm/panel/panel-seiko-43wvf1g.c | 18 ------------------
> >  drivers/gpu/drm/panel/panel-simple.c        | 18 ------------------
> >  include/drm/drm_panel.h                     |  9 ---------
> >  3 files changed, 45 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c b/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
> > index b878930b17e4..3bcba64235c4 100644
> > --- a/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
> > +++ b/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
> > @@ -217,30 +217,12 @@ static int seiko_panel_get_modes(struct drm_panel *panel,
> >  	return seiko_panel_get_fixed_modes(p, connector);
> >  }
> >
> > -static int seiko_panel_get_timings(struct drm_panel *panel,
> > -				    unsigned int num_timings,
> > -				    struct display_timing *timings)
> > -{
> > -	struct seiko_panel *p = to_seiko_panel(panel);
> > -	unsigned int i;
> > -
> > -	if (p->desc->num_timings < num_timings)
> > -		num_timings = p->desc->num_timings;
> > -
> > -	if (timings)
> > -		for (i = 0; i < num_timings; i++)
> > -			timings[i] = p->desc->timings[i];
> > -
> > -	return p->desc->num_timings;
> > -}
> > -
> >  static const struct drm_panel_funcs seiko_panel_funcs = {
> >  	.disable = seiko_panel_disable,
> >  	.unprepare = seiko_panel_unprepare,
> >  	.prepare = seiko_panel_prepare,
> >  	.enable = seiko_panel_enable,
> >  	.get_modes = seiko_panel_get_modes,
> > -	.get_timings = seiko_panel_get_timings,
> >  };
> 
> If anything, I think we should grow the usage of timings and / or make
> it usable by everyone.
> 
> Using only the mode as we do currently has a bunch of shortcomings as
> almost no encoder will be able to provide the typical pixel clock, and
> that situation leads to multiple things:
> 
>   - If someone working on one encoder wants to upstream a panel they
>     have tested, chances are this will not be the typical pixel clock
>     / timings being used but rather the one that will match what that
>     SoC is capable of. Trouble comes when a second user comes in with
>     a different encoder and different capabilities, and then we have a
>     maintainance fight over which timing is the true timing (with a
>     significant chance that none of them are).
> 
>   - If we can't match the pixel clock, we currently have no easy way
>     to make the usual measures of reducing / growing the porches and
>     blankings areas to match the pixel clock we can provide, since we
>     don't have an easy way to get the tolerance on those timings for a
>     given panel. There's some ad hoc solutions on some drivers (I
>     think vc4 has that?) to ignore the panel and just play around with
>     the timings, but I think this should be generalised.
> 
> Timings solves the first case since we have the operating range now
> and not a single set of timings, and it solves the second since we can
> use that range to take those measures instead of taking a shot in the
> dark.
> 
> I appreciate that it's pretty far from where we are today, but
> removing the get_timings means that all the timings already defined in
> the panel drivers are becoming useless too, and that eventually it
> will get removed.

I agree with you.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
