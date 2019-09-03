Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AA3A6AEE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1o7Qbtbf3H95hlS1K1thF1Q3sv1Xq1tkTBEns0ubg3U=; b=msqP09CP5RUKIp+1k5FQpyyC/
	0GvDM8BhhcMhNfswU8SE+ViIDdSyEuJHMjlYN41R+FawYBrCwoNvW2Yx7UqE156f3Oxs962v1xZfP
	0pFY4d/dKx72HxsXucKtXgAdkE+hQUlYOh+7eTGV2M6rmjoiS7xpLxRYsrHx6ARGTKUcI4KDrJSTs
	x103tspFBCm7J/4lagatbLTMUB+EvPEucnM8cCwPdjG5Q5QYvavuSYubRhlHvreF1FZiJ2K4tF4sB
	leyfXQ5zRYyNvONrg3pfXNvSSivhodzLmUnA9zuImcK+2szo22nmY6LrzTnA2PbmSJiwtlA3ciW+z
	s4t/n2ZhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59YU-0006Ja-3R; Tue, 03 Sep 2019 14:13:10 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59YF-0006GN-O3
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:12:57 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 80B2A81FA1; Tue,  3 Sep 2019 16:12:35 +0200 (CEST)
Date: Tue, 3 Sep 2019 16:12:48 +0200
From: Pavel Machek <pavel@denx.de>
To: Ran Wang <ran.wang_1@nxp.com>
Subject: Re: [PATCH v6 3/3] soc: fsl: add RCPM driver
Message-ID: <20190903141248.GA8354@amd>
References: <20190821031537.46824-1-ran.wang_1@nxp.com>
 <20190821031537.46824-3-ran.wang_1@nxp.com>
 <DB8PR04MB6826A9EA5D9232D55FE8BDEFF1AA0@DB8PR04MB6826.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <DB8PR04MB6826A9EA5D9232D55FE8BDEFF1AA0@DB8PR04MB6826.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_071255_947060_D24CED33 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Biwen Li <biwen.li@nxp.com>,
 Len Brown <len.brown@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3234885262996765017=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3234885262996765017==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="EeQfGwPcQSOJBaQU"
Content-Disposition: inline


--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > +	/* Begin with first registered wakeup source */
> > +	ws =3D wakeup_source_get_start(&idx);
>=20
> Since I have mad some change in this version, could you please take a loo=
k on this.
> If it's OK to you, I would re-add 'Acked-by: Pavel Machek <pavel@ucw.cz> '

I'm sorry, I'm a bit busy at the moment and this is not really my
area.

Best regards,
								Pavel
							=09
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--EeQfGwPcQSOJBaQU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1udOAACgkQMOfwapXb+vLLrwCgprpkyPdWIRm3F6Lv4rV9h5Vg
zkUAnRa7EWL6E5/thkcXz87A7zdQUWUB
=oBPe
-----END PGP SIGNATURE-----

--EeQfGwPcQSOJBaQU--


--===============3234885262996765017==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3234885262996765017==--

