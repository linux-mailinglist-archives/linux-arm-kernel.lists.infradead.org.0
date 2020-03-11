Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 448C7181201
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:33:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vAHEad5qmrz7lFs4VDzfU46WuINfcn7GXzcFRsMuq5Q=; b=f4iHZYSlvdZXhH
	84S+tqEzvrvijHL+ElJATh5x6DuPvVbV7I52N3v05k6SkJyVQe6YPPmJ/q2ltINKsY59zchc8N4Te
	ZT0ScOvvUmyQO8GJxV0sPMPJP9xVXG9yG/tvteIgHAcjKUlLuax/pdqm/7uKXEc4NIVgtMlYae8Nc
	YNnd+mHLRuVKvJskcMeVzoCuD1YV29wrZKHbwMjK+p1v2r2MSIe7+Wm9K9HS8m++aWCi891+k+kpX
	YNAN1M47g9oTKZHqhWgtAtvjMPofysldwratE9V7p2UybOBpA2k3WlKAE5wMUax3uFdyS43TCMZtz
	9dZLR903CdXrYYCIWKDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBvrl-0007RW-45; Wed, 11 Mar 2020 07:33:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBvrd-0007RA-BS
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:33:14 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B50E6208C3;
 Wed, 11 Mar 2020 07:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583911993;
 bh=XKRGVQvoHyVOcSFufXQasytJRls1NO6yFTE1U7JxreQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DHfg7EZ79oc555WDSXia8qXQruhTug08h9twnsFk9ssxk4UORqN0njx+WZePkLVZ7
 IoBWScM2aW+vFv9Eh50uhCuVD32x768Js6PTkAFWf4pD3y6D9ieh2Pmi/wPQGAK6Bl
 czUchC/e/8qAr/yfPq7TqdF61lv7hyDJsf6fUr4E=
Date: Wed, 11 Mar 2020 15:33:03 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>,
 Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: Re: [PATCH v4] ARM: dts: imx6: phycore-som: fix arm and soc minimum
 voltage
Message-ID: <20200311073248.GP29269@dragon>
References: <20200227110246.8624-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227110246.8624-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_003313_414137_4AD9DCC0 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: chf.fritz@googlemail.com, robh+dt@kernel.org, kernel@pengutronix.de,
 c.hemp@phytec.de, contact@stefanchrist.eu, s.christ@phytec.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 12:02:46PM +0100, Marco Felsch wrote:
> The current set minimum voltage of 730000=B5V seems to be wrong. I don't
> know the document which specifies that but the imx6qdl datasheets says
> that the minimum voltage should be 0.925V for VDD_ARM (LDO bypassed,
> lowest opp) and 1.15V for VDD_SOC (LDO bypassed, lowest opp).

Stefan,

Any comment on this change?

Shawn

> =

> Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCORE-i.M=
X 6 SOM")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> v4:
> - rebased ontop of v5.6-rc1
> v3:
> - fix commit message
> v2:
> - use ldo bypassed values
> =

>  arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm=
/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> index 4d18952658f8..77d871340eb7 100644
> --- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> @@ -112,7 +112,7 @@
>  		regulators {
>  			vdd_arm: buck1 {
>  				regulator-name =3D "vdd_arm";
> -				regulator-min-microvolt =3D <730000>;
> +				regulator-min-microvolt =3D <925000>;
>  				regulator-max-microvolt =3D <1380000>;
>  				regulator-initial-mode =3D <DA9063_BUCK_MODE_SYNC>;
>  				regulator-always-on;
> @@ -120,7 +120,7 @@
>  =

>  			vdd_soc: buck2 {
>  				regulator-name =3D "vdd_soc";
> -				regulator-min-microvolt =3D <730000>;
> +				regulator-min-microvolt =3D <1150000>;
>  				regulator-max-microvolt =3D <1380000>;
>  				regulator-initial-mode =3D <DA9063_BUCK_MODE_SYNC>;
>  				regulator-always-on;
> -- =

> 2.20.1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
