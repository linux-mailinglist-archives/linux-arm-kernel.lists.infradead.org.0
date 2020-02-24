Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E2616A27C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:39:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2CYp2890ah6b+Vj4eUWwV6bmxlrAUikmtcWmGH4luhs=; b=pNyI/3D5YOQcA1W2+n98TjuqX
	+ZuJk3kuUVFu7rJa64DSQmnAFWULH0e1/hhlZHF8wKlpodnx98/nBu+FrynRQxnUbtCAedmGeVXeq
	ZJoPKeAuxsaDB0q+hckX1Q0trnLLGtRXFlftZmntmjfRQwMkQyYv2Nw6OaO7qpbMaC8oFqTHxnwlw
	a/8hMbaUOJA5CDSErIutn6ZJ0tkUbgnGH5tNoIQSPkndjUEMUld7P2aQ58CtvZ3cz5Qlf1VQUYZLc
	XhdgYyreHOrm321z8HTtQYE6WxfWpSzlQI31zu7hmgrq1a58zESqJ1HsFV/FYRkbva4JsQPiYIxuh
	61BS4fTIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ACo-0007qj-7c; Mon, 24 Feb 2020 09:39:14 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69lX-0003zo-Q0
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 09:11:06 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 34D407698;
 Mon, 24 Feb 2020 04:11:02 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:11:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=P6NSWkrKZ4ycnvFOSuy67yShL4e
 kMBsFHiAL05968xc=; b=lZ4OE2YE954qYDC16RXXOtM/qnFZraFfeQ0BPlrNAQt
 GXa5BRrgjuoMXO09Hj3a+SRn3OWbiJfp1i7iHeX49HvPtvYKGj2ka60gIk6QygsS
 xOedDCFBmF5v3PSXS+L3NxwVtIqE9RznUlMhphBxtmlaexBZKMCsLbsXEtmnyWFY
 pEHkRiCnYtzef/iZ9FYqOK2PmauywfwotGSDS2ZUzSt7Y+pIb5q+qAQYlq5a9+4S
 4EP5CiPaANupbgvtbAquupThLnPHIfavvUMjae8bB/oPE3uGTWNm4571hPnqzcdV
 tIp44pxnFoVzlNbG6lpp5aNwDIpEsxcIGB/g47CMCuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=P6NSWk
 rKZ4ycnvFOSuy67yShL4ekMBsFHiAL05968xc=; b=r57KjA79/p5plmAAJXNv/J
 hnoNbfH/Fm5PIKdb1WwapcoQy4JZwmrTAKiYdDrU1xmPe7YO7cg67fWW48x/8Fg0
 W26pjrXMh+5qpMVxoKbHogk903GtPfV8zMhdIYPCRS2I4WRgLVL9zN0dmtKVcK+i
 +nFZkhg/lAgAR/F4y/hcFeDm10hT/erEAES/h79aAY8bMLzzV6UcDsBWX01txzKi
 9J3KqrQ01PWX26AWkYE4nz7E7TgV/YUQHv3e2RlERTMoj0olsRWysMp3i+g4zilC
 ikqMBqw87Ow0nRPMkSim4j0vTFLFbDC0hjG/xkHYH/Scm6XVExWWXkLkrNQgbz8w
 ==
X-ME-Sender: <xms:JJNTXoeASscD0ZE79XXdYIUaj_4HERRURm8t60DN_w_LZdOkXgefiQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 epfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:JJNTXluWuPtuGN1waXd_JiswnG4e7u-fVcy7PczKJAgHSvNxt3tqQg>
 <xmx:JJNTXv_wMhB5XVyVpuBZBac9XmYEjBsod6Y6Tlf2Dk6TfKZoM0gR_w>
 <xmx:JJNTXo1zXyyBSNGeEc12xnIp9_AK21g3yWfN8SJAGvtSF8hQMAa4Sg>
 <xmx:JpNTXugmknZ6EKgtv52oiyQ9y3cZAT18nBrpAmieETp8hBTU8RsCag>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 421BA328005A;
 Mon, 24 Feb 2020 04:11:00 -0500 (EST)
Date: Mon, 24 Feb 2020 10:10:59 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH 3/4] ARM: dts: sun8i-a83t-tbs-a711: Add support for the
 vibrator motor
Message-ID: <20200224091059.lljffogofbexhudt@gilmour.lan>
References: <20200222231428.233621-1-megous@megous.com>
 <20200222231428.233621-4-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20200222231428.233621-4-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011104_430470_98CBC08D 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, Luca Weiss <luca@z3ntu.xyz>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Tomas Novotny <tomas@novotny.cz>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4370973623101172777=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4370973623101172777==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rf2uuzktvcqtstk3"
Content-Disposition: inline


--rf2uuzktvcqtstk3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sun, Feb 23, 2020 at 12:14:27AM +0100, Ondrej Jirman wrote:
> The board has a vibrator mottor. Hook it to the input subsystem.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> index 2fd31a0a0b344..a22920275e99b 100644
> --- a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> +++ b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> @@ -99,6 +99,11 @@ panel_input: endpoint {
>  		};
>  	};
>
> +	vibrator {
> +		compatible = "gpio-vibrator";
> +		vcc-supply = <&reg_ldo_io1>;
> +	};
> +

LDO IO1 can also be muxed in as a GPIO iirc, why did you choose the
regulator instead?

Maxime

--rf2uuzktvcqtstk3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlOTIwAKCRDj7w1vZxhR
xVFTAQDQJHOWWsog4Y0l4mRxEOjNKPwakKZYlCWd4M50UL9jDAEArb1p2WwTIOaO
jt5TR3xH+He9Bb3uaRGhWtWZpIcV9Aw=
=/rlr
-----END PGP SIGNATURE-----

--rf2uuzktvcqtstk3--


--===============4370973623101172777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4370973623101172777==--

