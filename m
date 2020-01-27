Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D90D14A6B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 15:59:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ra6+v0mRmll+d0niEAmKzfvN1KTlCjXmGWinmFYhhWI=; b=PPuyClt9MCY0KPsOa7Qni3lpg
	qlg/VPcpmpF+wH2FoL0SHGrJcYnRpsTE4O/KuyvNvg3Lh2PQlPVMveXY5UXQddI2U+Sh2PFGsD1zx
	k4j8orBZX0ggJ6FhGvmvYCQ52MxRyNGoufYlmkEUbE7FBPL76pAXz6rzirIYlp91bpHkJb/bXJeik
	ADfTKUDM0pSG9kZOTGd9bnrf+N6zmAXswnoYUkP8vBJlcR63qX9AWy7Y7G87iujJ4EvirPSFPG0cQ
	tJ5oK84ftYf6bdrnmq5JHeXt5bzdj0R4pGhy9DNSERyHsErYSUPjzKlscH8mTTuOoQq/swu2SBkn/
	uor1EmviA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw5rg-0005eh-6I; Mon, 27 Jan 2020 14:59:48 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw5rU-0005YW-8C
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 14:59:37 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 423A92208C;
 Mon, 27 Jan 2020 09:59:35 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 27 Jan 2020 09:59:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=kYYUUnAwZZI0feOedjjFh/1OaT1
 i27hqj14Wc+HfQjQ=; b=OpzF5pvUdsVCFA/kFgiqVy6T3l1nBnrZ/uILXG21Mkg
 FB6rZKwuhXRNQ+aWYXzG2M7M3Y/Z8H77vEx6t2Y1piTDGmK9ECaX4BcYSsu1nNtM
 2q5sdPBiPfcxt36QH4rwoTAT27+W1guhzeulofgxSNoaoSraBOmO89PXjeQwSBm9
 RxiAHoNVZ36Bb/PsVVdMfB8G+D2k20jdXnV6Py0MRupMWBnDCqHCuSXPcufy6jFL
 MVULaK+G0+5xpEhsmF0R63keOiJTx+j/zLlt9M1Rtub+EIKMRqS1qHDtKJPKZ/0+
 GxrvOwlODv+Ocb6VDXt1a1NV7NhozQQc3GHd+uXdNbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=kYYUUn
 AwZZI0feOedjjFh/1OaT1i27hqj14Wc+HfQjQ=; b=td99w1MQjVqGxuSkEEZb8l
 dDX+K73+mR0eWaDWGqidX45jZNz1Y7ne/kmG9+KfSYwXroHZrRuqUICsOLpS/eCU
 6MhCqxsiF90TLJkWGLVndm9nMHllyHtX0GBwlMmE5ogOHtKBl1QHTKEpLmH8gXGN
 qjOo3IN1U3XwXn1+3jp4gg7aSl39M8uBk8AQDdv1AJYxUd6/qSMqQyoxsqN+fPZW
 BM+jyZkExFK8L33m6HoC0pkeCbwJ9Ffa8FNnQrn0CAcWMYkizh+j7bjQKTqDJCvo
 2vImDdqLmsNCINgBEBjbPPVlNw9gTvi547Zqp0IOGwtN7fCpFQ/jTbdjTCAdC2mw
 ==
X-ME-Sender: <xms:1fouXjpeBdt_tFZxI91BOJHS7m16IFPjjxjd5Ak1o-1F_ObqhkeeUw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrfedvgdejtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:1fouXsJNbdco-veunsL5RGMK2TLrzaBmAS-qX2wb7sCJdNNXm4KNuA>
 <xmx:1fouXm7d9yFizwEq5a-SZKnFCf787Qw7ZGAIINtSRc5avB4igbNwow>
 <xmx:1fouXmAGFzk3Wr3SiUnKKhAW7Q8lb_67zuAvuFNcrLEn7ZiHG3ROzw>
 <xmx:1_ouXsT4orjMUqm8CuXKrZsn3-H1QpZj_tdINWOKvvemakc2m64TUg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 26DCD3069FF8;
 Mon, 27 Jan 2020 09:59:33 -0500 (EST)
Date: Mon, 27 Jan 2020 15:59:31 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 3/5] arm64: dts: allwinner: a64: Add MBUS controller node
Message-ID: <20200127145931.rjewha4awnlorfvb@gilmour.lan>
References: <20200125110353.591658-1-jernej.skrabec@siol.net>
 <20200125110353.591658-4-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20200125110353.591658-4-jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_065936_436338_C49C66D8 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6301585628964513481=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6301585628964513481==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hchmskw2va5gdqje"
Content-Disposition: inline


--hchmskw2va5gdqje
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sat, Jan 25, 2020 at 12:03:51PM +0100, Jernej Skrabec wrote:
> A64 contains MBUS, which is the bus used by DMA devices to access
> system memory.
>
> MBUS controller is responsible for arbitration between channels based
> on set priority and can do some other things as well, like report
> bandwidth used. It also maps RAM region to different address than CPU.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> index 862b47dc9dc9..d225ea1f3b87 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -1061,6 +1061,14 @@ pwm: pwm@1c21400 {
>  			status = "disabled";
>  		};
>
> +		mbus: dram-controller@1c62000 {
> +			compatible = "allwinner,sun50i-a64-mbus";
> +			reg = <0x01c62000 0x1000>;
> +			clocks = <&ccu CLK_MBUS>;

We're merging the clock header patch and the DT through two different
trees, so you can't use it right away. You should use the raw ID here.

(also, as a general remark, it's easier on us to not send the patches
during the rc6 <-> rc1 phase), so if you can resend them as soon as
rc1 is out, that would be great :)

Maxime

--hchmskw2va5gdqje
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXi760wAKCRDj7w1vZxhR
xV3PAQChOtKOxyE6bSJr+/fHayOoz8h6A1dqalhBnV4Yedxv2QD/a9QqEgknQXMe
KRf3qGZyHOAWbKWvK2FkvcTP92UVFgE=
=7bxe
-----END PGP SIGNATURE-----

--hchmskw2va5gdqje--


--===============6301585628964513481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6301585628964513481==--

