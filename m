Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E33EA18686
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 10:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+PFu0coy9He2vdPzdtIz99J2q9oOLd2FQYIcBxUvoFk=; b=qABus/qEkpEfWSYWetReYKaaz
	I6phkdE/qk6kh/CoJxk6w5M6zuQu+ojkjBWZ1E97o5wXC9bOF52F26k1g6KvXtvzGuG8G+zW1Yddo
	WM7P0zldATIAFikjw//GAhrIMrWmYnGNI6zg180NFsngE2cnrb9HWEnpxpvft193AREuD08+sgz0Z
	NZ7rcXbXi8CyyJae7NYLihC9POvqfz8zIjQm8mKLgD9nblsc8BryWqcvOT3UGuj/m2a37RdmthwUv
	N59xabhGiah4SuX0G9/Sv816CXiQmH1yz/xujEgEuH4bGE1Fr8Iy9N8RycrnK+LyNEYqSEB6wZUqw
	vocS7S3gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOe72-0005kZ-Du; Thu, 09 May 2019 08:09:08 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOe6l-0005k8-CU
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 08:08:53 +0000
Received: from localhost (p54B33113.dip0.t-ipconnect.de [84.179.49.19])
 by pokefinder.org (Postfix) with ESMTPSA id E8C702E3571;
 Thu,  9 May 2019 09:55:31 +0200 (CEST)
Date: Thu, 9 May 2019 09:55:28 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [EXT] Re: [PATCH 1/2] i2c: imx: I2C Driver doesn't consider
 I2C_IPGCLK_SEL RCW bit when using ls1046a SoC
Message-ID: <20190509075528.obzchc3midbjpvzs@katana>
References: <20190430044719.30720-1-chuanhua.han@nxp.com>
 <20190430125043.weqwzim4gpsvtkfe@pengutronix.de>
 <AM6PR04MB43571B8D52C1FE9ED20DBA1D97360@AM6PR04MB4357.eurprd04.prod.outlook.com>
 <20190506073735.ctzybytamu44pbvv@pengutronix.de>
 <AM0PR04MB43534A9B1A146DEFA929844C97320@AM0PR04MB4353.eurprd04.prod.outlook.com>
 <AM6PR04MB4629DEDAAA6559EBBD20E974EF330@AM6PR04MB4629.eurprd04.prod.outlook.com>
 <20190509074851.czcjlpfm2iooqjv4@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20190509074851.czcjlpfm2iooqjv4@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_010851_773017_DEEEC2FD 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sumit Batra <sumit.batra@nxp.com>, "eha@deif.com" <eha@deif.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "wsa+renesas@sang-engineering.com" <wsa+renesas@sang-engineering.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Chuanhua Han <chuanhua.han@nxp.com>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "peda@axentia.se" <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: multipart/mixed; boundary="===============2899227572111656454=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2899227572111656454==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gv6qjm3xh6s2jhl3"
Content-Disposition: inline


--gv6qjm3xh6s2jhl3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > There are 2 places where clock division takes place -
> >=20
> > 1) There is a clock divider outside of I2C block, which makes the clock=
 reaching
> >    I2C module as - Platform Clock/2
> > 2) There is another clock divider which specifically divides the clock =
to the I2C block,
> >    based on RCW bit 424 (if 424th bit is 0 then the baud clock source i=
s Platform Clock/4,
> >    if 424th bit is 1 then it remains Platform Clock/2)
>=20
> So there is a clock divider which based on RCW bit 424 divides the clock
> *to* the i2c module. This suggests the divider is outside of the i2c
> module itself and thus part of the clock module.
>=20
> We could argue that this divider sits between the clock module and the
> i2c module, but for sure it's not in the i2c module. I really suggest to
> put this SoC specific into the SoC specific clock driver rather than
> littering the i2c driver with it.

I am with Sascha here. The fact that you need to of_ioremap some
registers is a really strong indication that the code should go
somewhere else. I can't tell the best place (clock driver or seperate
GUTS driver or syscon driver), but the I2C bus driver seems not
suitable.


--gv6qjm3xh6s2jhl3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlzT3OsACgkQFA3kzBSg
KbbgNQ/8CGasqnfiTpZ11DFig8JEAVVpHiW7URbOcwfSNliiGRcajU0Z15c9dQrB
FXq50Xgz1DAf+yhNgfWk28gZ9DdbGEdEvRUyZsW1oq/Vf2vJEx5wBQUB04Rw12KS
6OjdgBK1mWDHsbRcI7/Ug9nL2gWPTz/u0bzL9btM/AT7CDnKi+CiLlcjqrLGWT0b
KasALzS/AfnrtXTqyNL2wdqkTZC6wrdjgiUswYQ1Yr065NZnHxrH/zR6RgOIA1ya
p5A//ME3DiCQRLToYXM8KU8Rb/PW29n1GtefaiFyrrhXAg7ZPfR4y8n+AQTkgPUq
2Mcpz2nRod1e79YpgYm5+XpcTD7bgV7XZD8RH9uPKfpAW0W33QP0OFKG92RigTTW
6mJRvtus8S3VfaHatBupH/kQsnoyZXktZXRAdgWEa713zybXoGUzwvQICnJAUp5T
sB2LxykMYyb8T862XbNzQtC+0cCDotY4ZZ2plIOlUrNomf37ZunQu5/uEecPf6s6
2MlVlzgTYTwG6lz5WxkZ6A2RTnx8rXvcr7jwo7wwVcjf9W2erTR18+tqU7bmtrol
qh1V0XeufPewhKfCmSR+9yyP029AP4cwdRHNQNsg9oDQGzqYZxhHSKH1IMBt2PI1
Ozxlx/gjom3K5yCe1tWBIG0yzxnFvXJBHgGKimBFmYt4I8Eh2Uo=
=q/1n
-----END PGP SIGNATURE-----

--gv6qjm3xh6s2jhl3--


--===============2899227572111656454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2899227572111656454==--

