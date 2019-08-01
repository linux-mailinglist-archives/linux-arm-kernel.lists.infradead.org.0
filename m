Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 094F37DBF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:50:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zwl0NVGFM9MOwIP57SB/GPZup+SzgAhewNKNmEHpcmI=; b=ZUdh8JW6P7CuqT/wyPmOb6WGz
	DIYL0qOhyDQ+V3A7HZza4ZYemI7YrcQJvT0I8W+HecCUJYeR+a2O1wZcSX5t8maDkYg25J5Sa8kVn
	XEI1hU85PKRtfiORi6LmamwCfi/6Zd3W8Q2ITXVs+xFAtR8SyLqRfaDNGSq0qdBip8cfD4VOMEj44
	Bn0t8Q+zs4IrBd4VG37GsorviAWG8UwHtjbP0euYPM130wP4mO8NmYr66qfWy+mq7YzuuUFobLiZI
	s77s8uN1ZhPy3VCQy9ygAKqTzUtKTQaizww2qW/trXSYAlzWhOxYiWffj0KImOU7rhzg0N7FBq04i
	z4EcJR4XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htAXn-0007FS-DE; Thu, 01 Aug 2019 12:50:55 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htAXO-00073n-2Q
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:50:31 +0000
Received: from localhost (p54B333D2.dip0.t-ipconnect.de [84.179.51.210])
 by pokefinder.org (Postfix) with ESMTPSA id 5A5F52C2817;
 Thu,  1 Aug 2019 14:50:29 +0200 (CEST)
Date: Thu, 1 Aug 2019 14:50:29 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH 2/2] i2c: imx-lpi2c: use devm_platform_ioremap_resource()
 to simplify code
Message-ID: <20190801125028.GI1659@ninjato>
References: <20190717084017.30987-1-Anson.Huang@nxp.com>
 <20190717084017.30987-2-Anson.Huang@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20190717084017.30987-2-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_055030_351620_9B1A3580 
X-CRM114-Status: UNSURE (   7.10  )
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
Cc: aisheng.dong@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, wsa+renesas@sang-engineering.com,
 linux-i2c@vger.kernel.org, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, Linux-imx@nxp.com
Content-Type: multipart/mixed; boundary="===============0025030989231715396=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0025030989231715396==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mXDO3udm/xYWQeMQ"
Content-Disposition: inline


--mXDO3udm/xYWQeMQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 17, 2019 at 04:40:17PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
>=20
> Use the new helper devm_platform_ioremap_resource() which wraps the
> platform_get_resource() and devm_ioremap_resource() together, to
> simplify the code.
>=20
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied to for-next, thanks!


--mXDO3udm/xYWQeMQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1C4BQACgkQFA3kzBSg
Kbar1hAAquWHe0O3sEuqpFSEu1yKoyDSLzPeFYmaYzdz+Snz7NxsssYKw9wudKh4
9+j0FsIKOQFzlDfXviOwYBsl94ixNziBtVPPFoWEtCSXKlAMCRfIVXT8SsIrY3SE
/lIZY7jBKi9oRvBxWMImxP0iLS2HC6uIg/3fs5sAy4Hy1VKcn2mvMy7WZES8gFTR
/Bc2v4Y2Y4cdTjzjy8MpRUthrYbYU06XHXp5RF3/UkEg2I7NU6bYDt+5OUTpv36c
B/9vR/zk2kg9lhzrWRZqu3n91VY9KJB5ykfGBRHez+qJ3uFqnMGJn1zW9C73S6q/
KKpkXcSJ14otSb3iq7KGlCjuQ7l18mEjFlYmemRtUTivOSmVIuCg57aGvhgduNfu
kENj8whpMZo7M01121HGCtjo8r8aFKEQBoQ2mRqnakxyvzjmTu4Ljr0E4yZab52p
RNOHUjbtZL/R0Dp/aWugfsiwqZiD0c4/rsubRSnJN5gHlk9ze1vD+zauF+DeIFqb
oMRGa8mFtmPdaeNb9nSmbEBNzngBbiatr+DCMYogeRM6+AOjycAn86TOdxOvEPiB
Xy7XllFoUuQvTXXeI79M7fZE2zH/NCcvqAtPYu2/Adt0bz+AW5InsRhG7pgdusAN
u6rb/QzX13xSs5s/NsYDDGUll1KGrOoIcTDpmSghgsTpIwLzW7I=
=S2Wq
-----END PGP SIGNATURE-----

--mXDO3udm/xYWQeMQ--


--===============0025030989231715396==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0025030989231715396==--

