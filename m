Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E981113CB35
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 18:43:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sjKJZIszt9D0dVx3Jai61/38/BoIt2rKbwSKOlU2vcQ=; b=L8QK/o+lKMyMPlJ9AAoxOBbHd
	kMHqjyI2+Y/a5lA8cktZ5pC6BfpCW0YugnvbhsNCVi2jC+UrVMoSWH3ySiYGO5TKc16JIrobAfgnn
	mwl/EOHKCn/XXi1RhpMfInI/irYWnGyTzNkX1rZe2W4t44Hs7YDEIWhWaXK9Glvri4cwMDEzDgkJX
	r7bXlqCItAdm2fE4XlsjK0Ds30CoYoPrqBih3y70douh0TMTXDY6zcRJjXaxQfRrmRG7RZhOWDm2G
	gDXVHvIVQbWBvjzL6w4PDjFefDG423ESEayL8nJub8Gc0J4g0oOmzpitlqrVRDJ7BBPKsWlFbo+7g
	uUs9yoQvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irmhE-0003w7-VN; Wed, 15 Jan 2020 17:43:13 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irmh3-0003ue-M2
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 17:43:06 +0000
Received: from localhost (p54B33239.dip0.t-ipconnect.de [84.179.50.57])
 by pokefinder.org (Postfix) with ESMTPSA id E23862C0742;
 Wed, 15 Jan 2020 18:42:57 +0100 (CET)
Date: Wed, 15 Jan 2020 18:42:57 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 4/4] i2c: stu300: Use proper printk format for iomem
 pointer
Message-ID: <20200115174257.GG1239@ninjato>
References: <1578992765-1418-1-git-send-email-krzk@kernel.org>
 <1578992765-1418-4-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <1578992765-1418-4-git-send-email-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_094301_873024_650E3549 
X-CRM114-Status: UNSURE (   8.46  )
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
Content-Type: multipart/mixed; boundary="===============0856403162022650455=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0856403162022650455==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JkW1gnuWHDypiMFO"
Content-Disposition: inline


--JkW1gnuWHDypiMFO
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 14, 2020 at 10:06:05AM +0100, Krzysztof Kozlowski wrote:
> iomem pointers should be printed with pointer format to hide the
> actual value and fix warnings when compiling on 64-bit platform (e.g. with
> COMPILE_TEST):
>=20
>     drivers/i2c/busses/i2c-stu300.c: In function =E2=80=98stu300_wait_whi=
le_busy=E2=80=99:
>     drivers/i2c/busses/i2c-stu300.c:446:76: warning:
>         cast from pointer to integer of different size [-Wpointer-to-int-=
cast]
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>=20

Applied to for-next, thanks!


--JkW1gnuWHDypiMFO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4fTyEACgkQFA3kzBSg
KbZyqg//Sd09BN4OeELDVsiOiLzCCJ9pCfgSbHMr566NeJZRmzZzmHqnwPM45c/T
vPXIMFK2tA9l+WUfEL56leAbrzjuy9O5dK0TVGZsuCFTXunT/5eB4/rWcWCii+wu
rVXsA+nfIKrWNskbUC/Mic+5aERwBQvkWoHAKV2j5A0N/r77cO+i7bpWF3JccDRc
Cqq7SwXCsEB92MZRzG4JyhI0iyFQDIT/tEfXo1lMQ9Iyx7fVeiudGdo+YEfiQ4lZ
9VwOX5+5pmjgJ+4BLsXXDf3ulrnL/l6njjfKyRQ1WaFFiA9Em9gb9D7+ZkxN7rPt
vw7izfwLcmVEe0vlLBsOICMjRHLqNUqo4iJiMO7PUexQXfqbLX902mtO9Jf8GUhb
liKrVPl687LYO32qQHi5Td4A/D8kdmqsvFc8MemJaWw61nSoOxpdjpIgvy4efRKA
LrS8Hjd9rjABO5l4ITAU6zY5gVNbMjsBGX8jXtwqNK5fSz0enUh2eDz9gjxbFgGq
Oso9n3obhqedeFP4gp331wm80OycBEbuwE3slw/sUEgVkR9FsldgK9ybJNoRrlkP
i/4uAYQYnxXf5fXSIzK9/vY2F35bie1hGYt3sOpULaqAOMmvgBxh6bAzNGdZLbxW
xzY+WdHBSG38zYsa5PxdFw4TfBELbMmeMF3GRYmFQHGLNwfa66A=
=MOaJ
-----END PGP SIGNATURE-----

--JkW1gnuWHDypiMFO--


--===============0856403162022650455==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0856403162022650455==--

