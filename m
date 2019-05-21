Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FA024E4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 13:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G4/gAX/FIt9LlH9ulETe19XUe5lCzSnYXvDjOOAUAXs=; b=W6yNGtpxYGaHCxq7wBkNh2cD4
	nhurVDxWHPLfgpzd0FVSH8DslLfve1jwRPt0q7fyynwHz445CAkV6lmJuJKBSH/ola4/Ejkz5QE4v
	goklq9LFXxriwiAWJ4H8VRIARDo3q37U53lRiQ7lYVHD8JahweQDsqTJ3Sv3DCikw5d4ulemF54aF
	imnDUMKD5Yx17OkFMprjfucHKYAYW+1fyo9Ea1hFhXYFBGjhp509MuIJ3DV1lbTzR1iJ1Z8YI13fu
	elJl3ptrXvCFUyvq+iaiRIqGfw/Sj9uU48XDnqpoEEF6fE0PHd19J+oNDv8xr7GD6NKLoZHpKXjdK
	cDhmn76QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT3E2-00089u-D9; Tue, 21 May 2019 11:46:34 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT3Dv-00088b-BV
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 11:46:29 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id A025C2000B;
 Tue, 21 May 2019 11:46:11 +0000 (UTC)
Date: Tue, 21 May 2019 13:46:11 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: megous@megous.com
Subject: Re: [PATCH v5 5/6] drm: sun4i: Add support for enabling DDC I2C bus
 to sun8i_dw_hdmi glue
Message-ID: <20190521114611.ylmbo2oqeanveil4@flea>
References: <20190520235009.16734-1-megous@megous.com>
 <20190520235009.16734-6-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20190520235009.16734-6-megous@megous.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_044627_715152_D296EC41 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Jose Abreu <joabreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: multipart/mixed; boundary="===============4432936658366665362=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4432936658366665362==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rjlukvbwopyqxnek"
Content-Disposition: inline


--rjlukvbwopyqxnek
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, May 21, 2019 at 01:50:08AM +0200, megous@megous.com wrote:
> From: Ondrej Jirman <megous@megous.com>
>
> Orange Pi 3 board requires enabling a voltage shifting circuit via GPIO
> for the DDC bus to be usable.
>
> Add support for hdmi-connector node's optional ddc-en-gpios property to
> support this use case.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c | 55 +++++++++++++++++++++++++--
>  drivers/gpu/drm/sun4i/sun8i_dw_hdmi.h |  3 ++
>  2 files changed, 55 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c b/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
> index 39d8509d96a0..59b81ba02d96 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
> @@ -98,6 +98,30 @@ static u32 sun8i_dw_hdmi_find_possible_crtcs(struct drm_device *drm,
>  	return crtcs;
>  }
>
> +static int sun8i_dw_hdmi_find_connector_pdev(struct device *dev,
> +					     struct platform_device **pdev_out)
> +{
> +	struct platform_device *pdev;
> +	struct device_node *remote;
> +
> +	remote = of_graph_get_remote_node(dev->of_node, 1, -1);
> +	if (!remote)
> +		return -ENODEV;
> +
> +	if (!of_device_is_compatible(remote, "hdmi-connector")) {
> +		of_node_put(remote);
> +		return -ENODEV;
> +	}
> +
> +	pdev = of_find_device_by_node(remote);
> +	of_node_put(remote);
> +	if (!pdev)
> +		return -ENODEV;
> +
> +	*pdev_out = pdev;
> +	return 0;
> +}
> +
>  static int sun8i_dw_hdmi_bind(struct device *dev, struct device *master,
>  			      void *data)
>  {
> @@ -151,16 +175,29 @@ static int sun8i_dw_hdmi_bind(struct device *dev, struct device *master,
>  		return PTR_ERR(hdmi->regulator);
>  	}
>
> +	ret = sun8i_dw_hdmi_find_connector_pdev(dev, &hdmi->connector_pdev);
> +	if (!ret) {
> +		hdmi->ddc_en = gpiod_get_optional(&hdmi->connector_pdev->dev,
> +						  "ddc-en", GPIOD_OUT_HIGH);
> +		if (IS_ERR(hdmi->ddc_en)) {
> +			platform_device_put(hdmi->connector_pdev);
> +			dev_err(dev, "Couldn't get ddc-en gpio\n");
> +			return PTR_ERR(hdmi->ddc_en);
> +		}
> +	}
> +
>  	ret = regulator_enable(hdmi->regulator);
>  	if (ret) {
>  		dev_err(dev, "Failed to enable regulator\n");
> -		return ret;
> +		goto err_unref_ddc_en;
>  	}
>
> +	gpiod_set_value(hdmi->ddc_en, 1);
> +

Do you really need this to be done all the time? I'm guessing you
would only need this when running .get_modes, right?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--rjlukvbwopyqxnek
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOPlAwAKCRDj7w1vZxhR
xXfLAPkBCXreeTOBxlliLT+vNeIHXqJAXge39oQ9DnnSMZXH+QEA8gYAqMyb5uND
MB0Ogchlc9aPOpC+/ynIMTSFjk0AgQU=
=yRtx
-----END PGP SIGNATURE-----

--rjlukvbwopyqxnek--


--===============4432936658366665362==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4432936658366665362==--

