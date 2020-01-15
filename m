Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E1813CDDD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 21:12:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=62n0mUqOXoQRPVpHW9nZAGjvKkTXZGc4NcXyCIcUbDE=; b=P/ov+ZQomM5OJW53VkAR1Uh8g
	V7kl/B4FaZuhC/8lp9Az4t579qsU0qatRTk5qYyNWvuRf/vGNTXf/0lI0E42dLOzfEWbCo1GitPF7
	xpWwxAhC6jISg12O2fDJM5umuXspx9rttHxPllDqeJGuPQNbTcWRy8cia7t6HQ562Almm0SEoyTJI
	lDwV+Wt1jhuHkd6sE0zmbtdHGi5w6VWU6U/bPCP1HbLbX2wnBXsw56mMcbtruwR7fR4JzaVG8yB/x
	QXctXvug+iJUwz2bmr7HKHkQI+UFNQps3Ok6X4REO+ysgsUwHjHc6R9ZHU5xZPPYy/H9L4NOVWaUc
	WzdBL2Ddg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irp18-0002dY-3h; Wed, 15 Jan 2020 20:11:54 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irp0k-0002T8-W0
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 20:11:33 +0000
Received: from localhost (p54B33239.dip0.t-ipconnect.de [84.179.50.57])
 by pokefinder.org (Postfix) with ESMTPSA id 3D5F12C39CE;
 Wed, 15 Jan 2020 21:11:30 +0100 (CET)
Date: Wed, 15 Jan 2020 21:11:29 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 3/3] i2c: highlander: Use proper printk format for
 size_t
Message-ID: <20200115201129.GF23789@ninjato>
References: <20200115200250.10849-1-krzk@kernel.org>
 <20200115200250.10849-3-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200115200250.10849-3-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_121131_205738_D35645F6 
X-CRM114-Status: UNSURE (   7.81  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Jean Delvare <jdelvare@suse.de>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, linux-i2c@vger.kernel.org,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3508960994388018851=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3508960994388018851==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aZoGpuMECXJckB41"
Content-Disposition: inline


--aZoGpuMECXJckB41
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 15, 2020 at 09:02:50PM +0100, Krzysztof Kozlowski wrote:
> size_t should be printed with its own format to be 64-bit friendly and
> fix warning when compiling on 64-bit platform (e.g. with COMPILE_TEST):
>=20
>     drivers/i2c/busses/i2c-highlander.c: In function =E2=80=98highlander_=
i2c_smbus_xfer=E2=80=99:
>     drivers/i2c/busses/i2c-highlander.c:325:22: warning:
>         format =E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=
=E2=80=99,
>         but argument 3 has type =E2=80=98size_t {aka long unsigned int}=
=E2=80=99 [-Wformat=3D]
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>=20

Applied to for-next, thanks!


--aZoGpuMECXJckB41
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4fcfEACgkQFA3kzBSg
KbbGbA//V4Pd/oZSzcwC+gh8impSTd2ltc1fdkHj2NdO2PWaI6Z0Sft6BEhFWuPq
VZij+N0uNkEwP9SUPgL5paDSlHX+a684bSObv3g4EkM3ZSl9vGvGnHeVkQRVM+2c
eZRyEnszq+9FU2tG945L3y2iqOmym8XOOILqwRhnxJRI+cB52kzQ7IH5g6oMHQcc
RftZRMwjS1bxQKdVQTaaUyvI+6x5HMH7MzQMjCoqLuIWxkglF7hEjfx1cYjnO9x8
zVvsMwBtqOaIHg/KNHER/zXEh6Bjc1bVc5z6ycb3raIaqk79BhBxFjICVKXtPrXo
5y46SSL8NMfDmVjZS1mCPwOTM/f3uAhMyPiOWixY/l2z6+LAQUWhWEC4NGYPUTHJ
CP8panoD/9FHqgYLRPNrf3xfJklbKxR4cqgHJvbh5HBjwFOFrdRUxURlhchT7kym
hE3xiOkVnbL8OO+CabShgVN2w/vG9H27YDiLgWXgT8Pdk6rjnpip+x9OWXluA4Ld
repFYBsR7U21fQ7Ofi/SZnWnFwlmrxxxE4Pyt5vwMxIsHtTalXs2xDA6QKtBDGrS
6avSqCtkS/8ZWIS30sYTv7n7BJj1LK8WCAT4ieh54NOiE20pjDSNTbeKe6kLAybV
CbMkkNqjVKMRrSXUdP8t5knn4IHbhwpr3txW38uFIX+GgogYuoM=
=MSqQ
-----END PGP SIGNATURE-----

--aZoGpuMECXJckB41--


--===============3508960994388018851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3508960994388018851==--

