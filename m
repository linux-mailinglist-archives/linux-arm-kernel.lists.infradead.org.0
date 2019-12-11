Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E58A11A6A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:20:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yrdCi8HcChg6wV/LwRVB72Vi8JA5/A33aul+YPkSD2k=; b=Q0MWK8ixvCJwwOTONkFYbIQwf
	OrhWNr2qAuObu8MZiIbleqxdA/fWunSXRUJW2i6KnHhhtZU/6V+taOXz++3FLQCCIlaDlXP/FPTB5
	1+mb7S9HjEb+ZIM0HN8B38Kvwjx/SHjVT3cs46jnO41ML9TYC52IxASuetaHroqQdvVXpj4Ek5EL0
	/zpi5uYtoqdtyTDIKtLCS1YLgUqtilOVqE1oUCYBr1PJuJcYQAYfMluUtv+d22dD3RKnEahYdVzs4
	tqP7MTxoukLmCXTe6KoR8/PQU0VUP9wSpZ37viuK0j19xh+H1266tYNp/vjtdiot0uVeFdQCeU+wA
	fJahA5L0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyAe-0005BD-HA; Wed, 11 Dec 2019 09:20:36 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyAT-0005AN-LM
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:20:27 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 9DBEE222DC;
 Wed, 11 Dec 2019 04:20:22 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 11 Dec 2019 04:20:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=ySBDIdCmN4b66v2rt406sMgYC+s
 60FnStsfbyOUEeeg=; b=lK3T3o0giemtq3YQD+fdy6n4+Y/JbEWxUJb9bw8gReN
 n5F4wacWdJPv+fNbXUmgQinwkM9DbNryV6OY6tdKGxVpHYUdXtafvkKVXWXghBi5
 +AjSUVkQi9IMtFpRpiGiWnvlg3aQw/IMICrFDHqLhVgrYDMyC8CzJxglgzzrRxX+
 U844BRkkEdHObMkqKEmcu6GjwpRofqQ1Ij2zk3JtvEkIis/R67mWvhgTTm2aSWck
 +xV2O5CAhrMxO4Nrf5Vx89Jg3/HSP+8oqcyOi9o2Z4w8xRymjKJWCPTYlXREzRhx
 ASEsNnwajSU36b8S1oABFe7b3PLasijc5QjFGZIck1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=ySBDId
 CmN4b66v2rt406sMgYC+s60FnStsfbyOUEeeg=; b=i8CiQ1AekbDbtnMa1MAQlH
 jJNEnytU+axw0liKJijffIqf5hg3KCBDAiDwHWXp15UBNzTV8Yn2EdYe2GzQwXzU
 6RJ+SRSP+nANzWN86Kb+sssedgXVhJ0Jws4cNLnE41gbrLXvettTicKNcB0Ij3Mo
 eE1J8BWjhGab3l1QQO1o0QT+BRoHUiTkPNob8GXqJaDOypWGy431TtehIBz0SdiQ
 4KskTGurDGlcPoDI0eluej4hEY1d0H1MfZwva/qYQWe/ZP+s2eQqdZE/rxnxJarJ
 37NE5cRITLcDBtZA7PgGHV9pCN35ZrcbabQ7xnwzZpdRqwhNc6luWaOOMHBgdMUw
 ==
X-ME-Sender: <xms:07TwXUWgUUFvb1atOGXCsPcKBwfuNGuUrQlyiAVeD59E5yyHpMOrbw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudelgedguddvfecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkpheple
 dtrdekledrieekrdejieenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegt
 vghrnhhordhtvggthhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:07TwXdhN2bVbCV7eHGBM5QkkmlxgQ1jPByWumAuN-sSI-u70vGTX6w>
 <xmx:07TwXQhImlbXa9AqY88BnXKuo4po4AT1C-yf1ChICA5zl8C8NeOBCQ>
 <xmx:07TwXTxRgR3W0QjStv0V5nLeYZsd66UbpuwfPYpi01bmrGLaXjJ_hw>
 <xmx:1rTwXT2rlkpc4W9MzzJ5PJkn4VGknYNT8XaJngsRlGFujWfsGf2LYg>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1A7E88005B;
 Wed, 11 Dec 2019 04:20:19 -0500 (EST)
Date: Wed, 11 Dec 2019 10:20:16 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] dt-bindings: pwm: allwinner: Fix missing header in H6
 example
Message-ID: <20191211092016.2hhjw6mn7iefupql@gilmour.lan>
References: <20191210174710.10649-1-peron.clem@gmail.com>
 <20191211080633.a6yzwbxi7fcmislp@gilmour.lan>
 <CAGb2v66mWgDKyZEWVVYqq5McOaYmiY0PSP7iXE8TBtVZv03u1Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v66mWgDKyZEWVVYqq5McOaYmiY0PSP7iXE8TBtVZv03u1Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_012026_203101_DA93D608 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1918865554388776744=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1918865554388776744==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tt72ar2obv6t5rpi"
Content-Disposition: inline


--tt72ar2obv6t5rpi
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 11, 2019 at 04:33:19PM +0800, Chen-Yu Tsai wrote:
> On Wed, Dec 11, 2019 at 4:06 PM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > On Tue, Dec 10, 2019 at 06:47:10PM +0100, Cl=E9ment P=E9ron wrote:
> > > Latest linux-next doesn't build due to the following error:
> > >
> > > Error: Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.=
example.dts:35.37-38
> > > syntax error
> > > FATAL ERROR: Unable to parse input tree
> > > make[1]: *** [Documentation/devicetree/bindings/pwm/allwinner,sun4i-a=
10-pwm.example.dt.yaml]
> > > Error 1
> > >
> > > This is due to missing header in the device-tree yaml example.
> > >
> > > Fix this by adding the missing headers.
> > >
> > > Fixes: 4ee929b3f08e ("dt-bindings: pwm: allwinner: Add H6 PWM descrip=
tion")
> > > Reported-by: Rob Herring <robh+dt@kernel.org>
> > > Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> >
> > Applied, thanks!
> > Maxime
>
> Maybe squash it instead? :)

Indeed, I just did.

Thanks!
Maxime

--tt72ar2obv6t5rpi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfC00AAKCRDj7w1vZxhR
xaW5AQD69VlsGmpCynvOIn/zNXum5pWnY3SEEbx2GLYyZPdLZQD/TXS6GjJD2+MJ
MiEEHgbac/j7/sn/oCxDjRN5XAUaoQg=
=9JT0
-----END PGP SIGNATURE-----

--tt72ar2obv6t5rpi--


--===============1918865554388776744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1918865554388776744==--

