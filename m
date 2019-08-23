Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3DC9AC8F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 12:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W0oAtovo7wKLwwL8+rLeTXb7Y7iJkg0C/sw7tsx3C9Q=; b=h3r8JCcDT+geqPK0zvBMTOxRc
	S82zCHkEAQsd9BILE9oWea9YfaAtnjNVyVO6rMQYULZPyROtLa1a3xAKtCWN5FAU2u0LHwC5jd0MZ
	JQn++4cJJVtVxZhqYZm4GnJwiwR1UE4O3K5Q9guJK3kksuysUWvEDbyZa6js9EP7Xm7KMMRR96ojX
	uiwLh2u03lmX+4EieDxv0zNt71o2AqTt4DJg30icHL+Vfp4S2gPCAPg8xvfMlclBnXXHrDp9rjfev
	SQPnyXfk0qrbH8uw/q7QlSGChfeQNGgArQVpa4i+OrZ0AwT1he5ezPT2ooW7//KYWr4GGUPl/1xG5
	ZJILjF+EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16Uc-0000rc-9t; Fri, 23 Aug 2019 10:08:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16UN-0000qv-BM
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 10:08:12 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 930E2233FD;
 Fri, 23 Aug 2019 10:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566554890;
 bh=Crf5MDMj/lbQANBrYTEedXUjRJ1Lg0gXyJkpryyhpFA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2I9aABEKFe19P/u13VQXXoUe/QJfkyZhnE0fm2bEYfevqJkdBCeLFRhuL9BGhTqm9
 9b22xeAubdeOR3pRDInaRFfTkcxdZ8PwA+INjNhzq3Q9XM97koWPu16tcri5SeaQ3o
 1/OE/G1oAP9zb5aK6WuNSUUQXiGCCu+BxkVjsYOQ=
Date: Fri, 23 Aug 2019 12:08:07 +0200
From: Maxime Ripard <mripard@kernel.org>
To: megous@megous.com
Subject: Re: [PATCH] arm64: dts: allwinner: orange-pi-3: Enable WiFi
Message-ID: <20190823100807.22heh2gahi7owo4e@flea>
References: <20190823094228.6540-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20190823094228.6540-1-megous@megous.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_030811_434826_1924260E 
X-CRM114-Status: GOOD (  26.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2991532973477783402=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2991532973477783402==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sx4erx44vln7kzi7"
Content-Disposition: inline


--sx4erx44vln7kzi7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Aug 23, 2019 at 11:42:28AM +0200, megous@megous.com wrote:
> From: Ondrej Jirman <megous@megous.com>
>
> Orange Pi 3 has AP6256 WiFi/BT module. WiFi part of the module is called
> bcm43356 and can be used with the brcmfmac driver. The module is powered by
> the two always on regulators (not AXP805).
>
> WiFi uses a PG port with 1.8V voltage level signals. SoC needs to be
> configured so that it sets up an 1.8V input bias on this port. This is done
> by the pio driver by reading the vcc-pg-supply voltage.
>
> You'll need a fw_bcm43456c5_ag.bin firmware file and nvram.txt
> configuration that can be found in the Xulongs's repository for H6:
>
> https://github.com/orangepi-xunlong/OrangePiH6_external/tree/master/ap6256
>
> Mainline brcmfmac driver expects the firmware and nvram at the following
> paths relative to the firmware directory:
>
>   brcm/brcmfmac43456-sdio.bin
>   brcm/brcmfmac43456-sdio.txt
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>
> Since RTC patches for H6 were merged, this can now go in too, if it looks ok.
>
> Other patches for this WiFi chip support were merged in previous cycles,
> so this just needs enabling in DTS now.
>
> Sorry for the links in the commit log, but this information is useful,
> even if the link itself goes bad. Any pointer what to google for
> (file names, tree name) is great for anyone searching in the future.

I understand, but this should (also?) be in the wiki. Please add it
there too.

> Please take a look.
>
> Thank you,
> 	Ondrej
>
>  .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> index eda9d5f640b9..49d954369087 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> @@ -56,6 +56,34 @@
>  		regulator-max-microvolt = <5000000>;
>  		regulator-always-on;
>  	};
> +
> +	reg_vcc33_wifi: vcc33-wifi {
> +		/* Always on 3.3V regulator for WiFi and BT */
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc33-wifi";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +		vin-supply = <&reg_vcc5v>;
> +	};
> +
> +	reg_vcc_wifi_io: vcc-wifi-io {
> +		/* Always on 1.8V/300mA regulator for WiFi and BT IO */
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc-wifi-io";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-always-on;
> +		vin-supply = <&reg_vcc33_wifi>;
> +	};
> +
> +	wifi_pwrseq: wifi_pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rtc 1>;
> +		clock-names = "ext_clock";
> +		reset-gpios = <&r_pio 1 3 GPIO_ACTIVE_LOW>; /* PM3 */
> +		post-power-on-delay-ms = <200>;
> +	};
>  };
>
>  &cpu0 {
> @@ -91,6 +119,25 @@
>  	status = "okay";
>  };
>
> +&mmc1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc1_pins>;

This is the default already. I've removed it and applied.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--sx4erx44vln7kzi7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV+7BwAKCRDj7w1vZxhR
xdUoAP9lf+bDRTFhwEM+MuhxjkNWf8b3rdWTvPeIslZaYzUokAD+O9BdXFqXhK6Q
TawAIlkWp7SHKOU0NdRWhmLzQZyaJwM=
=YyL0
-----END PGP SIGNATURE-----

--sx4erx44vln7kzi7--


--===============2991532973477783402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2991532973477783402==--

