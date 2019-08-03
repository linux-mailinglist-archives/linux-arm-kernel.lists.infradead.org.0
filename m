Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E937780577
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 10:59:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NeWZmdqc7DZ4Py0mmPUpavGU/BjZdXJsVX7J/yf0Iqc=; b=V366oKmeDsxfOn62fdqwU15wS
	VFs6q2hQEcPXpG8PS4R3h4yBGOsqo/HC9pR/oY4RSLe2Ls5IQNe8svfrVnk6p8FJLdVCVQqrX4W1e
	WykkZNAoc7B7EOrxiRF/onu3vdQEbwBAyzr8/FQ0LEWRB4OaUaCpXC/pSBst935aKhD5QmeFQFRKy
	J0lIeeLugsnOIFlnHKVJPZ75nf4322M32Wt4rL0NH0gfOu4tU+2eZfqFM0N9UT47sJUDjJEE9t3an
	JUOBRn7IaM2zrt/45e1LbLrEiPgGWGbZjB3l/6eJULob9G/HqGbigqQhbJ+pMOxWITcKi2pqJHBkS
	87JwWqmZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htpt9-0000MJ-88; Sat, 03 Aug 2019 08:59:43 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htpsy-0000KV-DA
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 08:59:33 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id F3EE68031B; Sat,  3 Aug 2019 10:59:18 +0200 (CEST)
Date: Sat, 3 Aug 2019 10:59:30 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH v2 0/6] ARM: dts: mmp2: devicetree updates
Message-ID: <20190803085930.GC8224@amd>
References: <20190802103326.531250-1-lkundrak@v3.sk>
MIME-Version: 1.0
In-Reply-To: <20190802103326.531250-1-lkundrak@v3.sk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_015932_591340_CDE9A6F9 
X-CRM114-Status: GOOD (  13.27  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8987568623427623533=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8987568623427623533==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="zCKi3GIZzVBPywwA"
Content-Disposition: inline


--zCKi3GIZzVBPywwA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri 2019-08-02 12:33:20, Lubomir Rintel wrote:
> Hi,
>=20
> Here's a couple of updates for the MMP2 SoC devicetree files.
>=20
> The only change from the last submission is the addition of the
> OLPC XO 1.75 dts file. Apart from that one, the patches are
> independent of each other, can be applied in any order.
>=20
> Hopefully I'm sending the patch set in the correct direction.

For the series:

Acked-by: Pavel Machek <pavel@ucw.cz>

									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--zCKi3GIZzVBPywwA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1FTPIACgkQMOfwapXb+vJSEgCeP8R8/yqqOx9NWsQBypBVhpTv
A4sAmQGoqEsj1khqUsIR0sjkyEqGdQfG
=LO3O
-----END PGP SIGNATURE-----

--zCKi3GIZzVBPywwA--


--===============8987568623427623533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8987568623427623533==--

