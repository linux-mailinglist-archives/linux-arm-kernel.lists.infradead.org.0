Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 774451276EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 09:01:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/a+JDY4PUgEVUvvMVnRA6Sa5GCjbePR26Is+FIWalx4=; b=CT6mBzzv7lLXHqK9WAHWIBLcN
	da0Ao0IgKQsQXy0ve4fQEIdNQ4rs4jjzhOPrKR3rm/35VTBbIKfdHuplmQDxx8y8ieaTaDHPKna0i
	/42xTTEd54vDDG/6Q5ZuHpwaGIMk9S31BKzPAkLIDfFPUgpGsOSwe64F9xg0Rq31AsE4VxrqS3rSe
	rgZtzRlAPpUyGO3KcTHuR6WI3sJND8241swYgGgibytBhQyyMrkDxpA3MzRL4imqz26ZxvKURVR1g
	PaFg0M8npAPuYn68zrPqxJ9sbRsG5NfGrqGanxqOYca6qzcADER6yMDz8X3U9sAYk3FvccbqENtnC
	EqKvvYxeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiDEE-0002OG-Aa; Fri, 20 Dec 2019 08:01:42 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiDE5-0002Nk-8f
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 08:01:34 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 2DC642244E;
 Fri, 20 Dec 2019 03:01:30 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 20 Dec 2019 03:01:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=KpBc6GfbX1/MrSfvmp8bg2ZrQnJ
 OQGQjI1+srewTBrI=; b=H05yoR9ZlAY6/ezsRI12Yp3DQoKIOlvOsIdBJ6tUByL
 TnJJP8+1q/pCO94wqjJyhA/uzQrcRIoi296eniDeJqkWyzcaywpo3fdJPh05lNOh
 SlE4wF9Dd6QQn49IAn9LXtTk4OF3bEa2kLDIfaNddtzjCJPyvAyjI1iSSKL6IvOO
 +0Tb1wGJggUN0LP5pfBLBDx+wl5Jv6FUgmwHA5u6odpPC8tt5eTa5c4JdMiuxWwa
 xTT6766BWvzWqgz0+qVzB1E62xH8PrP+NtuCTGsF4/RneIaBiu5uR0oQvJZvXFEV
 IEXouvjimdhFY1BaU6q7sfZWy9Rj8kuE0sVJdNoU4TA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=KpBc6G
 fbX1/MrSfvmp8bg2ZrQnJOQGQjI1+srewTBrI=; b=AZrYOZ9YDj0A/S2CaXbQ1a
 33Quv0riZbJW8zfimKAMa/H8y5KjQklJOz35Dd9YPn+ZT39DLvwknGHHqXq+zw7L
 UMz2iwQkfkZesQ9mWd+1DpK1KZwxfTvhEsoZhackXzGma9jTPDSG96QG/WlC9q6j
 6HUwraAGtETxhvzgyT7Q/BTcbud7vBLiPfD3bmhR0IJNvcKPxaHPEGUnSf96ejNG
 RbrdVXzyh1UZsLNZHEwI09Pev+PdNaufR2/KrDWVC0VVYR5Dlj4Me4CgoIt1WiBq
 9gEpXFVBk6VXFNHKYWE3SzUtTu1LSHGVSJw0zUQvsreVfw1rhW09iihJKQTCdjnQ
 ==
X-ME-Sender: <xms:2X_8XTR-70p5wNCVqogT8xZnPoK_5pbxIfnXeSMuFc0X2mpBu2QP-g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdduvddgudduudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtd
 erredttddvnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegt
 vghrnhhordhtvggthheqnecukfhppeeltddrkeelrdeikedrjeeinecurfgrrhgrmhepmh
 grihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghhnecuvehluhhsthgvrhfu
 ihiivgeptd
X-ME-Proxy: <xmx:2X_8XX_EKIEFmzBRBrf3AbjrCVsRrRfOwGl_NI72O1SaCGhJ2LJ6QQ>
 <xmx:2X_8XU_gU2Ga_noMdJOMAyBFwgC03bJwwslTxXE7oc9RCEBDXS2d3Q>
 <xmx:2X_8Xdd_2ZkJWcL1HmoKcIJ6yh1na5CrsiHZV5NqUdvCgNXuykwT0w>
 <xmx:2n_8XSkNOXSLs_unTqj7SvoLzjRD7m6evg_ylz9sRnMp5o740kkNeA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 183AE80062;
 Fri, 20 Dec 2019 03:01:28 -0500 (EST)
Date: Fri, 20 Dec 2019 09:01:27 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 4/5] ARM: dts: sun8i: nanopi-duo2: Fix GPIO regulator
 state array
Message-ID: <20191220080127.fo2zjxgg237dxmnh@gilmour.lan>
References: <20191219091539.948530-1-maxime@cerno.tech>
 <20191219091539.948530-4-maxime@cerno.tech>
 <CAGb2v65+gakx9HA1vzUKHET17YYW+aoKJA6h1Ot-SmBDMHEEUQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v65+gakx9HA1vzUKHET17YYW+aoKJA6h1Ot-SmBDMHEEUQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_000133_641377_3B582A28 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7310583588520342411=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7310583588520342411==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zgdzqronlqpjclm6"
Content-Disposition: inline


--zgdzqronlqpjclm6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Dec 19, 2019 at 11:19:37PM +0800, Chen-Yu Tsai wrote:
> On Thu, Dec 19, 2019 at 5:15 PM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > Even though it translates to the same thing down to the binary level, we
> > should have an array of 2 number cells to describe each voltage state,
> > which in turns create a validation warning.
> >
> > Let's fix this.
> >
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>
> Acked-by: Chen-Yu Tsai <wens@csie.org>
>
> But,
>
> > ---
> >  arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts b/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
> > index c73f59900975..6b149271ef13 100644
> > --- a/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
> > +++ b/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
> > @@ -60,8 +60,7 @@
> >                 enable-gpio = <&r_pio 0 8 GPIO_ACTIVE_HIGH>; /* PL8 */
> >                 gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
> >                 gpios-states = <0x1>;
> > -               states = <1100000 0x0
> > -                         1300000 0x1>;
> > +               states = <1100000 0>, <1300000 1>;
>
> I would keep the table like layout.

The one on a single line is the one we have on all the other boards
with regulator-gpio, so if we want to fix it we should fix all of
them.

I've applied the 5 patches for now

Maxime

--zgdzqronlqpjclm6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfx/1wAKCRDj7w1vZxhR
xZXvAP9G4YM2Xqhpv/DP5SgCcxAACHv0+djXUVIY1pRt+JiPkwD/S+PufhtyBH6z
CZj7I2NyOGO7aSbK5jg0SVWRCzqb4gk=
=/2QI
-----END PGP SIGNATURE-----

--zgdzqronlqpjclm6--


--===============7310583588520342411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7310583588520342411==--

