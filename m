Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 794091F8F07
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:07:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hmu9F0U6wVb0QBPsgDjlDuFI0mQX8YSqpsV/XPNHl0E=; b=llN9Aoo2+YNgAa3jJ5vzTvCbY
	V4gT5aRJtm++oLBYOIaEQba7r4iMqFbenTV60nfg9ps8MWAIzsC/BmvQhaH51zu1aH+C4eTcmO0E5
	qAVzokeM7z/7e3f0gXkYquC9PZN9ngW97ZuU8JJR4JG3vx74Dhb1tQy5OIki7LQMN2eMNcpFzwKlB
	NV9SVF7+bAJlQ1cFNvegLLw+y/QTD32mv2ncULAwbwyulvsn4BZ3y0tFc6+J+nvHbGdX42uqA5XzO
	VsuVozRPTDwE96ezqL43qK1D8etpZqlH1/6URu3ZYOI0J8Kdy5ZhsYWYXejhAMIhbAOUBB3TFj0QV
	lYsIKqRuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjCs-0000Kr-CQ; Mon, 15 Jun 2020 07:06:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjCk-0000KP-5x
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 07:06:51 +0000
Received: from localhost (p54b333b6.dip0.t-ipconnect.de [84.179.51.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 653CC20707;
 Mon, 15 Jun 2020 07:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592204809;
 bh=6psTtzAfbsjDtbI/z29o3KFAc048XX2lv+HUU1uNcQI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s3l13uj1XZS1WBdldnJCn3f5+SFeLOaZ8S1ea0UTQV/itoVqOoLHakP1OBqipHKlT
 sPbxkdBLH7WrB7A3vmIjKHSsrQonpoiQAYD78eiT5aA4ueabO2TmSvlQdxSbLCqzFO
 JyL5apU3ar9zjYz97ZdT+L6tCtWhGBOqVbCMHk+8=
Date: Mon, 15 Jun 2020 09:06:47 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH] i2c: busses: Fix a reference count leak.
Message-ID: <20200615070647.GB1497@kunai>
References: <AM6PR04MB496688E213BDF2B104E5FCE1809C0@AM6PR04MB4966.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <AM6PR04MB496688E213BDF2B104E5FCE1809C0@AM6PR04MB4966.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_000650_258012_59E73FC3 
X-CRM114-Status: GOOD (  12.79  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Fabio Estevam <festevam@gmail.com>,
 Andy Duan <fugang.duan@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "khilman@kernel.org" <khilman@kernel.org>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "kjlu@umn.edu" <kjlu@umn.edu>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, "wu000273@umn.edu" <wu000273@umn.edu>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============2912784552186302495=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2912784552186302495==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p4qYPpj5QlsIQJ0K"
Content-Disposition: inline


--p4qYPpj5QlsIQJ0K
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 15, 2020 at 06:31:28AM +0000, Aisheng Dong wrote:
> > From: Andy Duan <fugang.duan@nxp.com>
> > Sent: Monday, June 15, 2020 10:49 AM
> >
> > From: wu000273@umn.edu <wu000273@umn.edu> Sent: Sunday, June 14,
> > 2020 6:12 AM
> > > From: Qiushi Wu <wu000273@umn.edu>
> > >
> > > pm_runtime_get_sync() increments the runtime PM usage counter even
> > > when it returns an error code. Thus call pm_runtime_put_noidle() if
> > > pm_runtime_get_sync() fails.
> > >
> > > Fixes: 13d6eb20fc79 ("i2c: imx-lpi2c: add runtime pm support")
> > > Signed-off-by: Qiushi Wu <wu000273@umn.edu>
> >=20
> > Again, which case can trigger the issue ?
>=20
> It's just error handling improvement because pm_runtime_get_sync() will i=
ncrease the
> reference count even it's failed.
>=20
> I wonder if such de-reference can be better handled by pm runtime core co=
de.
> Copy pm guys to comment.

I started a seperate thread:

https://lkml.org/lkml/2020/6/14/76

Still, on-going discussion if the proper fix is to remove the error
check.


--p4qYPpj5QlsIQJ0K
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7nHgcACgkQFA3kzBSg
KbZY1A//fhA+SLIYCIw1oxbGkvOuAJdvlyjRz1RH5ItN+G7xbJEp/zkTPn0fYa2u
/T4qRUqlIQlS2ybcthqwxLGhmD2rbEkGxTq1gOvYilWCfREU+E0I/GhmfoxAWO8s
mIb3advwOJybe6/UHP1kGAllVDd2f60UKDGDaqhMQX8ilCPAE0e+9i3dmm+rTF70
y7U99kq1jV4eGRggiZUvQUOyl2xjxwYi4sOz29/X/B0WILHmmOLAVsgAxY0l1+tF
+nXAFQySpYB1JV/sXSxbM+1IrA7uWvu83lbyn8lghooz7bDjbWXQ7FecF2oGKH3v
FW5iRAk3puNzGA6RMckqiMM3SGlV+Y3hOhhbFLihh+E+P814LgxN2y2qUjH7TWQP
40Cah28Zex8p1Dfip9p9bmoUlhtuEiCSCE18v7UKTUcBgLzXiEp/oI9qkP05zA+F
R3p37IWGv32TQUR5tOTykeO3tTNI0Bkn/nCaV9/7Rhfku7CN3CRrMtmGyVI/048C
wp1+MCaI9V2yGO33NQfT9CdYjDqBaZi+YdmvyzGC7CUm2Qe+Puqcmei9uk7VKz3U
OPQ+XeeQF2YTVGOB/8HBc7q0G7q/eapYueKqv/e2RTQOk0fRoNGS6WNiWdL8X4R3
Pre8u39yAQg3uu+0Ei/7QmRizjVxt5BrsU+jw441VNdV5E7wKpA=
=GS0g
-----END PGP SIGNATURE-----

--p4qYPpj5QlsIQJ0K--


--===============2912784552186302495==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2912784552186302495==--

