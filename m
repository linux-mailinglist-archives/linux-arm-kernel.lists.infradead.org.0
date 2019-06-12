Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E1C43170
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 23:21:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3jnpgctCeu8GQUpByMwN6YtWERcRfwY9+tj9eVWyXsU=; b=bAw4+58bt319GM
	bL5h2Oy5BYyvV8cnA0d5asTiomkwnQX/2ehAgdeYPjv7t+1cKC7WBoAk2wrOTNXHW1nPqvZLebdy7
	zAqVPm3at0Q56uQw5TXmZ31zKGQZr0TxgcUeqDlTZj3Lq+Y2FkpAnCOE4O559yh+6jm7YyRfRyvJB
	Dcqt3mappVPeecj2hQsEs0qqXEQm3sn0mq0GaYUf76TwZj+z8+VyOt1Y4ntLANrHpIoz9SH3/3Juz
	mrC0YKfakH9v+oC2WACjpg7ZnSxamlSp5WIxAYlaY/mNGXVNa58mVSb1j5fXOklmLAXS6K6HmbK8H
	ZzLvewaeGs34ldhWvSsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbAgA-0007sQ-AQ; Wed, 12 Jun 2019 21:21:10 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbAfy-0007rn-JD; Wed, 12 Jun 2019 21:20:59 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 0A53D20021;
 Wed, 12 Jun 2019 23:20:56 +0200 (CEST)
Date: Wed, 12 Jun 2019 23:20:54 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Derek Basehore <dbasehore@chromium.org>
Subject: Re: [PATCH 1/5] drm/panel: Add helper for reading DT rotation
Message-ID: <20190612212054.GB13155@ravnborg.org>
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-2-dbasehore@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611040350.90064-2-dbasehore@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=cm27Pg_UAAAA:8
 a=PWvNCjwUpEQzod5d7NgA:9 a=CjuIK1q_8ugA:10 a=xmb-EsYY8bH0VWELuYED:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_142058_813158_EEE43B54 
X-CRM114-Status: GOOD (  18.28  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Derek.

On Mon, Jun 10, 2019 at 09:03:46PM -0700, Derek Basehore wrote:
> This adds a helper function for reading the rotation (panel
> orientation) from the device tree.
> 
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> ---
>  drivers/gpu/drm/drm_panel.c | 41 +++++++++++++++++++++++++++++++++++++
>  include/drm/drm_panel.h     |  7 +++++++
>  2 files changed, 48 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index dbd5b873e8f2..3b689ce4a51a 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -172,6 +172,47 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
>  	return ERR_PTR(-EPROBE_DEFER);
>  }
>  EXPORT_SYMBOL(of_drm_find_panel);
> +
> +/**
> + * of_drm_get_panel_orientation - look up the rotation of the panel using a
> + * device tree node
> + * @np: device tree node of the panel
> + * @orientation: orientation enum to be filled in
> + *
> + * Looks up the rotation of a panel in the device tree. The rotation in the
> + * device tree is counter clockwise.
> + *
> + * Return: 0 when a valid rotation value (0, 90, 180, or 270) is read or the
> + * rotation property doesn't exist. -EERROR otherwise.
> + */
> +int of_drm_get_panel_orientation(const struct device_node *np, int *orientation)
> +{
> +	int rotation, ret;
> +
> +	ret = of_property_read_u32(np, "rotation", &rotation);

I just noticed that everywhere this code talks about orientation,
but the property that it reads are rotation.
To my best understanding these are not the same.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
