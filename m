Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA821B485A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 17:16:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZzsC5fjYR11rOviEEQFBRPHUPDg4Z3243eTkrIPZYNQ=; b=BTGOg4oQPfU7oqW71e0qx5EBK
	Bmih53x5+oD4sGGOjJul0Y+N/Qbz7vca2Edz21Kukbhsibg1Nx02n+eBh1F9b3LkZaaPH5RWKaux8
	DcLjskdvHBd4OQyd3S6715P1oioUjauMaCbR/sVHEyd0ta4Gj9Rrg2tL3u2rF9m5Y7Gpo/9oA+gCW
	9/gyLZR7Qkx6Zk+9GcHi4XAxSY25hm81s9IlXaOxLokzXdWM2rbQ8fTRtLkkMEWB0raCbVUI/G/+j
	PgZkqysLCBy5IUBP461IBns5KMlifmemlCOT/9mivkTcf6rFUP7vy/xcn3zHTVkXmpN/ZVDf+mJJ/
	c2o2BsZBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRH76-0006xo-IL; Wed, 22 Apr 2020 15:16:37 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRH6y-0006wt-BV
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 15:16:29 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 0F9FB588;
 Wed, 22 Apr 2020 11:16:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 22 Apr 2020 11:16:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=K3JL55BKy3pQriQom4+MtaW7jsP
 YmntwUFT5KMhRuQs=; b=hyEkT/gFMRGAocalMZuIhxxhTxJa1ifUBbBQJEJtCdI
 7PtJsPzqx+NL1/c9YyN847yCVhtON3L7BQAOzuiVqZEZHAfxyFsl7GZzng21IWe8
 njPwtoEr1hShmhrMqBGLR4lm7QUJz86dExH+gQ0b/IABAk4XZGWWwW/SzFAcszca
 kIA6ZWQ2xMOwQaes9flt620h0PAJxjHRoQvUoCrTWG55UxUIeGv3GPrYzLg1cP+r
 iYup3w949OPpghONUSixYQhF/AcLfV69j+gOSkXuDRCXRUgy/T82cW67cgRf2dfC
 ti+Y2abj1bxycK4uOy5RGj6Y7ijPEoHE7ChgOc+gpww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=K3JL55
 BKy3pQriQom4+MtaW7jsPYmntwUFT5KMhRuQs=; b=2i41h+vlKhAVbJqFM96Rz5
 aKddvLmyd3OwjemDWWjv2v/OflBoS1ncGhyHBF0lrg+EQ09p8nRrrk3+PmpAYTVK
 lJqGGwmpKVLSERyyBJrSJGBay6Umi6+Ltt0IYPGpEeFoTQzXF9kSiEpYnR1Emci8
 p/vL+mtAz2qIc8HhrPsqMlIE9r9ZVt33m/0tiLA6m+OcO7JE12LUQKMCewFOFdNc
 oCYy9NJZek3jvkoRNwokmlxcT1EsyrmxPkJvaSyci69/isNCg+zj24MbX7WEUb/n
 6C6zlvZm5LTKizLc2b5BrUMGrT5RokHORsoyqGptyoSBQ8jbKvko+WtV6APMI+Ng
 ==
X-ME-Sender: <xms:wl-gXkhZZc3YsQwHryhpO1rIpVJ-_XbOtXd6UgA4eqYJpzkAlP2Exg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeejgdejlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:wl-gXpWgaAIz4dtia8XW8vRjbcfoGZ-YQUjvxWqY3huvPJ-ePsD2FQ>
 <xmx:wl-gXu1GLVU4recSgbJsaQMu7-GvMpBTdviC9zvcckUf4kuwjgPZEg>
 <xmx:wl-gXnHAD7OAK22eC_7Lt0LBbnIvrsYL4qVUDmWWnem2UiCAQjD9Lg>
 <xmx:w1-gXkgiDvGXmzyJ-8qPPpHZuGzHrZJh2hDHrsMJJDFv2WxAFQLUKA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 106493280069;
 Wed, 22 Apr 2020 11:16:17 -0400 (EDT)
Date: Wed, 22 Apr 2020 17:16:16 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Disable SPDIF by default
Message-ID: <20200422151616.httmhmo2tbd4m4eu@gilmour.lan>
References: <20200422041502.7497-1-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200422041502.7497-1-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_081628_456040_76AD1636 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: multipart/mixed; boundary="===============2610958255274190392=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2610958255274190392==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rqslophvmxvu46lr"
Content-Disposition: inline


--rqslophvmxvu46lr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Apr 21, 2020 at 11:15:02PM -0500, Samuel Holland wrote:
> As of v5.7-rc2, Linux now prints the following message at boot:
>=20
>   [   33.848525] platform sound_spdif: deferred probe pending
>=20
> This is because &sound_spdif is waiting on its DAI link component
> &spdif to probe, but &spdif is disabled in the DTS. Disable the
> audio card as well to match.
>=20
> Signed-off-by: Samuel Holland <samuel@sholland.org>

The patch looks good, but don't we have some boards with SPDIF enabled that
should be modified accordingly?

Maxime

--rqslophvmxvu46lr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqBfwAAKCRDj7w1vZxhR
xX+ZAP4levrp2LGRrm2REbub/4kkmFLtqMUooUPXTR9I0VEcUwEA/JrFpuWGRqmc
jpVGK8i/K0xogp3yuhFWU605yt7xwAs=
=uyxK
-----END PGP SIGNATURE-----

--rqslophvmxvu46lr--


--===============2610958255274190392==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2610958255274190392==--

