Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 809EC8187F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:55:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjSnA47Hn6VD9tNo5ImasA8QSS9/oQjuAV1Leb582iY=; b=sMgRvSya3PjUO5
	zG4O9A7kcg1i9rgqFjJlYN0lTVY4FyXnzFImse1rxngE9JLbqDeiVoNMKbxgofqoKlOgZTL1IWqQK
	OgEHxjaSNmFWRriT67hzZJadmcHRjsvR7/4rVGWIpCDFzNUZErTOXSA/j4JBrOp3Hk7nxzxcCT0uC
	nNdR6Ood6VthyJCYJoEv3n1pFmrS1Qu5LwwKWSq88XcVHJ5SaL0nQ+hH1sEP5u2o8xLC3MCrZ9GWh
	Pxl+LPiVpJ7J9eFdXdO8/JRqIt+xSUWM7XB21LI2ENdz5QnnQeGKSP+shg9VQ24aW43d0saEPpSso
	0hhcMQTo9aj74H7Sh0iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huba2-0006QE-HZ; Mon, 05 Aug 2019 11:55:10 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubZo-0006Pp-R2
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:54:58 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id F12E320039;
 Mon,  5 Aug 2019 13:54:51 +0200 (CEST)
Date: Mon, 5 Aug 2019 13:54:50 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: [PATCH v1 05/16] drm/fsl-dcu: fix opencoded use of drm_panel_*
Message-ID: <20190805115450.GB16513@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
 <20190804201637.1240-6-sam@ravnborg.org>
 <8567eb4c916a0b1d134bd62112a11903@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8567eb4c916a0b1d134bd62112a11903@agner.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=8AirrxEcAAAA:8 a=PwaXosQhBBzGxnEnWWMA:9 a=AW-sozriLiJjIiio:21
 a=XmQ5ioN8wHDAHHl3:21 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
 a=ST-jHhOKWsTCqRlWije3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_045457_228106_50E68B0F 
X-CRM114-Status: GOOD (  20.43  )
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
 Sean Paul <sean@poorly.run>, Allison Randal <allison@lohutok.net>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sam Ravnborg <sam.ravnborg@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Alison Wang <alison.wang@nxp.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Vincent Abriou <vincent.abriou@st.com>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, Enrico Weigelt <info@metux.net>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan.

Thanks for the feedback.

On Mon, Aug 05, 2019 at 11:16:26AM +0200, Stefan Agner wrote:
> On 2019-08-04 22:16, Sam Ravnborg wrote:
> > Use drm_panel_get_modes() to access modes.
> > This has a nice side effect to simplify the code.
> > 
> > Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Stefan Agner <stefan@agner.ch>
> > Cc: Alison Wang <alison.wang@nxp.com>
> > ---
> >  drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c | 10 +---------
> >  1 file changed, 1 insertion(+), 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c
> > b/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c
> > index 279d83eaffc0..a92fd6c70b09 100644
> > --- a/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c
> > +++ b/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c
> > @@ -65,17 +65,9 @@ static const struct drm_connector_funcs
> > fsl_dcu_drm_connector_funcs = {
> >  static int fsl_dcu_drm_connector_get_modes(struct drm_connector *connector)
> >  {
> >  	struct fsl_dcu_drm_connector *fsl_connector;
> > -	int (*get_modes)(struct drm_panel *panel);
> > -	int num_modes = 0;
> >  
> >  	fsl_connector = to_fsl_dcu_connector(connector);
> > -	if (fsl_connector->panel && fsl_connector->panel->funcs &&
> > -	    fsl_connector->panel->funcs->get_modes) {
> > -		get_modes = fsl_connector->panel->funcs->get_modes;
> > -		num_modes = get_modes(fsl_connector->panel);
> > -	}
> > -
> > -	return num_modes;
> > +	return drm_panel_get_modes(fsl_connector->panel);
> 
> Oh, that old code looks rather messy. Thanks for the simplification!
> 
> This behaves slightly different since it now returns -EINVAL or -ENOSYS,
> but that is what we want.

You are right, and I will add this to the changelog when I apply.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
