Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4A016648F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:25:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=euNdnuiU09HlRWYkZAFx59htz2i3YHxg85+ZisXs+Gc=; b=kbU2Zyj5Fa7aYup/4vZ5/U5vX
	MXf2eXD4aionFGgveUOpVRy6zX4PVMPWdIG+ZrPy50JxVRh1vxg+tp0ECd621t6ZmBbg9i628/6Uf
	gjzxb9IpY6pd0io3UUpRL2eKdG+kgIB0hy5xEGcLbFeOOxKccEUXKr/DvWPy08RNpB/oTLCV9o3SV
	OceLyKO7qTxgL3GRGABeSv0syq+7Jkm1l1RekLKch73t50SmV/3GAQ+E7XUS5bz/03XnFYDcWP3dq
	0P7fsAabR+5a7D4+iGcA5F1/IQmyQexTNkpkc9M7FVEQXlaaw1zAd7nEkeKxm7bAr6722A/puqrL6
	1280mzJDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pa8-0005kt-Db; Thu, 20 Feb 2020 17:25:48 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pZC-0005Al-Qy
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:24:52 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 339E821D6E;
 Thu, 20 Feb 2020 12:24:49 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 20 Feb 2020 12:24:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=te6hdqtQBQi0OFmy4I46vtfMUfG
 loiIkQJHlJUAw1Po=; b=jYZ2RHNbhZSEidhluJIDU6jVeGxE/iCJM/du3cp/Ae9
 aC4NNCcOaF5a1u04qZeMKjF/fHiD/BikSUcTZwytD6iTqppOcXkJ58ic50VnNNhy
 tP/IJMdwKd9AKmEVi0E6f9qa5eo88DcSggqpz4wU1boO8YxeiUk7CO1MmtHoXyCy
 oFqdEQJ6tf9/kd7YM+bZ+/PDvfQUn/Kc31mrtnryLvWBGrnv3UbE3FCg5s4Miw1D
 d6uoNw0SGFFL+lcArMkzdMEEcBbW5SBnbngpACskbT5QjRvhMQP4uIEuIkUdcAoF
 SddU2/FJtpCtLTMF/Gtiw2ifA3oo1JcFYXOjl694scA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=te6hdq
 tQBQi0OFmy4I46vtfMUfGloiIkQJHlJUAw1Po=; b=iKlzhwNoehwx38inZe86Sp
 MEMG6KRTstc2sT9ZNSGtmbr1E7eP0D7Wlk6tBBR7Vg6HsexHL8EnLv4AW1HSD18K
 jFc4hhQ+1d2MbnG9qWCNHR68jfuxgAUJCoz0vz5FiT6TQt1bE5Iul3hktQmfAAlV
 yyfbiMsQjCeM2ipKCcEkWt/KDRJ4Qd5TZA7TwK0xjJytTrmdJP/7+x+khplgNbeV
 WXKixC2GXYDnwAm8VswRgMGGcRzpVLoa2zJNbVVyWnAn2VxSwqcwDoAUAKawYKWI
 4ml3miuKfjbSmsooTvL1MOvngeQWb21Ih7TY5CG9bucivKaeVQTQ8UJr/8AQ2kwg
 ==
X-ME-Sender: <xms:38BOXsUyNFFHbTkUI4L6lSmEuBpN2to3bnumg5QKeZUwpWa5nK7cQA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkedvgddutddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:38BOXtPnDlk2fotdqkIJYqsppoZXUNXEjhVlabcenoCtDlaazpySgQ>
 <xmx:38BOXmysRKSbfQ9lAMIu7F-OMkpWLMdLX4gSC0sTV_i62YKi3muq7Q>
 <xmx:38BOXlMIRB3K6gQeHz6LwzDvEyJ_gJSb0Rb_WfV1HHEj4OKssfzQaQ>
 <xmx:4cBOXprXyGmrPIxveegUBiPvy01hCRzkkJlR9OlNDZ7shuWsZoqYFA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6E60C3060C21;
 Thu, 20 Feb 2020 12:24:47 -0500 (EST)
Date: Thu, 20 Feb 2020 18:24:46 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Andrey Lebedev <andrey.lebedev@gmail.com>
Subject: Re: [PATCH 4/5] dt-bindings: display: sun4i: New compatibles for A20
 tcons
Message-ID: <20200220172446.gg746z5efmzwtfdz@gilmour.lan>
References: <20200210195633.GA21832@kedthinkpad>
 <20200219180858.4806-1-andrey.lebedev@gmail.com>
 <20200219180858.4806-5-andrey.lebedev@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200219180858.4806-5-andrey.lebedev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_092451_062219_375D3D31 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: airlied@linux.ie, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrey Lebedev <andrey@lebedev.lt>, wens@csie.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7780885459471386845=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7780885459471386845==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="j2564guncf3jyy2w"
Content-Disposition: inline


--j2564guncf3jyy2w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 19, 2020 at 08:08:57PM +0200, Andrey Lebedev wrote:
> From: Andrey Lebedev <andrey@lebedev.lt>
>
> Document new compatibles used to differentiate between timing
> controllers on A20 (sun7i)
>
> Signed-off-by: Andrey Lebedev <andrey@lebedev.lt>
> ---
>  .../bindings/display/allwinner,sun4i-a10-tcon.yaml          | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> index 86ad617d2327..c0f6bb16fa34 100644
> --- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> +++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> @@ -46,6 +46,12 @@ properties:
>            - allwinner,sun50i-h6-tcon-tv
>          - const: allwinner,sun8i-a83t-tcon-tv
>
> +      - items:
> +        - enum:
> +          - allwinner,sun7i-a20-tcon0
> +          - allwinner,sun7i-a20-tcon1
> +        - const: allwinner,sun7i-a20-tcon
> +
>    reg:
>      maxItems: 1

It wasn't ordered propertly, I've fixed it up while applying

Maxime

--j2564guncf3jyy2w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXk7A3gAKCRDj7w1vZxhR
xfwVAP9fqMR6S5QNlK723niU/vA0ow7ntEjfO/d+1F6+P/qUHgEA8pTIZG3N0KC4
EDlYflE0dcgyudMkCjaHcAa7PgUxPAY=
=41w8
-----END PGP SIGNATURE-----

--j2564guncf3jyy2w--


--===============7780885459471386845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7780885459471386845==--

