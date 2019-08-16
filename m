Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E37158FCCA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 09:52:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qMe5zcXJqFFIIHtnpoZChiQ77/NdIhzMHNS9XILzK/A=; b=ouGtraIvRw0TK5CULzE3bd31Z
	nD6NINcy09AFm7cEuXSKEgvRAsLuYEwza7hsPWq+tPJVn7UhVyVfQSdNV+KQ3Q1md+sAAkSQdabRs
	87inrRUX2t5o7VTEH+rVriqjePNxYEHFsI3NcH7uiLMVlv2PWTlK4vuSjfDG83a2KzqkDl97ULivE
	7aVcC+CVR33TqW0YOrv3SAxqVFKqyk6mPg4sbcq8D2bWkpKm4rbaLBZRCWSCvkRuli4XnbKQeQBWH
	ypqLvq9QD5uvAVj8dikQWl132G2KF1T9dDM4ehNUvqyE17BG6ng6wyzlmFGHFTVQ2DpKOkgr/zBjX
	UQEl2/4+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyX2P-0005ot-J5; Fri, 16 Aug 2019 07:52:41 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyX2A-0005oA-3L
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 07:52:27 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 61A9610000A;
 Fri, 16 Aug 2019 07:52:12 +0000 (UTC)
Date: Fri, 16 Aug 2019 09:52:11 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Bhushan Shah <bshah@kde.org>
Subject: Re: [PATCH v2 3/3] arm64: allwinner: h6: add i2c0 node in PineH64
Message-ID: <20190816075211.xaq54q2cdniwjpp3@flea>
References: <20190811090503.32396-1-bshah@kde.org>
 <20190816064710.18280-1-bshah@kde.org>
 <20190816064710.18280-4-bshah@kde.org>
MIME-Version: 1.0
In-Reply-To: <20190816064710.18280-4-bshah@kde.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_005226_293995_9D9883BD 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Wolfram Sang <wsa@the-dreams.de>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============4024996178279973870=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4024996178279973870==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ft24qo4b5lbfpatv"
Content-Disposition: inline


--ft24qo4b5lbfpatv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

65;5603;1c
On Fri, Aug 16, 2019 at 12:17:10PM +0530, Bhushan Shah wrote:
> i2c0 bus is exposed by PI-2 BUS in the PineH64, model B.
>
> Signed-off-by: Bhushan Shah <bshah@kde.org>
> ---
> Changes in v2:
>   - Don't enable the i2c0 node in PineH64 by default
>
>  arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> index 684d1daa3081..97d9b7c63fb3 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> @@ -160,6 +160,15 @@
>  	vcc-pg-supply = <&reg_aldo1>;
>  };
>
> +/* This i2c interface is exposed on PI-2 BUS, Pin 3 (I2C_SDA) and 5 (I2C_SCL) */
> +&i2c0 {
> +	status = "disabled";
> +};

This property is set to disabled in the DTSI already

> +&i2c0_pins {
> +	bias-pull-up;
> +};
> +

And this should be in the same overlay than the one that sets status
to okay.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ft24qo4b5lbfpatv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVZgqwAKCRDj7w1vZxhR
xRnpAQCA1Dnh07ZLw+W8kJWaeBmCKi6OoeBA81ASauE2EwWjfAEApDyrf66lZnxn
8aFeeQ7tNBJFyO0BUDMs+ClRbnuPawQ=
=EKXH
-----END PGP SIGNATURE-----

--ft24qo4b5lbfpatv--


--===============4024996178279973870==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4024996178279973870==--

