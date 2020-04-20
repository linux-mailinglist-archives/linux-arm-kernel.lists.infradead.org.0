Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CF31B0C98
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:28:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eNQhlUhfjuQs7BJUna8K0IvWYy25HEU52KCfh5g7OJM=; b=lRXXITY+/YVshbff1IXVL8dMg
	llZcTDNEpM7oTsZGdrrJAfWmMo8witfXM+vLfHtqDh+hyLpw9FNQe1KxEzWTMSO9FknM7ZZSxwK4E
	hRIz2WXarES5V0RqHTRMJYU00Zoy7RoknscMR7cRcXwPuaWt6lTA8GGAggCBTAjVJv4cpPvlO7Bcq
	/KiAxzhxdMQJTnK0wmBKNM0adKcYuZqVn+caXEQwu4WteujttTei2lTMtny0kqhDhVKLhBnl6rhg5
	YtokoyNpPMJRZkM2Tu2IOP1FV8yiKF/5ALTnFqcejOWeAjXbOH0r3SA/os1xSJ+6xXK0SzNe6URK9
	wCzF2sZrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWSy-0002XT-L6; Mon, 20 Apr 2020 13:28:04 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWSr-0002X1-8q
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:27:58 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 4FCB253A;
 Mon, 20 Apr 2020 09:27:52 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 20 Apr 2020 09:27:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=C1acu8SOYXvfCrT29OikkU8tqdr
 tQ88j/dfAu0WvkG0=; b=vvkimXxXCrJAXaUZFh9Qb2mhAU8anR4eWyvNHVUjkKv
 3ffCHDg1hncrLGuYgwm6/cX6y+RLcBQL8Prwoqgj/UWGvMci1Nb2JrI6vy1Bs6lx
 jouwojDVTdWMS+CPS6NlcJeJI/TnoxPyXecl76tlAf4B5e6k+WtyqJe2vF0gkruj
 7207wqQ02t4nPmOt90NkJ6kTI/vn9D1SjprMi7T/rgjTpRMUomj2bOaFbz0lyJdz
 IJ69d4CPNjF+J/Gkz5R6GSYJvfjqELm1xxxC/Kgsu/bVXFKAFrLnOIorA2PE/d80
 pxCTb0/KtBY5WGp4nrpej8qp/dtGxr2nWck8F6Guo7w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=C1acu8
 SOYXvfCrT29OikkU8tqdrtQ88j/dfAu0WvkG0=; b=kBCxFHsqpKac7qMEIGr8Fm
 y2f+bDdBSXx9PTzgT9s8OZDuCZ853MVb9qP2HKpSb3lkDuWg1KyJJrCpjdfbfKEt
 xL5GNn0OciaSIEuoXwTAt2D/qWDnSzZ/Lo59AlXZBufnucpK4R0gy1V3aFoHjyE1
 A7ERK5F9veSaLKtFlmqnm5gsur9p/2SVC6TX/j2+Fntui/d9cFcVIrUF6cr6oIkN
 CGr1j3nBjhvn7rq8IEUCx2kuOWAwhHKB0S0BbC6KHcn7NfIR3VvIQ63mhKi+iD1a
 jdolVonx84aakDsW7s43GQPmF2XeY+GuOiw/+z3/wvdFpwd/C10TptLyVrZaglHg
 ==
X-ME-Sender: <xms:UqOdXhtx8HTOSqU3DX4z4eehe4Fw8qON_pPgj_3zXkeM2pOVt9BqRA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeefgdeigecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:UqOdXokU1CLUum6CNOsVRCBwnMltaVCJ6DAU3R_-SX26_g3n4AgjgQ>
 <xmx:UqOdXvUrA9MtKTCZJ0LlfvgJR9BR07kEVKUb6G-5uJ0yctdLLeZDOA>
 <xmx:UqOdXsvrVzdoOLrptwf2Vd-YLiAqIRQhdzR4IG56CPqux0EVW44PgQ>
 <xmx:V6OdXsUhYIqsRhlW-qjcISecj48hamvzoL52E7GJTLe7P8eetin5HQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 778AE3065C16;
 Mon, 20 Apr 2020 09:27:46 -0400 (EDT)
Date: Mon, 20 Apr 2020 15:27:45 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH] arm64: dts: allwinner: sun50i-a64: Add missing
 address/size-cells
Message-ID: <20200420132745.7sa4zf2c2xp7ffrc@gilmour.lan>
References: <20200420103113.577969-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20200420103113.577969-1-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_062757_349075_CD020B1D 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 open list <linux-kernel@vger.kernel.org>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1813097391443160879=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1813097391443160879==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="knpeiqpl5v5uzrh4"
Content-Disposition: inline


--knpeiqpl5v5uzrh4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 20, 2020 at 12:31:13PM +0200, Ondrej Jirman wrote:
> The binding specifies #address-cells and #size-cells should be present.
> Without them present, dtc issues a warning because default for
> #address-cells seems to be <2>:
>=20
> arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1108.4-52:
>   Warning (dma_ranges_format):
>     /soc/dram-controller@1c62000:dma-ranges:
>     "dma-ranges" property has invalid length (12 bytes)
>     (parent #address-cells =3D=3D 1, child #address-cells =3D=3D 2,
>     #size-cells =3D=3D 1)
>=20
> mbus #address-cells should be 1.
>=20
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Applied, thanks

Maxime

--knpeiqpl5v5uzrh4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXp2jUQAKCRDj7w1vZxhR
xTOZAQDH2dxXT4rG7cY/ZynLPx95CqmiIV9TpnSMdmyts6jejgD+L7nEB36P07Yi
F2c44pcXcdYfUaXsokS1a2/3IdEFHgM=
=PFLR
-----END PGP SIGNATURE-----

--knpeiqpl5v5uzrh4--


--===============1813097391443160879==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1813097391443160879==--

