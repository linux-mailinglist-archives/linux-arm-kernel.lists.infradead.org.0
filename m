Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A20AEFE4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 18:47:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qpXq/fv6DswVuJNds+sJfRUrxJALvy0Qrp39WyCYvyE=; b=gIJupSm0GLwH8M
	TijflbTOOamS06ekdlOcEC6NO3ctTFtICWtqtc2U5KLl+k+3Ey62N5wNYvhSKD7k6nTo9xSAXNOFF
	T/0NUtPIhSHSP49HUPMGqCta4uUc4VZUd4jVN/eDC1oC7+3TPCxCcFNDWwP41CNC+Xwx2xO8mZd4g
	XFFwF+8RI03q4NAotIm/4fpkIX51nHEWdFzndscxq/Nsbvl3iihU+miQf3z7B2oRyJBybk5osiIg2
	oIY1VQSQZBHHBIH7sg05Uk0WYFS7e2sFsIeiQd5WeCx6uZdR1smCm8Gy157J76jk5GqU1mVAgygIk
	9DlAwqGDk9MD2EZ+73Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7jIW-0002hu-0v; Tue, 10 Sep 2019 16:47:20 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7jIM-0002gr-DR
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 16:47:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3N//E0zcW7kRGKgSwYJTLOJfeK8dM1KlFJHe42qIo4U=; b=wiqoJdzGZHQ7dsTr38TSaB5P+
 cta9fRgOiJ/ZTzQP/DDDoMC/vEtYnu6PAXEwTVwDa0gstcCWZJls1EwitVBVZLNv+hhssniiGNquj
 70BDI3avTTV851UwbBZq7ch010410u0p2YJqBTSZ/PM6yzP0CTnoSCvGCI4qkeS0TsELT+DsINR1k
 MewdfyvFEfv0PUNRhZc7Hyv8GCVmPBE/lXRvAHHqmgFyRiyrpwZ5A2SF45JDW0eLdnH2GvJ4spaEn
 VejQayvONza3cFDRvB7aI3TEUfMtMCM9pJ1jXOKSwj3iBUY/knwaP8JL8RqnGoyUnGZLj6t5tsrEk
 JDPec4SgA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:58608)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i7jI5-0001Dm-W7; Tue, 10 Sep 2019 17:46:54 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i7jI2-00038s-NO; Tue, 10 Sep 2019 17:46:50 +0100
Date: Tue, 10 Sep 2019 17:46:50 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: tinywrkb <tinywrkb@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190910164650.GS13294@shell.armlinux.org.uk>
References: <20190910155507.491230-1-tinywrkb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910155507.491230-1-tinywrkb@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_094710_457543_FC0395E2 
X-CRM114-Status: GOOD (  21.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 06:55:07PM +0300, tinywrkb wrote:
> Cubox-i Solo/DualLite carrier board has 100Mb/s magnetics while the

That statement is false, sorry.  All boards support 1G.

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
>  	model = "SolidRun Cubox-i Solo/DualLite";
>  	compatible = "solidrun,cubox-i/dl", "fsl,imx6dl";
>  };
> +
> +&ethphy {
> +	max-speed = <100>;
> +};
> diff --git a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> index 6d7f6b9035bc..969bc96c3f99 100644
> --- a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> @@ -57,6 +57,15 @@
>  	phy-reset-duration = <2>;
>  	phy-reset-gpios = <&gpio4 15 GPIO_ACTIVE_LOW>;
>  	status = "okay";
> +	phy-handle = <&ethphy>;
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		ethphy: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <0>;
> +		};
> +	};
>  };
>  
>  &iomuxc {
> -- 
> 2.23.0
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
