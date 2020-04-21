Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CFA1B1FF7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 09:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QQJT8n3fBNbkYNQzbWOHQ/FyTkUj4pvQ/uNkMHzv2NU=; b=JDytLtGwPfV4MfnYdxbFjjySB
	C2iphvm5IwQD7PfaPogY7oSRujeQWKxKZADCCSi7+M5KmDL4A/HFe+HjnsyRvdQeqs4AGbPaLMUTt
	1Mr6IxsUCkb54nFhi1ClG6DQG21/fLZnm0k03jc+6C6nOliP828cmVUdWR6qUIZH9bQuSDKubT1Mc
	o5XUZPT4SXzTvmLgIXL07xMjthjR+FQgmfP3fdDl4ty/N/p5bOfmP685Dm4LhoN/wvFCMWZOpLJm1
	WdvS4HUvs9Uao4q3J46C5+wOmj71RexG+Gum/Rj5HRRgiQ2K6k5uV4HdOvqRaZXnXrBYIY7gDLzQZ
	yl9s9NlzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnTH-0006Nx-OK; Tue, 21 Apr 2020 07:37:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnT9-0006LI-G7
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 07:37:25 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jQnT0-00017T-JC; Tue, 21 Apr 2020 09:37:14 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jQnSz-00045M-IL; Tue, 21 Apr 2020 09:37:13 +0200
Date: Tue, 21 Apr 2020 09:37:13 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v3 2/5] ARM: dts: add Protonic PRTI6Q board
Message-ID: <20200421073713.hnv3poogl65ln77w@pengutronix.de>
References: <20200324110432.25062-1-o.rempel@pengutronix.de>
 <20200324110432.25062-3-o.rempel@pengutronix.de>
 <20200421040747.GE8571@dragon>
MIME-Version: 1.0
In-Reply-To: <20200421040747.GE8571@dragon>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:23:29 up 157 days, 22:42, 166 users,  load average: 0.07, 0.07,
 0.08
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_003723_536795_64CB15DC 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Jander <david@protonic.nl>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4331082128214140466=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4331082128214140466==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4cydpp6pjv3rbmqg"
Content-Disposition: inline


--4cydpp6pjv3rbmqg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Shawn,

Thank you for the review. You was reviewing v3, the last version is v5.
Never the less, part of comments still apply. I'll fix them.


On Tue, Apr 21, 2020 at 12:07:49PM +0800, Shawn Guo wrote:
> On Tue, Mar 24, 2020 at 12:04:29PM +0100, Oleksij Rempel wrote:
> > Protonic PRTI6Q is a development board and a base class for different
> > specific customer application boards based on the i.MX6 family of SoCs,
> > developed by Protonic Holland.
> >=20
> > Signed-off-by: David Jander <david@protonic.nl>
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---

> > +&usdhc2 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_usdhc2>;
> > +	non-removable;
> > +	vmmc-supply =3D <&reg_wifi>;
> > +	cap-power-off-card;
> > +	keep-power-in-suspend;
> > +	status =3D "okay";
> > +
> > +	wifi {
> > +		compatible =3D "ti,wl1271";
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&pinctrl_wifi>;
> > +		irq-gpio =3D <&gpio1 30 GPIO_ACTIVE_HIGH>;
>=20
> I failed to find this in "ti,wl1271" bindings.

Indeed. But it is required by the code:

drivers/net/wireless/ti/wlcore/sdio.c:
static int wlcore_probe_of(struct device *dev, int *irq, int *wakeirq,
			   struct wlcore_platdev_data *pdev_data)
{
=2E...
	*irq =3D irq_of_parse_and_map(np, 0);
	if (!*irq) {
		dev_err(dev, "No irq in platform data\n");
		return -EINVAL;
	}

I'll send a patch to fix it.

Regards,
Oleksij
--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--4cydpp6pjv3rbmqg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl6eoqMACgkQ4omh9DUa
UbMcrxAApMsUmQ33pQEOrk9ulSJkkSg8xm+CMZKkas4aamjE0q+LOe97WArayMXB
db1ttp4L3b12I6qhcnDrgfhw+ZUduM+PU4ZD3MOi+F9Fy6nwkxJW2HQ3z/q1M6JN
Fy9UJtSTZ5dY74xtlL9mqZ/ifulWCuuxJxXjKkghe8lUcV2Nerf/X0+A72wHVep6
2bydbKk7Uu8ioBCLuHMOf1jXHNx2GhEmCc66B2VfpLcsitjy3l40+aEBW4JdBY+f
STmD6DW9VekFJxOnu1Z/IbFuIIIL+mjKUvAwb6sqXjmnr0DVq/XXN/FQ8fgHZRnq
AHHqhr3jOOqtHc/VHb2jFGgKAmGMYHdUbotlj/0gWy9Uxw0ZGV6tljL8imJ38/CJ
dbduR7qjQf3W5+XgouJTb2lq3DIzcQ6Fw5U2iIkdtHxNneigP0WVEA1sBL/ksgos
d2Lx6FRYF5gHbYerSiPGZH8f2tWHtsV6smAjHjXUF8sGxdLsUzmQDefL1iYOQNeJ
7N6nVssD+AWjJ0TzdEuorvTepcbKYfsjQlOrX9sMr7pwqAKIRgbd6nESrRgLIHbM
Yumu4MedWmr98zj9eXckVw8Ezedt/fMR3rXNI8OpM1f9G8qFSpU+zDI0cUIMc/He
5tVW6uxytjLe6//+mBrk1cKqHph4oiaOsPvARZ/NzBjEeqP9MXo=
=CZn8
-----END PGP SIGNATURE-----

--4cydpp6pjv3rbmqg--


--===============4331082128214140466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4331082128214140466==--

