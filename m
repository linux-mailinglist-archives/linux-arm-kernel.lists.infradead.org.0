Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8DA16BCED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:04:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iJDqblmlFxRYgxhjPHfLTsTiup33wXpeZ6uVVi49yrc=; b=AY5dSULn9ZygnY6eL1FKIlD6G
	YSMHnwNujgSGUP2Kxtz5smg4VoMtExWdk/gaE3k1Yba29flCOEYq+0Cwo4h3Oa6eESsLbvbQWpJO0
	r33+hYz/aEAb4r6JK5EYyhIHv8PuA1fqUaNOOjX2q4912E3d4o6/csZw8zj00bu3AVT98R9lJMcDi
	4A/kOWnCQJrclmxytKKIOLPW7WOreMleN74hdmaysYi8saypZ9PS+LHfpwprkY/UtmBCurnXy9VEo
	UeUDrGx6IO9P1EqT7oBivTdSIDW+tQ0COZqL1Q59VcT7At5V52H9zFd1tRSOR2rRZICntiIdUZsed
	B+MktyMPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6W95-0007aY-3z; Tue, 25 Feb 2020 09:04:51 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6W8s-0007XP-Kc
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 09:04:40 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id EF26521EBC;
 Tue, 25 Feb 2020 04:04:37 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Tue, 25 Feb 2020 04:04:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=2uAmNfXp/nheDUf7m8Ia1NiqBIQ
 3V0NGUD9iv59hcp4=; b=mNh/y5Q5V+86oXAGiuYeZGyl+cz1NeKGf87d3IWOPuX
 1mcIvKqtuB54mFf+guwXj3Vzgd5tYu3z68DpW3+kvlW8AR0hM6J75bWzsRekEvzi
 honPhHYUQ4R1cODry3KIGz7ZT3eVBgY4I2apfXVs+dqqyFlJvuCsye6ETz8RQjRS
 ZYkqPzRFrBckAqYJ4Pzl3uNNE1rggJrbtVYn/KjDws9UadCnlRSfiq30VDZhHNM+
 UogALCSNTRN2cLQI/+RZ1r4lsfTomU9Fhbuni03Jg/4gnUQP1nUmAOOZenO2vzRP
 RpjyJ8H/zBVhZ/Ms2HbeWjGiccHM2dVJojOqZB/8bjw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=2uAmNf
 Xp/nheDUf7m8Ia1NiqBIQ3V0NGUD9iv59hcp4=; b=dfnhGt4viOhr0msPYsbcQG
 xXsa8gS83w1IXfAHqqr30p+DTcfYz05K3XdnKwWkXEsg8w63OCoHa6ita2hSuEjp
 XRQLaxiOYciSnwcJLdUyqBOlPaZtepjuBUO9BXEZaZUZWOyPVEdZY7o7QGdA/qC5
 z+Pl9xhAV4vU8tnYIvcxvBjjZOGbx43bpGFh9+40qg0z0bbgDYOoJbZVTzstcnXU
 W6IFFOq6ONzwSZsi7VHJD7fZ0G/04Z3t29cnyAxj3rujrc2uZg9xHTI2BfU58vv8
 UUj7fTvVlOdcCU34lD15/gnFh927GboKnb9B9AUHBAwP8DSgpo0Hsagx3EIEOT2A
 ==
X-ME-Sender: <xms:JeNUXrs5YgpmXGtb0xXXAElj8Qk55Y-aAOiJRDgrrxKwpEUASQ5OKQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledugdduvdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:JeNUXvZ4yM6zyMkpw137PUbeSSFlcpLfIgQ78HK8f2cDck0hEjS9vg>
 <xmx:JeNUXiLsniPtUUmOpwjwEUfDddgf_R7tgkCa5c-ZVdEUAtfmulLsrA>
 <xmx:JeNUXhsDmPiSHHKx-N2khh8XQIFw3dEQR96EYtNT9Srqe8lBeR6uCg>
 <xmx:JeNUXvtgDT0RHboTZzj-O4yTQb28Xc-3HjQYNfFV54YyRc92pINBtQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 376A33060F09;
 Tue, 25 Feb 2020 04:04:37 -0500 (EST)
Date: Tue, 25 Feb 2020 10:04:35 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH v2] ARM: dts: sun8i-h3: Add thermal trip points/cooling
 maps
Message-ID: <20200225090435.63licyt55thlievi@gilmour.lan>
References: <20200224165446.334712-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20200224165446.334712-1-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_010438_814867_E17CD1C5 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 open list <linux-kernel@vger.kernel.org>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7828624573041558096=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7828624573041558096==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ef37cxbs77ojiiit"
Content-Disposition: inline


--ef37cxbs77ojiiit
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 24, 2020 at 05:54:46PM +0100, Ondrej Jirman wrote:
> This enables passive cooling by down-regulating CPU voltage
> and frequency.
>
> For trip points, I used a slightly lowered values from the BSP
> code. The critical temperature of 110=B0C from BSP code seemed
> like a lot, so I rounded it off to 100=B0C.
>
> The critical trip point value is 30=B0C above the maximum recommended
> ambient temperature (70=B0C) for the SoC from the datasheet, so there's
> some headroom even at such a high ambient temperature.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Applied, thanks

Maxime

--ef37cxbs77ojiiit
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHQEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlTjIwAKCRDj7w1vZxhR
xdrDAPiY7uUqle4oy7ZfhyvwkJMp0IoCHkzpKm/956C+OumXAQCLjcgwO1IKcKvQ
+/R56Jp7e0RC+a7+tovDO/hPn153Dg==
=vEfK
-----END PGP SIGNATURE-----

--ef37cxbs77ojiiit--


--===============7828624573041558096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7828624573041558096==--

