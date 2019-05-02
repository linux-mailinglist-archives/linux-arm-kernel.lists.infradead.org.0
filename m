Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011EB11456
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 09:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=37qucTMtSn/2O0O4zItTkMRk5Q+69z0S0C3+Q55t8pE=; b=FMp2qbs6WF2KILH/M/5kfj2m3
	v8bIjj3iY4eiiQBZK9MaRUAnlTrrrs8R32epH4A3AD7e3YkkhkOx+JdN7kydyAgsT5jo/Ti1cmWfV
	98BBKx2RmFSK9HLZD5upnuwhfbuggujaIsOp9tMBOWKXpezymowbqDs8/WDA1+jC6nozk2iBEgrQg
	8Flrb44jPY9dCwXfDCOACo5bfFzw1mQGl2lDzkjDurXxrdGN08+78qz5766eCmXPbG/HFPpgZ/8AC
	lPcPV43eoH6FruXijhkeUEWg/ymoTgjObCet6DVn3+08da+IHRnr8lV6arTNESemsh+vgvE5dYlF3
	en8PKmMew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6LC-0005NX-Br; Thu, 02 May 2019 07:41:14 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6L5-0005N2-Ay
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 07:41:09 +0000
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 321A3100012;
 Thu,  2 May 2019 07:41:03 +0000 (UTC)
Date: Thu, 2 May 2019 09:41:03 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Pablo Greco <pgreco@centosproject.org>
Subject: Re: [PATCH v5 7/7] ARM: dts: sun8i: v40: bananapi-m2-berry: Add
 Bluetooth device node
Message-ID: <20190502074103.vtuxmsl55u3ygyvl@flea>
References: <1556040365-10913-1-git-send-email-pgreco@centosproject.org>
 <1556040365-10913-8-git-send-email-pgreco@centosproject.org>
MIME-Version: 1.0
In-Reply-To: <1556040365-10913-8-git-send-email-pgreco@centosproject.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_004107_675567_291BB4C7 
X-CRM114-Status: GOOD (  26.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============7109163127486532360=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7109163127486532360==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="djstwku7pbrd4t2z"
Content-Disposition: inline


--djstwku7pbrd4t2z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 23, 2019 at 02:26:04PM -0300, Pablo Greco wrote:
> The AP6212 is based on the Broadcom BCM43430 or BCM43438. The WiFi side
> identifies as BCM43430, while the Bluetooth side identifies as BCM43438.
>
> The Bluetooth side is connected to UART3 in a 4 wire configuration. Same
> as the WiFi side, due to being the same chip and package, DLDO1 and
> DLDO2 regulator outputs from the PMIC provide overall power via VBAT and
> I/O power via VDDIO. The CLK_OUT_A clock output from the SoC provides
> the LPO low power clock at 32.768 kHz.
>
> This patch enables Bluetooth on this board, and also adds the missing
> LPO clock on the WiFi side. There is also a PCM connection for
> Bluetooth, but this is not covered here.
>
> The LPO clock is fed from CLK_OUT_A, which needs to be muxed on pin
> PI12. This can be represented in multiple ways. This patch puts the
> pinctrl property in the pin controller node. This is due to limitations
> in Linux, where pinmux settings, even the same one, can not be shared
> by multiple devices. Thus we cannot put it in both the WiFi and
> Bluetooth device nodes. Putting it the CCU node is another option, but
> Linux's CCU driver does not handle pinctrl. Also the pin controller is
> guaranteed to be initialized after the CCU, when clocks are available.
> And any other devices that use muxed pins are guaranteed to be
> initialized after the pin controller. Thus having the CLK_OUT_A pinmux
> reference be in the pin controller node is a good choice without having
> to deal with implementation issues.
>
> Signed-off-by: Pablo Greco <pgreco@centosproject.org>
> ---
>  arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>
> diff --git a/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts b/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
> index c87f2c0..15c22b0 100644
> --- a/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
> +++ b/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
> @@ -96,6 +96,8 @@
>  	wifi_pwrseq: wifi_pwrseq {
>  		compatible = "mmc-pwrseq-simple";
>  		reset-gpios = <&pio 6 10 GPIO_ACTIVE_LOW>; /* PG10 WIFI_EN */
> +		clocks = <&ccu CLK_OUTA>;
> +		clock-names = "ext_clock";

So if you don't have that patch (that enables bluetooth) the wifi
doesn't work (even though the previous patch is supposed to enable it)
?

>  	};
>  };
>
> @@ -173,6 +175,7 @@
>
>  &pio {
>  	pinctrl-names = "default";
> +	pinctrl-0 = <&clk_out_a_pin>;

This one should bein the previous one as well

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--djstwku7pbrd4t2z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMqfDwAKCRDj7w1vZxhR
xf1yAP0UUsp41Xj0RtPUCE7G8iW/EOtIede2VKkjSbtSJnpIBwD+PuiABK9pwo3G
FQErru6yLl0Q9pLeQNMdT3ZQ2I3Ubgo=
=xEhS
-----END PGP SIGNATURE-----

--djstwku7pbrd4t2z--


--===============7109163127486532360==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7109163127486532360==--

