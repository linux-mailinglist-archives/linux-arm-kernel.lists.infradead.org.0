Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DB6E83DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 10:08:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIkqXByhK7gvW9LdunsVETMUpWbtmuWkLwCzbh3EkMg=; b=Oi5/lbuOIGWKm5
	hVGC309FRGW6A0yOkWONlv2K68RP4q39GYil0aCinsnYcKpvdiT0d6qyF8ajF1Q2U23ybn9v72LV9
	CwxV9X8sUFx1/6mhV5yQaQWdKVBWlvAJa6cL0bz9xDxixYeAECFRm4zFXxICEEee9JXF9v4/LPQhj
	7PWbmE2sNLiD0ZCWMp+gIDdhIFx5RKrWjMsvfZYVQyTgIeckV6UL+kG6r+I7cVbpjEcyFOLIQXmuc
	qksp0vMEVjaFiFAPWHRibILsbNEBAD+eYYSOxDtgM3foBrgqb9b4lz4gNK4PeeWH372ow3L5XcwrN
	ilvu/leVNOeNhd9c8uFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPNUP-0006fj-7b; Tue, 29 Oct 2019 09:08:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPNUC-0006e9-Ec
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 09:08:24 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iPNTu-0002XP-O9; Tue, 29 Oct 2019 10:08:02 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iPNTt-0007YZ-T6; Tue, 29 Oct 2019 10:08:01 +0100
Date: Tue, 29 Oct 2019 10:08:01 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH 3/3] arm: dts: sun8i: a83t: a711: Add touchscreen node
Message-ID: <20191029090801.zls2qns7rxcvmxor@pengutronix.de>
References: <20191029005806.3577376-1-megous@megous.com>
 <20191029005806.3577376-4-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029005806.3577376-4-megous@megous.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:04:51 up 164 days, 15:23, 99 users,  load average: 0.20, 0.17,
 0.08
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_020820_491731_4A7A63B8 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 =?iso-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-input@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 19-10-29 01:58, Ondrej Jirman wrote:
> From: Myl=E8ne Josserand <mylene.josserand@bootlin.com>
> =

> Enable a FocalTech EDT-FT5x06 Polytouch touchscreen.
> =

> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Signed-off-by: Myl=E8ne Josserand <mylene.josserand@bootlin.com>
> ---
>  arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> =

> diff --git a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts b/arch/arm/boot/dt=
s/sun8i-a83t-tbs-a711.dts
> index 568b90ece342..19f520252dc5 100644
> --- a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> +++ b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> @@ -164,6 +164,22 @@
>  	status =3D "okay";
>  };
>  =

> +&i2c0 {
> +	clock-frequency =3D <400000>;
> +	status =3D "okay";
> +
> +	touchscreen@38 {
> +		compatible =3D "edt,edt-ft5x06";
> +		reg =3D <0x38>;
> +		interrupt-parent =3D <&r_pio>;
> +		interrupts =3D <0 7 IRQ_TYPE_EDGE_FALLING>; /* PL7 */
> +		reset-gpios =3D <&pio 3 5 GPIO_ACTIVE_LOW>; /* PD5 */
> +		vcc-supply =3D <&reg_ldo_io0>;
> +		touchscreen-size-x =3D <1024>;
> +		touchscreen-size-y =3D <600>;

Do you want this touchscreen as wakeup-src? If so please add the
property here. I've send patches converting the driver from the default
behaviour: https://patchwork.kernel.org/cover/11149039/ and all agreed
to break backward compatibility.

Regards,
  Marco

> +	};
> +};
> +
>  &i2c1 {
>  	clock-frequency =3D <400000>;
>  	status =3D "okay";
> -- =

> 2.23.0
> =

> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
