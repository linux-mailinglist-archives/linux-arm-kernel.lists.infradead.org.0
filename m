Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0888119EAE6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 13:32:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ASCvWwswnlWfoyyUgaGjv1h+Lhp5ULObqMP4CV307c=; b=G5SGmRin0YCBXO
	uC9MXP1EE828io7ChjNELyN0AhHtM/4YJsuOjk0bfw7ZZCQP5B+hem9Hcm4Xit+dozd0LPrCFz6RH
	DtEouNLNdD7+DK1G+rC5SR/mk798IN77gEuDXy0fyio9Hi6ME6agaKxzogbFkeqNuMx43tIGkKYwS
	TLi3icE+2lHGUved0mj9ES6g1mAo/4aKOnAJwnL2lg1dEe/2MkVBBhUWskX89wnaSIeERH2hl3R0v
	3wD0sr5TGSePbM8GKpHHvRTHBbFFyKH0iPQGSxNN6QYxKUnJ+AmluYxn9unyAU+KtVGBLmJT+mwiW
	foj2jIwb+/ErEe9D5WDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL3VN-00079C-ED; Sun, 05 Apr 2020 11:31:57 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL3VE-00078J-KF
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 11:31:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1586086306; bh=dke9xyVpu/4Upjr6OYucKLOKfLnfaYRXQxjsbKJJ/Y0=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=nlhymB+726DMdDbsKypIt3tV2pdi3zOxHtzdqT9K3s3gHvWHTueLD8bJWy8AURh9x
 bgCX4z+Mjd8xB5zNKPK54rPO5DNS+PDikjItt0GMU+ABuEQSS9f1dS4a7Bu1v9wRbx
 uEOsHaVh1uEOpy2CuPgD/aEiZNsekaZRhim3F+gk=
Date: Sun, 5 Apr 2020 13:31:46 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [linux-sunxi] [PATCH 7/7] arm64: dts: allwinner: h6: Enable CPU
 and GPU opp tables for Beelink GS1
Message-ID: <20200405113146.be2etxxjdkgtrmac@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-sunxi <linux-sunxi@googlegroups.com>
References: <20200405104913.22806-1-peron.clem@gmail.com>
 <20200405104913.22806-8-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200405104913.22806-8-peron.clem@gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_043148_833913_E4E8366B 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Sun, Apr 05, 2020 at 12:49:13PM +0200, Cl=E9ment P=E9ron wrote:
> Enable CPU and GPU opp tables for Beelink GS1.
> =

> This needs also to change the CPU regulator min/max voltage to fit
> the OPP table.
> =

> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  .../arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> =

> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts b/ar=
ch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
> index df6d872c34e2..8e65d56a7c85 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
> @@ -4,6 +4,8 @@
>  /dts-v1/;
>  =

>  #include "sun50i-h6.dtsi"
> +#include "sun50i-h6-cpu-opp.dtsi"
> +#include "sun50i-h6-gpu-opp.dtsi"
>  =

>  #include <dt-bindings/gpio/gpio.h>
>  =

> @@ -70,6 +72,10 @@
>  	};
>  };
>  =

> +&cpu0 {
> +	cpu-supply =3D <&reg_dcdca>;
> +};
> +
>  &de {
>  	status =3D "okay";
>  };
> @@ -226,8 +232,8 @@
>  =

>  			reg_dcdca: dcdca {
>  				regulator-always-on;
> -				regulator-min-microvolt =3D <810000>;
> -				regulator-max-microvolt =3D <1080000>;
> +				regulator-min-microvolt =3D <820000>;
> +				regulator-max-microvolt =3D <1160000>;

The H6 datasheet says:

- VDD-CPU Power Supply for CPU  0.81 - 1.08 V (recommended)
- VDD-CPU Power Supply for CPU -0.30 - 1.30 V (abs max)

So I guess there's no need to increase the lower limit, because it matches
the datasheet already.

regards,
	o.

>  				regulator-name =3D "vdd-cpu";
>  			};
>  =

> -- =

> 2.20.1
> =

> -- =

> You received this message because you are subscribed to the Google Groups=
 "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msg=
id/linux-sunxi/20200405104913.22806-8-peron.clem%40gmail.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
