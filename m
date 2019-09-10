Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7955CAEF49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 18:10:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ADq4mBeIQq1H3ucygcin/2gc86pOfJe3DSan7l+Lp/A=; b=IEGo6AvPxu19yE
	BxYZtwTD3WKX4LVbeO8XGmAC96a4Grd+NCuWe5OZOzhobzShsSuApXXdVD2MasUbv85LoeaxBEwoh
	EGk+7CKtW2OWGyCLsRCu1KXnBRoqlbyoZWlP0cDuwI/NOZQmZLw3LOqRPDtVf2OaBcAHwm7CF5+Jf
	RB1orAxIxPj13AGsS4GNKk45CuPl+8JdY6oss11C1gi6SlMIs0pZHEYta06x1PZrluu/WSZC+hrPA
	iy5uDNcFwd/GhYMXuAMvfmEusy+m12fPXF5IrbatmGj7t08I0hIyMmJBbF4oRlw8GOWsWYDX6vz1L
	uzi0LHtCpma0o6lCK8uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ijA-00071g-3o; Tue, 10 Sep 2019 16:10:48 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7iiz-00070O-8I
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 16:10:38 +0000
Received: by mail-lf1-x143.google.com with SMTP id w18so2022772lfk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 09:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LqFfEPSyt57HyJgTRNjWFPdEaAAXtdhfsQD9TllCPkE=;
 b=Wt+lQTaaGk6pzUmlwB5BiAYmxSlDO46vBfdmUIwYg83Ws9mVY1hvxndBrFIyDtutb+
 b+CiBYLK/0nwX1fK5AOxVgaQmHyBk/KCBbb4X1Ayh96UoR5ifBmMDrfHE0GZbp27rgqa
 bMeqtZ+VyRPo19quamd07pXAQAolxKZ28adC9aNNLRvv+KuuZTiitjjGBW8pJ/Klgulu
 /WaLob/DOTwO/PUkqF9f0qJiWfJNQkH+OkxlvrrRhwkRXkPkjCs1EbX4zBJEKiIw7uDD
 g/xPKTyVsqT2HzpgXb/hjBkoy4H/A38h5su2WI5WHP+d2GWG3uDzm/5qsNL9wwDblHQf
 /LFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LqFfEPSyt57HyJgTRNjWFPdEaAAXtdhfsQD9TllCPkE=;
 b=Q9/v59O1ssrAm+iE6pEg9HjaN0LoqLYbYZmcfHx2Lvb9yQui9VA0NTbyWS8Ylamr89
 +wbmbdK8rLQH1LT7ZOCPMnrCjyxcMeNckWJRbN0g8zViwr8v01i97GUOB1WXmQhZ4RSi
 RcPcrxVcSfpUdfa0yaS4jx8uZljeig3FZEB/03bAOcSa1VahQxoztdZ/Wd0b0ZlilVjV
 OPFdYvICFOelQIOaRkPOyxLZxYfgsyGiv/OHOCJvGLqAyTh/A8QIie/YGaL/fsaur0KI
 Q6GBiovI3yfhk0wzJCF+yFQow6EbGKks5D2FE/xKNfgOoZTT3D4zAknJNOgz1KhJDKNO
 Q0Eg==
X-Gm-Message-State: APjAAAXsA+b4E9ndgIFpE/bOFyZDnohjYoO+CGxbWrgcfBlQrX/4fFhq
 W+779jxMizTabuDuVAmEkcW1pgN9EYatUdmwTlk=
X-Google-Smtp-Source: APXvYqy4Ju69ssa5vOob9oJNZreWvVab2sQCQY0k5c5kzjsbAtMhkA0CX7URyFEMwEg7AAVKyeO88isyJEbqHfTbq8c=
X-Received: by 2002:ac2:47e3:: with SMTP id b3mr20007804lfp.80.1568131834903; 
 Tue, 10 Sep 2019 09:10:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190910155507.491230-1-tinywrkb@gmail.com>
