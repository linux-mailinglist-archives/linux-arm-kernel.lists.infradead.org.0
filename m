Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D46CD16A31E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:53:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bFhk25VDiBAUXc5nF9v3IPYK1bWZCygUj5em11x5yH0=; b=Z+UfloBDF2PPAwffhxkSKyZtY
	WkJ1lfRpK8+4erFQgpwv4rr0C1wcSfv5ZwQWUhHCXvJJ1dTWd+5dKtpex4bRDkS2RfeTDSnCGxTj3
	jxwZFcIxed7xFlJfI/VW5/AoTYYw7/kroyh8ldAQBws78SsX/T8Dn6UdhXJICQYdpFES/Cr5xfm0x
	PZnBvVfbL6LNwoMm47qq/OosXfgqHkMLjwO1OXGXjlr1iv+HFYezpe407AtriSR5hbVc1+E4ONhJt
	vWE/XVin2K+yAmj/8JDk3jhSsZQzBShXKzQNY3yneYe9JD6LZiMlnbtCYZwZ993yGykMLtupAVK6q
	AvcaLbd9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6AQB-0007eB-H0; Mon, 24 Feb 2020 09:53:03 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69ua-00044o-Ig
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 09:20:26 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 2A13C213F4;
 Mon, 24 Feb 2020 04:20:22 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:20:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=4FAYsRBkOa26LsnccPdAjqvJIED
 dTNwKyyIBqp33KCo=; b=oQm/TvZrb6E0KKtZjwj4oLmuTwNtRu/ZzfE8hYWtGcp
 Zdlk5Rwp2eM4hzTMgk/zutAqvI5olyTeKBkqKpQqYDxJUrPadyonrEahuzKoYPGt
 BJcPpyZhrhXPO49WwV+BqSSxTHYrJ9F4v8Duld4dARf9Ro9MWfHNOC/+o73uV4hi
 zY2bLJZWQzf8IDygpnMkZsYDSR62WPQiF67k7cJ5nA+5UMHAah92TRUp2Ivy2YM5
 zxvRPRHyhMMxym8nohwPbiicTedXrCBcj8UwUNs2khX6dlUEByH/Fu1Me2znAOT+
 gO4lAXCNzFWw+IheiQrz4ibItuWxp5FIGPDBl063TpQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=4FAYsR
 BkOa26LsnccPdAjqvJIEDdTNwKyyIBqp33KCo=; b=TB1cVtI7pUAdoX37U/vKc+
 Q8DsIeECEz6n+zWjYKz74EGrCWSY3QVqyIh3POnjEmwHUcy++O4DYzdi50bL8w7x
 tekaRk8Xbqj/a3hHrnGNcfA+5s2LZ2ySXvYcRcnIdGnk/8vOCvPJcrEFGpaGeeAD
 1Q10CgytV8KHt0KWHgf/SnHUFVaSQITQThsxN6n9Keo4a9RKIc9m2yzoFsvbbE/P
 fAsfTk0uEwrEMwd4eYzM3C/BQb78eg1Q6cG/OIZdy9ND/MYWP1ww2Rz4UOXWNaqT
 6m79mZj/UEdzzJzLthinl/9cxavc1Ma4vcgDaiFomsGcUOv9kdwZrAsYVskMD+eQ
 ==
X-ME-Sender: <xms:VZVTXivAV4qTGhIgkivrNTDdStEHgW2t2TFf9F9v1LOD1VJzrWvfOQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtgddtfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epmhgvghhouhhsrdgtohhmnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnh
 hordhtvggthh
X-ME-Proxy: <xmx:VZVTXrtAzwF5qL7tKYhe4jpESrv0JcEiS4SRjdfhNF_90G2USVAnAw>
 <xmx:VZVTXqtJstnCcUjycgKQ665U69xBH6prjVnV3GQAYXHzJ_Q9LEV-wQ>
 <xmx:VZVTXr6ATPbOEfpWow4nNkbdeUAZAxBYlWTrn5sV6vvnpq1CKgUfJQ>
 <xmx:VpVTXknoqFgA-zhEBQqERw_FNEFnXT1zmzU6JVrsYQoSIJkpUdDMkw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4C12E3060F9B;
 Mon, 24 Feb 2020 04:20:21 -0500 (EST)
Date: Mon, 24 Feb 2020 10:20:20 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] ARM: dts: sun8i-a83t: Add thermal trip points/cooling maps
Message-ID: <20200224092020.xxru2rkhrywonrx7@gilmour.lan>
References: <20200222214039.209426-1-megous@megous.com>
 <CAGb2v647zKVrDvnHeLvwNPEZLX+yTgPq-x7MJkp9=duzkQN3mw@mail.gmail.com>
 <20200223101050.lqe5uegpmoyqvna6@core.my.home>
MIME-Version: 1.0
In-Reply-To: <20200223101050.lqe5uegpmoyqvna6@core.my.home>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_012024_790790_CAB653CC 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: multipart/mixed; boundary="===============1886737336145973255=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1886737336145973255==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2s6qec42w4cbjxw2"
Content-Disposition: inline


--2s6qec42w4cbjxw2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 23, 2020 at 11:10:50AM +0100, Ond=C5=99ej Jirman wrote:
> Hello,
>
> On Sun, Feb 23, 2020 at 11:29:07AM +0800, Chen-Yu Tsai wrote:
> > Hi,
> >
> > On Sun, Feb 23, 2020 at 5:40 AM Ondrej Jirman <megous@megous.com> wrote:
> > >
> > > This enables passive cooling by down-regulating CPU voltage
> > > and frequency.
> >
> > Please state for the record how the trip points were derived. Were they=
 from
> > the BSP? Or the user manual?
>
> The values are taken from the BSP for A83T:
>
> https://megous.com/git/linux/tree/drivers/thermal/sunxi-temperature.c?h=
=3Da83t-3.4-bsp-tbs-a711#n747
>
> The datasheet only mentions recommended Ta (ambient operating temperature=
) range
> -20 to +70=C2=B0C. So die voltages will be larger than that. I guess that=
 roughly
> matches the BSP values.

Can you put that in the commit log?

Thanks!
Maxime

--2s6qec42w4cbjxw2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlOVVAAKCRDj7w1vZxhR
xX3uAP9BHDiExokGZnYdS2Hnvg/6BxQA+lI33CwXBcAtyDDNygD9Hd30W+Yao0Js
DAIsy3WRebkWFb2c2O+NCt21wer90gI=
=pwbG
-----END PGP SIGNATURE-----

--2s6qec42w4cbjxw2--


--===============1886737336145973255==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1886737336145973255==--

