Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5761FB22E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:34:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4TTemAez+Iz9s66eF+zSQkMtRVU9DLWZZcPh0HWNuYg=; b=BQnffJE5q9TFrrWcsIbRZZxAq
	3HQnqZcylqAOoI8ody0PdYV05hthzNsbs3OrJ0JbQ7QxnsNimEiKi1c/wvYPgzlN/h+GR7LhMXKOp
	NWJS70bSycoYwG0cz1NZmSQ84520F5+XQrEmNhKn0CM8WWEkGB3AypuehBtT3r8Gp+To7fMH0mjEO
	ei+HOpSns+eb6SD4Hh7nK+Irpn/QCrPcL/fdhLocCY05LDmjCvf+rTb66A1OKua12dC2zIopAhBJU
	rZ24Fwf45nx6ABXn8hCzQ7sXVrphF0rUOH9+vNY3/fqIS/KfqwgOdTPv42ElowcoaWxpaHHHRV1AQ
	VbT2aWTEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlBj2-00058y-EE; Tue, 16 Jun 2020 13:34:04 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlBic-00052V-Hf; Tue, 16 Jun 2020 13:33:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id F1457580249;
 Tue, 16 Jun 2020 09:33:34 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 16 Jun 2020 09:33:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=5AzcztrmvMHt9dpsevcvnwdum17
 Og9iuY36XBJsw02I=; b=F0f/vfFbL6PAifMRdAUl3EXYwI/G5Gk7yP3TRmlUbdD
 9bw098IbIcV8vtgvNU7bT/Q9+/Ceu5yu56pDbl/r5OsuwjjZ0dih1qBAi8GKni4v
 NwlNSF1qjfhgCUUGieu9zqpYbkEMHJny7tTwlU1sRA7WfF8QBa48p1LTPhseQ68M
 Tr5FypisKi5l9tc2ehsHnLR768RdLE0sLoZcO4yMlKkRIZQXXscYoM66BqUkAG1j
 a5bH8g7Nll4gjYQkxcaEo/qm+fY4rNDzadXhp/Jj9X2WShtcAmNfI8yVvQN/4w6D
 58/9lk+AXsy8Io63P3eUv1lBCYBZ+Z0GdSfbqVog3Mg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=5Azczt
 rmvMHt9dpsevcvnwdum17Og9iuY36XBJsw02I=; b=Tca5GtDExYvwwzrDuU2kHd
 Th8zeelhkyxx2cGc0CAhxf0+zy2ya49oyGC785I4jEZfX1r/hDF/KgrzzoohnU/8
 86o/NLhlTb5KkH+52ppDJXHjByy0nrC1WAZgE/e2imA8zrEgxGUNQ+kjz4jEvlWk
 qNYg5lfNLVsWoBj68qNG00aZmmCLg2TaPZd+N8RmcxJwj1d38a0e6Azemv+QzLY7
 ji9WZ7FuNzo65ElAOzEPFKOvhbESTUvsTLABA45Oe42S5Vz21PJZSTrgTjOs474Y
 jNRmL9WDnI6rCdG5IkDA5+k0pYlk019KKIG8iOiLJ1LwXcgrFoWgWf8sCXX2sH+Q
 ==
X-ME-Sender: <xms:LcroXlCCBfaNI0AAgdrprJwRWP5FV6ZGL4C_-TDjqWeWATHWssoEAA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudejtddgieekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnheptdelieekgfegtedtgfevheduffdvfeehgeetiefgffehjefffeefffefvedt
 geeinecuffhomhgrihhnpehpvghnghhuthhrohhnihigrdguvgenucfkphepledtrdekle
 drieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:LcroXjh4In1jykQhV4cPF4ld8PuC9DBba7owZKeVJGOTjMqM8UjF8w>
 <xmx:LcroXgnYr5qQ_TYtPWYA4F4qLfbGXViMNSSCXaMmSItJH4f3I3i6sg>
 <xmx:LcroXvx9JhT7HWRV2GwylrsvwWGrjqYCmV6viyGfq4xI3OuCj5YVAg>
 <xmx:LsroXtHUGCJXbfmJvuCI5KXuhKHS0ALuCEMsFpIzW59Q0I3uQ8YNcQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 77BD23280063;
 Tue, 16 Jun 2020 09:33:33 -0400 (EDT)
