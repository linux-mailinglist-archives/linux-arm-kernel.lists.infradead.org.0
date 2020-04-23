Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B39D41B588F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 11:49:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qigtneluyBJLw6h2gj1uYmGD3TzbuXTmIyB4ctwsA88=; b=cCLnSviZK1NhGjPV1cFh9Xcxn
	/jsRripNgkf9psxH4J6z6tpaM9scaaW79dOoRb/7+smFQAOshGrvRgUGAOuZFf/1o4ksIuP2CzWqY
	Z47rw7IxuJLqgRWImSh3c8VGx7Iq9ry12aROs0z0Pt0iN6FZXluWiHHiHZR6sbsJMc/YHvQGeb2Vt
	ctLJzf5ePWRMoJBKX3pqfKSYfw4+Ya3pPvAwB666iSLrlTtvOsk3UjxV18Vru7YbhDJvsXH4N87p7
	bHu2rX1YcBFOtz8m3CNkU6GV0COr4Ml1HJsydBjcBf/ndG2rD9XikV+ZpNgCJMN63p6XUhq3RrDnZ
	Dh29jDf7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRYUQ-0008AU-Rf; Thu, 23 Apr 2020 09:49:50 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRYUJ-00089x-4d
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 09:49:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 35EA7706;
 Thu, 23 Apr 2020 05:49:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 23 Apr 2020 05:49:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=G2jAMqcEuXOVO6A3EqfT0UwmQC6
 hpWGRqcPB7zT18FI=; b=XR0NLN0Tc/bjTcDKyiBF9Bi1VseQHjJpKT+6m1IgsVu
 MQZAgGlbV9FvUCcLjsHp5d35vLvrOnamQUu/3Eb36CdfTZQLc36FJJ4pPVEXtL6t
 6Zv/vbt2Naz/+iEcj8kkzvMhWHJOfiTWgP2+IcC07xWjegEikYqIbgOpbaj1LIEI
 JmQgXU5GegRyAMZ548/Da56pZ2lWNV47Th9VxZ0Vkou83BSj6zwGkw3j7Ya3dTRY
 YOzA1dtVGsMUxbHnpiUnt4hwUQfwY1PsMUpImNnjcsqENhN+l0qp/AQ9/LY/J1VD
 zRCBTYQDqzm9A9tOYoaft+5c6fp72A6IBbY7XCpDJJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=G2jAMq
 cEuXOVO6A3EqfT0UwmQC6hpWGRqcPB7zT18FI=; b=3e+wNdrI89BclXcsWi0yhS
 4TIADRP45sSloOBv3wF5tHrunYVaYBHIMt3JeeITEOiA7KYoOXaI3SJ9WtJYqWWV
 St9BLQppu755QRVLqFpOOnVURycMLNVaxv4SOMBa2ZUECvdikGgivHLfRxfYEbTD
 /Emb4r1VR22MqWnWi3ygnXBXZAkDxVAxKQn9f4WkL5OgF2VcaYkr4yc480Tti+yd
 W723bB/diLFTD0z/xN0lFGZSX4c7yPeobHbQTNC5ho56m9g4zFAXu3XOxCUTTyzz
 9IoijklLHunQeUj5MAsRi9syt28tyMtEVvusPChYWlmbc7YUyfAsjx8+maDzPuyA
 ==
X-ME-Sender: <xms:tWShXt5yZfSr4sDijqtNTkelGzbyauEJucaos-_5CicLmz6mJmibeA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeelgddvudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:tWShXnNJuF5ko7bAbCjsHgVJjljSW5m_uebp-IJIBzhRsfO8krEUeA>
 <xmx:tWShXnOhd2XX_xUwqmdKD6eLotpNM9O6dSxfbVptGgx5p78WpPv9PQ>
 <xmx:tWShXn-vlBfu8TwkRxKqOHllAvK7ufBlG0DQw9gJda16gd8ycoAhIA>
 <xmx:tWShXsbUEdZoZlKd9rJm9PTD_r1bp2igdvkr7naqHFlyvJ2Gw-Ywrw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 13F053280064;
 Thu, 23 Apr 2020 05:49:40 -0400 (EDT)
Date: Thu, 23 Apr 2020 11:49:39 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Disable SPDIF by default
Message-ID: <20200423094939.os74dohwkdoig4eq@gilmour.lan>
References: <20200422041502.7497-1-samuel@sholland.org>
 <20200422151616.httmhmo2tbd4m4eu@gilmour.lan>
 <b554ea70-16da-1637-d349-db51dddcf95b@sholland.org>
MIME-Version: 1.0
In-Reply-To: <b554ea70-16da-1637-d349-db51dddcf95b@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_024943_215596_1D28683F 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1058855313140818803=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1058855313140818803==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qhzqxzvlhlzjufin"
Content-Disposition: inline


--qhzqxzvlhlzjufin
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 22, 2020 at 06:50:54PM -0500, Samuel Holland wrote:
> Maxime,
>=20
> On 4/22/20 10:16 AM, Maxime Ripard wrote:
> > On Tue, Apr 21, 2020 at 11:15:02PM -0500, Samuel Holland wrote:
> >> As of v5.7-rc2, Linux now prints the following message at boot:
> >>
> >>   [   33.848525] platform sound_spdif: deferred probe pending
> >>
> >> This is because &sound_spdif is waiting on its DAI link component
> >> &spdif to probe, but &spdif is disabled in the DTS. Disable the
> >> audio card as well to match.
> >>
> >> Signed-off-by: Samuel Holland <samuel@sholland.org>
> >=20
> > The patch looks good, but don't we have some boards with SPDIF enabled =
that
> > should be modified accordingly?
>=20
> I don't see any in-tree. The only A64 DTS that references &spdif at all is
> sun50i-a64-pine64.dts, which explicitly disables it:
>=20
> 	/* On Euler connector */
> 	&spdif {
>   		status =3D "disabled";
> 	};
>=20
> I'm leaning toward agreeing with Clement that the sound_spdif node (and a=
lso
> spdif_out) should be removed altogether from the A64 DTSI.

Yeah, I agree, it's pretty much what we've been doing in other SoCs. Especi=
ally
if we don't have any DT in-tree using it, we don't really have any incentiv=
e to
make it common.

Maxime

--qhzqxzvlhlzjufin
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqFkswAKCRDj7w1vZxhR
xcXYAP0YCJVCZ13NxvfRPVD96Em/vCf6tbVNq2xSDRxJvc/HXgEArMdDscxqBjIi
+IipThGZM45abULaOWDYaEdv6VvqOwQ=
=5Z/9
-----END PGP SIGNATURE-----

--qhzqxzvlhlzjufin--


--===============1058855313140818803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1058855313140818803==--

