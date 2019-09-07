Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A81B2AC94A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 22:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JaKnzclvKf/DGhVCW7lfh/3S9RlCp66MhuIq3qKkwdo=; b=L8gthyThSER867BMzqwiud/Vf
	jyBBUZyojOSFYaUVzMYb3IJDJDw7gZTLRQdpUKTxsjlEKalytjoqA+BDV2AcoO0bRivp1owLsfySQ
	Memo1UgNAzaFHJkeekIKnH9LfI2cZIWEkCKCVEAxHHohJBO6J4OIuAlj9jCqcGbsXlvVX466P//tl
	zDsDmR9CzzeBoYhGL4WU7diFY92VzzAEA3wNUKrwFK6/OIUz6V+oVJI7VmL90tVnQyVVwEgkHEUQ/
	GQbfHec8SbMCGcVY8FOvgWg14eD30ln+d6H1f2MKPGoV+MVcrI0hOogm68zKJxjiVeMVvTpI7dbId
	yaIFzHjLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6hd2-0005Ru-Ew; Sat, 07 Sep 2019 20:48:17 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6hcp-0005Qc-W6
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 20:48:05 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 5D3F9802B9; Sat,  7 Sep 2019 22:47:39 +0200 (CEST)
Date: Sat, 7 Sep 2019 22:47:52 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v3 0/6] ARM: dts: mmp2: devicetree updates
Message-ID: <20190907204752.GA7919@amd>
References: <20190828072629.285760-1-lkundrak@v3.sk>
 <20190907194040.GB25459@amd>
 <CAK8P3a0nNEoy31oxFL11Y2VHw-O=m8e8JuuQk+FjiPh94GikoA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0nNEoy31oxFL11Y2VHw-O=m8e8JuuQk+FjiPh94GikoA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_134804_189938_27030924 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5773698087097424425=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5773698087097424425==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat 2019-09-07 21:57:42, Arnd Bergmann wrote:
> On Sat, Sep 7, 2019 at 9:40 PM Pavel Machek <pavel@ucw.cz> wrote:
> >
> >
> > > Here's a couple of updates for the MMP2 SoC devicetree files.
> > > I'm wondering if they could be applied to the armsoc tree?
> > >
> > > Compared to previous submission, the only change is the addition of
> > > Acks from Pavel.
> >
> > Any news here? Having up-to-date dts is kind-of useful....
>=20
> Thanks for adding me to Cc on your reply. I'm doing the merged for 5.4
> and had not noticed this series earlier (I found the mmp3 series by
> accident, but that one looked like it was not meant as a submission
> for inclusion yet).
>=20
> I've added the six patches to the arm/late branch in the soc tree
> now, they will be in 5.4.

That was quick, thank you!
								Pavel
							=09
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--a8Wt8u1KmwUX3Y2C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl10F3gACgkQMOfwapXb+vL0iwCeKnLVYDl45xCxTQmr6GfIec3S
/nMAoLneu6hLNmE6/QadQfhQkaNlwULX
=8gHX
-----END PGP SIGNATURE-----

--a8Wt8u1KmwUX3Y2C--


--===============5773698087097424425==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5773698087097424425==--

