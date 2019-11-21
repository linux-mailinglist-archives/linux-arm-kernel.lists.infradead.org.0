Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F080104C63
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 08:24:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LWGiNRk+8JyY69iSWI2/M7PxGTNCm4tItnt9GmedqtQ=; b=qKDK7i7JqGekrRqOUx7bp5LDz
	VGAhQghoJ8N+00qLccEMIAi/KB8lizyMU+ruOVJKuM2bmQQo6EtKze6xQ21acxQOsVFnHt9xqEcSO
	sf0Nbs0kf+Ts/vMpvkVEB9Oi7o/u1dBziS5rRDAm3Ox8rEdbKOa5h3rutWKpLs4wy5QJQHDyBSBkX
	cHzMmXo879gYypF5/Phu7b6lCV/RKezhUx+SdMoPG99VbpPXkvhSKoM8NKiGfAFGEHPCCBA5rTn4w
	bk6qaTV7x0jhHHyJRCuoB+BuQsgcknZBAQrs0MpmHGExtPCGI/m14t2Wvfrld8poq2gTgq0gMMeWw
	Qcg401Fmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXgpD-000700-Cc; Thu, 21 Nov 2019 07:24:23 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXgp2-0006yq-4S
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 07:24:13 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id A2C58640E;
 Thu, 21 Nov 2019 02:24:10 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 21 Nov 2019 02:24:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=dcB24XFxUA/iOC9697pOKl03qd+
 53/LvU+J/gD6p5OY=; b=FwVr7C57Kjm3aMwlRIYzy4K1/tpGNKzj5qf+bZ5tKGV
 lVY9I7uiv9l4zATehBAXzEgLNPZFiv4GVIjlSYuKpqVYNHRRcIwxyhBWpSyf2KS6
 VfU67jAsX4/sQTJjWQ6cqXERnXq5hStGD9GtEVeJaXXjKnTTeX9uFWOOs3v8/V2A
 wESqNTDNUjlnO6QdWvv5kSjB6mOoWpTDp4cRes1an8MpSMERMaWrTV2l0dskurQq
 aNN+sLTWNOGERUQggHuNf+BA0dHjuJROBWt9gCRV0MMmoovFSxhKUKdcCHQFbvKl
 LYn4DFYr8OFumdnfIOcvSeLHkcHfSQuD5PdoHtnFuLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=dcB24X
 FxUA/iOC9697pOKl03qd+53/LvU+J/gD6p5OY=; b=saoAdWVJ4y9DYJD7kEOtJH
 eodbEv2meQPC62TXeDvhQvx2ksypxzjTrSeOxA346AxyTveBn18bjvPD6lHiFDRg
 IdR3F1fG1cFsIsVeRMHMRgQEAgRQnztSPHcaoFgVVIncXqZk1q6avzlwOwLMyHYM
 Tp77nLctOs+iXo1pbaCcLuWmd/74n0afinrio9OIvQfwqlymsgdMzHzcYgWWsfeN
 rmt0JkAkpCZBvGIC3jGVq0yE0R2O6xaw9rZA0AmnvHX/HcrzHep4XgyQ4tlVP6DF
 FYA0DNxgwBa7KHdk3ONSAQvQLGVwHfwhgtea7E/nYEeRD52Qp91JUg1pSsUBgMzw
 ==
X-ME-Sender: <xms:mjvWXSgTPFVq6NKV-KcJEBYMfswHVBPryLUalwhm93JYlxLMUtHlQA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudehuddguddtjecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujggfsehgtderredtredunecuhfhrohhmpeforgig
 ihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppe
 eltddrkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvges
 tggvrhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:mjvWXSkCZYG7rudfHBNHnqg6JvOlXzaMYPGsQH-4aly4II5eZA9zVA>
 <xmx:mjvWXTdFCuCWaked9eYgvIhpgUancv9t73p75_OQ4i0SuNkAd80L5Q>
 <xmx:mjvWXUFKqEuTuvBneGAI_lV2JbOSxXZt1npllQzKX4u4GwxLZ9-VmQ>
 <xmx:mjvWXWJPttQshbGz5eceanv_mDEc5XVVpTjimHa1s1yrZ690_iLsNg>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0E76C3060057;
 Thu, 21 Nov 2019 02:24:09 -0500 (EST)
Date: Thu, 21 Nov 2019 08:24:08 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v7 0/8] Add support for H6 PWM
Message-ID: <20191121072408.GE4345@gilmour.lan>
References: <20191119175319.16561-1-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191119175319.16561-1-peron.clem@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_232412_312710_0A78E644 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Philipp Zabel <pza@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3044017688479600084=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3044017688479600084==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cnZewGtz8xdCmwBG"
Content-Disposition: inline


--cnZewGtz8xdCmwBG
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 19, 2019 at 06:53:11PM +0100, Cl=E9ment P=E9ron wrote:
> Hi,
>
> This is a rework of Jernej's previous work[1] taking account all the
> previous remarks.
>
> Bindings is still strict but probe in the driver are now optionnals.
>
> If someone could confirm that the PWM is not broken, as my board
> doesn't output it.
>
> I didn't add the acked-tags as there are big changes.

Applied 1 and 7 for 5.6, thanks!
Maxime

--cnZewGtz8xdCmwBG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXdY7mAAKCRDj7w1vZxhR
xTFOAQDiMAy9dHGZ7PpP701iv2RrsZe3P6MNSle9BJ2doLno4AEAtUYireLcQZ83
bb4k15ybFyplkNifvIeEgxnolldKeAE=
=atTd
-----END PGP SIGNATURE-----

--cnZewGtz8xdCmwBG--


--===============3044017688479600084==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3044017688479600084==--

