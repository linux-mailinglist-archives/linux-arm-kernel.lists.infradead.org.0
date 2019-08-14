Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9998D3FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 14:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4uVFsr9krnm66ADw7q6seVml5k5Hi8SzvrlUaGs5wjs=; b=kwIjLLylw8gSdpE5nVLzxWVPO
	rhOXyzR1c9Dy9RmmbCZavD+n5+/Mos1UfiPRCYTzO+mkFEK0ZntMoPxLPgcNcuABXHmy5h18bzPpp
	t+h4Hp34jIVZeq2c/LcDaI+3JVAcdrR83h4dPJd2L+xOyKXLXKVQ0fPnsNwof+nG2u7oF8Ef3DB3x
	g/wlLcUMYErD79kQy9CVm8SksCCYBc+Hi6b3q0etS+sa258cu8mHwRnXgf7DSgSHjZuYnWuJCdBVb
	1Jjt+emB2WqolOoJHD1IYjMQnz5K79/Xb79y6hsK61nosy8Kbd7vREv5c4xCcdq73XD2GKYIKa2dn
	gk7gDWKow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxsrA-0000JZ-QZ; Wed, 14 Aug 2019 12:58:24 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxsqx-0000IU-VW
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 12:58:13 +0000
Received: from localhost (p54B33326.dip0.t-ipconnect.de [84.179.51.38])
 by pokefinder.org (Postfix) with ESMTPSA id 99FD42C311C;
 Wed, 14 Aug 2019 14:58:08 +0200 (CEST)
Date: Wed, 14 Aug 2019 14:58:08 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Nishad Kamdar <nishadkamdar@gmail.com>
Subject: Re: [PATCH] i2c: stm32: Use the correct style for SPDX License
 Identifier
Message-ID: <20190814125808.GD9716@ninjato>
References: <20190803141331.GA3588@nishad>
MIME-Version: 1.0
In-Reply-To: <20190803141331.GA3588@nishad>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_055812_164771_0DB89AE4 
X-CRM114-Status: UNSURE (   8.67  )
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>, linux-i2c@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Joe Perches <joe@perches.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0979030225013828228=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0979030225013828228==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SO98HVl1bnMOfKZd"
Content-Disposition: inline


--SO98HVl1bnMOfKZd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 03, 2019 at 07:43:35PM +0530, Nishad Kamdar wrote:
> This patch corrects the SPDX License Identifier style
> in header file related to STM32 Driver for I2C hardware
> bus support.
> For C header files Documentation/process/license-rules.rst
> mandates C-like comments (opposed to C source files where
> C++ style should be used)
>=20
> Changes made by using a script provided by Joe Perches here:
> https://lkml.org/lkml/2019/2/7/46
>=20
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>

Pierre-Yves is on holiday and this patch is obviously correct, so
applied to for-current, thanks!


--SO98HVl1bnMOfKZd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1UBWAACgkQFA3kzBSg
KbZgmBAArH8glfhLKtTkL5UWa4RdGvAUOavsDcYcimkOpgqU9Lbh4CG7AqxoohDc
4SqzUm4dZTlC5snKoTVPnO5vmsNouyjD85xud37NhdWYX1k4HTnKEpo2k8N/vop1
ryZkczi52PVtxZSoIsfKNnAGB3wkyXSvGM7UnmTmc6PFnIQDTpGOSzgrV1HnXjFu
YdTk301hifcdaHc/+JyvXL+arw30iwBgerzUlS3fAPURippr5qScbFR4Xevyozdu
xJSzmc03vaniJ5KqYT6zhp3yik+NaZzc6zoqHk3B5XmQvM3VO4xK14TxbPK1exXS
g8j7KsfoSjK/jidf/6pSTMoCp5+GnyQCBhzK0hcTTLxjcsKltICA+5sE2OjYdYSY
4dG8vAZNOagcYPUyRD7J4sT1PHK+27O6n0k03et8pU8Lg+8IhWNcz8PfRpLVvkOr
jIW6dzLHzZmtRJoa3CFIrWSTFfChd68u0O7EFxkqRfzqVLOfIZfS1kwK21LsXM6i
uF7jLgs2F4fEOzdktw0NapEDVbVYS2AQbL9B+keiBdWpR9nfKJPjPiodpPeYxntn
lnSCiiOTAWlVE5WxF+F+1ONza0M16uh5H9FM7dkHp5SpvJskxRrxDzG6rkGhI/SN
Gxh3BXLtyVjUs4FlfqcZsm87aX4AGBy/zwEmpKpYqaRNe/ZKftM=
=W0pC
-----END PGP SIGNATURE-----

--SO98HVl1bnMOfKZd--


--===============0979030225013828228==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0979030225013828228==--

