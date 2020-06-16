Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AF71FAE18
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 12:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XaDIPBgOuEegtpQQkU+af6BP+ATaK3InDA3uAKPuJsc=; b=jWp7Sntkn1eUuMJqKWL16wXRu
	23gZFFa06Jf9qJGTNlHtw0OOPUWcxVt8p741yuWAwF+xwtk/gqK68uj2IHKxvg36r4Tm7HEBK0mwA
	VupP6tbnyDM8foEmSLdBGKCu4+Ja8KYkGye0xpy/buCqY5bAEAL6TkQZdL/vuao3xOAzAyIuNvJLT
	yRhlLyRl9nhKGjg5mLjjvEmg8xURpLU5aVrHMXPvnIZmeRtTPNDRj1ERxQC8ewaL3GLB//9sG9bPp
	4Cyozv5rSGFM2IgN5q1BasofeSMEMPfm9sMVdy16WgUgDyedWJXkzwpaAwQ6BmDM/CQip1HEGB5fU
	kC8bruycg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl8xN-00007s-1m; Tue, 16 Jun 2020 10:36:41 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl8xA-00006B-RP
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 10:36:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 70AD01B1;
 Tue, 16 Jun 2020 06:36:20 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 16 Jun 2020 06:36:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=UIpR3OcQr1VhZFmrKqImDBYkcR+
 LfAGA7lozqCBKyyA=; b=M014hv6SCnQirV1ZC8PNY5Kp0nQz3egQcugRwDGARI3
 tQbzQx6BDORKt9xhVLsZxg//g95V/7NNtMJ9z0cmaGe2lvwocwKGoMhzhzJIRHB6
 hWMzH7PRbn2vE09LNeEoDvoIuozYfea9ORw9VmvKl/bl+rSVQq3Y6m4azUkkC6iL
 YCy7UANyoWI7EfDCqB8p/irvXTdQcp+mVNz+1CuSlHSqoMuo6W4ThyNdEjOV+U31
 QpO4BqFM50PLVH4h/xHd9iSHPVhcr96VCdsUDQQagNcP7rvhhhXMPEhrDBKoc21Z
 GwLn9fuHWqKbMyu4kp099flFiITKyAQvy/V16pr1wzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=UIpR3O
 cQr1VhZFmrKqImDBYkcR+LfAGA7lozqCBKyyA=; b=UjEXWmFKQYWW0Na1SChIsO
 kqDAlSvy/xGG1k1Sec3PMV3eFFp2Sinj4HvxNztrvrMD+nP5AixNfQ3NW0TetyTM
 ZrXwPFsmXc9cYo6D1hhy0YF5pjkGK9uhnu40AsV+G0Ijs+nYLRIIAzsIT/mns0qh
 hSKuKAdXFZXbKo0yTq04TsrPAZKj7wPFB+lse6Qqot9OSaYCFRHEnrxTzdR7vgOw
 yS+htzMnApCZDIWxTXN8w0oLp+w/PQicLH8z/7VEkm85sePUp99VfQLLwHqg7ogx
 i2sGMgUwE8H6b1Zyw92tNOh3HYaJvkCbo49aX1k7AUoB/KYo4TuHPGIxAqS9zmHw
 ==
X-ME-Sender: <xms:o6DoXsJx_W1GrhUkaq8WeZvyqWeGKpYxKARNDDYkr4yDyCBHV0uHvA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudejtddgfeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:o6DoXsLX6-uqGc3jLAe-QjHy2kP4Zo73GhgiR1hlmZ4nLDZD5ULzdg>
 <xmx:o6DoXsuBe3Ga5Ycy4ewuHLPa42iZZeXqh5PPJuOct9P8LR2zEqGtrQ>
 <xmx:o6DoXpYROj4DMqVZQzzd2YEMYEjTbJkILW_mAF9n2hzsn7unbnXboA>
 <xmx:pKDoXvF3RmDVfnWBd2n7ALDCPRHj4fByVW0SZiHzOlDktV_0bAQHjg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 29A62328005A;
 Tue, 16 Jun 2020 06:36:19 -0400 (EDT)
Date: Tue, 16 Jun 2020 12:36:17 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Diego Rondini <diego.rondini@kynetics.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: orange-pi-zero-plus2: add leds
 configuration
Message-ID: <20200616103617.ddzfbz7yvnpl3ss4@gilmour.lan>
References: <20200615130223.34464-1-diego.rondini@kynetics.com>
 <20200615130223.34464-2-diego.rondini@kynetics.com>
MIME-Version: 1.0
In-Reply-To: <20200615130223.34464-2-diego.rondini@kynetics.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_033629_132860_D180765E 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [64.147.123.19 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7402815254165583099=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7402815254165583099==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="augg5iz66jyevl6m"
Content-Disposition: inline


--augg5iz66jyevl6m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 15, 2020 at 03:02:25PM +0200, Diego Rondini wrote:
> Add pwr and status leds configuration and turn on pwr led by default for =
Orange
> Pi Zero Plus 2 (both H3 and H5 variants).
>=20
> Signed-off-by: Diego Rondini <diego.rondini@kynetics.com>

Applied both ,thanks!
Maxime

--augg5iz66jyevl6m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXuigoQAKCRDj7w1vZxhR
xRzjAP0UVUc51P9p6mICdulyK7gjndsyarVDsU3W1zc2VrdYpQEAq4hcUnP+jHVV
ynDLt5rRNVkGy1G8ZdpLLrdsTc4KPQ0=
=ZfHR
-----END PGP SIGNATURE-----

--augg5iz66jyevl6m--


--===============7402815254165583099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7402815254165583099==--

