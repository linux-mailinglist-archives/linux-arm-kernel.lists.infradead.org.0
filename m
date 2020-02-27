Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FA3171831
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 14:05:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2M73xEoIjzedMw8vHzXdn8Xj7A1HtcR8uj/tIIToPSQ=; b=IRI+Izo23cNGEdJAQMV1BqEe7
	Djknx/98X9w8nZ3+0uck1Vob8n907WmzZV//3yiEIg8DJgSdU2QWCGO7YXLU3qGjlezZPLlWK0uUE
	iGjF9z6Vahg8CGK15YfhvM0pw0VhZ6ZnoOVNGghfkld1nVnMPch8t4sETMEd8DWNWZIjOtDhBffds
	5Pvt4M+Gxo3CriLvqv2sQIzkCK++y1SxMYPRPcwgSmUkY2pX6pC645eyoDl8SYDPOMX3uA5xHDIZA
	oh29lzP1xeuc4EJuOOHoumD/LL0ZsyGUCZRGN8LOp8XTs1R48IPax1pvd4ZFhl6E/evr5f6b2/APW
	AOytDq6GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7IqW-0000WP-Bm; Thu, 27 Feb 2020 13:04:56 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Iq8-0000ME-OS
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 13:04:34 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id CB3138148;
 Thu, 27 Feb 2020 08:04:31 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Thu, 27 Feb 2020 08:04:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=pcqE+m1HBssPDljnUDjxn5Zpsb/
 nsjs+cLUWmmlhvgc=; b=r7r1JzmyY5dqNLeJXd06uTyOec79PQxhArFmv+nV8DQ
 KpSKT/rVa55JFxl0thhrfp12JqRHDjjSkE+JSuJ6xdhF23xFeu9SkbxhdBXCgWSH
 IRfw8SLz17iui2tkwPMJJIfqLfRCkfh+LTgxr+aFiB+4A/zUPKZfBMIlH8SFj9G6
 HAmgtRiUWNWaa/R9oFkxsLtpPXtwP/Ej58uQjRVPoFQdBc/mn6qPcytbN0YO/PR7
 L6G5Uo+h1+ThD9cwXwJaiJ2bxwCRZkTxfMXWOSJxc9+Eg4fPlctfbC7KVLAC6l6F
 ZO2UjZuruycdCH718QwprBOIqC/qu7lEQV34NenVRhQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=pcqE+m
 1HBssPDljnUDjxn5Zpsb/nsjs+cLUWmmlhvgc=; b=JyhPkrf1wpEdu6dEdWYfbR
 3PVGUh01aTU+0UNdbx7mnFmvys9B782DMmpP+5MHg2e/oE9qOuJsUAG6zGYF4ol3
 1ufPvS10+BDQO/MTcctC8QH71ksEtgUBfqam1RCpOp8R/uxqVaVDWy7Akc7cZ2pz
 2ALmP/MZDxB1b6mzrXQL0DWWunClvNyp3907N64Q4bgYKt2tS/d5Ubxeg5zXi9Uh
 5PpPbcPuCgR6K9rdgE0OZGJj0RrwdjKO7aO2fN0eRMjQxjevZOB/T7IoJGv031XX
 /EhOR/VQFhclA0nKQnf/H2r0pBxfqnNcIMN+pEFBL41QhHjjqlaCDfBetYi9LRBA
 ==
X-ME-Sender: <xms:Xb5XXpWQlPuwgiFUD3x9JrBisTz_HO6GePOTI_KrYaFhGFfZhif4Eg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrleeigdegkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Xb5XXnZ7o_CUSOfXi-w5z1McZDeixbhlXXkhZRZWihPjnzcqtiObxA>
 <xmx:Xb5XXv3KkCj-_pkFoIVRWMlqfcUOXiMybkzv8IbiyVKOB_ZWCjXI-g>
 <xmx:Xb5XXpgJ2DFC0dbEL4A7RvpVNukxsRKkEISzi87Ja_ZsyM9pd-kPIw>
 <xmx:X75XXtpDToEIpIQpMTAEUXVZVZMG2BoUxp8LPTQi_BjnEXSILropgw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B885A3280066;
 Thu, 27 Feb 2020 08:04:28 -0500 (EST)
Date: Thu, 27 Feb 2020 14:04:27 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH v2 0/3] Add support for Pine64 PinePhone Linux Smartphone
Message-ID: <20200227130427.s6dckhlxxpwmekch@gilmour.lan>
References: <20200227012650.1179151-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20200227012650.1179151-1-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_050432_931886_D6653124 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Luca Weiss <luca@z3ntu.xyz>,
 linux-arm-kernel@lists.infradead.org, Samuel Holland <samuel@sholland.org>,
 Bhushan Shah <bshah@kde.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, Martijn Braam <martijn@brixit.nl>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe@baylibre.com>, devicetree@vger.kernel.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============6581000341884017070=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6581000341884017070==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zwx22sai7cfpdfgo"
Content-Disposition: inline


--zwx22sai7cfpdfgo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 27, 2020 at 02:26:47AM +0100, Ondrej Jirman wrote:
> This series adds an initial support for Pine64 PinePhone.
>
> Please take a look.
>
> thank you and regards,
>   Ondrej Jirman

Applied all three, thanks

Maxime

--zwx22sai7cfpdfgo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXle+WwAKCRDj7w1vZxhR
xd5xAP9pdqB3zp5dscktGeYzDa686JcCAnFl/zFrPGGGTrqYUQEAtuFpaNG+MkNl
cMwtfbi32FIP3+Pz7ejPZYhvHCwxZQY=
=1O+l
-----END PGP SIGNATURE-----

--zwx22sai7cfpdfgo--


--===============6581000341884017070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6581000341884017070==--

