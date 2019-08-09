Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E50587DC3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 17:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+5jSj+b0hxDodkkHNwGiM2S3jUUyu91H4A/OXE+geT4=; b=Mk2QyJHKukzEq7eSun3PpLn3j
	PHInHbD8adXPgv2EJVRX8SPh3VfC5fWlOM8LEJ0uciKWDPs0x7d2K4OfOiTGV85x48WGAk0dmXJS1
	lOvTr22JPq37ZYPLI6xuKwNpL4NL5f61F8FLePh6kAhNgT4AWg+WvePQKDGlB1s65N5emixT8a9YR
	GF4ItwUJxKruLjYk/df2g5mAiMAitXYmdzHTLsuS3FKc1yqOC2zqwwEtrjhNMvH39nhiBAGYjaTa4
	OgkP4pee6J89MjnoMS9x+rZE5Fp+SexpMfepJ3msc2zgKP0N2o7AASdRwqg6S9wetHK3el1f2XZL0
	u45ur2isQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw6XV-0002SU-Un; Fri, 09 Aug 2019 15:10:45 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw6XN-0002SA-2r
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 15:10:38 +0000
Received: from localhost (p54B333D4.dip0.t-ipconnect.de [84.179.51.212])
 by pokefinder.org (Postfix) with ESMTPSA id D591A2C3014;
 Fri,  9 Aug 2019 17:10:35 +0200 (CEST)
Date: Fri, 9 Aug 2019 17:10:35 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Biwen Li <biwen.li@nxp.com>
Subject: Re: [EXT] Re: i2c: imx: support slave mode for imx I2C driver
Message-ID: <20190809151035.GB5099@ninjato>
References: <20190808035343.34120-1-biwen.li@nxp.com>
 <20190808200202.GA6609@ninjato>
 <VI1PR04MB4495EA1A44120654B494EB3D8FD60@VI1PR04MB4495.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB4495EA1A44120654B494EB3D8FD60@VI1PR04MB4495.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_081037_278254_16A1B4CB 
X-CRM114-Status: UNSURE (   9.58  )
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
Cc: "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Joshua Frkuska <joshua_frkuska@mentor.com>
Content-Type: multipart/mixed; boundary="===============4633974389342845461=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4633974389342845461==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="A6N2fC+uXW/VQSAv"
Content-Disposition: inline


--A6N2fC+uXW/VQSAv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 09, 2019 at 03:18:01AM +0000, Biwen Li wrote:
> > > The patch supports slave mode for imx I2C driver
> > >
> > > Signed-off-by: Biwen Li <biwen.li@nxp.com>
> >=20
> > Wow, this is much simpler than the other approach flying around:
> >=20
> > http://patchwork.ozlabs.org/patch/1124048/
> >=20
> > Can this one be master and slave on the same bus, too?
> At the same time, the same bus is in master mode or slave mode.

So, can someone kindly point out the key differences to me?


--A6N2fC+uXW/VQSAv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1NjOsACgkQFA3kzBSg
KbZraA//TnL/M3ynAzbcUfci4GFDrF4jMYa2o2/omG9PudfPvQe+FAlnzotOev5w
H3qcvZunKEJ/kozkTIN+EyiJQl66Qe83oq/96C5swg1lTaac2unx0++uMV3pYEsG
hPCfhy37l+Ng+qoJH9Z2/cNOwq3YnM8kuRXjuKJ67+88MaNLVKEzlJXUYxx0PnLX
qChztUKmPaUPBA88Sx9ixUb9H32kOno7JU+gD8T1dSz3liQ9yJ7qwzAet5Cb6uZT
8fNUhXhzuJSOoEcuuwLtQwDz0CyVfOLQ3AZVOr5jzF7b9qgvS7uBej7LvacjOuXj
PkeiOE6LsAFGvb8nqzGJP+wv+4fEefdKFezI4ixa39OAHv1cDql9xDKILo8AL+h9
YCTFEOWOPsIHNF8G1SCZcfF3IsFF9GIYs54lCoyc1aR/VlYhgcKsVdXu4byA5epX
xjPC0TTcNwAGEq9Dbb7PbYZqwQ0LgeottUb5mIA6eIpVURUlensrNO0Dk2hUPDEQ
OV6JM122ugLcmkECg6AL2+Cx9o7fuUiEmlpYAT04eOIn1ubkZ7eMjpJvwrxiUpfj
sHWUygP8ZLgTyh2o8mpLcT5y5pYhtoSNGkqBsCkIW/LP1niQGY1a0TAP1v1lDn5y
lhgiJvZFV/99g9aHywHxvDcZqqhyQGjBfAF30sl9gMzhNaVmCA4=
=vUVo
-----END PGP SIGNATURE-----

--A6N2fC+uXW/VQSAv--


--===============4633974389342845461==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4633974389342845461==--

