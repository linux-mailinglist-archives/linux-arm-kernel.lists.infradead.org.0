Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC0E16A32F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:54:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MChGgNSYNxoIIZvbGkwyYhElul9xTUP4GInRFR2mnwE=; b=lTUm5arz2JL19xAsJ1LBnwXKu
	KL4Zkw8RnoXGiGW7kmk/5Su14ALC+TKAQTLZqFP0lJvZHcMET4C4bm8LAJ0NP98er9KlC9l1wqrKz
	G0Vcjqn0YIgvM7Zd/I05QCN7w5yCYQSb1FZrntW1rEu24eQxGw6s/N+eIOoptFkl0DQv5lq1uK2iC
	U1CV4vGJpT+DwKtnnjhhFS6rcINzUNr9pCBX1hWEei7p/G7mI/+5jaIuugVEJQUwW2k+9gCNvCzFD
	pAy23mv9WzAqXKKOaQ8wtIPGzHnp+mp4vfdFQoS5rhN8FiCeQ78VbMaB148k+dW8dIwAFW1lRfURV
	YeKWZlNhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ARi-0000Qp-Ow; Mon, 24 Feb 2020 09:54:38 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6A15-00038S-Oo
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 09:27:09 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id BD80C20A3C;
 Mon, 24 Feb 2020 04:27:06 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:27:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=7U30ksunGq91DjO/yXEChQMx3ng
 imz//YkooslE9lIU=; b=e3dGEldHtxihm3SnTWFiwqYkb7aEJ3wXwPQU9lJnfWS
 Yal0lwDTmld81Z5+o0LF/0RtdhU1qg1qChHlZHvze1Vd+3fCHfXXyaDVIfPDulng
 Eboi5uzYTkM1gWbrOtvUzqiffOgvpYTRQMAgRUyRfQKETUwbEVsKf7zW8VonYcEo
 W99MirS8X48nLOqJ6f7zrlGYDU2D5U+P/9r1pQ6EkqIfdwuNEW3mcBqN0IvHSGcv
 W5brblO/N/ObabFc39WfX9ONQ2LKdM+9VfCVQXtjeCa74gRAeMMcCCQo8CqZLta5
 eYo2nivEU5qAOVpekaO2SP1vYMEfp4RBk17M+/fs+2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=7U30ks
 unGq91DjO/yXEChQMx3ngimz//YkooslE9lIU=; b=SbBzEUhtKguE8DTSpxnFaS
 fBdUsEgGSx6UqxQJeGwPfzuWHqx6AMwn8GMHjurHLvXvpa/77o5tRocDlPVfvRoI
 fbzOln9hnpRxyV5TrlKrZ6EDuvtVLzy1Shgfckuapybu/RzUhQjNfsuYBP9gXmqz
 S/WVlHJxET5Y/gdxMfpt/P2Q6szbteNp4k8/sr/SibZ+ztFqPex8Fy3ZWHU+Ob6V
 Bw+3T+hBOmGgBgWMqf/x7AxF4pfVt5ixc6QSGF4hcooxFQC+1zwXUXHo5hHgr3Rr
 KWfY0JeLoYAW5VUzO777lENETuZpEw4U22FZZP/txRsCrpQzO60FebpUbpV3UgYA
 ==
X-ME-Sender: <xms:6ZZTXjOC_yWJgQ6mC7bbNKDYl94And8ilihzw5a1SWEXrOkt7662Dg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtgddtgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:6ZZTXt3Aqh6Ho_ocPD0vwSmjtEr_Pr53SVQhaSY401HEzZliLXVepA>
 <xmx:6ZZTXvmyjkBD-03PKjv50TTQt6JwGErOtn_q-GT-YGEtnyaMetuqqA>
 <xmx:6ZZTXj6hyoTD_g8ISR0cFzvy0omAWfJdeH6OLjGfS3bNznErq-GqIA>
 <xmx:6pZTXvdba5kCF1gUAxit4doFcvkziTOigOFR1wt7-THbc6J2LSfNNg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A2EB8328005A;
 Mon, 24 Feb 2020 04:27:05 -0500 (EST)
Date: Mon, 24 Feb 2020 10:27:04 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH v2] arm64: dts: sun50i-h5-orange-pi-pc2: Add CPUX voltage
 regulator
Message-ID: <20200224092704.gnnjwds3zmmravrw@gilmour.lan>
References: <20200223104019.527587-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20200223104019.527587-1-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_012707_960402_DFD18A9E 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Samuel Holland <samuel@sholland.org>,
 Chen-Yu Tsai <wens@csie.org>, open list <linux-kernel@vger.kernel.org>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3191044851100439123=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3191044851100439123==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w6i3mdfkts3errvh"
Content-Disposition: inline


--w6i3mdfkts3errvh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Feb 23, 2020 at 11:40:19AM +0100, Ondrej Jirman wrote:
> Orange Pi PC2 features sy8106a regulator just like Orange Pi PC.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Reviewed-by: Samuel Holland <samuel@sholland.org>
> ---
>  .../dts/allwinner/sun50i-h5-orangepi-pc2.dts  | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)

Having a changelog would be great

> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
> index 70b5f09984218..7b2572dc84857 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
> @@ -93,6 +93,10 @@ &codec {
>  	status = "okay";
>  };
>
> +&cpu0 {
> +	cpu-supply = <&reg_vdd_cpux>;
> +};
> +
>  &de {
>  	status = "okay";
>  };
> @@ -168,6 +172,22 @@ &ohci3 {
>  	status = "okay";
>  };
>
> +&r_i2c {
> +	status = "okay";
> +
> +	reg_vdd_cpux: regulator@65 {
> +		compatible = "silergy,sy8106a";
> +		reg = <0x65>;
> +		regulator-name = "vdd-cpux";
> +		silergy,fixed-microvolt = <1100000>;
> +		regulator-min-microvolt = <1000000>;
> +		regulator-max-microvolt = <1400000>;
> +		regulator-ramp-delay = <200>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +};
> +

Looks like you fixed the issues reported by Samuel though. I've
applied it.

Maxime

--w6i3mdfkts3errvh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlOW6AAKCRDj7w1vZxhR
xWtLAP4yR1HaRlwGnk2FD+X7VmQ1E2adEITk68bc4hxUIUKccwD8C/Rd+mzb3MJG
pJZDFLurNHJRviqoRUqvCcAGuJPY9gI=
=j0Ge
-----END PGP SIGNATURE-----

--w6i3mdfkts3errvh--


--===============3191044851100439123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3191044851100439123==--

