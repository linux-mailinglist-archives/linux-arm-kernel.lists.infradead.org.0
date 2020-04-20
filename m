Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5D01B04BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 10:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=alpe/8l7Nr82KjAGMOXhI1Xdg79wn9TlgqM+aWsEgWI=; b=UfBL3lndL8Ij/kCRiM+x2tb9l
	SU/D0o/Pk4E83pg75/PEfLVH2YjqIjuZEwJVV0o4lQiUcRaVy0yCKj2WTIc61D0Xqn9K/eqNVgMiz
	7rXLaqihxq65McuskH9yR+9xkcue6662vSGXZCIkEQqu3KkzRNx/oy/2W+gr6V7J72JSC1nAew7wK
	4wc8grKqnIVHAPJRn0X+lbyYRmdMkQYKHlCnM9y6s/YGaZ8a/TlxV3cowY2P5zghNNpbRcvCNictr
	fwmx60LCS/gMWnAAB/DztvXatdFB/ktEnMr1GkNaZX3C64mIRDB1l561P4s58QO+PJMOqcfCWi3Q9
	JWYOXWvIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQS46-00066V-LG; Mon, 20 Apr 2020 08:46:06 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQS3y-00065U-T5
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 08:46:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 1AA4B547;
 Mon, 20 Apr 2020 04:45:55 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 20 Apr 2020 04:45:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=iQX+Nbu9lUUYXsNcDSVwSJak4D8
 iqDKj9Y/HcbQhFRI=; b=Cb5vCAdqrAyiC4lRxqRERI9SW5ynRvi8MfadLN2m09c
 Erdw2VZBnEjnzPuFuZ5X4y2ATzwg4ps0ETjpslCQjoObsrzg25nErj+Ekvum1TN1
 L3eCvibfhfxJBWQV4m4LkoJKAh1qy4LDR++xo5mjTYLO1CyvmqKkJXpcQSOlAlaa
 hrkm38YE7hWp8Yx4K2PxV0GVSfm39XFqqPPpDOXBfy7f4WvP1TyJd3h68UnUdqCc
 jAMAqxG/0iWe7S9of86enzLJ3xzYgK5dRBla/xtnLNAAjeKgyU/FQsnpzZrcoqib
 Vzv0bhN2yrWtb9dDj9XEUxUivVKL8bEd2ewpcOHMp6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=iQX+Nb
 u9lUUYXsNcDSVwSJak4D8iqDKj9Y/HcbQhFRI=; b=RJPO+6LCm0E2Tw77x6Wh7U
 9vUpvl1uafoY3akeLipgg21OvnEkCrKZc0TAbluRUIID9++cFwlFJHYin0KPH5Iy
 5wHzX/BHRneFGifM84s+tS/BD9721/PAXlP2JMsMtYd05M1L6zV927Y0rpCoPcri
 npdXITWxDswalbec2jF3nQtZwP37rL7AGg9WUAflWms4YHkpJ5bBCwQ3ILJ3xh2K
 fDcP0z3OnMEd8kHCZArUydmMqG5RpmfpZYKk78y8fCQa7aStGIK3oDsXuSud4SiV
 wJKDw4wEkqDu3M1G8T3DOUNypw5cKfbkVvJyc4phERFe6HLsJashLQadRvCshNgw
 ==
X-ME-Sender: <xms:PWGdXi5Y8er_T2GP7J4g4hYlUm-l_KOfZ2Vp5Z7Jf0B4FFkKuNhVzA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeefgddtjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epghhithhhuhgsrdgtohhmnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnh
 hordhtvggthh
X-ME-Proxy: <xmx:PWGdXjdnlpmdTjzOlruLtyDzfePgAewLqBq4Bw_DZav0OsN1q2GXmw>
 <xmx:PWGdXua0gcXr9UBqhtsxm2COLSQNEgjxh_neIGRei3I-2oq4pVan0Q>
 <xmx:PWGdXtGAFXTtDiVEhYdMzvpQt5pmulDtmrBkyogIznXoGg6UAGsJ-Q>
 <xmx:QmGdXl-jakDIzXRhpEXxSycGALAY0J0tp5vgCeQ2_0-Xs7DBEkGR6w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 857CB3280065;
 Mon, 20 Apr 2020 04:45:49 -0400 (EDT)
Date: Mon, 20 Apr 2020 10:45:47 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 0/7] Add support for Allwinner H6 DVFS
Message-ID: <20200420084547.q5xqlbnmug7l45p2@gilmour.lan>
References: <20200419135011.18010-1-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200419135011.18010-1-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_014559_161468_F2CC6DC5 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7666478797542611100=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7666478797542611100==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tjfbcs5ju43fnsxg"
Content-Disposition: inline


--tjfbcs5ju43fnsxg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Apr 19, 2020 at 03:50:04PM +0200, Cl=C3=A9ment P=C3=A9ron wrote:
> Now that required drivers are merged we can contibute on DVFS
> support for Allwinner H6.
>=20
> This serie is based on Yangtao Li serie[0] and Ond=C5=99ej Jirman work[1].
>=20
> Most of the OPP tables are taken from original vendor kernel[2].
> Plus there are new CPU frequencies at 1.6GHz, 1.7GHz and 1.8GHz.
>=20
> I wrote a simple script to randomly set a frequency during
> a random time[3]. This script is quite stressfull and set some high
> frequency without checking temperature. This can result on behavior
> that whould not occurs with the real cpufreq framework.
> As Maxime point out I also tested with cpufreq-ljt-stress-test
> (found here https://github.com/ssvb/cpuburn-arm).
> This script doesn't trigger any issue.
> I also test that that offlining CPU0 and doing DVFS on other CPUs
> works. As CPU regulator is only set for CPU0.
>=20
> The GPU devfreq was drop as the regulator is still not properly
> drive by panfrost driver[4].
> I will re-introduce it later.
>=20
> Ond=C5=99ej Jirman has an Orange Pi 3, Jernej has a PineH64 and a Tanix
> TX6 boards and I have a Beelink GS1 board so I have enable these
> boards. But CPU Devfreq is really touchy has it depends on:
> board design, SoC speed_grade and environement which can affect
> thermal cooling and have different behavior for different user.
>=20
> If people can test this serie and give feedback, I will try to
> introduce this in LibreElec tree, so LE community can test it.

Applied all of them, thanks!
Maxime

--tjfbcs5ju43fnsxg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXp1hOwAKCRDj7w1vZxhR
xZBWAPwJcHVU/m631vQHEiwdmukLTu1v8SDhAmACGUZRYKurVgD/cSE+lPELz+F5
tn+IBhAd1orRbkBB7HgXc8PEnVef+gg=
=JHGr
-----END PGP SIGNATURE-----

--tjfbcs5ju43fnsxg--


--===============7666478797542611100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7666478797542611100==--

