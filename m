Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AB3B7CE7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:34:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7miIX9aJKvVvPHPbkZZI3CI8ZPazWRyg7icwFfZp1k8=; b=rXNCUST371t7pgLomu9HsCHK2
	0aXFk7PSo3JYZECdyha35BRmDccsn3BaaWTiPsu1s4zLehhwh2zpu1ndnpg/R/8M1aPIL4uvymzdN
	iIcjXifP/QxF/x6sBbR8a/Vmc8NAq+o79sIvyGtxRvCLlbMLMPYv5Bk40ZRkGLRyELwSQYT1qI1cK
	R2Cvou+3U//KRW/qUAGs/mJfke3/FXdqMlyITGuLWaVSpMfX50EFxusU3nIYwJJRK1OGFpQGYDt50
	ZRdBKjeTwOqGqcJwYMEJ943zvbkWLG9xdj0ubMVcYvIC0A2iEL6QP5nhUgTvyu1cIZ64zpAb6JJl1
	Rd1OPNU8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxVn-0005IF-VJ; Thu, 19 Sep 2019 14:34:24 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxUm-0004uK-Ud
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:33:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1sx8mKM+Bqm7cSb1Up4PL3u1Qlhzk3VQwMObKwWPKAQ=; b=jghkJ8niX5s9SkPtmb5Vk052N
 dGOo/9p/fCMyxtvd6uQK5Tdxl4yN7ZOW7+pTUoKfrX0Ro4pQVYHWsxaVvpNiRJb9xy9LfsKKCv+Yk
 /goRd7N7GK1W3tQ+/YU9X9qIXsDBB7xX5yezln/lW84i3v8o46OqS69TYlkrkiElff3Eo=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iAxUh-00042Q-4N; Thu, 19 Sep 2019 14:33:15 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 89B272742939; Thu, 19 Sep 2019 15:33:14 +0100 (BST)
Date: Thu, 19 Sep 2019 15:33:14 +0100
From: Mark Brown <broonie@kernel.org>
To: Charles Keepax <ckeepax@opensource.cirrus.com>
Subject: Re: [PATCH v1 2/9] mfd: wm8994: Add support for MCLKn clock control
Message-ID: <20190919143314.GM3642@sirena.co.uk>
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104656eucas1p1d9cad1394b08d05a99151c4fbc9425ce@eucas1p1.samsung.com>
 <20190918104634.15216-3-s.nawrocki@samsung.com>
 <20190919075924.GB13195@pi3> <20190919125020.GJ3642@sirena.co.uk>
 <20190919143116.GL10204@ediswmail.ad.cirrus.com>
MIME-Version: 1.0
In-Reply-To: <20190919143116.GL10204@ediswmail.ad.cirrus.com>
X-Cookie: I'll be Grateful when they're Dead.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_073321_656428_55C6E4E3 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 sbkim73@samsung.com, patches@opensource.cirrus.com, lgirdwood@gmail.com,
 Krzysztof Kozlowski <krzk@kernel.org>, robh+dt@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: multipart/mixed; boundary="===============5934485049648689305=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5934485049648689305==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yr/DzoowOgTDcSCF"
Content-Disposition: inline


--yr/DzoowOgTDcSCF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 19, 2019 at 02:31:16PM +0000, Charles Keepax wrote:
> On Thu, Sep 19, 2019 at 01:50:20PM +0100, Mark Brown wrote:

> > Yeah.  IIRC when these were added a machine driver was grabbing them.  I
> > don't think that machine driver ever made it's way upstream though.

> If you mean for the Arizona stuff, the machine driver using that
> was sound/soc/samsung/tm2_wm5110.c. Sylwester upstreamed it along
> with the patches.

No, there was a WM8994 thing before that.

> I think on wm8994 the clocks probably are only needed by the
> audio part of the driver, so probably can be moved in there,
> although as a disclaimer I have done a lot less with parts
> of that era. However on Arizona the clocking is needed from
> various parts of the driver so couldn't be moved exclusively
> to the codec driver.

Yes, they're only needed by the audio part of the driver.

--yr/DzoowOgTDcSCF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2DkakACgkQJNaLcl1U
h9CyCQf+MMpoS4FlVQq+9Xt+0Uket4UES+rOnjdNVAtME5x6rwp/rW3bJeTlegL3
qviOHfnz9mgXwuCeR5RxotyqaZ6WB0ihYC/Y1TXFxaM5mN8Xqg4s3tWs0roBVc5q
wFKYpZr1heeoP8/2Meitj68poZHiUIGcU5E8Lgs9qDDJK5hwzVZ/1hJTvY4Dx5GN
ZuWslKMKAitY8sH2wV2+kDB1JY0poPsScarR/z3MozVoEIg6ABbc/EwX8MObf4a5
0QiV/9mSwrQ2Ctjd1nnr8/a8wOMkKdqiHYbCRYB5dy432Dh3oWZ5eRqUodDDR9eK
uLi3a+I6dtNmKmWHdMYaoRG//ylGlA==
=ebz9
-----END PGP SIGNATURE-----

--yr/DzoowOgTDcSCF--


--===============5934485049648689305==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5934485049648689305==--

