Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0289D81880
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+kPAm0N2XlIhFCwrP5nenyJJ+2IsXnzLlwjS/lYqCg=; b=m8nyzV/OZD5vax
	83zTyHWq+D6FBDVZqBnRWzuFrhdByj1MSkCfKrRCTJdOx5SHsN8Wjh+cA9XxLX8Gu3UpuuF5DWWIX
	F9FW+FLFJ2nE2QhoYQ9T07KkBAHSVp082aqpmp2WjS78SuLGDlzOmVWr5EpxaiL+wjUd0yRVNAbmC
	a2hst2MbjYp8xlw50KtT1hsyl8VDEh0X0sBmXZcAMgY/LQginsDWyRTNGbEEnL+2A9kqUmmSXRjoZ
	uShRoKDI7n59P2NCrlQ6V73yE7Y3sUFcp50ekW4gE3jCP7IJooxCKs0VpVyF7jAk+XZRJ/oJsc0WK
	JQYr+Xw6dXzGOfEW4Tsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubaM-0007t9-6f; Mon, 05 Aug 2019 11:55:30 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huba8-0006Mk-3Z
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:55:17 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 4E79920034;
 Mon,  5 Aug 2019 13:53:02 +0200 (CEST)
Date: Mon, 5 Aug 2019 13:53:00 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH v1 01/16] drm/bridge: tc358767: fix opencoded use of
 drm_panel_*
Message-ID: <20190805115300.GA16513@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
 <20190804201637.1240-2-sam@ravnborg.org>
 <1564997756.3056.13.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564997756.3056.13.camel@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=hD80L64hAAAA:8 a=IpJZQVW2AAAA:8 a=P1BnusSwAAAA:8 a=RwHePtW7AAAA:8
 a=pkYRv3yK2TCvuJqRAfIA:9 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
 a=IawgGOuG5U0WyFbmm1f5:22 a=D0XLA9XvdZm18NrgonBM:22
 a=FqraQwd7dyEg5dwJgZJs:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_045516_325499_62F4F2A3 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Marek Vasut <marex@denx.de>, linux-samsung-soc@vger.kernel.org,
 Sean Paul <sean@poorly.run>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Jonas Karlman <jonas@kwiboo.se>,
 Alison Wang <alison.wang@nxp.com>, Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Vincent Abriou <vincent.abriou@st.com>, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Enrico Weigelt <info@metux.net>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philipp.

On Mon, Aug 05, 2019 at 11:35:56AM +0200, Philipp Zabel wrote:
> On Sun, 2019-08-04 at 22:16 +0200, Sam Ravnborg wrote:
> > Replace open coded version with call to drm_panel_get_modes().
> > 
> > Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Andrzej Hajda <a.hajda@samsung.com>
> > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> > Cc: Jonas Karlman <jonas@kwiboo.se>
> > Cc: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> >  drivers/gpu/drm/bridge/tc358767.c | 10 ++++------
> >  1 file changed, 4 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/bridge/tc358767.c b/drivers/gpu/drm/bridge/tc358767.c
> > index 42f03a985ac0..cebc8e620820 100644
> > --- a/drivers/gpu/drm/bridge/tc358767.c
> > +++ b/drivers/gpu/drm/bridge/tc358767.c
> > @@ -1312,7 +1312,7 @@ static int tc_connector_get_modes(struct drm_connector *connector)
> >  {
> >  	struct tc_data *tc = connector_to_tc(connector);
> >  	struct edid *edid;
> > -	unsigned int count;
> > +	int count;
> 
> This looks like it also fixes a potential bug ...

get_modes() return either 0 or number of modes.
The negative return values come into play in drm_panel_get_modes() when
panel for example s NULL.

I will add this to changelog before I apply to avoid any
misunderstanding.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
