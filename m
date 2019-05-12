Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F14A1AC7C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 15:42:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xKTG/zoDAPWwqJZPpj9A7AtlYgOKuR1/oEuTDHbAQZw=; b=ldZVj7kNLcMhppSJXc4Lib3N+
	gTjUsuL3di+CWulFkoGQuyokOxRuV2Bvo/naBUUzJhOaVYxvwrg5nWxcFt8EDycAJ15aMHtQxbK63
	j/YpfOn2fCjVk+sEmClfooerKO8vrGg3GmsD2DZ10bhR8aJ4PadLvr1Pm+B3I+Qen61ubpMQwgOrc
	tK8NTL0z32p2NAPlOJGepsk4mALutUvlA7VPu+22eRFxJU1mtYy4Y5sbIiC6hXGNv1ROiavocr4rm
	iBp9li/ODmTA+HWcP5jHB8HO2aXCYeN8Cosq2nJa8s+jQf8jj6KPoB1WsKLYE1OSgfjkhvDdDm14c
	7qRgIRcYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPok2-0006hY-Gi; Sun, 12 May 2019 13:42:14 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPoju-0006gZ-Ro
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 13:42:08 +0000
X-Originating-IP: 109.190.253.16
Received: from localhost (unknown [109.190.253.16])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 8AE6DE0005;
 Sun, 12 May 2019 13:41:53 +0000 (UTC)
Date: Sun, 12 May 2019 15:41:52 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: thermal: add binding document for h6
 thermal controller
Message-ID: <20190512134152.yrletgtiglxncyo4@flea>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-4-tiny.windzz@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190512082614.9045-4-tiny.windzz@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_064207_050169_DCF75FEF 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, daniel.lezcano@linaro.org, catalin.marinas@arm.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org, mchehab+samsung@kernel.org,
 paulmck@linux.ibm.com, stefan.wahren@i2se.com, linux-pm@vger.kernel.org,
 wens@csie.org, jagan@amarulasolutions.com, andy.gross@linaro.org,
 rui.zhang@intel.com, devicetree@vger.kernel.org, marc.w.gonzalez@free.fr,
 edubezval@gmail.com, enric.balletbo@collabora.com, robh+dt@kernel.org,
 Jonathan.Cameron@huawei.com, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, olof@lixom.net,
 davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============6255928117610536647=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6255928117610536647==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ahljv2wucenn7ylv"
Content-Disposition: inline


--ahljv2wucenn7ylv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sun, May 12, 2019 at 04:26:14AM -0400, Yangtao Li wrote:
> This patch adds binding document for allwinner h6 thermal controller.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  .../bindings/thermal/sun50i-thermal.txt       | 32 +++++++++++++++++++
>  1 file changed, 32 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/sun50i-thermal.txt

We're starting to convert to YAML for binding descriptions that will
allow to validate that all DT are properly using the binding. It would
be great if you could use it as well.

> diff --git a/Documentation/devicetree/bindings/thermal/sun50i-thermal.txt b/Documentation/devicetree/bindings/thermal/sun50i-thermal.txt
> new file mode 100644
> index 000000000000..67eda7794262
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/sun50i-thermal.txt
> @@ -0,0 +1,32 @@
> +Binding for Thermal Sensor of Allwinner SOC.
> +
> +This describes the device tree binding for the Allwinner thermal controller
> +which measures the on-SoC temperatures.
> +
> +Required properties:
> +- compatible:
> +  - "allwinner,sun50i-h6-ths" : For H6
> +- reg: Address range of the thermal controller
> +- clocks, clock-names: Clocks needed for the thermal controller.
> +		       The required clocks for h6 are: "bus".

If there's a single clock, then we don't need clock-names

> +- resets, reset-names: Reference to the reset controller controlling
> +		       the thermal controller.

Ditto.

> +- nvmem-cells: A phandle to the calibration data provided by a nvmem device. If
> +	       unspecified default values shall be used.
> +- nvmem-cell-names: Should be "calib"

I thought you said that nvmem support was optional in the
driver. Maybe we could make it optional in the DT too?

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ahljv2wucenn7ylv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXNgioAAKCRDj7w1vZxhR
xXgAAP9K2xJnOzxte2sR5B23CXZbzrx5rlhRaXia5y6fdipxGQD+JTw1nNbgTjV+
hD+q/NKIiRukijuarNG8O3iM1Nov6wI=
=TJRY
-----END PGP SIGNATURE-----

--ahljv2wucenn7ylv--


--===============6255928117610536647==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6255928117610536647==--

