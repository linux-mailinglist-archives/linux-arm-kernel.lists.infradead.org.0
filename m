Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 545A51D56DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 18:56:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WTheBTioRuaqyOZL5WWh34NMgqTgBkkKHRlqVw0yme0=; b=S+iOtm8UZ/B3KOn5/MC7JCrCc
	3oEDvpTgMWNd3mDwUYaup2G8Qq7l8QChwSBWhG5c65tnTNPcCfn0eQKipKhTphiUCXYGI0H0ogu5q
	zOQDbHlBdC+WV59fXz4M8ByMKU3Pcq9dTbV9gBEUfpfl+RZmIAsAjIn3vkeXO9dc/ZUzVlwFfA22z
	w5WsOXNL9DCtPSdZDf9o1PrkPLpOJ6l2qyzua5ze2rz/YtZdAAjF2ucuZZ9ykYckakVB+udLSh9QF
	/G7KONL+iGLZ8iUSX4pBPTtRG0Pw3K6VgVTx9VkGITi2TRQnynO506Hoq1OZgrTsToohNiWD2dIZ5
	UrgdCkRMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZddA-0004SD-FY; Fri, 15 May 2020 16:56:16 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdd1-0004Ro-K4; Fri, 15 May 2020 16:56:09 +0000
Received: from localhost (p5486CC07.dip0.t-ipconnect.de [84.134.204.7])
 by pokefinder.org (Postfix) with ESMTPSA id 1297F2C1F6B;
 Fri, 15 May 2020 18:56:06 +0200 (CEST)
Date: Fri, 15 May 2020 18:56:05 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: i2c: Document I2C controller binding
 for MT6797 SoC
Message-ID: <20200515165605.GA19423@ninjato>
References: <20200222162444.11590-1-manivannan.sadhasivam@linaro.org>
 <20200222162444.11590-2-manivannan.sadhasivam@linaro.org>
 <20200226222330.GA9392@bogus>
 <aa9ea456-dbee-229c-aea0-4860c6eb7adf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <aa9ea456-dbee-229c-aea0-4860c6eb7adf@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_095607_807056_06027441 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 adamboardman@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6151951033123003057=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6151951033123003057==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SLDf9lqlvOQaIe6s"
Content-Disposition: inline


--SLDf9lqlvOQaIe6s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 15, 2020 at 04:48:28PM +0200, Matthias Brugger wrote:
> Hi Wolfram,
>=20
> On 26/02/2020 23:23, Rob Herring wrote:
> > On Sat, 22 Feb 2020 21:54:41 +0530, Manivannan Sadhasivam wrote:
> >> I2C controller driver for MT6577 SoC is reused for MT6797 SoC. Hence,
> >> document that in DT binding.
> >>
> >> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> >> ---
> >>  Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >=20
> > Acked-by: Rob Herring <robh@kernel.org>
> >=20
>=20
> Do you want to take this thorough your tree or are you OK if I take it th=
orough
> mine?

The I2C list is neither in the CC field, nor is the patch in patchwork.
I suggest you take it.

Acked-by: Wolfram Sang <wsa@kernel.org>


--SLDf9lqlvOQaIe6s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6+yaEACgkQFA3kzBSg
KbZzoxAAmChj28HYksgpo/MWV/BUG0pk9pOZqJPw/klKVXwQthuLR5VhB8skNnKX
ZJK0R4lBqOiTUkt9ASzuuXtA3Is/YlvAfyL6Q53pKcuaMJBIEl3xgf+hJxeUv8tv
xKv2nXRtIIcnuVCfK3D6WmxR4De3vVYjZmg4YrCmdl6JUzDc/vXRXCPdeGI3HzXV
S4thVcwulxtW77EVbZtbK7DObPVXQb6CFb8oPYblIBqAQRers0/s+zag9j6suBFF
nRCr9uNrec1IPhnIwqSqe5uPqsr02kEaVFg0DCyXmR+l4FuM3yu19W9e1Jxxp/1Q
RqIJ+OfCgiVgoG5SUHREIkOWbivBgy7sAdQ41PEQ91Wxa4Qjmvk+YhBn7SK/12za
wYfD2FxikaYWlOW2vlMFIlHnXxjXuCQeMZl3BbHejgaNdYtGaxcp1mtFsLsG/acR
a6VMR635bMGETBg4aN/8c0A4KAKDEhzL/ucn/JtKBK6LwGCdmNnIYpi+VOQ9YfVw
8q6gVA88+MMK+pfOtPPLXnv8I9UU08oijKG3W+K1WS/ewL/bOI484C95s3yXg25Q
9gpslUUdYlNy9SQilZ65IjjsjIDmF0v6bbSaygHqw8HWeMaRu4YV6leIOu51+yFK
4OnklpdFEd+YwLSYVUyPZ3IK+4D2heK9etKViSs8HDCpSTBs1Po=
=Vxiu
-----END PGP SIGNATURE-----

--SLDf9lqlvOQaIe6s--


--===============6151951033123003057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6151951033123003057==--

