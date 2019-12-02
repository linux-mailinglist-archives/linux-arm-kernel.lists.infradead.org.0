Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62ECA10EC23
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 16:15:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HqLkKnIzzv9mUs4iOS/Y6I6TcWzdneSAOvGB0MCDp0s=; b=ZeiyPC4ag+067g
	BsJ6ZcXYMdwG6+tM3zUkv0/I/4FeK0D2MsNft/lgGlQNCtmCyQ2nrnEDtP12VN/8gkfpInbamtpzD
	EjJR1wag4dv/+mUoTJgPWXwgXknShcD9+WR3Yb1XubHtcWTSgqst0/6SpqwJqT6BcKW0CbU4qQkDh
	YEdCZs0xxwxfx/9ZzfrA7GyaA/VubIGlHlZwJ5bRGLGISOVReAvYkPQQKg/Zy3bQ6cJtzzrWjfJWU
	7cr5aJQf5qyF4i0wAhh0q5BodfJMkAWG2HESvjQg7JXmIC8IwZEuUrGiQd+WR0rbaRxVUmuY4+I82
	SHxM1kuUAwcchHT6vxcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibnQ7-0002h9-FY; Mon, 02 Dec 2019 15:15:27 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnPz-0002gg-LM
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 15:15:22 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2E11D309;
 Mon,  2 Dec 2019 16:15:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1575299709;
 bh=mFGJOpuePLZrsr7Ed2VYhGQqc4JmFTNL3aKD7BB6RME=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U1xYwtDbAaxhE1hTGuuq+kUzf8of1Su/SFJ/5CD+ND1NhkYzdxvGPjMQnU9DDAlsK
 xdKO2BSloawGiChK9+z+QPTq8dFBSFS9xOMecLTyobVUVAW0hmzdJDacL6+LgL0s9n
 PmQDet0FgRvYJiviJwNNw81lV6KlvpHYKc6AuNZc=
Date: Mon, 2 Dec 2019 17:15:02 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sean Paul <sean@poorly.run>
Subject: Re: [PATCH v1 14/16] drm/panel: call prepare/enable only once
Message-ID: <20191202151502.GA18532@pendragon.ideasonboard.com>
References: <20190804201637.1240-1-sam@ravnborg.org>
 <20190804201637.1240-15-sam@ravnborg.org>
 <20190805170120.GZ104440@art_vandelay>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805170120.GZ104440@art_vandelay>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_071520_137672_3994853E 
X-CRM114-Status: GOOD (  30.33  )
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
 Joonyoung Shim <jy0922.shim@samsung.com>, Sam Ravnborg <sam@ravnborg.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
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
 Thomas Gleixner <tglx@linutronix.de>, Vincent Abriou <vincent.abriou@st.com>,
 Allison Randal <allison@lohutok.net>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Shawn Guo <shawnguo@kernel.org>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sean,

On Mon, Aug 05, 2019 at 01:01:20PM -0400, Sean Paul wrote:
> On Sun, Aug 04, 2019 at 10:16:35PM +0200, Sam Ravnborg wrote:
> > Many panel drivers duplicate logic to prevent prepare to be called
> > for a panel that is already prepared.
> > Likewise for enable.
> > 
> > Implement this logic in drm_panel so the individual drivers
> > no longer needs this.
> > A panel is considered prepared/enabled only if the prepare/enable call
> > succeeds.
> > For disable/unprepare it is unconditionally considered
> > disabled/unprepared.
> 
> Hi Sam,
> I did a similar thing a few years ago [1]. IIRC it was well received and just
> needed some nits cleaned up. Unfortunately I lost interest^W^W switched to other
> things and dropped it. So thanks for picking this back up!
> 
> Fast forward to today, I still think it's a good idea but I want to make sure
> this won't negatively interact with the self refresh helpers. With the helpers
> in place, it's possible to call disable consecutively (ie: once to enter self
> refresh and again to actually shut down). I did a quick pass and it looks like
> this patch might break that behavior, so you might want to take that into
> account.

Is this semantics documented somewhere ? The documentation of the panel
disable operation is pretty terse, and we need to explicitly state who
of the caller and callee needs to track the state.

