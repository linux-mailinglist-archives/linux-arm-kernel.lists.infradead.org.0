Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DB010EC3A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 16:22:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdNZmNMAG395RIrekfdKwazS8j4n32a+SGgqZhkrPgE=; b=g34RAp2zuQ2PBp
	kWz0mz1wrtwngoRfVhHOdDp8mbDEXkJBseigi4hurTC6R3YkXmwWhfn3sFUAAJZDmvM+LfV27sdR6
	gdzocUWrWmUPnlLxWe1gFQdEt/6nbyfunxMmHhK4SRasCEjG9wfB9iskPALCRnRa2M6r7JwksUu+1
	7dBKR5IXqxgFYafQtacGHA297ItM2HqrL7sQWjfhDkMPGOxqXrn7GkEAfTBvysQFsWNFo76dbP6n7
	YvzBHuQcsz5bmznjzgdLVM8U/3sPiP8YZyB64kLCHCg6TT2rH8FCmYw6TcFj1zB/b+EkyyS20EVAi
	nA+J1GGbRdhdtHZLMXkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibnWx-0005gu-NC; Mon, 02 Dec 2019 15:22:31 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnWn-0005gH-1f
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 15:22:23 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id E2287309;
 Mon,  2 Dec 2019 16:22:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1575300138;
 bh=flJG6bVAL2kMZF6DJHO5Mg9mRQIBSRj4ecc7nkCx5RU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iWqTI/3kbR43KzyU6ckoNJKrKdt1JwcaiV+BZ8buJzqFYbjz6ImRdCScocYMk+7Ta
 JWZaiYviP5sKwqQYYT0Phvbbep4xpqxVvgXZ0pPPzX6ac7LzeF5ATvRSMwtXOaV8a4
 dPNFCxrXB4YQLB8oh74M2npsHF/+FytcBKYRJ5ew=
Date: Mon, 2 Dec 2019 17:22:11 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 14/16] drm/panel: call prepare/enable only once
Message-ID: <20191202152211.GB18532@pendragon.ideasonboard.com>
References: <20190804201637.1240-1-sam@ravnborg.org>
 <20190804201637.1240-15-sam@ravnborg.org>
 <20190805105928.GI29747@pendragon.ideasonboard.com>
 <20190805165117.GA23301@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805165117.GA23301@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_072221_381761_C9ED368F 
X-CRM114-Status: GOOD (  39.72  )
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
 Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Vincent Abriou <vincent.abriou@st.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, Sascha Hauer <s.hauer@pengutronix.de>,
 Alison Wang <alison.wang@nxp.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>, linux-samsung-soc@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 Allison Randal <allison@lohutok.net>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Shawn Guo <shawnguo@kernel.org>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sam,

On Mon, Aug 05, 2019 at 06:51:17PM +0200, Sam Ravnborg wrote:
> > On Sun, Aug 04, 2019 at 10:16:35PM +0200, Sam Ravnborg wrote:
> > > Many panel drivers duplicate logic to prevent prepare to be called
> > > for a panel that is already prepared.
> > > Likewise for enable.
> > > 
> > > Implement this logic in drm_panel so the individual drivers
> > > no longer needs this.
> > > A panel is considered prepared/enabled only if the prepare/enable call
> > > succeeds.
> > > For disable/unprepare it is unconditionally considered
> > > disabled/unprepared.
> > > 
> > > This allows calls to prepare/enable again, even if there were
> > > some issue disabling a regulator or similar during disable/unprepare.
> > 
> > Is this the right place to handle this ? Shouldn't the upper layers
> > ensure than enable/disable and prepare/unprepare are correcty balanced,
> > and not called multiple times ? Adding enabled and prepared state to
> > drm_panel not only doesn't align well with atomic state handling, but
> > also would hide issues in upper layers that should really be fixed
> > there.
> 
> The main rationale behind starting on this was that ~15 panel drivers
> already implements logic to prevent the prepare/enable/disable/unprepare
> functions to be called out of order.
> $ cd drivers/gpu/drm/panel/; git grep enabled | grep bool | wc -l
> 
> Several of the panel drivers also implements a
> mipi_dsi_driver.shutdown() or platform_driver.shutdown().
> To the best of my knowledge we cannot guarantee that the upper layers
> have done the proper disable()/unprepare() dance before a shutdown.

