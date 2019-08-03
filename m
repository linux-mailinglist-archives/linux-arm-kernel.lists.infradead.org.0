Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B81080574
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 10:58:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TbJVd8qCdlwgGdnq8BMOpsY/3Ml+UEgvfT0EB4X8QlY=; b=ZAaRk9PzHCK4n14pRRo0+5Wrq
	xktIJbWVHYsms4geUBz5L/5tk3uI4+JxkcFv2KJWSImge1gVHT2SMN/jC6eh74ZKsXCulR7R9ZE8A
	WZReBcPTODuxG4gIz+pO1wI0e/aTynF+daRsDWCsTsQrUZMFfDxiUrmrl/ZRHHqpaJ+a2LTxoUb3U
	Y5mJCdPJkxUzg7bBR4PuYkOqp88LVea+D6dCoiA5d0fgHqHTUbyNHyauQpxVZ73yY7Ly6ePnpnnk1
	yoZP1mkMweDVdE3rDzgAedT9mcizhJyHEZq6nuV5QdKAvTkOhaHyb156tJ5ccXHUFNeQhv+N3vg4m
	prLZ82HEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htpsC-0008TS-ES; Sat, 03 Aug 2019 08:58:44 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htpry-0008KN-A2
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 08:58:32 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id A89F38031B; Sat,  3 Aug 2019 10:58:13 +0200 (CEST)
Date: Sat, 3 Aug 2019 10:58:24 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH v2 6/6] ARM: dts: mmp2: add OLPC XO 1.75 machine
Message-ID: <20190803085824.GB8224@amd>
References: <20190802103326.531250-1-lkundrak@v3.sk>
 <20190802103326.531250-7-lkundrak@v3.sk>
MIME-Version: 1.0
In-Reply-To: <20190802103326.531250-7-lkundrak@v3.sk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_015830_519091_8252A4BD 
X-CRM114-Status: GOOD (  11.95  )
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
Content-Type: multipart/mixed; boundary="===============0823085947118175225=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0823085947118175225==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="bCsyhTFzCvuiizWE"
Content-Disposition: inline


--bCsyhTFzCvuiizWE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri 2019-08-02 12:33:26, Lubomir Rintel wrote:
> This is a fairly complete description of an OLPC XO 1.75 laptop.
> What's missing for now is the GPU, LCD controller, DCON, the panel and
> audio.

Ok, but I need GPU/LCD/panel... that's my only output. Is video
expected to work in 5.2? Does the firmware pass right device tree,
including the GPU/LCD/DCON?

Is there config somewhere I could use?

Thanks a lot,
								Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--bCsyhTFzCvuiizWE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1FTLAACgkQMOfwapXb+vKvhwCfRiwZa8E3fNBqMi6b0KGpOPIQ
EL0AnjUujlV3bPaUb0uSNTtgJ13k53kC
=DqjA
-----END PGP SIGNATURE-----

--bCsyhTFzCvuiizWE--


--===============0823085947118175225==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0823085947118175225==--

