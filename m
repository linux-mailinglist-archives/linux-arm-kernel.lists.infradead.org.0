Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6A020081B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 13:53:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EV84dcilr752PQiJFbtJiZg/OYbw/9TBsUbcHOS9lgk=; b=oU81ITAd/3nSiMKQruuPA8bu8
	czGoY7nsFd0wCeD1Jfu6pmQdaMAgKmANxpObuwY5YgoZtZBsqTCsNdA5Vg0osvksvjmd160OPw+p7
	q7yLtQH9mJLf8sYOW4bhx96mdoOTm6D27/OK+T203mTVvWh7KTz5x1cjQgqjvElQiMO2xRGsBCyP5
	wTHFJCerG0xYeFUpsJYO0JgHWnTC2QQz8jvxZUgBS5CpM2IUqbNSFE5cKrODFgyfyVAwdNXVbjW4R
	0fthOBlPJzl/Lm9HRvr5v7us50mgnVn9NZXYRnk0DcPuX8qE0PZ8dgxB5VxGUY7eB/xu8T0p0darI
	/NUDxlI3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFaG-0006X9-Nl; Fri, 19 Jun 2020 11:53:24 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFa8-0006Vo-Cp; Fri, 19 Jun 2020 11:53:17 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 19396646;
 Fri, 19 Jun 2020 07:53:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 19 Jun 2020 07:53:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=sfZjp4sTM7Emq7BJU/T6vVdzlnq
 Wh7zLSYAr0LXmurU=; b=Bi02m5qxN12oOMeaCIVRKncESB+L6KQJ6/NkF89pjHa
 mCeF40JplX5dXjeju9oRLJr3Pe7SICJGBB62jncNQq22XjG9cleoMtOaqC8ARa2e
 /XiCObvXQluyrR8YpwAwNasKpJc4o9i/DyYfCtvoAqdsWfm948cPWtujw7JWyVgx
 IabW3PLrBoMax/zyZW80zm4lzi+Ff3nL/CSNeAU9kHNwAgn8mI/vv6LTXB8X67Ds
 F5CrVECVgG1Lrfr/aysfBzS7Kh9ls2H2/5lbBjIxIze+mnvLV0KCRMIkAVt02wLE
 +SYQZwfUTDmBMAme/C1gyG9bvGjggu6O/4Mia78ZxAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=sfZjp4
 sTM7Emq7BJU/T6vVdzlnqWh7zLSYAr0LXmurU=; b=asY7KNSAY43aIaaGnCWA5y
 EnjF17HAsaDdkcgKxX0NQQZEV+euzBpszSdepZ3CEA1g6tRjEJkDnyqt3esnYQ0q
 8+u9f3Zer6Kxqnuk3pb8ntTDLLnsod/8CpYZTrrjImAvDgNBj+lKTlKi8F/k+Xlo
 ymnd5P75eM3QPOFu0UIZoJaKao4z8GKAEx9v6FC+yq+dblElxQAsr6EK40Kh0jv/
 Nu18tbP8WT2cq6MnvURI4x0nilISzz5oaZyWru7hTAXu8cmZQZ69Ik/RFhyiUzJj
 3W5qYla6EpfhmdngxWc3fVp4XmZPO9J+vMAQlhi3ukKBU5EHZhkGJVEDKCe5GCIA
 ==
X-ME-Sender: <xms:GafsXuQL47X7GVOoFtSjMPe2wqlYpcwCNLMV7H3-3EUKpfNCQgejjw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudejiedggeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:GafsXjwEgWS4OeXYVnHVblrtYkZU7a2cwFfyIsVNgZ2PelPF5v6XXA>
 <xmx:GafsXr0NbZs2qvaGGxqC1oHFnMg_0BMX_4LPMqPtIBlzAVFHitAnlg>
 <xmx:GafsXqAT5vx_GVXX0GZBe3MF1U5qxxjkOVn_YtvjL6iQHcDTC5hQpw>
 <xmx:IqfsXqoT0jbODuadnCRXsDleS90AgOvDfg5Om2Nx9hyBvVkg_8A6TU7S39k>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5A4273280059;
 Fri, 19 Jun 2020 07:52:57 -0400 (EDT)
Date: Fri, 19 Jun 2020 13:52:55 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v5 00/27] clk: bcm: rpi: Add support for BCM2711 firmware
 clocks
Message-ID: <20200619115255.6pk5xb42b5ol7bk4@gilmour.lan>
References: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
 <159255945796.62212.5838238989498858379@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
In-Reply-To: <159255945796.62212.5838238989498858379@swboyd.mtv.corp.google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_045316_655846_DD495229 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Mike Turquette <mturquette@baylibre.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6104538273415496787=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6104538273415496787==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ntaccarc64fykhfj"
Content-Disposition: inline


--ntaccarc64fykhfj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Stephen,

On Fri, Jun 19, 2020 at 02:37:37AM -0700, Stephen Boyd wrote:
> Quoting Maxime Ripard (2020-06-15 01:40:40)
> > Hi,
> >=20
> > Since the whole DRM/HDMI support began to grow fairly big, I've chosen
> > to split away the two discussions between the firmware clocks and the
> > HDMI support.
> >=20
> > Let me know what you think,
> > Maxime
>=20
> Do you want this to go through clk tree? Or looking for acks/review
> tags?

As far as I understood, you usually apply the bcm patches to the clk
tree directly, so if you could apply them it would be awesome :)

Maxime

--ntaccarc64fykhfj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXuynFwAKCRDj7w1vZxhR
xZ4xAP0Sfca4/e1tGZp6/nnT1IhBlYcuye8OrXKHYG26/k3e2AEAvsKlVXn7bMKS
brBCogY8lfWcyNhM+OeajUP3NA4hqQI=
=ZUsj
-----END PGP SIGNATURE-----

--ntaccarc64fykhfj--


--===============6104538273415496787==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6104538273415496787==--

