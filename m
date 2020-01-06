Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BF6131683
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 18:10:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P4FWjdC4FCl7GoG2VTJ42ugz+vvDoykph/3L9ilPVYs=; b=WXEaX+1tGlQCj2wbPthGvyGuQ
	t7B9CktWVMhEUfPyYlbIKvK1dn7KXHvKHtOtbHI4le8O4StivnS4vJucdiJ0NrhnY4IaeHKwl1cvS
	gMzIJFC84+SNARVKCAdh/RKsk3xo18u+zZPvaUvaYNKmWO9I5vYUn59KhwmdRrway9+y/1f+qGB5u
	9OdAXIEobWjhFIKrh64V3cO6kyS37ewlLzzAY0/qz67jFjlG1pj8IiEHMwm5zk0E63HWxgRAd0R14
	dujz+U4AHSNJtaeohg6zYs9xoRVxxDzsoofUImgiqyb0Y611Yy7obMvDPQ6agrqGL6/beR6oFnSaD
	Tq6vAgx0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioVtN-0004JG-VY; Mon, 06 Jan 2020 17:10:13 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioVtA-0003wd-TG
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 17:10:02 +0000
X-Originating-IP: 93.34.114.233
Received: from uno.localdomain (93-34-114-233.ip49.fastwebnet.it
 [93.34.114.233]) (Authenticated sender: jacopo@jmondi.org)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 93514C000D;
 Mon,  6 Jan 2020 17:09:44 +0000 (UTC)
Date: Mon, 6 Jan 2020 18:12:09 +0100
From: Jacopo Mondi <jacopo@jmondi.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: imx6qdl-icore-1.5: Remove duplicate phy
 reset methods
Message-ID: <20200106171209.bkberpu4it5qo6qj@uno.localdomain>
References: <20191230120021.32630-1-jagan@amarulasolutions.com>
 <20191230120021.32630-2-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20191230120021.32630-2-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_091001_104571_D97323F2 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 Fabio Estevam <festevam@gmail.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0008007390391104723=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0008007390391104723==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="u75eg3etc6nba3gs"
Content-Disposition: inline


--u75eg3etc6nba3gs
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Jagan,
   small detail, this should come -after= 3/3 in the series, am I
   wrong ?

On Mon, Dec 30, 2019 at 05:30:20PM +0530, Jagan Teki wrote:
> From: Michael Trimarchi <michael@amarulasolutions.com>
>
> Engicam i.CoreM6 1.5 Quad/Dual MIPI dtsi is reusing fec node
> from Engicam i.CoreM6 dtsi but have sampe copy of phy-reset-gpio
> and phy-mode properties.
>
> So, drop this phy reset methods from imx6qdl-icore-1.5 dsti file.
>
> Cc: Jacopo Mondi <jacopo@jmondi.org>
> Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Anyway, I've tested on my iCore 1.5 Quad starter kit and things are
still working.

Pending acceptance of 3/3, which seem correct to me but I cannot
really judge knowing very few things about net:

Tested-by: Jacopo Mondi <jacopo@jmondi.org>

Thanks
   j

> ---
> Changes for v2:
> - new patch.
>
>  arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi b/arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi
> index d91d46b5898f..0fd7f2e24d9c 100644
> --- a/arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi
> @@ -25,10 +25,8 @@
>  &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet>;
> -	phy-reset-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
>  	clocks = <&clks IMX6QDL_CLK_ENET>,
>  		 <&clks IMX6QDL_CLK_ENET>,
>  		 <&clks IMX6QDL_CLK_ENET_REF>;
> -	phy-mode = "rmii";
>  	status = "okay";
>  };
> --
> 2.18.0.321.gffc6fa0e3
>

--u75eg3etc6nba3gs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEtcQ9SICaIIqPWDjAcjQGjxahVjwFAl4TamkACgkQcjQGjxah
VjydUhAAhZ1rpFfpJEhocX9PC/9nhJAgmt1D+IOAudsNBlc41dVfVL/QWHzL0Fkl
x2SAuFR0UuYRlXWddg0XlbF3WzYgiiNS4eHcoSlK9v9d2KIXo5NrFLJ18xRoont9
fyD6bwDc7R4ZITur+r8OXfd/mIs8Gj5NTQv/AcKsS94siZGzrhGxxIdSWdkaliZq
XwIsVRf1q9jNifFvUIDFDUGuEYLm9NYY8uOWSvA0Pj0ZOTkCgrOvMmcAUy69+uUq
Sqznbj28XP2daw4n9PZ+1rj2Nluiou/SbGpeAq5qoEe+O+ZAPO+++eVroRKQt2q7
kDEM3FZ8sUiyfKchp+iqZK9qAdFbCldvzhy4xeZFdCBQnNKHOn8obq0DlfUoXMYl
pf/h4cusUeF8Ip4EL1G9yJDCmqrUsZ0bBma4fI17TjHfNQBed1KpjM+F66lL00m1
gFOSKICn4CUQUSVqK0nPJ96ZEHObKVQbL+SQdJoPRcwjaTCGjXWZIaLJ5iWsgO05
NOA//juKke2Lv8IslxD0fA3dhMj8ws3MI0N1q2rI06XX9+lwmUrlU00awWazPLgd
Fz2Av+sxAi+aWIt+4X4tYH9IjFE0qn1d7yZFqBjQGQHQg4S9xn6sRs4rD/Dcf2BN
rXDGW5/tIo+z4lcR0cpRusLAlHwYHvxKYzB+u795bdIKwS44gdI=
=Qc8J
-----END PGP SIGNATURE-----

--u75eg3etc6nba3gs--


--===============0008007390391104723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0008007390391104723==--

