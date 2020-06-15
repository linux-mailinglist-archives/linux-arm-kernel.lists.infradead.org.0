Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CE01F9125
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:14:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JU37Dqfr0F7vj+V0U7kYMtXyhr5TQHpFweSKza1M6YM=; b=TsuxzZf5zSnUycLyjT4LOGUyZ
	Id1GKL7g2V9JpdabGxsCk0wNrAskeDj7gcvOuChCVFqNCnFowCjKkpponr3gP9wCruXdOSi1vvDby
	zgh9sOPq10WTJMfbmViDzAr8D1zL8wqLYwR0EsrT0BYtz94hDfkSl+i8fDksu59uKEpLu4M2Pi+OS
	zyBDawQLws5Z6vvPFjEwvit7iu8G+6ZvgY7DvRupTfWSIe8ur+NB/jYb2wke/GDmWsxH9ac/Nm1nj
	zxmyP6AECPphe7tXaj2s3J/Kc0uc1lfGbO38SfCoRFAIwEpO4ImNRw0wAneIE2fxAOx37hV3XLnAW
	HEx95O4jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkGS-00073V-Gh; Mon, 15 Jun 2020 08:14:44 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkGK-000736-0v
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:14:37 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 989A65C00A0;
 Mon, 15 Jun 2020 04:14:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 15 Jun 2020 04:14:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=jUgci8k8U3TokZGnj4Urf7+MUxy
 6zfiiWy2Fnf295uw=; b=J96A8ef0a/590vux1U03FiJonoJW7bFlaX0+uLYfd5u
 dgqLrw8BQCtxKNY1S9sciNvm/5nGeUWubxO1zcjJoAW7KhegiuXMxnnyHX9YoVX+
 qGE4o7aVDNQx8BhudlQbbSABCsB/tb6cHcmCGuuiFbRckgS7AypNxS38ZM1eNOEK
 IT++L1cUFj7UskAM8q9YW++jVn3tOatlT8dnID/+YO1jd/NADTjVdnCebAT2PPNn
 b0l31gHT96DuESsZ5fqEHjR7U8unhI+IU9iuOfedygM84acWdFnNX0aZq6+e/6hw
 wiviprJyX+RM93oeTLowea6MmtMWSC/bI2cTAJhyjTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=jUgci8
 k8U3TokZGnj4Urf7+MUxy6zfiiWy2Fnf295uw=; b=O2tglPPHI2ZhPXhPHgdcay
 eVc7DqpX/qvGGgZoNDnvaIuNfpBcAfJd3WXtJgyH94MdTdJcGCM+JaPBOkoHMckq
 Kcz6AGWOPhOgTlewfJgZ2iapmFxtpNiYlpSNhNxeGtseyzlxZT+89g5XxSUhEqLT
 ALL+PLbUx5t42Bt+/+d3a7nLYP9BXx8O3uxe8F00duAo3RDaMyaxkTXhZMgRaRMG
 lCaPVEIgbO+Y1WrMGO60cEQedIetYuTzwjYwtPjt/jPSg1Ct/gXjATZDgwIV+R9C
 57gFjdJCFpNu39XmoVAoBEBPCo40aLkrD/8VL41JhM+ipHPDPDwoC0CHbCYlh3BA
 ==
X-ME-Sender: <xms:6S3nXgxIMtqM2-tRdj4_V36zMNEMZ6uiMDX1HTI8vu2wgtBP74zZdA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeikecutefuodetggdotefrodftvfcurf
 hrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
 hrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgvucft
 ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrh
 hnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeguden
 ucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedunecurfgrrh
 grmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:6S3nXkSRKS-grTU_tbhUoxuInKiB4s2FdzUnXuqF-AAfTn5g__itFg>
 <xmx:6S3nXiVKRkdsCC50pYGOi1i--C2QydHc123Sh969TTjHkU9iMEEawA>
 <xmx:6S3nXug7ijSmBoRtGs4W0vDVn6KCSpx4Qr7S9Jriqh4ofNGko7AtzA>
 <xmx:6i3nXtOZQGrAINczXP9C4oSPs2qF40lXOvrd5z-1DrIb5WahPy71Kg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 115DC30618B7;
 Mon, 15 Jun 2020 04:14:32 -0400 (EDT)
Date: Mon, 15 Jun 2020 10:14:31 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Diego Rondini <diego.rondini@kynetics.com>
Subject: Re: [PATCH 2/2] ARM: dts: orange-pi-zero-plus2: add leds configuration
Message-ID: <20200615081431.sbqezly4jcryvxk6@gilmour.lan>
References: <20200528204712.552964-1-diego.rondini@kynetics.com>
 <20200528204712.552964-2-diego.rondini@kynetics.com>
MIME-Version: 1.0
In-Reply-To: <20200528204712.552964-2-diego.rondini@kynetics.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_011436_201137_27204B97 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============0184088937041114135=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0184088937041114135==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ldpz5qc3s34puj3m"
Content-Disposition: inline


--ldpz5qc3s34puj3m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 28, 2020 at 10:47:12PM +0200, Diego Rondini wrote:
> Add pwr and status leds configuration and turn on pwr led by default for =
Orange
> Pi Zero Plus 2 (both H3 and H5 variants).
>=20
> Signed-off-by: Diego Rondini <diego.rondini@kynetics.com>
> ---
>  .../boot/dts/sun8i-h3-orangepi-zero-plus2.dts    | 16 ++++++++++++++++
>  .../allwinner/sun50i-h5-orangepi-zero-plus2.dts  | 16 ++++++++++++++++
>  2 files changed, 32 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts b/arch/ar=
m/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
> index 4376767699a47..4cd0ac706bd2c 100644
> --- a/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
> +++ b/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
> @@ -82,6 +82,22 @@ wifi_pwrseq: wifi_pwrseq {
>  		reset-gpios =3D <&pio 0 9 GPIO_ACTIVE_LOW>; /* PA9 */
>  		post-power-on-delay-ms =3D <200>;
>  	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		pwr_led {
> +			label =3D "orangepi:green:pwr";
> +			gpios =3D <&r_pio 0 10 GPIO_ACTIVE_HIGH>;
> +			default-state =3D "on";
> +		};
> +
> +		status_led {

Having an underscore in the node name will trigger a DTC warning. What
about using pwr and status as nodenames?

> +			label =3D "orangepi:red:status";
> +			gpios =3D <&pio 0 17 GPIO_ACTIVE_HIGH>;
> +		};
> +

There's an extra line here that you should remove

Maxime

--ldpz5qc3s34puj3m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXuct5wAKCRDj7w1vZxhR
xUjaAQDkFMomehsDqclVzdruO2gQslavfdE5Z5Nk9MBu53/X4AEAuy/0NEbxdB4m
iIgPxGIxqLa5k/nFdCS+8z/ksmbEdgw=
=N70a
-----END PGP SIGNATURE-----

--ldpz5qc3s34puj3m--


--===============0184088937041114135==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0184088937041114135==--

