Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B751144A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 09:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0XyX/7xnlU1oMvHDuLc8r6h9s7K10LQkHZlOwf68V6w=; b=fG9HbNK9rFouSLOTl8NUrPfBU
	UZnBgrBRokWUdteynoSYHBHGSwvNQ4Beldb04llIhhw4HnNRyDUMm7Yv5lQyGFyXTRfUqqW5Pjbi9
	klwJMSXeo76Iqgj31GJiDZdBinnB5TskAx+TQH1K43M95Ld4ui3zIVmehie9OtQMSjGYnKvnjPhYW
	FMEibMwAH3dvyynPlSExbWxeasbt9ZY/mMKPPEsvyuteml1qscmTnw3h8fZSKwfThJol6815Z5NRk
	7EE5+uSm4td6mUzjOEYPV93UxShyvgI09XG4Os6h1ucjAzAbT2jriI/C1YYtN2oVcXOI3vfU9m90g
	JEkG4EDOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6IT-0003ZZ-Gz; Thu, 02 May 2019 07:38:25 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6IM-0003YW-Dz
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 07:38:19 +0000
X-Originating-IP: 90.88.149.145
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 8C4956001E;
 Thu,  2 May 2019 07:38:15 +0000 (UTC)
Date: Thu, 2 May 2019 09:38:15 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Pablo Greco <pgreco@centosproject.org>
Subject: Re: [PATCH v5 2/7] ARM: dts: sun8i: v40: bananapi-m2-berry: Add GPIO
 pin-bank regulator supplies
Message-ID: <20190502073815.56ktbpiieviqr4ss@flea>
References: <1556040365-10913-1-git-send-email-pgreco@centosproject.org>
 <1556040365-10913-3-git-send-email-pgreco@centosproject.org>
MIME-Version: 1.0
In-Reply-To: <1556040365-10913-3-git-send-email-pgreco@centosproject.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_003818_618105_4A610BAA 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1744962114250290675=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1744962114250290675==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mozzdkjp5mxfsgi7"
Content-Disposition: inline


--mozzdkjp5mxfsgi7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 23, 2019 at 02:25:59PM -0300, Pablo Greco wrote:
> The bananapi-m2-berry has the PMIC providing voltage to all the pin-bank
> supply rails from its various regulator outputs, tie them to the pio
> node.
>
> Signed-off-by: Pablo Greco <pgreco@centosproject.org>
> ---
>  arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts b/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
> index f05cabd..2cb2ce0 100644
> --- a/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
> +++ b/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
> @@ -123,6 +123,16 @@
>  	status = "okay";
>  };
>
> +&pio {
> +	pinctrl-names = "default";

A pinctrl-names property without any other one?

Looks good otherwise, thanks
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--mozzdkjp5mxfsgi7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMqeZwAKCRDj7w1vZxhR
xWAvAP9Ube1a6eth4D4yO+TbxAcvXYXN57IBWySHefw23mH/NwEA7cS4mkoOqVEY
MSC2Gv+N0fevxktj4+Em9DYbiI+s6wo=
=FDPL
-----END PGP SIGNATURE-----

--mozzdkjp5mxfsgi7--


--===============1744962114250290675==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1744962114250290675==--

