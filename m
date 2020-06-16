Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0931FBCC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 19:25:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sLIxNS8o+/2hnGHD7CRkFG8aKnsk8/4voTKM/ESrwYY=; b=Iu8Whu4F8yp//KqvowDCAgmxG
	42N+uZ+jHf6VFlU7uEcK+9c3Q5uE86Rni1ZxrDCyl5LkD9kJDisE9JxECeLiD9VtH7Jv8RKMRrFnh
	lmVxCrMjZDiKpNIalVnWKDAUSwn+qG1HiGCuYcRguIhpG2J9FuajnkZ/n6Yauk0OL+382Yzw9ROqL
	/S/GVXnbBYi4x+C4WEn6kG4KPIGeR8MQYuaqiMosLOc9wMb7rn27rSxfILQ37XVznSWo24o/tL1DZ
	NO+GEc3Zye/vvPmhTRaeHM/Lf6zodS6XhTHKTiP2f8Ew/zZNeicCxotHl335QH66uSgDneI+YQNGh
	XhpNTXNlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlFLF-0005SH-0H; Tue, 16 Jun 2020 17:25:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlFL7-0005RZ-E5
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 17:25:38 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 99715208D5;
 Tue, 16 Jun 2020 17:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592328337;
 bh=8EJ/ptyNfkF5APevUHjkOtt7qeq+ppRD+ZER+WQ7O+g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ql73l9+ys9b5ydqVIAUnpPngpAwuu+4R8VoXAsTPejYPfQa+eYnVip34O0GDMzZdj
 bgEr3bZrcaqawblv/Xo2bF64SaiOvUlgcP28Bn22pHQ2kBswD5s00nSioyCgnSxPHI
 K3bvUwBxpRcAhDvt9GfjeXSBFSPTgvuBRIHQwtr8=
Date: Tue, 16 Jun 2020 18:25:34 +0100
From: Mark Brown <broonie@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v3 2/4] spi: bcm63xx-spi: allow building for BMIPS
Message-ID: <20200616172534.GU4447@sirena.org.uk>
References: <20200616070223.3401282-1-noltari@gmail.com>
 <20200616070223.3401282-3-noltari@gmail.com>
 <20200616170724.GT4447@sirena.org.uk>
 <a6edd50d-db3f-8988-157c-ff66e2fd474a@gmail.com>
MIME-Version: 1.0
In-Reply-To: <a6edd50d-db3f-8988-157c-ff66e2fd474a@gmail.com>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_102537_494786_A26969D4 
X-CRM114-Status: GOOD (  11.79  )
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
Cc: =?iso-8859-1?Q?=C1lvaro_Fern=E1ndez?= Rojas <noltari@gmail.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5706291413511844926=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5706291413511844926==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="csoOxBvjhnnTVlaS"
Content-Disposition: inline


--csoOxBvjhnnTVlaS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 16, 2020 at 10:15:15AM -0700, Florian Fainelli wrote:
> On 6/16/2020 10:07 AM, Mark Brown wrote:

> > Please do not submit new versions of already applied patches, please
> > submit incremental updates to the existing code.  Modifying existing
> > commits creates problems for other users building on top of those
> > commits so it's best practice to only change pubished git commits if
> > absolutely essential.

> In Alvaro's defense, you applied the patches despite me requesting that
> specific changes be made (use the optional reset control API variant).

I applied only the two patches that you'd acked, not the reset patches
which had problems.

> Having a FAQ entry about what your expectations as a subsystem
> maintainer are (ala netdev-FAQ.rst) could save you time along the way.

Incremental updates are the default AFAICT?

--csoOxBvjhnnTVlaS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7pAI0ACgkQJNaLcl1U
h9DMswgAgzZCxQ+zTpAfRYk+3xtjYpsaigrknTexpZFHf0A5bSI4JJBrdJmuJN0u
SuFGc+M7DRi7zvL1QrXmbRfgYzZZIbAHE0bocMbXXM20wxRWOsm4rJ8b+rMfup9/
9/bqmbwNOPjO/ajNBfx/f1sA67VtugkbhwSprOohWrEcz5WlP7gVUHZI4vaDGa0b
LlSt9MeyZm4nE5nQYM89NScC4It6MwaofpNmf8HskRVXXvdHHYaTfFJ8fAvG+1cg
VkvI2axlnUw0QZF3s/Nu4TaPbkgFPNoQijdhQZPKApUPVJvlTzQDgT3mvxPfeLqW
+1RrrQFh6VLlZ7kTwT6wi8MrsAzcZw==
=EFRd
-----END PGP SIGNATURE-----

--csoOxBvjhnnTVlaS--


--===============5706291413511844926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5706291413511844926==--

