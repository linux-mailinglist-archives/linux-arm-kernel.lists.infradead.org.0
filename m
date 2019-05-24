Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 816D32A005
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 22:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5X3WnhZgYQ7QH5lKbBsXe+jqxvvM8dzLoZbnOXh+jSM=; b=H2MfvTy+r+DlamiC4xGARngmI
	WzbCUrR/LzMVtQgiKQ1X4HsFI7pHXpzTW6DjwK9nz508+olozDeNJSYbJhPWeUd8y5XMljnrUizgn
	F5H0ncVUmKEQo9SJW6SQ0GmfqnwnCIFuJdKWmsQfL1Tgn31sw6FOZm+eAXa/OHmN2vNujX9Pr52je
	ZqK8s2oZbk1BYJ2tiYkjMQuPTXe6Xzv8yAeiKAQy7/L5kVyU9rzBcu0Po5ukLF0SasAXnrDiOuKNh
	3i92mBeEe2/CA6PtiC1BgkMkodhX8CAd73bWXQOWpDqxvBmJc+HnQXlIwJxH5cdgNS9oska/Eay/r
	i669+7WNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUH1k-00044U-Rv; Fri, 24 May 2019 20:42:56 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUH1c-00042z-ML
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 20:42:50 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id E738D80302; Fri, 24 May 2019 22:42:29 +0200 (CEST)
Date: Fri, 24 May 2019 22:42:39 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Angus Ainslie <angus@akkea.ca>
Subject: Re: [PATCH v14 1/3] arm64: dts: fsl: librem5: Add a device tree for
 the Librem5 devkit
Message-ID: <20190524204239.GA18646@amd>
References: <20190524183257.16066-1-angus@akkea.ca>
 <20190524183257.16066-2-angus@akkea.ca>
MIME-Version: 1.0
In-Reply-To: <20190524183257.16066-2-angus@akkea.ca>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_134248_878772_14CF1434 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0098320423127141892=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0098320423127141892==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="FL5UXtIhxfXey3p5"
Content-Disposition: inline


--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> +	leds {
> +		compatible =3D "gpio-leds";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_gpio_leds>;
> +
> +		led1 {
> +			label =3D "LED 1";
> +			gpios =3D <&gpio1 13 GPIO_ACTIVE_HIGH>;
> +			default-state =3D "off";
> +		};
> +	};

I had comments about these...

> +	vibrator {
> +		compatible =3D "gpio-vibrator";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_haptic>;
> +	        enable-gpios =3D <&gpio5 4 GPIO_ACTIVE_LOW>;
> +		vcc-supply =3D <&reg_3v3_p>;
> +	};

Thanks!

> +	charger@6b { /* bq25896 */
> +		compatible =3D "ti,bq25890";
> +		reg =3D <0x6b>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_charger>;
> +		interrupt-parent =3D <&gpio3>;
> +		interrupts =3D <25 IRQ_TYPE_EDGE_FALLING>;
> +		ti,battery-regulation-voltage =3D <4192000>; /* 4.192V */
> +		ti,charge-current =3D <1600000>; /* 1.6 A */
> +		ti,termination-current =3D <66000>;  /* 66mA */
> +		ti,precharge-current =3D <1300000>; /* 1.3A */
> +		ti,minimum-sys-voltage =3D <2750000>; /* 2.75V */
> +		ti,boost-voltage =3D <5000000>; /* 5V */
> +		ti,boost-max-current =3D <50000>; /* 50mA */
> +	};

And this. Did they get lost somewhere?
									Pavel

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--FL5UXtIhxfXey3p5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzoVz8ACgkQMOfwapXb+vIdgQCghne8A075NT7kuQmW7jP5hq3r
KZUAoKXRSu20WmzRx4utr7RCAfCkzzmY
=GIv0
-----END PGP SIGNATURE-----

--FL5UXtIhxfXey3p5--


--===============0098320423127141892==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0098320423127141892==--

