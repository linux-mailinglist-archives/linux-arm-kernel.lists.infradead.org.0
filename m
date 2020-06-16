Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2451FBE0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 20:30:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sv6s4hWzBNqokW/4+pCmq4b2EJRiKd9tpdXhH6PQvp0=; b=tnfQkK/CLw+trQm/pwCFv6KkN
	orhGn69TbQucC1qheJ0R9le1va43vYml/XvVBukrX2TV1fYq8TeaTAsEKQwqhw6e+4N1bcfRUNI3v
	fstX0cOUAHf6h+pyMnoNNr4MyiSB8xFRTBIlQzUr3Pqu+Yo6aK/HrYkQZQNR7RmFyX8q3louslLCG
	sRoxmlT9ZxGYvqNAo0NqvwKVluJbP7iUnVJmC96eWwoFjb0gWoOhETzbh5duAsfN/uJ2MMuK2rsRH
	c9rqkjocIsQ8FG6UJBF1YSRtjMq4exWDE8pXLoIcPWzVeiVhiNWnTe1OGn1mLOYVRsnkCXS7L5Btc
	HpyHEB+SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlGLm-0006g0-GM; Tue, 16 Jun 2020 18:30:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlGLe-0006fD-O7
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 18:30:16 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BF769208D5;
 Tue, 16 Jun 2020 18:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592332214;
 bh=+U43ae00QtZYC2fRj8EXYkuee9mvOqEa/MSbVqqhQYM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fjSqoIQNikTyxryFm+WcT3xZez3p/YRVuJhuvyyKf0te9TU5v5Bsj1AQvUW26LrSC
 rb/jzIJ9n1CPh1t5FkOdVrO9lXkYNHGJ4WtbE99hTBz6BlAJIMd+/fBEYmPaB7+KSH
 RAH1d4wA7zmThijxkeq5mJoI/4RDgUrZrBQT02W4=
Date: Tue, 16 Jun 2020 19:30:10 +0100
From: Mark Brown <broonie@kernel.org>
To: Florian Fainelli <florian.fainelli@broadcom.com>
Subject: Re: [PATCH v3 2/4] spi: bcm63xx-spi: allow building for BMIPS
Message-ID: <20200616183010.GV4447@sirena.org.uk>
References: <ea904b53-3f6f-da28-39f8-f811f432395a@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <ea904b53-3f6f-da28-39f8-f811f432395a@broadcom.com>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_113014_943507_37ACB337 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org,
 =?iso-8859-1?Q?=C1lvaro_Fern=E1ndez?= Rojas <noltari@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0815428872138986306=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0815428872138986306==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Mwz/dta3oUwEdwoz"
Content-Disposition: inline


--Mwz/dta3oUwEdwoz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 16, 2020 at 10:31:16AM -0700, Florian Fainelli wrote:
> On 6/16/2020 10:25 AM, Mark Brown wrote:

> >> In Alvaro's defense, you applied the patches despite me requesting that
> >> specific changes be made (use the optional reset control API variant).

> > I applied only the two patches that you'd acked, not the reset patches
> > which had problems.

> Indeed, sorry for not reading your commit message properly, I believe I
> request that before, cannot the "applied" response just reply with the
> patches *applied* and not *all* part of the series?

You might've mentioned it to someone else using b4 but not me - AFAICT
it's not configurable.  I can see arguments either way TBH, but I do
agree that the current output could be confusing and if nothing else the
wording could be better.

--Mwz/dta3oUwEdwoz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7pD7EACgkQJNaLcl1U
h9DksQf9HFV5rre0PXhojl9tIIGHjFqwzTO6VnO6Odha0mzeLl2hyAjTZxdBxHRW
HxKz0NzZP+QTUCx9IyGAunVqA8IxwHHc7eKeYAhpQhn4078p1lhlVXyg07s5UT4r
DATrqiCQHxPwZJooWA7rqG/So62fVpq7u102kcv9hTBEoUBOEEk4twK8yVVtKYdQ
OOWZz5p+8Mcgn/S1Y/Gm5BnSU5m56Mra/cT/gqAIwp9Twa2otTK4QQeDXWdBsAwL
M42G4vrF9d73GDJ+tB/DAm8XhPvio2dqxUYiXythXuBV0ssE0H2qbYmaqAmzGpnc
I064gIC5DhcmWRuWIVZ9qVviHtQfOA==
=fsdZ
-----END PGP SIGNATURE-----

--Mwz/dta3oUwEdwoz--


--===============0815428872138986306==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0815428872138986306==--

