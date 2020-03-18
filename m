Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 774EF1899CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 11:44:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GporOCtFtk03oq8i16hVtOaL1KUChF/i0v/Lzy6oaHc=; b=QzfbxNhzcQyMHHJ8YPfXinj8F
	053+ATGeauRs2DvIbQFcztjAhG9HLjdYVSYP8Zi3DALRf6tt2YAutD5/HeKR2hZ4CAknAzarwUjWf
	HqCUooE9bmSqT+zxCnuH8291G/vGYTlzg0RrFQ45gERNW7Mb8+5ZNXk7WZRMXCQJ5FbRVkq8bffVB
	2m9Ipd/LN9iMCZyf/7OaVSfHiE7lLrW4lMv3Xi/z9vL0lWQnzj1sQokpn3Y1P5sVyMNYXZNKm81lV
	Rom1twBXndLqKA5QImZB2kFAV4P3U9Ik3DgtwfqvjgLr0o1Wv4hzeuu+ASYgC7qi/miWWH0u0qlBT
	R+Bc3n95Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEWBQ-00022q-4o; Wed, 18 Mar 2020 10:44:20 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEWBF-00021p-NJ
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 10:44:11 +0000
Received: from localhost (p54B333FA.dip0.t-ipconnect.de [84.179.51.250])
 by pokefinder.org (Postfix) with ESMTPSA id 33AAF2C097D;
 Wed, 18 Mar 2020 11:44:06 +0100 (CET)
Date: Wed, 18 Mar 2020 11:44:05 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH] drivers/i2c/busses/i2c-imx.c:remove duplicate print
 after platform_get_irq()
Message-ID: <20200318104405.rsqiw5og4xbuv6n5@katana>
References: <20200318100748.17540-1-tangbin@cmss.chinamobile.com>
 <20200318101844.55c273zh242ymxcf@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200318101844.55c273zh242ymxcf@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_034409_907042_DE589D26 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Tang Bin <tangbin@cmss.chinamobile.com>, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux@rempel-privat.de,
 linux-i2c@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4430737548517303122=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4430737548517303122==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bce44n5wofewyr2x"
Content-Disposition: inline


--bce44n5wofewyr2x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Uwe,

> Maybe add a comment for the next person who wonders about an error path
> without error message? Something like:
>=20
> 	irq =3D platform_get_irq(pdev, 0);
> 	if (irq < 0)
> 		/*
> 		 * platform_get_irq() already issued an error message, so
> 		 * fail silently here.
> 		 */
> 		 return irq;

Hmm, too much boilerplate for my taste. I'd rather assume it will be
printed during the call.

> And to get some extra kudos mention the commit that modified
> platform_get_irq() to emit a message in the commit log.

Yes.

Kind regards,

   Wolfram


--bce44n5wofewyr2x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5x+3UACgkQFA3kzBSg
Kba8nA/+P5T/G4aR4JXxKUJpSsklVKMksLmr30FVYSwIDwRM+ZtiE1Gb5YlxIq2w
xGrwNdKPkoYaYYfPeV51FgcQ0p6LcVF1SkgFxox8B8ga20m65uyu+/CoSeblzcJ+
J7OP6D1XHGezNJ75wD6rUO9buqqBhxDOQ1VvQsKxVN6V16Zc4TULuU5CZNh6KbnM
h//fMAuKK2mubFJVYiDHZCeaFPgCLESrmYmuCup46fPkthkMwZbynpeXo23dvhd4
5rh8tB1n1DpCz4JICMfyaTlLMD53U3Lkq4UivUmwi3oU17rnhNqfYvggZ+gGmucz
UNZGT9FiMCRzwidSU9WitQbF8CkkS7+0RhVRf/8T52GtZm8VroRg3apGfp+FpzP3
Ep/bFgZrBJuDCY/27JtiaGlF4qGSFis0ZvdOnneEC1pzwQ5WuaN0yJw6PdYq5W6X
Hy2Bn1m9gsnI1DfEF47y6jlDgjmMAt0huqoTKwvWIAJnaE8SQfGIaHsB667c/Vo6
BEHCeewgbX9crZk5S7P6swVEXIoFAVZYnCAqFowunYx81dKn/VV/mHiuwVw6gy7A
tnvZh1GvJGAzC5JibIhAfA6ZExGesQRR36XegKDiQm2YrLMH8l0qYmUjkYCWZjE4
Ejq+5Srx6Sxk+rZxdMmxA8stM2qhn+QFnUtZKJ4g6jdTYeI6720=
=MP33
-----END PGP SIGNATURE-----

--bce44n5wofewyr2x--


--===============4430737548517303122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4430737548517303122==--