If the display controller drivers all behaved correctly, their
.shutdown() implementation would disable all the output, and thus
disable the panels. I think that's the best way forward, and we should
ideally remove .shutdown() from the panel drivers, as otherwise the
panel may be disabled before the display driver .shutdown() operation is
called, and weird things can then happen.

This being said, guaranteeing proper operation of the display controller
drivers isn't easy, so I'm not calling for removing .shutdown() from
panel drivers right now, but I think we shouldn't accept that operation
in new panel drivers going forward.

> So the flags exists to allow the driver to unconditionally call
> disable() / unprepare() in the shutdown methods.
> Same goes for *_driver.remove()

I'd rather get rid of the hacks instead of trying to refactor them in
generic hack-support helpers ;-) But I get your point, as an interim
measure this is probably our best option.

> One improvement could be to detect if the panel is prepare() when
> upper layers call enable() and warn/error in this situation.
> With the current implementation this is not checked at all.
> Likewise for unprepare() (require it was never enabled or disable() was
> caled first)
> 
> I claim the check exists for the benefit of .remove and .shutdown,
> so we could also check if prepare() or enable() is called twice.
> 
> Adding logic to call prepare() automagically would hide probems in upper
> layers and this was only briefly considered - and discarded as hiding
> bugs.

I agree with you.

> So to sum up:
> - Moving the checks from drivers to the core is a good thing
> - The core shall check that a panel is prepared when enable is called
>   and error out if not (or warn).
> - The core shall check that a panel is disabled when unprepare is called
>   and error out if not (or warn).
>   The core shall check if prepare() and enable() is called out of order.
> 
> The patch needs to be extended to cover the last three points.
> 
> Laurent / Emil / Thierry - agree/comments?

Acked-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Maybe with a note in the Documentation/gpu/todo.rst to remove
.shutdown() in panel drivers as a long term goal ?

