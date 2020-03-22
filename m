Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFAB18ED0E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 23:43:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8a+iaibR3tHd52YklN3PJGXidT3GEyYBm0gOQCRblKs=; b=ZyksFlV+2Z0PTc1+I2EJX4ooI
	i9pIYw5kDUowon1ggHdEkUXG+BCgpSMBugLp9uoxziGYf0TOT+pLFopXrxXjlmRw2iQuZJAjbVmpP
	+SptyTm9ORDEQoJ/Wgl2Eb2FrtG79YOBAxtRXVgyWrxx9ZhB7eUibMPf+fN/nA1+slx6mYcEUViVg
	+lhetg/TzwUVONKr7TcttS2Y2rncl1xaUQy5TL7I8lrzFDDLw1AjxbNHmi1RdbefjT6QszOV3H1Lo
	mwSMywOBEWLk8heRP3tEfEdHh2oXNlTcLZwz6ZdS5yOuKpHlVmw4v+LhR704Meny6hatcm/NTBj1j
	Zb6U9qDxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG9Iy-0001Z6-Hw; Sun, 22 Mar 2020 22:42:52 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG9Ip-0001Xf-Ru
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 22:42:46 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 3991D1C033E; Sun, 22 Mar 2020 23:42:31 +0100 (CET)
Date: Sun, 22 Mar 2020 23:42:30 +0100
From: Pavel Machek <pavel@denx.de>
To: Tony Lindgren <tony@atomide.com>,
 kernel list <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-omap@vger.kernel.org, sre@kernel.org, nekit1000@gmail.com,
 mpartap@gmx.net, merlijn@wizzup.org, martin_rysavy@centrum.cz
Subject: Droid 4 in -next -- still no backlight was Re: [PATCH 1/4] tty:
 n_gsm: Add support for serdev drivers
Message-ID: <20200322224230.GB28082@amd>
References: <20200319173755.65082-1-tony@atomide.com>
 <20200319173755.65082-2-tony@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20200319173755.65082-2-tony@atomide.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_154244_058323_943DBCC1 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.255.230.98 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Peter Hurley <peter@hurleysoftware.com>,
 Merlijn Wajer <merlijn@wizzup.org>, linux-kernel@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, linux-serial@vger.kernel.org,
 linux-omap@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0714410202092125897=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0714410202092125897==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="R3G7APHDIzY6R/pk"
Content-Disposition: inline


--R3G7APHDIzY6R/pk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> We can make use of serdev drivers to do simple device drivers for
> TS 27.010 chanels, and we can handle vendor specific protocols on top
> of TS 27.010 with serdev drivers.

I took all three series (

[PATCHv3 0/3] Lost key-up interrupt handling for omap4-keypa
[PATCH 1/3] Input: atmel_mxt_ts - use runtime PM instead of
[PATCHv5 0/4] n_gsm serdev support and protocol driver for d

) and applied them on top of next-20200320.

Good news is that result boots. (So I did partial testing of the patches).

Bad news is that I still don't have working backlight. I do have LED
and there's backlight device connected to the LED, so I can't control
the LED directly, but the screen is black (and I don't see boot
messages either).

Before I start debugging, does screen work for you in -next, or do you
have some fixes I could try?

Thanks and best regards,
									Pavel

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--R3G7APHDIzY6R/pk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl536dYACgkQMOfwapXb+vKBJQCeIUN5N8vMzmkvY9E6nubpW6wN
P7IAoKaO0YTconM1rcr4rigfmHCyJeJk
=q+Wl
-----END PGP SIGNATURE-----

--R3G7APHDIzY6R/pk--


--===============0714410202092125897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0714410202092125897==--

