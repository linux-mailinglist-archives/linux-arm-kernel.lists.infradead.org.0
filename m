Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3E11B5875
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 11:44:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cfKoT5uLnOSjLSQYsvOL1FYNbQTExoCNwr55pVKBjUg=; b=DJM7Jnrr3WIMKGUAzgxw1rLWM
	pWaybjkSO2wY7SZl1M/siWwW8XvtGKMu++eMIBwzVH12CokTUUKEBZsRQQsMj1Gqp3A8g91iCN3VJ
	AurgEBME5/1iDj4NyhR90G8BAbt/xctH6AA4A3BYOXh9tZcZp9hZJ3L8o0jjiCVWnF8v5oOvwWv1C
	ttG75uJkO4yXkGwCoFWPSISBWZdhI6uMxEm5df/6YqVWidQ8fQ4xBy5X+gvTgH15RfGQ5FvCVovxR
	EpAluiMNLhaV+ToYe6qTc0OoA7ju+mCuGoc5ItZ9VEg9Z+GO1rc0WwbV9v2ZpC30D0C5KFq9KaAvm
	JaklGDTPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRYPJ-00041V-7i; Thu, 23 Apr 2020 09:44:33 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRYP6-0003zB-Ji
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 09:44:24 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 050DF6D9;
 Thu, 23 Apr 2020 05:44:10 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 23 Apr 2020 05:44:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=yTSdBL27L0HtM6cxIp18248+BCj
 5HmxK6PmNzKhh3oY=; b=f1HMyR60bY8nyFlkzaXnGTkz8BNUtPwIhyzWNFDXn95
 fCSarO+Liz5ZhsfMc3JhFsx1Xs//yoNa1+0k2CjAGLWc+xaZgRPN4Tmk7DUvD0YF
 rbbtsHMk3MwkAG4a1vuJD3h/8BMPu1n1H3koFozDdbKOvQ19evU5FhaEN1oIcWKR
 FXGCV8HgJyMPL/XH/uKh2hAMT6IcOYkvLbcBrAvuk57hNAqbO0cOC0klmAdi12u1
 uEnCOupZk454nnnORzfNS4FxNlh8jmoLaxgo3I+rmtCygjAykrXdNhe1JSx5gsvg
 sON/UnUlYPzQv2S211eJ4SORsZv1t3b0K2bbwwf1lqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=yTSdBL
 27L0HtM6cxIp18248+BCj5HmxK6PmNzKhh3oY=; b=JUvTWXOhDBjKe1CGF9kkoQ
 cK+d85sUETQ/elG6cHsB1FWx2uXeBd4noYmcYx0C0FI5Fv+1ahTVEKdeE3zdrj49
 kt8EHkzHrjgmFdQwdS7vePyJfn6eYtX0bqqEvzbmGyVvyFN7oyC2q29319IZD5Fn
 GfMSgJrO0Mm66fQtjKV936ZdfgT/OvV2W3lWJce75wszI4rBqislBkguo7bKLXB2
 +9bCz1p2lSAUZTORwrhsD/dNtSzN4VLUVoCHJ5NWpndcg10ZaCUumeHsyihoR3/s
 EjjUXRLXPR8TQ5yE/mj0/SdkbCLLYNuVI39nCYbIXj+kfYz9yRKIdsY7fdWCzxeA
 ==
X-ME-Sender: <xms:aGOhXnQWZGxdwbYT5O8DLxkp6l_0R47bUq1Mf8-_LzUI6a4oVvgzBA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeelgddulecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epughtshhirdgrshenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhi
 iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrth
 gvtghh
X-ME-Proxy: <xmx:aGOhXtVaNUCw8t52e84d5lgOjrlpSzhg54eR-z_HaDeDXYpLI7AMag>
 <xmx:aGOhXp-Kj_mkXIEswmsQnkPQi0Fu0CqAgrJToyPCOROd8N0p-F3Qcw>
 <xmx:aGOhXt1w-CfTg7VeKrf_Xp86c94pm30803OtsqrGAHsqeFRGaB8V_w>
 <xmx:amOhXnxIxPIOQIZqjLYXzU9B1ONDvPIHpdOCSLrNahrf4GOs7AWPzg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 48B99328005E;
 Thu, 23 Apr 2020 05:44:08 -0400 (EDT)
Date: Thu, 23 Apr 2020 11:44:06 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: h6: fix cooling-cell property
Message-ID: <20200423094406.eklbvj4n5wqoiqgy@gilmour.lan>
References: <20200420143016.16835-1-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200420143016.16835-1-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_024420_683931_EB0F1A68 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
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
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1066137926288125299=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1066137926288125299==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rfqdufxyhslfmsyh"
Content-Disposition: inline


--rfqdufxyhslfmsyh
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 20, 2020 at 04:30:16PM +0200, Cl=E9ment P=E9ron wrote:
> We define cooling-cells property for CPUs only for board including
> the sun50i-h6-cpu-opp.dtsi. As not all boards have the CPU OPP
> dtsi file included this create a warning because the cooling-maps
> is defined but not the cooling-cells property in CPU nodes.
>=20
> Move the cooling-cells to the sun50i-h6.dtsi instead of the
> sun50i-h6-cpu-opp.dtsi
>=20
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>

Squashed it into the patches 2 and 3 of your series,
Thanks!
Maxime

--rfqdufxyhslfmsyh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqFjZgAKCRDj7w1vZxhR
xbCxAQDUBsEqD3yTS4praYqwY4PKSgPpxVdNokuUTqeFd6GzQQD/Trd+l6jCnXgp
rWz0egIitLYCHooKA8xBXnl+uhY7FQE=
=/LdK
-----END PGP SIGNATURE-----

--rfqdufxyhslfmsyh--


--===============1066137926288125299==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1066137926288125299==--