In-Reply-To: <20190910155507.491230-1-tinywrkb@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 10 Sep 2019 13:10:24 -0300
Message-ID: <CAOMZO5Ae=ww1ar7FmgLmxf5jDoPaToBhz_qYMGrG+orP64hJ-w@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
To: tinywrkb <tinywrkb@gmail.com>, Jon Nettleton <jon@solid-run.com>, 
 Baruch Siach <baruch@tkos.co.il>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_091037_295713_6612DAC6 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Russell King <linux@armlinux.org.uk>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adding Jon and Baruch

On Tue, Sep 10, 2019 at 12:55 PM tinywrkb <tinywrkb@gmail.com> wrote:
>
> Cubox-i Solo/DualLite carrier board has 100Mb/s magnetics while the
> Atheros AR8035 PHY on the MicroSoM v1.3 CPU module is a 1GbE PHY device.
>
> Since commit 5502b218e001 ("net: phy: use phy_resolve_aneg_linkmode in
> genphy_read_status") ethernet is broken on Cubox-i Solo/DualLite devices.
>
> This adds a phy node to the MicroSoM DTS and a 100Mb/s max-speed limit
> to the Cubox-i Solo/DualLite carrier DTS.
>
> Signed-off-by: tinywrkb <tinywrkb@gmail.com>
> ---
> This patch fixes ethernet on my Cubox-i2-300-D which is limited to 100Mb/s,
> afaik due to the carrier board  magnetics, and was since commit 5502b218e001
> ("net: phy: use phy_resolve_aneg_linkmode in genphy_read_status")
>
> The AR8035 PHY on the CPU module reports to the driver as 1GbE capable
> via MII_BSMR's BMSR_ESTATEN status bit, the auto-negotiation sets the
> speed at 1GbE while the carrier board can't support it.
> Same behavior with the generic phy_device and the at803x drivers.
>
> While the PHY is on the CPU module board I added the max-speed limit to
> the cubox-i carrier DTS as I suspect that if the Solo or DualLite v1.3
> MicroSoM will be connected to a 1GbE capable carrier board then it would
> work correctly with 1GbE.
>
> I can confirm that this commit doesn't break networking on the my
> Cubox-i4Pro Quad (i4P-300-D) with it's 1GbE capable carrier board, and
> was tested separately with the generic phy_device and at803x drivers.
>
>  arch/arm/boot/dts/imx6dl-cubox-i.dts  | 4 ++++
>  arch/arm/boot/dts/imx6qdl-sr-som.dtsi | 9 +++++++++
>  2 files changed, 13 insertions(+)
>
> diff --git a/arch/arm/boot/dts/imx6dl-cubox-i.dts b/arch/arm/boot/dts/imx6dl-cubox-i.dts
> index 2b1b3e193f53..cfc82513c78c 100644
> --- a/arch/arm/boot/dts/imx6dl-cubox-i.dts
> +++ b/arch/arm/boot/dts/imx6dl-cubox-i.dts
> @@ -49,3 +49,7 @@
>         model = "SolidRun Cubox-i Solo/DualLite";
>         compatible = "solidrun,cubox-i/dl", "fsl,imx6dl";
>  };
> +
> +&ethphy {
> +       max-speed = <100>;
> +};
> diff --git a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> index 6d7f6b9035bc..969bc96c3f99 100644
> --- a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> @@ -57,6 +57,15 @@
>         phy-reset-duration = <2>;
>         phy-reset-gpios = <&gpio4 15 GPIO_ACTIVE_LOW>;
>         status = "okay";
> +       phy-handle = <&ethphy>;
> +       mdio {
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +               ethphy: ethernet-phy@0 {
> +                       compatible = "ethernet-phy-ieee802.3-c22";
> +                       reg = <0>;
> +               };
> +       };
>  };
>
>  &iomuxc {
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
