Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5371F8F02
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eJ8l9n2haPFaw+yYRaD+iEtcKOWkZhNYDzveSIdgbLs=; b=SoSiZp+3MUid7Huj0xnmTNZjS
	+dyM+Btqd4KT/SpB6fCJGfoDrz4g21n6/NocvU6sCLkjKBdjIFnx2Udka8fuKWXsRZaWKzPA9Lp47
	KnHp6mP/wyj2aQSjjriOmy78EVMiaOIBUTl7MDoe/FKGseMmyINoHhkw9VUTGhBFvpmkQiG8vbaPs
	oa0ZPHDzrNPNHFJZofvFNF5KmvxMjPBayzLm16Ghl8FhZ0D8SL9qYcRMqm+PD3dFasw4ScZoedDrQ
	8JWu3KmWaSnJ8psZeFlgzA1fH3B4eTL6TO+pDA4FlEGCXDZoEPVkvrCrput8iwgbzc0HWRdGOIUwa
	joiJicTJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjCP-00004y-W5; Mon, 15 Jun 2020 07:06:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjCG-0008WE-SB
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 07:06:22 +0000
Received: from localhost (p54b333b6.dip0.t-ipconnect.de [84.179.51.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0060C206D7;
 Mon, 15 Jun 2020 07:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592204780;
 bh=fUQNCAAb6DjGomvNl4eNFS4GZ/iZOIWKfiriaaglQf4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NGt9H7nPgvZ32vSDoQGNlVzCidRta/sIu4S/AmYHx+omviqGOlI7rqBOrBomhSabw
 odKfQDbf/MwUe5m2rlbgggpyE7/rDmDwe2IGiw+N6nfMmlxjKDzT8UnkOvCjmA9xi4
 3HP1Lh/ZIcwsuvpACy6Cczd7m27IFY44y/ETSLR8=
Date: Mon, 15 Jun 2020 09:06:13 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH] [v3] i2c: imx-lpi2c: Fix runtime PM imbalance on error
Message-ID: <20200615070613.GA1497@kunai>
References: <20200601061640.27632-1-dinghao.liu@zju.edu.cn>
 <20200614091203.GC2878@kunai>
 <AM6PR04MB4966A1FD80A29BA1E63247C0809C0@AM6PR04MB4966.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <AM6PR04MB4966A1FD80A29BA1E63247C0809C0@AM6PR04MB4966.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_000620_924182_AA98C25A 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Andy Duan <fugang.duan@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 "kjlu@umn.edu" <kjlu@umn.edu>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Markus Elfring <Markus.Elfring@web.de>, dl-linux-imx <linux-imx@nxp.com>,
 Dinghao Liu <dinghao.liu@zju.edu.cn>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============3037081795987686743=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3037081795987686743==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zYM0uCDKw75PZbzx"
Content-Disposition: inline


--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 15, 2020 at 06:33:40AM +0000, Aisheng Dong wrote:
> > From: Wolfram Sang <wsa@kernel.org>
> > Sent: Sunday, June 14, 2020 5:12 PM
> >=20
> > On Mon, Jun 01, 2020 at 02:16:40PM +0800, Dinghao Liu wrote:
> > > pm_runtime_get_sync() increments the runtime PM usage counter even the
> > > call returns an error code. Thus a corresponding decrement is needed
> > > on the error handling path to keep the counter balanced.
> >=20
> > Can you point me to a discussion where it was decided that this is a pr=
oper fix?
> > I'd think we rather should fix pm_runtime_get_sync() but maybe there are
> > technical reasons against it.
>=20
> I had the same feeling.
> Copy pm guys to comments.

I started a seperate thread:

https://lkml.org/lkml/2020/6/14/76

Still, on-going discussion if the proper fix is to remove the error
check.


--zYM0uCDKw75PZbzx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7nHeEACgkQFA3kzBSg
KbbAbA/9FTQMd1gpGi6tiS2NPZ+sd1kxs7t0vnUK9MLKKpgEC0Do/6JBFttvRoN6
So/PITa5zgqjUYeNzRtrbMjXmQVSbCanAhMOBGX2/8w6aMUJnGPbm6sDT26oQkSP
T0jzir2gR3Mw9bh07kXbszx4vJGOFJDOlH31BjxvN/9lZZRCILiEpfoTxGNAOXyV
73BiU6Ez6AMB01363BL8vMC/l4W82YeitG6xrxvz+Fzw5/OQ7qFlOrDfEFbP10tU
wlbk5gUjyWEzhzh0qqGPuRVDeuBxGDgrDQDpFGScJBfZ1oH7lqSyg7fjdOIG3fNH
RPSgvvoPkJkY1WL9wbt3lOpt+F/rBJYy7iDMwY9CgYnaF4bP+peLtUzazK83Wzhb
F4N5A7AP550rmEYEZV1sJqNHacQFqcXXdremSzKjMEp1XVp4CqncjIGrC9qy+BAQ
VZi3L8ExCY36TWYPi5lBqJ76vv3nB2q+GhYkU9CaBok/rQ12LmgGS4Z27X9YjdS4
3CwpsXCrl+/4tsbxFxbWqRvvCMYQwtbIJ3EWGG6ga277+OtYDSSnn3QLFt4GUQ3F
xnWTt0+xvPRHfI/b2ffkQBYINd9kqEy5c7H6OSN67NtdREktPmtbS8OHhEoTx1gy
2Ly8984MP9JzxermLmvQ0mvvtJFrr1TA80UCmQev6XsMoQ/xCUg=
=g8OW
-----END PGP SIGNATURE-----

--zYM0uCDKw75PZbzx--


--===============3037081795987686743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3037081795987686743==--

