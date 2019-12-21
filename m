Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1803F128B9C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 22:04:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iXvja/VeX8z33/K1A2JWCBI1JeyTgEAtKZE5pa0wi3c=; b=AlWj+Gh31XhTOvlDsqnAmOI75
	1w7AKgKQi5uNY/njumpMAamhRzwJgCU7gvEoXMDb+/Gg5U4nrmQQj8Jt90kKQKz0i9fDiUlNDSp89
	Dcy5TT8HoDNxSNO/TWRzFQ3ONNEETwH+GrZbQhw8tegLFfsNwqHBFG3VV0s4zfJTL807YHUiHm9dS
	Ry6Jb6kTdN7h+b/+nHib7eL+lSdFgjxTLqCSORIDiRD0sgO8KPJXvHJre2nOVBzKBVrcnG6s9WIfK
	5cir33jM3xb+su3uKKZOGrl5omdcz7cfZsrO22xQRThHoahj5P1sJxz75vJZtQmVHLDGoz36nOKV3
	n91cV9oiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iilvE-00055S-IH; Sat, 21 Dec 2019 21:04:24 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iilv4-00054j-0o; Sat, 21 Dec 2019 21:04:15 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 183EC1C24A9; Sat, 21 Dec 2019 22:04:12 +0100 (CET)
Date: Sat, 21 Dec 2019 22:04:06 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 22/25] leds: tm1826: Add combined glyph support
Message-ID: <20191221210406.GA13125@amd>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-23-afaerber@suse.de>
 <20191221202755.GN32732@amd>
 <506d0697-1820-7811-1b38-910355812948@suse.de>
MIME-Version: 1.0
In-Reply-To: <506d0697-1820-7811-1b38-910355812948@suse.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_130414_215665_7E14A603 
X-CRM114-Status: GOOD (  13.61  )
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
Cc: linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Dan Murphy <dmurphy@ti.com>,
 linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: multipart/mixed; boundary="===============3697311115670444907=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3697311115670444907==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="0F1p//8PRICkK4MW"
Content-Disposition: inline


--0F1p//8PRICkK4MW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> >>Allow to squeeze the text "HEllO" into a 4-digit display,
> >>as seen on MeLE V9 TV box.
> >>
> >>Enable this combining mode only if the text would overflow.
> >
> >"HEll,nO"!
> >
> >:-)
> >
> >Ok, it is kind of cool, but... Can you take a look at
> >drivers/auxdisplay/charlcd.c ? It seems to support some kind of text
> >displays...
>=20
> Why don't you look at it before making such a suggestion? ;) It is in no =
way
> useful, as I pointed out in my cover letter. The only thing related today,
> as Geert pointed out, is in the input subsystem.

Okay, so maybe we should get

AUXILIARY DISPLAY DRIVERS
M:      Miguel Ojeda Sandonis <miguel.ojeda.sandonis@gmail.com>

on the Cc: list? What you really have is a display, not a bunch of LEDs.

> If you don't want this in leds, you'll have to help make leds subsystem m=
ore
> useful to external users - the latest function refactoring has been anyth=
ing
> but helpful here, as you've seen with the indicators, and we're completely
> lacking any indexing or bulk operations on the LED controller level, since
> you treat each LED as a standalone device. That's precisely why this code=
 is
> here in leds although - as I pointed out - it shouldn't belong here.

Well, your introduction mail was kind of long :-).

If someone wants to do heartbeat on

 --
|  | <- this segment
 --
|  |
 --

they are probably crazy. We may not want to support that. What about
doing it as auxdisplay driver, and then exporting the indicators
around that as LEDs?

Having USB activity trigger on 'USB' icon makes sense, on the other
hand. That would still be supported.

Hmm?
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--0F1p//8PRICkK4MW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl3+iMYACgkQMOfwapXb+vLZQgCghm+4BSW3+dMlaHTM2YeWiyDT
cAAAoKpPCbi0WzsihqRnnB2sB8k3SOLa
=w2fT
-----END PGP SIGNATURE-----

--0F1p//8PRICkK4MW--


--===============3697311115670444907==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3697311115670444907==--

