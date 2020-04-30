Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E231BFF99
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 17:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=urEHTZaJ8IKTi/kSdGi1qtt/74SWoQUCehQfxVEtDDw=; b=W8n08CSfBWArrFbhIsJ/auLT1
	qmlSlZEp+6HDs556rKLp+szb5y20E/Y9zrETLNMzrWzIO3CE4OhauvfnBuw4LV58DN96S24rhONgr
	eayXc0kgpnl1hHCvDlLqyIKyV3hOtWnv5nDhGfr09YxLLaek81eD/pJLuPLgC6mTzt5C4YEYJ3+yV
	g42e2Lg6OwgizKgfqb8NnkIElzYdGud7G1QxcXrhER88sMg+syNmKmHyLbTMTmJWBYqhjT0gICNFn
	rWmZtdeYWXMzXKrTclTl5ZTdgYblLAsdhfWLfeBXrDt89V5vyWtjozbwvCHEzaBqOfACPiKa5iX7u
	Sxg3VRDsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAl7-0007TB-Op; Thu, 30 Apr 2020 15:05:53 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAku-0007SX-AB
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 15:05:41 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id CF8FC879;
 Thu, 30 Apr 2020 11:05:36 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 30 Apr 2020 11:05:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=Tru7PrTS/cEk2EWUwEOeWCgUn+R
 +ZwTSYNBWM33YLjg=; b=G7S/aEAwT1c+33nJT6fsdEVxgPaaVZxI2PD7wiBF+NE
 sDsj9yoIQe4Bg5Zqu/32cYJ1/o9g75vS4KP+bGdYXRQFCceRiLHsjJMa4H3JXYPx
 nMJE0/wU8/rnFD2ex84lI/Jtl6fBqL4hJbQej0O22CkiU3ABV3EsPRr4cpkQcG8E
 txEZ1QVrFc19vK/8zrzQfhNVVWEH5Q+U4e9rDh3OyqHLtARCpuG0mF/8Tg5WY7qx
 GduxhLWi8KsRQd7aUQtzNARLVbrCuXuytOEB+IBUSgkG4lTQ6MYJa0NcXHKTe/P2
 AK0eR2BYJmgAuE6UFhXiNysabyDUbC7bfRNg8fo4qTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Tru7Pr
 TS/cEk2EWUwEOeWCgUn+R+ZwTSYNBWM33YLjg=; b=T32wf1Yx7SUErYgLK+Q0AI
 To4RLQELHNIbU91kwfidK/p1D217384Ddxg2L+2cYf9Gc8QwhU6TmNz5OrZ8Yjqu
 e42G5DkiwxciQCVTVmhv3Lc3eBI7NKdySbDhXrDp+nZzL3D6OL3M+tSpyO+v5eK8
 wJtlsIxyW19v5BZNjSRUEft6hB90QfUyguiyAbZ9Drz21W28SinmWlci88C4F4X/
 DoVZuxXaAZOSuERifUont6kLyf4DaADe74yPAnhMMkzve6ZK4IYEYem3sR+j5pxA
 ySI1+1RynC6JkP36hkIwD34+xpgxyQfPjTm4JZzMzXvDKg1G1RXwZ23c3RyP3tUg
 ==
X-ME-Sender: <xms:P-mqXlJggu2Qj1_nrorI-QgX36-_oYqmih1diXjqc6YH_T7Z23bnfQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieehgdekgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:P-mqXp38E52BRc5Hv_-Yj2EeIpsRoK6ysoe7bM_7O6YV5ryJNOIc8g>
 <xmx:P-mqXtoxudCj3bZiBYPZvyV5_vN88d_f9yunvG9v7lLCc-yIfx8VxA>
 <xmx:P-mqXi4O_g9WBashtNSp7S6_YfSr2V5jQhtK3-PCOR8V9BZTzrh4Pw>
 <xmx:QOmqXqlt0MmCqTlV7I5P-q5IgoxeIENuJNQkCZY8xEdpSCJEaQINiw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A4BA43280060;
 Thu, 30 Apr 2020 11:05:35 -0400 (EDT)
Date: Thu, 30 Apr 2020 17:05:34 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Priit Laes <plaes@plaes.org>
Subject: Re: [PATCH 1/4] clk: sunxi-ng: a10/a20: rewrite init code to a
 platform driver
Message-ID: <20200430150534.kbzfb7utpc7kswlv@gilmour.lan>
References: <20200417221730.555954-1-plaes@plaes.org>
 <20200417221730.555954-2-plaes@plaes.org>
 <20200420124935.asfbgv7envb2af55@gilmour.lan>
 <20200420203228.GA4734@plaes.org>
 <20200429143510.ksi27lok2udtmfas@gilmour.lan>
 <20200430062137.GA32281@plaes.org>
MIME-Version: 1.0
In-Reply-To: <20200430062137.GA32281@plaes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_080540_390540_469B0EBE 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7263296556440107905=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7263296556440107905==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xtai2ger2274pycp"
Content-Disposition: inline


--xtai2ger2274pycp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 30, 2020 at 06:21:37AM +0000, Priit Laes wrote:
> On Wed, Apr 29, 2020 at 04:35:10PM +0200, Maxime Ripard wrote:
> > On Mon, Apr 20, 2020 at 08:32:28PM +0000, Priit Laes wrote:
> > > On Mon, Apr 20, 2020 at 02:49:35PM +0200, Maxime Ripard wrote:
> > > > On Sat, Apr 18, 2020 at 01:17:27AM +0300, Priit Laes wrote:
> > > > > In order to register regmap for sun7i CCU, there needs to be
> > > > > a device structure already bound to the CCU device node.
> > > > >=20
> > > > > Convert the sun4i/sun7i CCU setup to platform driver to use
> > > > > it later as platform device.
> > > > >=20
> > > > > Signed-off-by: Priit Laes <plaes@plaes.org>
> > > >=20
> > > > You can't relly do that though. We have timers that need those cloc=
ks before the
> > > > device model is initialized.
> > >=20
> > > Ok, I'm somewhat lost now... are these the affected timers on sun7i f=
ollowing:
> > > - allwinner,sun4i-a10-timer (timer@1c20c00)
> > > - allwinner,sun7i-a20-hstimer (hstimer@1c60000)
> >=20
> > Yep
> >=20
> > > Any ideas on what approach I could actually use?
> >=20
> > I guess you could keep the CLK_OF_DECLARE registration, and then have a
> > platform_driver probe and register the regmap?
> >=20
>=20
> Thanks this did the trick.
>=20
> > > Also, similar timer dependency would affect then sun6i-a31 and sun9i-=
a80
> > > platforms too...
>=20
> I didn't check this before, but sun9i-a80 CCU is initialized currently via
> platform device. Should it be converted first to clock driver (CLK_OF_DEC=
LARE)?

I guess we could just remove the timer node on the A80. It has never been t=
ested
and never worked if the clock driver is probed through a platform device.

Maxime

--xtai2ger2274pycp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqrpPgAKCRDj7w1vZxhR
xZyFAQCqSDmhn4yTFm8ud90F6phEUSQWgV3icAt09/kyc3T/TQEAmigbqqP2h2Ds
T2DQvJTkIn+f7Aa8y8JYzfr9iLPhsAA=
=Rpgl
-----END PGP SIGNATURE-----

--xtai2ger2274pycp--


--===============7263296556440107905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7263296556440107905==--

