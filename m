Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E65A56A25
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MZ20o7HypF7eIMfQazbqvo5OYpZ/23ZkLzHqTadcH/Q=; b=jbZ47MbV0cn2d25asmflsyDYF
	WRiJcFQDRPAQ10ji4ROFZ3ujP8vupIEjf46211ehoJ0YqGm7okxDxEy6xaVzXkXL/Ya6P33Qge2BT
	qAj3keUnbgmGR94X747QOAEuBFQPslWRQShrZyLaT/WBnOra4xmcRClO9vIzC5tNnzvIf4AQMdUcr
	xD66Ojsj30P2h2Q9PvHzpWMMMkMCcHSiPpsYpNYAPrhpiKxShDMdirL/Q8zGfMRBUi1FAZ9A9Slbk
	ZF2UVoUDFO8IMk4Cx2D0lKRpnFiHAxAhi1CQaH5OxdX/2zGKi26goXCciYRjaXRjhV9f9AWI8HxH1
	ncdfns3QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg7mp-0002Uf-Fv; Wed, 26 Jun 2019 13:16:31 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg7mb-0002Td-Nu; Wed, 26 Jun 2019 13:16:19 +0000
Received: from localhost (p54B330AF.dip0.t-ipconnect.de [84.179.48.175])
 by pokefinder.org (Postfix) with ESMTPSA id E4A753E607D;
 Wed, 26 Jun 2019 15:16:14 +0200 (CEST)
Date: Wed, 26 Jun 2019 15:16:14 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Annaliese McDermond <nh6z@nh6z.net>
Subject: Re: [PATCH v2 2/2] i2c: bcm2835: Ensure clock exists when probing
Message-ID: <20190626131614.GE801@ninjato>
References: <20190621105250.19858-1-nh6z@nh6z.net>
 <20190621105250.19858-3-nh6z@nh6z.net>
MIME-Version: 1.0
In-Reply-To: <20190621105250.19858-3-nh6z@nh6z.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_061617_923151_376747DB 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: f.fainelli@gmail.com, wahrenst@gmx.net, swarren@wwwdotorg.org,
 team@nwdigitalradio.com, eric@anholt.net, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6428329988702250439=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6428329988702250439==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u5E4XgoOPWr4PD9E"
Content-Disposition: inline


--u5E4XgoOPWr4PD9E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 21, 2019 at 03:52:50AM -0700, Annaliese McDermond wrote:
> Probe function fails to recognize that upstream clock actually
> doesn't yet exist because clock driver has not been initialized.
> Actually try to go get the clock and test for its existence
> before trying to set up a downstream clock based upon it.
>=20
> This fixes a bug that causes the i2c driver not to work with
> monolithic kernels.
>=20
> Fixes: bebff81fb8b9 ("i2c: bcm2835: Model Divider in CCF")
>=20
> Signed-off-by: Annaliese McDermond <nh6z@nh6z.net>

Applied to for-next, thanks!


--u5E4XgoOPWr4PD9E
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0TcB4ACgkQFA3kzBSg
Kbawow/+L5IabPpZdV/oJsEGm8QSPCLXmlOdMKHNRBtYDRf4pxOjuje2rxjnrj1U
yXvs48L/D9SgYjG3rBSjtIWe9QqcMF3pucXwos3JaJIG4SV7JPGqi0XH1U580qlM
wN0vbAaYxdAKadYMign2e/MBlcfmdi6qH79a7vez6WkfwhEt58zYc5HbKFWh4ULA
1TrzRlPJvz215mBzmw7fZzOi9wWRSwClt2/F7YUcWEpFvWZ+TZqq5pWRS2MGK8dH
mnpJyWlyR2hfmfxLzswdnaLEEa8H2tbMG+o6YZLhXAxN8jjC5evQi/aCFOyUyE+w
YIXNi00XY3KOJ0+wVCbqdfhYlC2q0lwuXe9lqUjmIDVeqtsahejEFdRtSO8qNTeV
LtQLpCnDBR15Ii/s++E7vSn1ANR20yQYcTjA4jVTUZmgNTsMfM+51+RiYQhqpn6e
9txSMKvhfjGTtzSo4Oqa+wTOaRWjc+5heksEqvtjrqE2VuRG8LOse8AzBER0ZHH4
YeZKR9PsZAdK+fup6m+21z5yNKHAb7PV3uuBz/7NxQocAFH9cHbDpfyM7B7oyIsI
YytbGb6IrJ35qVQahz1DW3EH/QVnWBIoBLSRCFWVJ8uHyzNK+U4zAdZB31fZCdZ+
ODi1HFSV084OxfDdd/T376QuJuvad2PFrf8xw3bHlYmA0JTrL84=
=nE+J
-----END PGP SIGNATURE-----

--u5E4XgoOPWr4PD9E--


--===============6428329988702250439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6428329988702250439==--

