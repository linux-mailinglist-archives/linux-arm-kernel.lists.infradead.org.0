Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E8213CDDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 21:12:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ia7GSYW0ekv5Pt2TlFLvnLuT0/SpHuIXgMsn1zLh/HA=; b=qEkwucakZD9xkiIOZQf74BTFx
	61btUXx9nmaEOo8NY/+cy9nM6RiBIGW/U7XJMN7smI8FczHmhR9kX1p9HXyRObI/e04n5ZfGbPif4
	EKIaTdNC050fXyfxAkzqw7K5d7ytAIx1z5y/qJ/MqIAWfYjmWFXwZ6NRuDnWiddg0upIq0SQPWOUD
	1gf6w5Hsaelongu5+mJ8kh8tyrbaKREKD41vvvabgobsS7VtiSCdqONmDLGzwO4cRfMMndehBm/1p
	UBSd4q+X5e4y20iTIrTH/+jl6Sx1JOT16mpQc95bnp2Yjq14GVGFMsDOP4IpSqXBX3Lw04DAMsWp8
	57sQTklGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irp1L-0002qb-0a; Wed, 15 Jan 2020 20:12:07 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irp0h-0002SF-LG
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 20:11:33 +0000
Received: from localhost (p54B33239.dip0.t-ipconnect.de [84.179.50.57])
 by pokefinder.org (Postfix) with ESMTPSA id F2C342C39CA;
 Wed, 15 Jan 2020 21:11:26 +0100 (CET)
Date: Wed, 15 Jan 2020 21:11:26 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 2/3] i2c: pnx: Use proper printk format for
 resource_size_t
Message-ID: <20200115201126.GE23789@ninjato>
References: <20200115200250.10849-1-krzk@kernel.org>
 <20200115200250.10849-2-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200115200250.10849-2-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_121127_839716_F57AAED6 
X-CRM114-Status: UNSURE (   7.59  )
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
Content-Type: multipart/mixed; boundary="===============0041255166568185690=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0041255166568185690==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2hMgfIw2X+zgXrFs"
Content-Disposition: inline


--2hMgfIw2X+zgXrFs
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 15, 2020 at 09:02:49PM +0100, Krzysztof Kozlowski wrote:
> resource_size_t should be printed with its own size-independent format
> to fix warnings when compiling on 64-bit platform (e.g. with
> COMPILE_TEST):
>=20
>     drivers/i2c/busses/i2c-pnx.c: In function =E2=80=98i2c_pnx_probe=E2=
=80=99:
>     drivers/i2c/busses/i2c-pnx.c:737:47: warning:
>         format =E2=80=98%x=E2=80=99 expects argument of type =E2=80=98uns=
igned int=E2=80=99,
>         but argument 5 has type =E2=80=98resource_size_t {aka long long u=
nsigned int}=E2=80=99 [-Wformat=3D]
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>=20

Applied to for-next, thanks!


--2hMgfIw2X+zgXrFs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4fce4ACgkQFA3kzBSg
KbY56xAAsxppKd34siSFAxR3BSDE0/ILa4HAQbQr9MX2bEsybjidb2IjtGTBcwut
diw1wHjPBp65f5nF3JIt2D3v0vih4NcxdKr2VjNLPgFKlQVk7SKw81zzQdXmLeFy
aOlC2RpibZstOo96iMhHl27xh+GoKk4iJWOKHhzlk11GBUdiNTK4fWXab3InOtMR
91+6yDLCyhyFscrjgl38MDsCyTxfbwcYq+bT9JcQ6GjluhThCyd2smQ+QVhWBHu6
JONv9htsiiYkImh1YhNT/QXO1yYNLQ/00rzaCEhk9gM/NFELuNW/dqG0YXb++1SJ
IhOkavG3osri6Rw0ZTN/G+dIBgovRk1f4O9N28HpwcuZ5QbyT3Phlh/XiCeL/333
/5d22byi4gkYScj7tCStuYA2o1gOQhhvJb00ksZ7YCzrGZHfSQMJhhLbb/6oTHnz
4Che84m6t/WddFtLXdj2/JBbwnH0BAO1ZIZPhcBbtjG2Imi0juRJTrKmYjF/INr/
yRwGgGFkBr5pvmEANdaHPj2Gx03rSu3YyzPQFjIthAYDNxoe0hetYBlduFuJGAVn
/ZnrsML+5J2zULgiJldjWvnOIx/gFlNED7KR8HM6/nH1KGWFu6xQR2ljARHpqs1s
fXLJQf1nQxVgJ6gtqCt5ig9wVrvBavs8Ltj3Kt9m0+7yL6APalI=
=pULp
-----END PGP SIGNATURE-----

--2hMgfIw2X+zgXrFs--


--===============0041255166568185690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0041255166568185690==--