Date: Tue, 16 Jun 2020 15:33:31 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH v4 3/3] ARM: dts: bcm2711: Add HDMI DVP
Message-ID: <20200616133331.xhrelfzu6tvjhdld@gilmour.lan>
References: <cover.4c4625a8e076f3163b800b3d8986b282ee98d908.1591867332.git-series.maxime@cerno.tech>
 <e22222ca7f41b960e9bb1a31e0dd2de95b8c0cd1.1591867332.git-series.maxime@cerno.tech>
 <810816166d8ef554e1bb1f4a2b39ea0b8a1a3d5b.camel@suse.de>
 <20200616121641.jpoz237p43sbndg2@gilmour.lan>
 <706f56a20d318b841792ca19a6fe7135cb6c61e3.camel@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <706f56a20d318b841792ca19a6fe7135cb6c61e3.camel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_063338_923012_BC065CAC 
X-CRM114-Status: GOOD (  20.63  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: multipart/mixed; boundary="===============7915861119281103668=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7915861119281103668==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="r7x7ebip5kixyu7n"
Content-Disposition: inline


--r7x7ebip5kixyu7n
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 16, 2020 at 02:56:55PM +0200, Philipp Zabel wrote:
> Hi Maxime,
>=20
> On Tue, 2020-06-16 at 14:16 +0200, Maxime Ripard wrote:
> > Hi Nicolas,
> >=20
> > On Mon, Jun 15, 2020 at 06:26:19PM +0200, Nicolas Saenz Julienne wrote:
> > > On Thu, 2020-06-11 at 11:23 +0200, Maxime Ripard wrote:
> > > > Now that we have a driver for the DVP, let's add its DT node.
> > > >=20
> > > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > > ---
> > >=20
> > > I can take this patch, but I guess the rest should go trough the cloc=
k tree.
> > > Is it OK with you?
> >=20
> > We have a build dependency on the reset framework for that driver, so it
> > should rather go through the reset tree (or Philipp should make an
> > immutable branch that the clk maintainers can merge).
>=20
> I've prepared an immutable branch that these patches could be based on
> and that could be merged into the clk tree:
>=20
> The following changes since commit b3a9e3b9622ae10064826dccb4f7a52bd88c74=
07:
>=20
>   Linux 5.8-rc1 (2020-06-14 12:45:04 -0700)
>=20
> are available in the Git repository at:
>=20
>   git://git.pengutronix.de/git/pza/linux reset/simple
>=20
> for you to fetch changes up to a9701376ed0fb61a5be4bb438daf26bd9cfa24b5:
>=20
>   reset: simple: Add reset callback (2020-06-16 14:19:57 +0200)
>=20
> ----------------------------------------------------------------
> Maxime Ripard (2):
>       reset: Move reset-simple header out of drivers/reset
>       reset: simple: Add reset callback
>=20
>  drivers/reset/reset-simple.c                    | 23 +++++++++++++++++++=
++--
>  drivers/reset/reset-socfpga.c                   |  3 +--
>  drivers/reset/reset-sunxi.c                     |  3 +--
>  drivers/reset/reset-uniphier-glue.c             |  3 +--
>  {drivers =3D> include/linux}/reset/reset-simple.h |  7 +++++++
>  5 files changed, 31 insertions(+), 8 deletions(-)
>  rename {drivers =3D> include/linux}/reset/reset-simple.h (74%)

Awesome, thanks!
Maxime

--r7x7ebip5kixyu7n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXujKKwAKCRDj7w1vZxhR
xV3OAQCkHU7+1ivZrwdMJyQYhSTjRSdayzi5Kco9mto6Q+aFgQEAxvAgtce/URjq
/H97TMJbga30ORtpVIPOaxQdt9c/0Qs=
=Txka
-----END PGP SIGNATURE-----

--r7x7ebip5kixyu7n--


--===============7915861119281103668==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7915861119281103668==--

