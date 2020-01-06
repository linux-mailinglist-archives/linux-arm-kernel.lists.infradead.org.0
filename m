Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B49131646
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 17:47:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h0tqySIw3RFTqAmZ9YXGH76/Pm8eFu+omsIPwkU4ewg=; b=dIy95OH9P/pLq2Y7yCeHoYb2v
	f6spnzgO9IXl9MT9u20fIwRbJQuXJUu/onXhYFKm17I6bJ+L2EpnHTCux87zFhU8+V0QYiZRK7EUa
	4FXn6ZXLs15M0sJ+PYCjF1aeKriOqFjbWWdC41HpWn2E0bIVbcZbIgJTheMaFW3vu4RX2W70Lggu0
	E+mLb13wgkiBDWTJQHWaRJtYtuAdGiiBcZVjDmMkFs30ZTJpEeD+ve9+6TOJUNfjar23TKsftBUkU
	+JkMhRAgO+aydOvHWoILdGqXIxSKeznN6E1OdUIJi+3zTy+IIsre0TKmKLEmkbRMZQPuDXy0C62IQ
	rwZA1q56A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioVXF-00058H-HV; Mon, 06 Jan 2020 16:47:21 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioVX6-00057T-8P
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 16:47:14 +0000
X-Originating-IP: 93.34.114.233
Received: from uno.localdomain (93-34-114-233.ip49.fastwebnet.it
 [93.34.114.233]) (Authenticated sender: jacopo@jmondi.org)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 7288760014;
 Mon,  6 Jan 2020 16:46:57 +0000 (UTC)
Date: Mon, 6 Jan 2020 17:49:22 +0100
From: Jacopo Mondi <jacopo@jmondi.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2 1/3] ARM: dts: imx6q-icore-mipi: Use 1.5 version of
 i.Core MX6DL
Message-ID: <20200106164922.2miekwayssugdnfi@uno.localdomain>
References: <20191230120021.32630-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20191230120021.32630-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_084712_574427_E843F5B0 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 Fabio Estevam <festevam@gmail.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8045413389495814724=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8045413389495814724==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ba6vza4vxzejqwcg"
Content-Disposition: inline


--ba6vza4vxzejqwcg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Jagan,

On Mon, Dec 30, 2019 at 05:30:19PM +0530, Jagan Teki wrote:
> The EDIMM STARTER KIT i.Core 1.5 MIPI Evaluation is based on
> the 1.5 version of the i.Core MX6 cpu module. The 1.5 version
> differs from the original one for a few details, including the
> ethernet PHY interface clock provider.
>
> With this commit, the ethernet interface works properly:
> SMSC LAN8710/LAN8720 2188000.ethernet-1:00: attached PHY driver
>
> While before using the 1.5 version, ethernet failed to startup
> do to un-clocked PHY interface:
> fec 2188000.ethernet eth0: could not attach to PHY
>
> Similar fix has merged for i.Core MX6Q but missed to update for DL.
>
> Fixes: a8039f2dd089 ("ARM: dts: imx6dl: Add Engicam i.CoreM6 1.5 Quad/Dual MIPI starter kit support")
> Cc: Jacopo Mondi <jacopo@jmondi.org>
> Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v2:
> - Add Michael s-o-b
>
>  arch/arm/boot/dts/imx6dl-icore-mipi.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/imx6dl-icore-mipi.dts b/arch/arm/boot/dts/imx6dl-icore-mipi.dts
> index e43bccb78ab2..d8f3821a0ffd 100644
> --- a/arch/arm/boot/dts/imx6dl-icore-mipi.dts
> +++ b/arch/arm/boot/dts/imx6dl-icore-mipi.dts
> @@ -8,7 +8,7 @@
>  /dts-v1/;
>
>  #include "imx6dl.dtsi"
> -#include "imx6qdl-icore.dtsi"
> +#include "imx6qdl-icore-1.5.dtsi"
>
>  / {
>  	model = "Engicam i.CoreM6 DualLite/Solo MIPI Starter Kit";

In
09ad741b7ece ("ARM: dts: imx6q-icore-mipi: Use 1.5 version of i.Core MX6")>

I also changed this line to
-       model = "Engicam i.CoreM6 Quad/Dual MIPI Starter Kit";
+       model = "Engicam i.CoreM6 1.5 Quad/Dual MIPI Starter Kit";

Maybe you want the same here.

With or without this change:
Reviewed-by: Jacopo Mondi <jacopo@jmondi.org>

Thanks
   j

> --
> 2.18.0.321.gffc6fa0e3


--ba6vza4vxzejqwcg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEtcQ9SICaIIqPWDjAcjQGjxahVjwFAl4TZRIACgkQcjQGjxah
VjzcqQ//WS7o8+zUGA2LnNefMrQhNBeylfzlQRf98NJRQCltspxDVGDIPvS2TYYT
JoCsLFQNM/tyZZgYcGhr6tKYErBkzxeh/jMDiPoXKaQopFUAZ6i3sy7S8WWszfT2
su2jz5QUogz5Gx5ZJs8BoYA5YS0shQx3uWW19dEhLCmm9a7DCAEy5sdDj29RQbrN
W0CImduDGrWC7opEtjnNrkAbFgv5dBVhwZJ/t3EoixNAZBNzUnXsEmXPaDQRRqUh
/XlUMrfHRTuUGT6d3dPxGvtF9zrLuqtwXKLhXllNfWeS+cjFErmEjX2Q7hI+LLMU
sJzpYODFSbIc4OzaRqFlLO8gMfE1TLK8faual2G+JHOgi8qDRbmVY3uwIMhBVlTF
YPrnZxz6txG6VDqmb/eVrgas7RwCD+nUpS16sqxxirpHhmkdVqkMD2bP2JdGh6b5
I1XFGnugROQ7+OZZ6oe1HeM2aEGSk7rY6PyYRNEdm/eEa7adlH+D+dhSLvvIYi5N
MzrgrpdPtuonuoAsiA7GZUEGccLMezvaxw+mQIAR58GA4AWkicfjWBfjyrL867zf
F1DJ2+fbALQopjvDua4JxqCSYM/vBP1oyhpoUxjdyjd3kE/qniG7v7Cd3eitt38U
rfCGMveoqNqZoSujybP7qydqR2P5tn/NNpNYbZanEsOiSC1YnXQ=
=nkp8
-----END PGP SIGNATURE-----

--ba6vza4vxzejqwcg--


--===============8045413389495814724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8045413389495814724==--

