Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AB5B0209
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 18:50:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZGT8VpaLHPh48IWOUx0YE5IiGksxWNBMdk5ru973AJ8=; b=UnjAV4jc4dsPoIphIFPOfLluv
	rU57lgMENkrStlpfBstP2hHcpgPfNS0dEPLrFnC0FqQ7W8z/8//FbpWwnVHpCwpBallS5S/aI5f+V
	sM6lFIaKU9/fKtQZVAScl90nsrN2iV38vfiKsUH3gF58tMLw7wOCQT/8EnAJbiWuJs6fwasgQN1r3
	8dW2WRbN6Py8zuvCu+ujnTJAlgZ3rl9ifVPCVgE6dEC8mEMLjJTofcUnYOuU/0ch6CRW2KfOswfEH
	sLQZR1M8fxqnTBEib55i+Tm+IeVN5QaX1jqSReVZsemKo1XsxqhWbfTqQGgoySZBr1KZnF4Uh6W3m
	bQCoEjx+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i85pF-0002SG-8p; Wed, 11 Sep 2019 16:50:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i85p2-0002Rb-Ek
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 16:50:25 +0000
Received: from earth.universe (unknown [148.69.85.38])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74E6A20872;
 Wed, 11 Sep 2019 16:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568220623;
 bh=nR8hx3HK09Zo3Xccb+ticqxSNc/27NqZIk5X0xyz19Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qRpE9q+loPKnhIWXbSWfUjhLzQKkgRzPW9r8UNqhhTfC44nsa5vhYzI2DjDyHfNw+
 J01X3OoeBzxN4sn/3M3dRYZp6op74PWkO2La/TopQG7uwCQ9GZv3vGGJ2XBx5eZlty
 WfhJVcXaVb5UV8wvoAGsYxCx2V6UlQJfDjFlIdQU=
Received: by earth.universe (Postfix, from userid 1000)
 id 495773C0D39; Wed, 11 Sep 2019 17:50:21 +0100 (WEST)
Date: Wed, 11 Sep 2019 17:50:21 +0100
From: Sebastian Reichel <sre@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH 1/2] ARM: omap2plus_defconfig: Update for removed items
Message-ID: <20190911165021.qr5i37mpnua3fvw5@earth.universe>
References: <20190911145226.21088-1-aford173@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190911145226.21088-1-aford173@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_095024_540322_DBD83E50 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tony Lindgren <tony@atomide.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 adam.ford@logicpd.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1727962073139685331=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1727962073139685331==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cquryzuhszuj65pm"
Content-Disposition: inline


--cquryzuhszuj65pm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 11, 2019 at 09:52:25AM -0500, Adam Ford wrote:
> The omap panel-dpi driver was removed in
> Commit 8bf4b1621178 ("drm/omap: Remove panel-dpi driver")
>=20
> The tFP410 and DVI connector was remove in
> Commit be3143d8b27f ("drm/omap: Remove TFP410 and DVI connector drivers")
>=20
> This patch removes these items from the omap2plus_defconfig.

The omapdrm specific drivers have generic replacements, that
should be added to the defconfig instead:

DRM_OMAP_PANEL_DPI -> DRM_PANEL_SIMPLE
DRM_OMAP_ENCODER_TFP410 -> DRM_TI_TFP410

Nothing should be required for DRM_OMAP_CONNECTOR_DVI.

-- Sebastian

> Signed-off-by: Adam Ford <aford173@gmail.com>
>=20
> diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap=
2plus_defconfig
> index c7bf9c493646..166b36be2ca6 100644
> --- a/arch/arm/configs/omap2plus_defconfig
> +++ b/arch/arm/configs/omap2plus_defconfig
> @@ -349,12 +349,9 @@ CONFIG_OMAP5_DSS_HDMI=3Dy
>  CONFIG_OMAP2_DSS_SDI=3Dy
>  CONFIG_OMAP2_DSS_DSI=3Dy
>  CONFIG_DRM_OMAP_ENCODER_OPA362=3Dm
> -CONFIG_DRM_OMAP_ENCODER_TFP410=3Dm
>  CONFIG_DRM_OMAP_ENCODER_TPD12S015=3Dm
> -CONFIG_DRM_OMAP_CONNECTOR_DVI=3Dm
>  CONFIG_DRM_OMAP_CONNECTOR_HDMI=3Dm
>  CONFIG_DRM_OMAP_CONNECTOR_ANALOG_TV=3Dm
> -CONFIG_DRM_OMAP_PANEL_DPI=3Dm
>  CONFIG_DRM_OMAP_PANEL_DSI_CM=3Dm
>  CONFIG_DRM_OMAP_PANEL_SONY_ACX565AKM=3Dm
>  CONFIG_DRM_OMAP_PANEL_LGPHILIPS_LB035Q02=3Dm
> --=20
> 2.17.1
>=20

--cquryzuhszuj65pm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl15JckACgkQ2O7X88g7
+poVgRAAgMcfz1sNIFGJyjDqAyhgu3cqv4oHp9J6JpEc+oy01vP+KpXSncCd2V7q
4qo1PkL++BZUN7uOYLNKK3f4KH8RSkITyzhTiY9Sj8nqASc+khTbYyCms+lePx3M
vSgxevdTU4Nw3VzjR67z5IsXz8VyEwmDGyunTc8lhnkPupuSOUg8YW/3XA363Epu
CYsHJSJykrVvtScBGs4dcgPD+eIPqfMTslhCMw8zxzAy3HBqsHqDu6tfYDAL1DB/
K0L+QhILnkSKh+g8C0oC/sikdJTgwdHen0Lx9iYJqqaFutLabuP4FNovPMCt7bJ4
ciHZV6etFcW4ci9sX7L9jgbn9oZtfMhifI5T2JfDxGrMfNWpRf3wehvsoL1Gqupe
zUX0rgAb50PFGxkAn9mPnbEvtaKBP6tkLTVTDNThf2jbK5gn9yS6dXjES8q7XIJI
t+/a8NiQRUmNBhlQNtdlY8g2mqmP9orSSZD0AUULhIw9tmEvCCdlRuFNLkm8/Wr6
5S0QHbfMi+W7nlnEF3g7lRmtpbbwA7/glTCehYmuOvtFVZH9sBPu6XoESS2pyyMv
2H1yrhxPUku8EnRgIsO3ZQDKF7xXT0F1teL2PQbO17HoaPWaBJq36HJ99UvUpGQU
eegD9nrFhGv5mBQSxFwlNju5cuJ5k4yELT8CZjMkd08KJJfopkQ=
=k12s
-----END PGP SIGNATURE-----

--cquryzuhszuj65pm--


--===============1727962073139685331==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1727962073139685331==--

