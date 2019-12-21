Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 123B4128B7D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 21:22:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dtz21bQsP5kkuDrxH9adLn2rLu5LhlkJocSNy1VSvMc=; b=gvwkDzPSXfo6evE+RZhhubto6
	vpsKrYZwddSGdLk0anaAJiRcca6kfLlWcqaNLN6ZyOU6J29Fn7TRSC8uB/9HVNW3mei93AmWtNSQe
	sbHSXNOjfvyuJ51v5s687yXFk9qYW8gJR1nPoM0eXHieY8ERojcqopGR+19e9yEXQLMjs/TJYpYBa
	b0c+tsAwonucS9RaqBQ+M0/Kj1e0lS0NazM9nmgkSRY55FPJLtVDrv2bQX8QuoaqjMD3ZGUa7rC1Q
	Farum6uC12lyFimkyLtaH9IbJUVO89MJUEVs681dfC93a+xJLxo9baIKqhNg0Pn+SQWi96BruqUno
	u8KxluztQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iilGR-0008Mo-9d; Sat, 21 Dec 2019 20:22:15 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iilGE-0008M2-OJ; Sat, 21 Dec 2019 20:22:06 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 9E47B1C24A9; Sat, 21 Dec 2019 21:21:57 +0100 (CET)
Date: Sat, 21 Dec 2019 21:21:56 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 14/25] arm64: dts: realtek: rtd1295-xnano-x5: Add regular
 LEDs to FD628
Message-ID: <20191221202156.GL32732@amd>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-15-afaerber@suse.de>
MIME-Version: 1.0
In-Reply-To: <20191212033952.5967-15-afaerber@suse.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_122202_941902_E3EF87FE 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.255.230.98 listed in list.dnswl.org]
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
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Dan Murphy <dmurphy@ti.com>,
 linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: multipart/mixed; boundary="===============6048593999605578583=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6048593999605578583==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="rfwNdt5cNUUjB/69"
Content-Disposition: inline


--rfwNdt5cNUUjB/69
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> Add child nodes for individual LED indicators plus the half-second colon.
>=20
> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---

> +			apps@1,4 {
> +				reg =3D <1 4>;
> +				color =3D <LED_COLOR_ID_WHITE>;
> +				function =3D LED_FUNCTION_INDICATOR;
> +				function-enumerator =3D <1>;
> +			};
> +
> +			setup@2,4 {
> +				reg =3D <2 4>;
> +				color =3D <LED_COLOR_ID_WHITE>;
> +				function =3D LED_FUNCTION_INDICATOR;
> +				function-enumerator =3D <2>;
> +			};

having 10 "indicator" leds is not going to be exactly useful.

So, what does the display look like? "apps", "setup", "usb", "card",
=2E.. texts?

									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--rfwNdt5cNUUjB/69
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl3+fuQACgkQMOfwapXb+vKpLACfQv6vWFQeNIi5z/L8L8LVHFOD
K8EAoJZ1a/I813U8L01scB3b7YB0aRsq
=AN0b
-----END PGP SIGNATURE-----

--rfwNdt5cNUUjB/69--


--===============6048593999605578583==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6048593999605578583==--

