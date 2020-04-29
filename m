Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 146A21BE136
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fyyaRsbKcVsaKrWimLwKdVC3a3l4S3jeAHH/h7eoHUY=; b=cpWLLA9XL3OVKQvIzOkjQ1vup
	yecsmJu/MeNNuGsOgqDHSi8nGD2XBmvMwnMya4dxsvBkZIwMl63gqPDX/uRiGF47Os56wvAVFY+Bs
	wKUvfBVvgmZy7ZNZHL9ovFrtGj7LXr5K/xAxj0uHR6VSzIT5l3fDAhgty4dLxO1berz7fJ6vsW2gR
	9dB1e2HlmIm/CFKfYQzCOSGAwSY8DKY5Mhu7crj2kvN7unxJbnHcw0Hr3wvR9qkLWZdhFzQycz1Em
	18JT9/V1yHnvLTcTRI/7SPpWrsE5rAMXkpT3n/gkJjHbKQ1fGNUUfPGp6rkBOVrv3wEApKSf0ZXSZ
	Ih2hUXWeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnoC-0002wh-FH; Wed, 29 Apr 2020 14:35:32 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTnnv-0002tZ-Nt
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 14:35:18 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 628275C0411;
 Wed, 29 Apr 2020 10:35:12 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 29 Apr 2020 10:35:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=7NflUZehQMCLBE0ifLIpSr1EDnn
 wo5t9jU2qH5OWXro=; b=CDZaj6HRDXELNSxfD+av0zYYHyXWhNBYgr2hxCGIHpt
 dT3fzI/ebRdxjUpT/rZlO8aI9bUpZEpvFiOahw7TC9LDqyqLL67DTSc+npHmMQ2g
 4NZk5cXzCu+jWESM9r+Opz71MVzSl6nNl5HteenD8LSph9D4IYV3szaZJXptCaBc
 dTyWrrDFaklsBpUH2cdwj3Oh0KYfLXpXZFUhwi+gRQAeMBJPuBBcl2/khSD7VfSH
 MT6+Duybnw70QV7NGC0CgR0YfkgtJ3HFOByPuLdq6NCilTfKBy1N0inuckSrm8uz
 qKnpm2bU4dXr3iOo9R5caKDX2KFSlXjASbL/J6g6CKA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=7NflUZ
 ehQMCLBE0ifLIpSr1EDnnwo5t9jU2qH5OWXro=; b=PL4Mc2IkiUGQRB5/B8oLzy
 96gRWt25D+zZDgb2x75EApZrGqmVDoI1G5nKAqqwgUZkkw6GLPLAJXGy7ZGFSHDl
 0kcm00NosuGmYV1byCAXALbHPEcJ29SrJ88mzSCE53sHDaKlcMqXFDummiJ7LpqM
 kZ6cBLKkIGhdZJCmy5x9Sc2zfEWfYrHo3uGOf4Oao9Buph6DZMTp9km55lxFAw4C
 0epjRLagKuco3fBK9LuWhkmM7q9V+jXc2SLdWgleS2PxKqT7D9oMVOf0KxKmN7Fy
 JufLRuaYq4yTG8QOp2rAqAl7Rgq7SDRZV9mEpSRtACguE9QzyuhgnOwuTHmhmdJQ
 ==
X-ME-Sender: <xms:n5CpXk2e7JduXD774By5U3JhJuNdc2wzl3cvDlWlAvAF4LjFfnpIOQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieefgdejkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:n5CpXpxtmh0h0oNuQXuZjYLr9OfXIp95lirN40XuOw6EP0nE_DhmSA>
 <xmx:n5CpXjiGyrmvqwTSgHK9gO_H8s9i07iAtbZjMN2JEDmLBgiBwJfDSQ>
 <xmx:n5CpXowRmvipaFG-69S5rOqmg3mMuAwWNlEwdmquXLPEyIXKJ3krxg>
 <xmx:oJCpXnfDzSC-0y1ghD9wNxK_x5nJwHD3aRMKonqmvWonG-4oknsw8g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 52C403280065;
 Wed, 29 Apr 2020 10:35:11 -0400 (EDT)
Date: Wed, 29 Apr 2020 16:35:10 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Priit Laes <plaes@plaes.org>
Subject: Re: [PATCH 1/4] clk: sunxi-ng: a10/a20: rewrite init code to a
 platform driver
Message-ID: <20200429143510.ksi27lok2udtmfas@gilmour.lan>
References: <20200417221730.555954-1-plaes@plaes.org>
 <20200417221730.555954-2-plaes@plaes.org>
 <20200420124935.asfbgv7envb2af55@gilmour.lan>
 <20200420203228.GA4734@plaes.org>
MIME-Version: 1.0
In-Reply-To: <20200420203228.GA4734@plaes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_073516_111834_6984D723 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6068146598360221762=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6068146598360221762==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zjre4utny3hlv3nb"
Content-Disposition: inline


--zjre4utny3hlv3nb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Apr 20, 2020 at 08:32:28PM +0000, Priit Laes wrote:
> On Mon, Apr 20, 2020 at 02:49:35PM +0200, Maxime Ripard wrote:
> > On Sat, Apr 18, 2020 at 01:17:27AM +0300, Priit Laes wrote:
> > > In order to register regmap for sun7i CCU, there needs to be
> > > a device structure already bound to the CCU device node.
> > >=20
> > > Convert the sun4i/sun7i CCU setup to platform driver to use
> > > it later as platform device.
> > >=20
> > > Signed-off-by: Priit Laes <plaes@plaes.org>
> >=20
> > You can't relly do that though. We have timers that need those clocks b=
efore the
> > device model is initialized.
>=20
> Ok, I'm somewhat lost now... are these the affected timers on sun7i follo=
wing:
> - allwinner,sun4i-a10-timer (timer@1c20c00)
> - allwinner,sun7i-a20-hstimer (hstimer@1c60000)

Yep

> Any ideas on what approach I could actually use?

I guess you could keep the CLK_OF_DECLARE registration, and then have a
platform_driver probe and register the regmap?

> Also, similar timer dependency would affect then sun6i-a31 and sun9i-a80
> platforms too...

Indeed.

Maxime

--zjre4utny3hlv3nb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqmQngAKCRDj7w1vZxhR
xVUBAPsHWuYy2OQT3UljAEr+aCiI8CLm5ELTsyDmgwGv5k61AgEAvf5uXLGuI8YM
fCSMZorTWij/bLfDbEfqowLUaGK8dQ8=
=MvDN
-----END PGP SIGNATURE-----

--zjre4utny3hlv3nb--


--===============6068146598360221762==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6068146598360221762==--

