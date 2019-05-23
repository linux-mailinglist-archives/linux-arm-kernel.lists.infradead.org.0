Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 404A328CD9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 00:06:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZdwbVX0afP8l435ZMjSC3EeQIiBWh1gaE6NAFAHuyWE=; b=fpT1Is8lzKtkAMVIV0Qc1jPOx
	cteTDLa/g17Izk+FEnwRUo44WPVEsr0PbfptoTQ1kCWZSUnCc09FWLIB//blB49F/EZOiKfd2kVnK
	27a+jbFbp0noXQFFGb6syXihhjYfSSLrhmeNFKnf4nvZJp+iSR/0Oo72d9aAOQ79lInVRqXx08UCf
	DxUvlqicD0DBWHtJyXV63c+Ey3XsKEXubHNsxtSf08fnrp0jChoFpdsZ86LInnIMK9cGSJtZIbE1Q
	ibzFxYzqNJrVQIQpKKCg+g0t6LwMmqWrayOPUijmAHMTPL4SozhUuJ+NR6IFxiWMV7whskR7O3szb
	AEd1Ih8YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTvqt-0003Nu-1z; Thu, 23 May 2019 22:06:19 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTvqm-0003NU-F5
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 22:06:14 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 02EB0803D1; Fri, 24 May 2019 00:06:00 +0200 (CEST)
Date: Fri, 24 May 2019 00:06:10 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Angus Ainslie <angus@akkea.ca>
Subject: Re: [PATCH v13 2/4] arm64: dts: fsl: librem5: Add a device tree for
 the Librem5 devkit
Message-ID: <20190523220610.GB15523@amd>
References: <20190520142330.3556-1-angus@akkea.ca>
 <20190520142330.3556-3-angus@akkea.ca>
 <20190523191922.GA3803@xo-6d-61-c0.localdomain>
 <9626cd324eaaab2b49c37cf3c824aa5e@www.akkea.ca>
MIME-Version: 1.0
In-Reply-To: <9626cd324eaaab2b49c37cf3c824aa5e@www.akkea.ca>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_150612_659335_0378F2D8 
X-CRM114-Status: GOOD (  20.97  )
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
 linux-kernel-owner@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4050541586808284793=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4050541586808284793==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="+g7M9IMkV8truYOl"
Content-Disposition: inline


--+g7M9IMkV8truYOl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> >>This is for the development kit board for the Librem 5. The current
> >>level
> >>of support yields a working console and is able to boot userspace from
> >>the network or eMMC.
> >>
> >>Additional subsystems that are active :
> >
> >>- haptic motor
> >
> >Haptic motor is not a LED. It should be controlled by input subsystem.
> >
> >>+	pwmleds {
> >>+		compatible =3D "pwm-leds";
> >>+
> >>+		haptic {
> >>+			label =3D "librem5::haptic";
> >>+			pwms =3D <&pwm2 0 200000>;
> >>+			active-low;
> >>+			max-brightness =3D <255>;
> >>+			power-supply =3D <&reg_3v3_p>;
> >>+		};
> >>+	};
> >
> >You can take a look at N900, that has reasonable interface.
>=20
> I wanted to control the haptic with the pwm-vibra driver but "fsl,imx27-p=
wm"
> doesn't seem to respect the PWM_POLARITY_INVERTED flag so when I start the
> system the vibrator is full on.

Ok, lets fix that :-).

> I could use gpio-vibrator but that seemed like a waste when the device is
> connected to pwm.
>=20
> I figured the using the pwm-leds interface was a reasonable compromise un=
til
> I had an opportunity to make changes the the imx27-pwm driver.

I guess in such case it would be best to leave out this section for
now... or keep it disabled / something. We don't want incorrect device
trees to stick around.

Thanks,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--+g7M9IMkV8truYOl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlznGVIACgkQMOfwapXb+vKN/gCfWaysTUeuBj2xcwWEq2OylDMS
zFsAnRLEFwUNhwGErAbVlCaxo8N8aM47
=iExp
-----END PGP SIGNATURE-----

--+g7M9IMkV8truYOl--


--===============4050541586808284793==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4050541586808284793==--