> [1]- https://patchwork.freedesktop.org/series/30712/
> 
> > This allows calls to prepare/enable again, even if there were
> > some issue disabling a regulator or similar during disable/unprepare.
> > 
> > Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> > Cc: Sean Paul <sean@poorly.run>
> > Cc: Thierry Reding <thierry.reding@gmail.com>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > ---
> >  drivers/gpu/drm/drm_panel.c | 66 ++++++++++++++++++++++++++++++-------
> >  include/drm/drm_panel.h     | 21 ++++++++++++
> >  2 files changed, 75 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> > index da19d5b4a2f4..0853764040de 100644
> > --- a/drivers/gpu/drm/drm_panel.c
> > +++ b/drivers/gpu/drm/drm_panel.c
> > @@ -66,10 +66,21 @@ EXPORT_SYMBOL(drm_panel_init);
> >   */
> >  int drm_panel_prepare(struct drm_panel *panel)
> >  {
> > -	if (panel && panel->funcs && panel->funcs->prepare)
> > -		return panel->funcs->prepare(panel);
> > +	int ret = -ENOSYS;
> >  
> > -	return panel ? -ENOSYS : -EINVAL;
> > +	if (!panel)
> > +		return -EINVAL;
> > +
> > +	if (panel->prepared)
> > +		return 0;
> > +
> > +	if (panel->funcs && panel->funcs->prepare)
> > +		ret = panel->funcs->prepare(panel);
> > +
> > +	if (ret >= 0)
> > +		panel->prepared = true;
> > +
> > +	return ret;
> >  }
> >  EXPORT_SYMBOL(drm_panel_prepare);
> >  
> > @@ -85,10 +96,21 @@ EXPORT_SYMBOL(drm_panel_prepare);
> >   */
> >  int drm_panel_enable(struct drm_panel *panel)
> >  {
> > -	if (panel && panel->funcs && panel->funcs->enable)
> > -		return panel->funcs->enable(panel);
> > +	int ret = -ENOSYS;
> >  
> > -	return panel ? -ENOSYS : -EINVAL;
> > +	if (!panel)
> > +		return -EINVAL;
> > +
> > +	if (panel->enabled)
> > +		return 0;
> > +
> > +	if (panel->funcs && panel->funcs->enable)
> > +		ret = panel->funcs->enable(panel);
> > +
> > +	if (ret >= 0)
> > +		panel->enabled = true;
> > +
> > +	return ret;
> >  }
> >  EXPORT_SYMBOL(drm_panel_enable);
> >  
> > @@ -104,10 +126,20 @@ EXPORT_SYMBOL(drm_panel_enable);
> >   */
> >  int drm_panel_disable(struct drm_panel *panel)
> >  {
> > -	if (panel && panel->funcs && panel->funcs->disable)
> > -		return panel->funcs->disable(panel);
> > +	int ret = -ENOSYS;
> >  
> > -	return panel ? -ENOSYS : -EINVAL;
> > +	if (!panel)
> > +		return -EINVAL;
> > +
> > +	if (!panel->enabled)
> > +		return 0;
> > +
> > +	if (panel->funcs && panel->funcs->disable)
> > +		ret = panel->funcs->disable(panel);
> > +
> > +	panel->enabled = false;
> > +
> > +	return ret;
> >  }
> >  EXPORT_SYMBOL(drm_panel_disable);
> >  
> > @@ -124,10 +156,20 @@ EXPORT_SYMBOL(drm_panel_disable);
> >   */
> >  int drm_panel_unprepare(struct drm_panel *panel)
> >  {
> > -	if (panel && panel->funcs && panel->funcs->unprepare)
> > -		return panel->funcs->unprepare(panel);
> > +	int ret = -ENOSYS;
> >  
> > -	return panel ? -ENOSYS : -EINVAL;
> > +	if (!panel)
> > +		return -EINVAL;
> > +
> > +	if (!panel->prepared)
> > +		return 0;
> > +
> > +	if (panel->funcs && panel->funcs->unprepare)
> > +		ret = panel->funcs->unprepare(panel);
> > +
> > +	panel->prepared = false;
> > +
> > +	return ret;
> >  }
> >  EXPORT_SYMBOL(drm_panel_unprepare);
> >  
> > diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> > index 624bd15ecfab..7493500fc9bd 100644
> > --- a/include/drm/drm_panel.h
> > +++ b/include/drm/drm_panel.h
> > @@ -65,6 +65,9 @@ struct drm_panel_funcs {
> >  	 * @prepare:
> >  	 *
> >  	 * Turn on panel and perform set up.
> > +	 * When the panel is successfully prepared the prepare() function
> > +	 * will not be called again until the panel has been unprepared.
> > +	 *
> >  	 */
> >  	int (*prepare)(struct drm_panel *panel);
> >  
> > @@ -72,6 +75,8 @@ struct drm_panel_funcs {
> >  	 * @enable:
> >  	 *
> >  	 * Enable panel (turn on back light, etc.).
> > +	 * When the panel is successfully enabled the enable() function
> > +	 * will not be called again until the panel has been disabled.
> >  	 */
> >  	int (*enable)(struct drm_panel *panel);
> >  
> > @@ -79,6 +84,7 @@ struct drm_panel_funcs {
> >  	 * @disable:
> >  	 *
> >  	 * Disable panel (turn off back light, etc.).
> > +	 * If the panel is already disabled the disable() function is not called.
> >  	 */
> >  	int (*disable)(struct drm_panel *panel);
> >  
> > @@ -86,6 +92,7 @@ struct drm_panel_funcs {
> >  	 * @unprepare:
> >  	 *
> >  	 * Turn off panel.
> > +	 * If the panel is already unprepared the unprepare() function is not called.
> >  	 */
> >  	int (*unprepare)(struct drm_panel *panel);
> >  
> > @@ -145,6 +152,20 @@ struct drm_panel {
> >  	 * Panel entry in registry.
> >  	 */
> >  	struct list_head list;
> > +
> > +	/**
> > +	 * @prepared:
> > +	 *
> > +	 * Set to true when the panel is successfully prepared.
> > +	 */
> > +	bool prepared;
> > +
> > +	/**
> > +	 * @enabled:
> > +	 *
> > +	 * Set to true when the panel is successfully enabled.
> > +	 */
> > +	bool enabled;
> >  };
> >  
> >  void drm_panel_init(struct drm_panel *panel);

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
