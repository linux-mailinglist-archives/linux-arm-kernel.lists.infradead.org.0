Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D509D1BDB4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 14:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3AmtYcUbp8RVmku8eR4XWJvJJ95+JcOR3rGytwF+Btg=; b=sVX3blSoQI5AFV+FGW5RPMtX/
	TQpT0CifGAKWwpZz7YaSdkSTA9sSkHpehTY3koTr8Nf9RzAJoUcOfgFYMCZ3heipe3FLpvkMgnGZ1
	KpLOjp03U5nkVkmsKOYOHl8aMm11vmSJ7ePeGP0hDJX+4K3zTqDcfYBbTmy5dNd+K1BCadjIhQQiC
	Or7kQGRPDXrB0TomYA0HQdPdSJ6rvSpP2HQM0it/ufXoD+ZXNUxvUjmcbqEFAzuCm8q3ESWbKCz9m
	d3uaepHdV1/WIh7jU1B+oYaEBePZUX5TIfYAvbdOrFesZs4XJXyJ7Q29PQvyNI4uFmqED6zGNFnaX
	nkGulb7Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTlR1-0000EY-I3; Wed, 29 Apr 2020 12:03:27 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTlQm-0000Dp-A2
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 12:03:13 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 227005C02A7;
 Wed, 29 Apr 2020 08:03:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 29 Apr 2020 08:03:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=nVZXdFyTqU+EhOsehAD10jUm04V
 bj//It/g0NXiaLkg=; b=X8wqnXfhKyWGkf049IbZs608tmy8mJCmB97oKx3hsz9
 FaUGK4faP3+9l/IDNK/bZHg1Bl5jExOiq0rRK2TdeUa5fZM4RylgCkpAoldPnyep
 x5hgoKR6Ik/opWp2oKwc8IvE57b8vLSDSBCotOeIBOJwLD9qy0cemBTLbvOpH6Sp
 9Nfk5cjYTDo64jpfp/nhBP6mOb3z+H2lxJdjYjPL1Zd8FCoXo8dNN3j1mj06y/aG
 phOsLFxxQKXp6Wd7qe/ZCgf96Y7lTmtKiRZZTzcjevGmQ90UeCQvy4aWswvcP8mO
 6E77Wl8fon1D467hK6pLxdGnSElFv4qVKNUNGhfFKkg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=nVZXdF
 yTqU+EhOsehAD10jUm04Vbj//It/g0NXiaLkg=; b=YiOs9rvySj87qc8DgiPek6
 o2tiGM1pXPKef5LZsZF4iLCpyIYt2alVyMwaMVhuNe46xPHyTDRk18wJydgTRIit
 PWP1+kbpXpMcv+9FdP7RDLHtyI2j1HeNZbb0byU+UdHMeNcSUDK0CHJIoZz2fmp1
 8KU3J1dG9r7/j6RCoFBUA8H4rkWes7gKve3/zmevRZn63G2FTsDAkgGWlafHpcou
 LohYvzEI1f8QBmKQqeX3CkVSN4V4CQwSM6XejvLPCYRU/JchuQd8B6xsq3EWEPNp
 exZJ6fxCXh+N0Q72xLj5TlwlHd75tWMSoU2eoxaCzjal7HvL1g9SGoEBH63tOYjA
 ==
X-ME-Sender: <xms:_GypXuO9jt2LA5aXfajnxJ90VtPBpDNAiN7o5oCcaPJ-JWyt8VqbaA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieefgdegjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:_GypXg71DSEMhi_VhbzzVZwin2YtY1P4zz7pKUG38S-g-qZ-zjCLqA>
 <xmx:_GypXuXpNum4U1ejXsUJpiHS6i8M0qKSiK08zERfmJQnj2fzTT8MZA>
 <xmx:_GypXnPcR5B1K018RCyGma-EKlFFnhq5d6m5hR2CDJcyBdB87jaTUA>
 <xmx:_2ypXoOkMplzris1jy1zdrZ3tLca1ufOKvoO3I_6yhnYNo65pXJWKw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 65EDF328005E;
 Wed, 29 Apr 2020 08:03:08 -0400 (EDT)
Date: Wed, 29 Apr 2020 14:03:06 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Peter Vasil <peter.vasil@gmail.com>
Subject: Re: [PATCH v2] pwm: sun4i: direct clock output support for Allwinner
 A64
Message-ID: <20200429120306.7bqg6d5z2qomt4bj@gilmour.lan>
References: <20200428164150.366966-1-peter.vasil@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200428164150.366966-1-peter.vasil@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_050312_486141_AD515681 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-pwm@vger.kernel.org, nightwolf@relghuar.net,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0522382152255976623=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0522382152255976623==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vmsinkl72f7e2isg"
Content-Disposition: inline


--vmsinkl72f7e2isg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 28, 2020 at 06:41:50PM +0200, Peter Vasil wrote:
> Allwinner A64 is capable of a direct clock output on PWM (see A64
> User Manual chapter 3.10). Add support for this in the sun4i PWM
> driver.
>=20
> Signed-off-by: Peter Vasil <peter.vasil@gmail.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--vmsinkl72f7e2isg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqls+gAKCRDj7w1vZxhR
xXL4APwJ1frhThTxfINLI8+qwKzaB+xsWZPuoydUkyE2hxzV7wEA2Mq/A36nL3jr
dEXEVKmCa8o8lDHAr2fo9TOwjIuX+AU=
=w8vE
-----END PGP SIGNATURE-----

--vmsinkl72f7e2isg--


--===============0522382152255976623==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0522382152255976623==--

