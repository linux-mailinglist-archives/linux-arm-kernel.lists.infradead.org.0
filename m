Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0152C2DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 11:13:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3NhfXeDmMbOFsif6s61P3Oln8S1GEC/8XiwsBwA+MNw=; b=QnonhVoiZk6KEz7HhhPGZecyN
	rejW9EjPk8V1Fug9bOwIqw0ptBOZlmIqsPgIPuNmn/dQcAlMXmPPtTYYDLeyzzrlnW9aVJVDXu1+C
	zI22YOZU54/Sdkz7zRAsmkGl4ZQ777yS/JFbFd9ZN+/QYhS+Gwj9O76XXZIz+jHR0LcijdLPuKtr6
	uDDm/hRS/c8PAH3PZIJXVvwhIaK4DqBzddhYwKsQfwz5N5ceL/Npno7m7gzqkMpSFimNDKSEiS4LW
	bZl2YqN9etTM+uaR1ACTAlhhDqel6H32y1N8V+r131Z9lrxCQrLKrYO10zOs2tGoBAGdFEVzapzLQ
	aEoEXyetg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVYAr-0002N8-J1; Tue, 28 May 2019 09:13:37 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVYAj-0002Lf-Tv
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 09:13:32 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 80A60C0034;
 Tue, 28 May 2019 09:13:16 +0000 (UTC)
Date: Tue, 28 May 2019 11:13:15 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v4 4/7] ASoC: sun4i-spdif: Add support for H6 SoC
Message-ID: <20190528091315.ysfieiebn5gk53f5@flea>
References: <20190527200627.8635-1-peron.clem@gmail.com>
 <20190527200627.8635-5-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190527200627.8635-5-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_021330_109517_826AC362 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0080971664511229874=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0080971664511229874==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="chyxdzlab5sysxo6"
Content-Disposition: inline


--chyxdzlab5sysxo6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2019 at 10:06:24PM +0200, Cl=E9ment P=E9ron wrote:
> Allwinner H6 has a different mapping for the fifo register controller.
>
> Actually only the fifo TX bit is used in the drivers.
>
> Use the freshly introduced quirks to make this drivers compatible with
> the Allwinner H6.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--chyxdzlab5sysxo6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOz7qwAKCRDj7w1vZxhR
xSIiAP9nmxuaqkOOSRfudhUw4zPITHUHtndI2JThUfrXTighbwEAyJjIFkev8yqr
i6HikA6T6bWimgGAMVM9UxUwiD1Rdgc=
=iAGv
-----END PGP SIGNATURE-----

--chyxdzlab5sysxo6--


--===============0080971664511229874==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0080971664511229874==--

