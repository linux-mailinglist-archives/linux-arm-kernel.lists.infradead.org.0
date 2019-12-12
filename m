Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B77CF11D3A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 18:19:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pdPheg7IBFfRsM+SA06aBMPjrpJ+Zewy5FfBoUqAqTs=; b=YgP1ioSyyQSfIidHBFBYB863U
	N1shYtx9jkMu/nhSaV5F89T6aVJjXPF62OWqGxjf2yFEKRcCTf3nm2DV6fTsBzyMVw0suKPUq/XZu
	XRzUmc/RQdpdYtt6rcDTt5cW+MRbBFGxaFF4lTQj2SJfjgJwTanO/KthQQJdHudAfMQ+6Evw+aOQe
	Ny6z/54ZWRpN3nGQxw4U0xBYSMrahck03sr8hPpKM+B3yR/fbyNfkxzHNjB9EOdyeIYvxAVwPSQ+u
	Dv2tcprisKphimGYQV4UgkIDTpZVixcvxYAyDuTNe+oAlKCbEjZykE5Ch+Bd1R6oyDasWs221w1DA
	XCHsklK+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifS7o-0000g8-Qb; Thu, 12 Dec 2019 17:19:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifS7Z-0000c2-5q; Thu, 12 Dec 2019 17:19:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C24430E;
 Thu, 12 Dec 2019 09:19:24 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF2B83F6CF;
 Thu, 12 Dec 2019 09:19:23 -0800 (PST)
Date: Thu, 12 Dec 2019 17:19:22 +0000
From: Mark Brown <broonie@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 04/25] spi: gpio: Implement LSB First bitbang support
Message-ID: <20191212171922.GM4310@sirena.org.uk>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-5-afaerber@suse.de>
 <CAMuHMdWdxJ9AaWhyCW-u8fCpXSDCPd-D6Dx129SF5nRssZsK=g@mail.gmail.com>
 <9b4b6287-c1d9-1b41-88a8-7ac9fe222642@suse.de>
MIME-Version: 1.0
In-Reply-To: <9b4b6287-c1d9-1b41-88a8-7ac9fe222642@suse.de>
X-Cookie: We have DIFFERENT amounts of HAIR --
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_091925_268833_10E6565F 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============0917911960362601303=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0917911960362601303==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EOHJn1TVIJfeVXv2"
Content-Disposition: inline


--EOHJn1TVIJfeVXv2
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 12, 2019 at 04:14:59PM +0100, Andreas F=E4rber wrote:
> Am 12.12.19 um 09:40 schrieb Geert Uytterhoeven:
> > On Thu, Dec 12, 2019 at 4:41 AM Andreas F=E4rber <afaerber@suse.de> wro=
te:
> >> Add support for slave DT property spi-lsb-first, i.e., SPI_LSB_FIRST m=
ode.

> >> Duplicate the inline helpers bitbang_txrx_be_cpha{0,1} as LE versions.
> >> Make checkpatch.pl happy by changing "unsigned" to "unsigned int".

Separate patch for this?

> So from that angle I don't see a better way than either duplicating the
> functions or using some macro magic to #include the header twice. If we
> wanted to go down that path, we could probably de-duplicate the existing
> two functions, too, but I was trying to err on the cautious side, since
> I don't have setups to test all four code paths myself (and a ton of
> more relevant but less fun patches to flush out ;)).

Yeah, I don't think there's any great options here with the potential
performance issues - probably the nicest thing would be to autogenerate
lots of variants but I think that's far more trouble than it's worth.

--EOHJn1TVIJfeVXv2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3ydpkACgkQJNaLcl1U
h9Crxwf9Hh/o+0lRcCax6Pd2t3iPgF+uG4xJ6LUUNfzNsOdYWHhRoEJC3NQAdbh+
erqhW4a1HuHtkFy9hM1gCLsfRyr9eA3x0+xVgj9WsbOe11mebr08oS+BaPHU2yUT
4XgXr/Fyi1s2x6q3R9C48jEGRyKy6nCKC9Lkh8dXitfznpmufSAEKzkYxZLo8hPs
At9L7La3QdwGjOTgHJ0DZD9Q6gQpsjhzWA8fkgHwzwjGsaw6pZair0XkaBPcg3/q
xyZyIzQejgHy5DhWRg9m+WSsoARvtMwSGv+061AOmafWOPBgAWM2z1wCH/+F0jqM
q/B0X6vyCHo7spdDxq+dhgsXrkrcBQ==
=OqPq
-----END PGP SIGNATURE-----

--EOHJn1TVIJfeVXv2--


--===============0917911960362601303==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0917911960362601303==--

