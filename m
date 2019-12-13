Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5CD11E2EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 12:42:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VP6Vpi5wBAwDofSuFJnJNKA7LaPHx/eHRpiXft6DRJE=; b=X0VGkkJS0uMKSI+jENrgfclvB
	WZBvWbLdgvWWcOy6srgX62Ks09pT1gS7RrG0VW3FcGLOZ7s9dbry03d2RHhypZx4xAxGebCStfyc3
	e1M8ZsC+dnMRC+Hg2+G4pbvspVi03g5q9ySIGVCffiyVcVzdqo18XDYVzUY+uh18xYZURErj7OILY
	ldghbNFXuUJ+xysmx9PMMVlQc8iI2cEqb8cC/GMMwfyJ69mcbw7SSAEUiRBbYtEvD7KEHA1JSEEkj
	g4fhaJh3MmOEwnY5OKzHlSQUd4EqOftzPR9z8lFxXcVogbdY4LcaKCAPfb5IqgykTTqLBWgMRROBo
	12rstik5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifjLJ-0002o6-Qr; Fri, 13 Dec 2019 11:42:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifjL8-0002nI-HU; Fri, 13 Dec 2019 11:42:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A2F0C1045;
 Fri, 13 Dec 2019 03:42:33 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 233043F718;
 Fri, 13 Dec 2019 03:42:32 -0800 (PST)
Date: Fri, 13 Dec 2019 11:42:31 +0000
From: Mark Brown <broonie@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 04/25] spi: gpio: Implement LSB First bitbang support
Message-ID: <20191213114231.GC4644@sirena.org.uk>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-5-afaerber@suse.de>
 <CAMuHMdWdxJ9AaWhyCW-u8fCpXSDCPd-D6Dx129SF5nRssZsK=g@mail.gmail.com>
 <9b4b6287-c1d9-1b41-88a8-7ac9fe222642@suse.de>
 <20191212171922.GM4310@sirena.org.uk>
 <70bf4954-d7ab-e300-017c-c743a40162a4@suse.de>
MIME-Version: 1.0
In-Reply-To: <70bf4954-d7ab-e300-017c-c743a40162a4@suse.de>
X-Cookie: Life exists for no known purpose.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_034234_624587_DEEECC89 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-realtek-soc@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 linux-leds@vger.kernel.org, Dan Murphy <dmurphy@ti.com>
Content-Type: multipart/mixed; boundary="===============1338926382888482876=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1338926382888482876==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OBd5C1Lgu00Gd/Tn"
Content-Disposition: inline


--OBd5C1Lgu00Gd/Tn
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 12, 2019 at 10:08:24PM +0100, Andreas F=E4rber wrote:
> Am 12.12.19 um 18:19 schrieb Mark Brown:

> >>>> Duplicate the inline helpers bitbang_txrx_be_cpha{0,1} as LE version=
s.
> >>>> Make checkpatch.pl happy by changing "unsigned" to "unsigned int".

> > Separate patch for this?

> For the checkpatch cleanup? Or helpers preparation vs. spi-gpio.c usage?

At least the checkpatch cleanup.

> > Yeah, I don't think there's any great options here with the potential
> > performance issues - probably the nicest thing would be to autogenerate
> > lots of variants but I think that's far more trouble than it's worth.

> Maybe add another code comment to revisit that idea later then?

Sure, if you like.

--OBd5C1Lgu00Gd/Tn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3zeSYACgkQJNaLcl1U
h9BeaQf9Gwa9v/4JBqlU2EYPQesdyqtMrKKm+f5AChrzJThgZFgCyrfqTR/3uWBy
/SF8lSe7KY9OyztUKw5g+7WLB/oBrMXPlm40GKafsaKC0eEeb9is09ZCnxOkDKDU
T2DQuGVbpQ15A+764B2O2YmoZ4MOoQft6BCv/eqFHtZ7PXrE/KkR9ZkBRbNGlZdg
koWMA7InOnyM2jVONLQIkmicLLi2R/ADJjV3MMhRrfamY6xEvu7e7IrPUdFV2HHl
dPj1nFNsrgQwPG4Ns4+ohrTwtjwOycakEMqD9CwhRp8mw1XE7Ru5no3LB/zxVbqd
q00vWhYLcJ4R+sl55+bXCitUFEDGKg==
=fXQg
-----END PGP SIGNATURE-----

--OBd5C1Lgu00Gd/Tn--


--===============1338926382888482876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1338926382888482876==--

