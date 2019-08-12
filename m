Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 029DD898FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 10:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jcyd5TzxrTwXwJOIuHbjSZj4wHmtQadx60bUTEByT7s=; b=pXS+81aeUFxPEd3RRlndN4ukX
	9kQ/ALbCOIdoWOI2uAao2yVdsUwLMgqANUNaq/EvyRFF3lq5Lhc7Qsvnigik9tsKgrmmRl6ZoviJh
	/qmNxnxaUV43LiTOF8o3o+3wGLJ4gNDn4U2bPhcvL2WcOpwtOlyoT9X4hl9hfnDhhR+vnDx8QoLPN
	d8N29b9F9IhpdP2I2UkkFG0rXEd6/i9TIpnMChIcBLPGlyesIvxmP80Xw6tFhcTMuRTw2Tts7sST+
	SZYaoJRGYaF5KRPonqfECZN0GUBWiXCqKknEA4rlBG4Gfw6Ml+QPhoCtIOjmael/9KQYEPee9lCYH
	aHB35/Mqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx61W-000294-7J; Mon, 12 Aug 2019 08:49:50 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx61J-000283-Iz
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 08:49:39 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 8E8D6200006;
 Mon, 12 Aug 2019 08:49:16 +0000 (UTC)
Date: Mon, 12 Aug 2019 10:49:15 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH v5 15/18] thermal: sun8i: allow to use custom temperature
 calculation function
Message-ID: <20190812084915.lasb4dh25bfeoigr@flea>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190810052829.6032-16-tiny.windzz@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190810052829.6032-16-tiny.windzz@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_014937_778271_E3E35C0F 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 gregkh@linuxfoundation.org, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, edubezval@gmail.com, wens@csie.org,
 robh+dt@kernel.org, Jonathan.Cameron@huawei.com, mchehab+samsung@kernel.org,
 rui.zhang@intel.com, davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============0698463189167144123=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0698463189167144123==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="f4uotbkobwqxzt7r"
Content-Disposition: inline


--f4uotbkobwqxzt7r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sat, Aug 10, 2019 at 05:28:26AM +0000, Yangtao Li wrote:
> From: Icenowy Zheng <icenowy@aosc.io>
>
> The H5 temperature calculation function is strange. Firstly, it's
> segmented. Secondly, the formula of two sensors are different in the
> second segment.
>
> Allow to use a custom temperature calculation function, in case of
> the function is complex.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>

When you send a patch on someone else's behalf, you need to put your
Signed-off-by as well.

> ---
>  drivers/thermal/sun8i_thermal.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
> index 3259081da841..a761e2afda08 100644
> --- a/drivers/thermal/sun8i_thermal.c
> +++ b/drivers/thermal/sun8i_thermal.c
> @@ -76,6 +76,7 @@ struct ths_thermal_chip {
>  				     u16 *caldata, int callen);
>  	int		(*init)(struct ths_device *tmdev);
>  	int             (*irq_ack)(struct ths_device *tmdev);
> +	int		(*calc_temp)(int id, int reg);
>  };
>
>  struct ths_device {
> @@ -90,9 +91,12 @@ struct ths_device {
>
>  /* Temp Unit: millidegree Celsius */
>  static int sun8i_ths_reg2temp(struct ths_device *tmdev,
> -			      int reg)
> +			      int id, int reg)
>  {
> -	return (reg + tmdev->chip->offset) * tmdev->chip->scale;
> +	if (tmdev->chip->calc_temp)
> +		return tmdev->chip->calc_temp(id, reg);
> +	else
> +		return (reg + tmdev->chip->offset) * tmdev->chip->scale;

You're not consistent here compared to the other callbacks you have
introduced: calibrate, init and irq_ack all need to be set and will
fail (hard) if you don't set them, yet this one will have a different
behaviour (that behaviour being to use the H6 formula, which is the
latest SoC, which is a bit odd in itself).

I guess we should either make it mandatory as the rest of the
callbacks, or document which callbacks are mandatory and which are
optional (and the behaviour when it's optional).

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--f4uotbkobwqxzt7r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVEoCwAKCRDj7w1vZxhR
xfQmAP9xX6EXk3hDLg/bBSbrnJp6QkeJeiCQrfENROxox3MBTQD/Xm0PpUdxbQaF
HD4uZ6W1In3fv39oufKd/j0DlKZ5Lwc=
=i8aL
-----END PGP SIGNATURE-----

--f4uotbkobwqxzt7r--


--===============0698463189167144123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0698463189167144123==--

