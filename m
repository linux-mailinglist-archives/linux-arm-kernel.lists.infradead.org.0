Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFCC16A316
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:52:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DuSjjx5c1Hs4VtMKBOr2saxmjSNiVorun7WO67rNZuo=; b=r6w9iJtXOoJSRRU0McR5xbeGD
	BetqqKxUbL0fsPx9bebVqbuKjn6T3OHDFyhyI8QqD0/scbSpJkmRY1erfO+yaLgAqFnrfC6zAYKbq
	2mz0dNYD7tOPkHzQ9w23d76jOcMLtdB0MC212abtrgWff9/VP8uJ7siLLF2EJlo4pa0rWSw3iv0jg
	r35AFnXsLHz44VJGD+i+FMmSHE+ufrrpF9eWjTCNAtkUVqKLEWeYbKVVb6eJpqRgNYXjpg9jcfzf3
	hWUsSpORVes74vjDvqIIiu+biCMw597UgVjZRdWkIXGHS0CqdOhwnbJ726hsGk4ooBiVxiNlF84WU
	h163NakLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6APE-0006se-DS; Mon, 24 Feb 2020 09:52:04 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69sT-0001J3-Lj
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 09:18:15 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 758296FF4;
 Mon, 24 Feb 2020 04:18:11 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:18:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=2VnOSy+3DXO97qhGNXt4Spz18WD
 yHUSX81DuJnanSz8=; b=hNX7A17RBZUX4hBcqnYqP/48iwn86MHoidSrqwYYS3x
 G7ezQglw0KIsme7t5JDgIJttVq4bmz25LTx7RQEuLXvRc2n3AeL7ABTTUVnN9THY
 IJ1VFnTfIEcZAexmRLswPWx8L2Pq7TqMZV0lITGklUSvy8CjDEDnIAXFkFrPyinq
 n5hECwBMFGKWZ1LZ2yWLtdqe5dqdCYFXfVBO9i00aRCNe94C6FSNYPociDLpd2qT
 lNKcyJvVw5HD5jiiKSuq4uFJ80viZBxA2x2qTIw50Kcd/n3X0OpzEam5tc2tVnGI
 C3Bj2saKp6Y4z1Jd01gIj7IhBSmvZMJBSIilxZzjBQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=2VnOSy
 +3DXO97qhGNXt4Spz18WDyHUSX81DuJnanSz8=; b=UB+LyOujSuXg63CQn1Qq31
 3VnV7fExDdzy6mqSgD1qW5Xv1ZWpuc1sd+H+zD6a+cvm9gq+AFww8jVGqrMIQ8yY
 dDAzp6peQaQG/tUkwWjKo4CyRHSWcK464vOebPD2p9Hpdi72Sel07cFqMz8uv/uR
 j7M/V6Wh5a2X7wl0R5bkYtOnAR/0LkweKdzj4I3ZuNBjVnolbCJnSEcmKaP/Hs0n
 dIVVHyG5kiJevoWT+Ls0d8nCJNkpolaWCWw7TNUlkM95C0JgCQXoexnR1eGRlJNb
 zhp6O43gzGZ7OG0Xn6W4dEsychjUfzfI5qPFtjQWhPC+tX0OG9utt70T65G50yKg
 ==
X-ME-Sender: <xms:05RTXv0YPnGmwVuKELFToEd_g0qRP8NQ9r7usG0QRHo9m7--3PpPWg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtgddtvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epmhgvghhouhhsrdgtohhmnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnh
 hordhtvggthh
X-ME-Proxy: <xmx:05RTXoshoPK7pOxYrp0ct_K-uuwvbTrNpnSuL89eqQz4NcgReE_KRw>
 <xmx:05RTXl7gFrS16oAeAPc3Rz1p0Nl6y5MrO3nZYhbmTQMo7EIBBei8JA>
 <xmx:05RTXkf4AF8VryzMmEyQiq5z7VxyVom0FAxNUrFcdsfHxd5VkgrOaQ>
 <xmx:05RTXhPMyrLR0BIG7cj9XXEnhFR4mWTC9lcgPoIuxTE49zNY7eBJRw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1547E3060FD3;
 Mon, 24 Feb 2020 04:18:10 -0500 (EST)
Date: Mon, 24 Feb 2020 10:18:09 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH 0/3] Add support for PocketBook Touch Lux 3 e-book reader
Message-ID: <20200224091809.teqbrhpzgirda4cx@gilmour.lan>
References: <20200223031614.515563-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20200223031614.515563-1-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011813_885587_468A7108 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, Sunil Mohan Adapa <sunil@medhas.org>,
 Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Corentin Labbe <clabbe@baylibre.com>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8408868077496436549=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8408868077496436549==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fqx3qgvmmsrljpca"
Content-Disposition: inline


--fqx3qgvmmsrljpca
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Feb 23, 2020 at 04:16:11AM +0100, Ondrej Jirman wrote:
> This series adds a fairly complete support for this e-book reader.
>
> Missing parts are eink display driver and the touch panel driver.
> Support for both is available out-of-tree for now at:
>   https://megous.com/git/linux/log/?h=pb-5.6
>
> The rest of the board is supported by the mainline drivers.
>
> Please take a look.

Applied 2 and 3, thanks!
Maxime

--fqx3qgvmmsrljpca
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlOU0QAKCRDj7w1vZxhR
xW2DAQCiFvMw9EjUs7TQc7LJ2hozvZzWnmOKjgfWyMWSbkjMxwEAzDPUWCF2EBy5
Myv7TAuzmgu4b6L9Uo+lEOlaRvkBewQ=
=mNCG
-----END PGP SIGNATURE-----

--fqx3qgvmmsrljpca--


--===============8408868077496436549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8408868077496436549==--

