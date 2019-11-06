Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1589BF1AF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 17:17:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xNqvlm3K3N/bMzLWD0YMPOZgmdFbSwQzqMKqWameXcg=; b=B9W2mkSOJHQwhBypwXESHBEqj
	H/+wlGGoEgjq8Neqpvick4GxQ+e7YmUOGS+IMi35CmFAvyXn95TR2bj4RUAIi6WKG2RnyvuEcRtB4
	nm6wDXwMMoHrUNTPBVlrSYuIEHnEUq/ANcZIQgwNeplmRbEybSh65VMpHrvXRFYVDlSYwuUKVNXZw
	o8zKN4JWixc201uZc7FK06QfIpYwhm48i9MWpDCjfmAVK/S2iR0szzMZC9hlYopCiVJNaL7t65UXV
	CvyQFwrt0V9xl9UfYY0YK6KoKItz3LvwmGN/AB8t0fFXwsuP85FEFzyn0YiEhdIY9n8LVMPAtONxa
	9TQlO3Q4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSNzs-00083B-Qf; Wed, 06 Nov 2019 16:17:28 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNzl-00082K-2j
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 16:17:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6M+B3l0mYAuPdlo4NisvhpcZGxRIeK1UZtXEBEKLvTg=; b=fY/TbSAZEW7iHcxrOBDzEO4Ea
 9Akm9bpl42LHWpb5rdDUtKEZwLZzNHxLlZdYkzagbcFaWeIjgw+L4DenOhDwKRw69G2bm8q4qRpxJ
 y+eqyGboM0gsw0ycCt10QvM/OzKzcDD36PgBJjOfF4fcUMjf3pd3r6P3gchpQG4NhTYl4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iSNzW-0001oA-6C; Wed, 06 Nov 2019 16:17:06 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 5E53D2743035; Wed,  6 Nov 2019 16:17:05 +0000 (GMT)
Date: Wed, 6 Nov 2019 16:17:05 +0000
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: Linux-next-20191106 : arm64: Internal error: Oops: 96000007
Message-ID: <20191106161705.GA11849@sirena.co.uk>
References: <CA+G9fYvm_QEq+9e+dni1Y+bJswr9bU5=shJcC+wKjjOyiPsXXQ@mail.gmail.com>
 <bfced8c8-c64f-982e-8797-d48b5ec65291@arm.com>
MIME-Version: 1.0
In-Reply-To: <bfced8c8-c64f-982e-8797-d48b5ec65291@arm.com>
X-Cookie: Shah, shah!  Ayatollah you so!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_081721_164453_E6AA486E 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 catalin.marinas@arm.com, Naresh Kamboju <naresh.kamboju@linaro.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>, lkft-triage@lists.linaro.org,
 open list <linux-kernel@vger.kernel.org>,
 Linux-Next Mailing List <linux-next@vger.kernel.org>,
 John Stultz <john.stultz@linaro.org>, will@kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2885751154373465574=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2885751154373465574==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="J/dobhs11T7y2rNN"
Content-Disposition: inline


--J/dobhs11T7y2rNN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Nov 06, 2019 at 04:07:52PM +0000, Robin Murphy wrote:

> FWIW this smells like a builtin driver had its of_device_id table marked
> __init, leaving drv->of_match_table as a dangling pointer to freed memory by
> this point.

Indeed, in fact I sent a fix for this to Linus Walleij yesterday having
seen the relevant build warning when testing -next.  Someone already
reported that it fixed the boot issues.  Hopefully Linus will pick it up
soon :/

--J/dobhs11T7y2rNN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3C8gAACgkQJNaLcl1U
h9D7Wgf9F9Yw6Kh7mvViQn49G9SuO0EnkXYRHUVKyoPkOmKjvTneGozwupi7xFEv
k5zZ3ZeWF1wpyER0QTwCN4ifYYkws92Q3+EyUy+k/UuAxFjpuIXupYB+Q82Vy14Z
8KtOGNm7ga+2kNaIW2qXUQrPrqfc2diitgP+DO/7Fsl/lUpq3gC60eSzHWx8krb6
tkCMD/krVAGMwg35Bg3/i82x1AoDLMUSmuqvUns1ioWOaY6imO4GxH0fKV3H3IzN
9FVhQl4pcpNGhPAvCS5nnp6mYyiJ2m2vwE4TNl8mux627sfCXKPhOR60zhTasgoU
9Q9/phWOSE2PrOEKHfPkumPs/+YdCA==
=R1Wg
-----END PGP SIGNATURE-----

--J/dobhs11T7y2rNN--


--===============2885751154373465574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2885751154373465574==--