> Note: Did a quick round to see if could spot any wrong use of
> drm_panel_* functions.
> Most looked good, but then I did not do a throughly check.
> 
> bridge/analogix/analogix_dp_core.c looks fishy.
> Looks like analogix_dp_prepare_panel() is a nop the way it is called.
> I did not look too much on this, maybe I am wrong.
> 
> > > Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> > > Cc: Sean Paul <sean@poorly.run>
> > > Cc: Thierry Reding <thierry.reding@gmail.com>
> > > Cc: Sam Ravnborg <sam@ravnborg.org>
> > > Cc: David Airlie <airlied@linux.ie>
> > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > ---
> > >  drivers/gpu/drm/drm_panel.c | 66 ++++++++++++++++++++++++++++++-------
> > >  include/drm/drm_panel.h     | 21 ++++++++++++
> > >  2 files changed, 75 insertions(+), 12 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> > > index da19d5b4a2f4..0853764040de 100644
> > > --- a/drivers/gpu/drm/drm_panel.c
> > > +++ b/drivers/gpu/drm/drm_panel.c
> > > @@ -66,10 +66,21 @@ EXPORT_SYMBOL(drm_panel_init);
> > >   */
> > >  int drm_panel_prepare(struct drm_panel *panel)
> > >  {
> > > -	if (panel && panel->funcs && panel->funcs->prepare)
> > > -		return panel->funcs->prepare(panel);
> > > +	int ret = -ENOSYS;
> > >  
> > > -	return panel ? -ENOSYS : -EINVAL;
> > > +	if (!panel)
> > > +		return -EINVAL;
> > > +
> > > +	if (panel->prepared)
> > > +		return 0;
> > > +
> > > +	if (panel->funcs && panel->funcs->prepare)
> > > +		ret = panel->funcs->prepare(panel);
> > > +
> > > +	if (ret >= 0)
> > > +		panel->prepared = true;
> > > +
> > > +	return ret;
> > >  }
> > >  EXPORT_SYMBOL(drm_panel_prepare);
> > >  
> > > @@ -85,10 +96,21 @@ EXPORT_SYMBOL(drm_panel_prepare);
> > >   */
> > >  int drm_panel_enable(struct drm_panel *panel)
> > >  {
> > > -	if (panel && panel->funcs && panel->funcs->enable)
> > > -		return panel->funcs->enable(panel);
> > > +	int ret = -ENOSYS;
> > >  
> > > -	return panel ? -ENOSYS : -EINVAL;
> > > +	if (!panel)
> > > +		return -EINVAL;
> > > +
> > > +	if (panel->enabled)
> > > +		return 0;
> > > +
> > > +	if (panel->funcs && panel->funcs->enable)
> > > +		ret = panel->funcs->enable(panel);
> > > +
> > > +	if (ret >= 0)
> > > +		panel->enabled = true;
> > > +
> > > +	return ret;
> > >  }
> > >  EXPORT_SYMBOL(drm_panel_enable);
> > >  
> > > @@ -104,10 +126,20 @@ EXPORT_SYMBOL(drm_panel_enable);
> > >   */
> > >  int drm_panel_disable(struct drm_panel *panel)
> > >  {
> > > -	if (panel && panel->funcs && panel->funcs->disable)
> > > -		return panel->funcs->disable(panel);
> > > +	int ret = -ENOSYS;
> > >  
> > > -	return panel ? -ENOSYS : -EINVAL;
> > > +	if (!panel)
> > > +		return -EINVAL;
> > > +
> > > +	if (!panel->enabled)
> > > +		return 0;
> > > +
> > > +	if (panel->funcs && panel->funcs->disable)
> > > +		ret = panel->funcs->disable(panel);
> > > +
> > > +	panel->enabled = false;
> > > +
> > > +	return ret;
> > >  }
> > >  EXPORT_SYMBOL(drm_panel_disable);
> > >  
> > > @@ -124,10 +156,20 @@ EXPORT_SYMBOL(drm_panel_disable);
> > >   */
> > >  int drm_panel_unprepare(struct drm_panel *panel)
> > >  {
> > > -	if (panel && panel->funcs && panel->funcs->unprepare)
> > > -		return panel->funcs->unprepare(panel);
> > > +	int ret = -ENOSYS;
> > >  
> > > -	return panel ? -ENOSYS : -EINVAL;
> > > +	if (!panel)
> > > +		return -EINVAL;
> > > +
> > > +	if (!panel->prepared)
> > > +		return 0;
> > > +
> > > +	if (panel->funcs && panel->funcs->unprepare)
> > > +		ret = panel->funcs->unprepare(panel);
> > > +
> > > +	panel->prepared = false;
> > > +
> > > +	return ret;
> > >  }
> > >  EXPORT_SYMBOL(drm_panel_unprepare);
> > >  
> > > diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> > > index 624bd15ecfab..7493500fc9bd 100644
> > > --- a/include/drm/drm_panel.h
> > > +++ b/include/drm/drm_panel.h
> > > @@ -65,6 +65,9 @@ struct drm_panel_funcs {
> > >  	 * @prepare:
> > >  	 *
> > >  	 * Turn on panel and perform set up.
> > > +	 * When the panel is successfully prepared the prepare() function
> > > +	 * will not be called again until the panel has been unprepared.
> > > +	 *
> > >  	 */
> > >  	int (*prepare)(struct drm_panel *panel);
> > >  
> > > @@ -72,6 +75,8 @@ struct drm_panel_funcs {
> > >  	 * @enable:
> > >  	 *
> > >  	 * Enable panel (turn on back light, etc.).
> > > +	 * When the panel is successfully enabled the enable() function
> > > +	 * will not be called again until the panel has been disabled.
> > >  	 */
> > >  	int (*enable)(struct drm_panel *panel);
> > >  
> > > @@ -79,6 +84,7 @@ struct drm_panel_funcs {
> > >  	 * @disable:
> > >  	 *
> > >  	 * Disable panel (turn off back light, etc.).
> > > +	 * If the panel is already disabled the disable() function is not called.
> > >  	 */
> > >  	int (*disable)(struct drm_panel *panel);
> > >  
> > > @@ -86,6 +92,7 @@ struct drm_panel_funcs {
> > >  	 * @unprepare:
> > >  	 *
> > >  	 * Turn off panel.
> > > +	 * If the panel is already unprepared the unprepare() function is not called.
> > >  	 */
> > >  	int (*unprepare)(struct drm_panel *panel);
> > >  
> > > @@ -145,6 +152,20 @@ struct drm_panel {
> > >  	 * Panel entry in registry.
> > >  	 */
> > >  	struct list_head list;
> > > +
> > > +	/**
> > > +	 * @prepared:
> > > +	 *
> > > +	 * Set to true when the panel is successfully prepared.
> > > +	 */
> > > +	bool prepared;
> > > +
> > > +	/**
> > > +	 * @enabled:
> > > +	 *
> > > +	 * Set to true when the panel is successfully enabled.
> > > +	 */
> > > +	bool enabled;
> > >  };
> > >  
> > >  void drm_panel_init(struct drm_panel *panel);

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
