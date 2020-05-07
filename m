Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3B81C9CFF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 23:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WczBnjtFOUAh0/Z899ZUd44KpL7UgXWGvvDZXTOATLY=; b=QHG3QzVSmklmt7jkzeLCn7Szz
	xcwCSphBgch8qTqHYoNk9xDGxCnsqkRO1Q1X9dfL7H//DUsiD54yBp/cld+cCh+1cyAr3VET3TvuF
	s+o9t+cSeW9T5OhsiriqNvmOmZZLblP7azcXhYfi5zywxWeVliOdzuTWUrEi8sMwshLMJceAJ39kx
	NPQLhAqRey6dTn7/DcXDQj2Go+Mpy8JldM64Xf5mrFw7wuPqSyVTn4sFGo9e27tAtF9FBsiDO8oCn
	0rnQ9ayTyf44zH7jB/XmRRXNPT+iuU/SQ6sEVPrtvzEerQrLQ/ttlcdhYgzg5eEga0ZAYRVzn1tgc
	msxWjKBBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWnmb-0003QP-Lw; Thu, 07 May 2020 21:10:17 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWnmM-0002Pj-9H; Thu, 07 May 2020 21:10:04 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 38AD11C0257; Thu,  7 May 2020 23:09:55 +0200 (CEST)
Date: Thu, 7 May 2020 23:09:54 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Subject: Re: [PATCH v1] Add support for MediaTek regulator vibrator driver
Message-ID: <20200507210954.GB19557@duo.ucw.cz>
References: <20200429081759.26964-1-Xing.Zhang@mediatek.com>
 <20200507174519.GD1216@bug>
 <49089bf3-d64b-2a50-269c-623a6ea9c14c@gmail.com>
MIME-Version: 1.0
In-Reply-To: <49089bf3-d64b-2a50-269c-623a6ea9c14c@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_141002_492977_3E1A48C2 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-kernel@vger.kernel.org, Xing Zhang <Xing.Zhang@mediatek.com>,
 linux-mediatek@lists.infradead.org, Dan Murphy <dmurphy@ti.com>,
 linux-leds@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7297428632357063546=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7297428632357063546==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cvVnyQ+4j833TQvp"
Content-Disposition: inline


--cvVnyQ+4j833TQvp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu 2020-05-07 22:45:35, Jacek Anaszewski wrote:
> Hi Pavel,
>=20
> On 5/7/20 7:45 PM, Pavel Machek wrote:
> > Hi!
> >=20
> > > This patchset add regulator vibrator driver for MTK Soc. The driver
> > > controls vibrator through regulator's enable and disable.
> >=20
> > We'd prefer not to have vibrators in led subsystem.
> >=20
> > >=20
> > > Xing Zhang (3):
> > >    dt-bindings: add regulator vibrator documentation
> > >    arm64: mediatek: Add regulator vibrator support
> > >    Vibrator: Add regulator vibrator driver
> > >=20
> > >   .../bindings/leds/regulator-vibrator.txt      |  39 ++
> > >   arch/arm64/configs/defconfig                  |   1 +
> > >   drivers/leds/Kconfig                          |  10 +
> > >   drivers/leds/Makefile                         |   1 +
> > >   drivers/leds/regulator-vibrator.c             | 450 +++++++++++++++=
+++
> >=20
> > OTOH, connecting LED to regulator might make some sense. I can take the=
 driver with
> > vibrator functionality stripped, provided it is named the usual way...
>=20
> We already had an attempt of solving this in more generic way [0],
> but you opposed then [1]. Just for the record.

That's something different. led-regulator.c might be
acceptable. Special code to support vibrator quirks... not so much.

Best regards,

									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--cvVnyQ+4j833TQvp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXrR5IgAKCRAw5/Bqldv6
8rhUAJwNZ8AJbpTJwM0okF7XO54EiI6dkQCfdJRagMkst3LRHughjgIVPDh4RiA=
=07yZ
-----END PGP SIGNATURE-----

--cvVnyQ+4j833TQvp--


--===============7297428632357063546==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7297428632357063546==--

