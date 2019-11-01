Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85031EBEDD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:06:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+FKQnrP5qyxYpqUsPfb27LjI6K1Q0jNcrhZTlGKQaU=; b=QeMmC8nfX8YP2m
	3AYf7pBhFvY2uGXNYr42i7qruebHi7QxlPChCCkCFdi0Hq+8HNDF2ZZlJ44WF2wYSCnkYnYkag7i9
	VWdS07Irjx+EQiS1hXs/SDoBqnl5AVMdCij4H7kIB+/CJxhCreajXEtssrKMzzHt0ZJ0OXm2Vvdll
	JhhnSqRuKpL7QYKwSo5E6InatwvlxiZpJqCTHNkLZYkQiAz44aokAQogQJk0j+DYJrBvrjbR7wJ/k
	uCYxH9g9RIuYihPlkojleXXZuBaJtwCfzCZh8PwFgV+BMeJgvks+NP3xUSu4bX3GT0p5kyTCIwIQO
	jLNXmpm4k8GNZ0gV+0bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQRxP-0000o1-BK; Fri, 01 Nov 2019 08:06:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQRxG-0000mZ-NB; Fri, 01 Nov 2019 08:06:48 +0000
Received: from [46.218.74.72] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iQRx7-0001Qk-C2; Fri, 01 Nov 2019 09:06:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add PCIe node on rk3399-roc-pc
Date: Fri, 01 Nov 2019 09:06:36 +0100
Message-ID: <2490852.kIovObk3uj@phil>
In-Reply-To: <f66fe5c3-6760-20b0-54cc-8f0c1a754bab@fivetechno.de>
References: <09300c2d-4298-1b01-ac41-d1b2610589d4@fivetechno.de>
 <1719506.vT9a8mQdzu@phil>
 <f66fe5c3-6760-20b0-54cc-8f0c1a754bab@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_010646_908014_90F7AB3D 
X-CRM114-Status: GOOD (  22.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Markus,

Am Donnerstag, 31. Oktober 2019, 19:12:10 CET schrieb Markus Reichl:
> Am 31.10.19 um 17:57 schrieb Heiko Stuebner:
> > Am Montag, 28. Oktober 2019, 15:47:27 CET schrieb Markus Reichl:
> >> rk3399-roc-pc has a PCIe interface. Enable it for use with
> >> the M.2 NGFF M_KEY slot on roc-rk3399-mezzanine board.
> >> Tested with Samsung 970 evo plus SSD.
> >> 
> >> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> >> ---
> >>  .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 38 +++++++++++++++++++
> >>  1 file changed, 38 insertions(+)
> >> 
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> >> index 9313251765c7..2d637d54994b 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> >> @@ -158,6 +158,21 @@
> >>  		regulator-max-microvolt = <1400000>;
> >>  		vin-supply = <&vcc_sys>;
> >>  	};
> >> +
> >> +	/* on roc-rk3399-mezzanine board */
> > 
> > I'm undecided on this. From what I've seen that mezzanine board is some
> > sort of addon, like a raspberry pi hat. Therefore it's not always present,
> > so probably should not be part of the base board dts.
> > 
> > I'm thinking a dt-overlay that can then be activated might be the solution
> > of choice, but I've reached out to arm-soc poeple on irc to determine the
> > correct course.
> > 
> I have seen some board.dtsi with board_only.dts respective board_extension.dts
> in the arch/arm64/boot/dts/rockchip directory. Would that be ok?

The answer is twofold I guess ;-)

(1) The 100% correct way would probably be to use a devicetree overlay
together with capemgr [0] to load the overlay from userspace, but

(2a) The distinction between system-on-module + baseboard and
board+cape is somewhat foggy I think and it really doesn't look like there
will be a big plethora of capes for the roc-rk3399-pc

(2b) People may actually want to boot of that nvme pcie drive attached
to the mezzanine, so it will be somewhat permanent connection anyway
and also the system then cannot wait for userspace to come up first, if
the userspace is sitting on that drive ;-) .

So I think, going the dts+dts-extension is the best way to go.

Heiko


[0] https://elinux.org/Capemgr



> >> +	vcc3v3_pcie: vcc3v3-pcie {
> >> +		compatible = "regulator-fixed";
> >> +		regulator-name = "vcc3v3_pcie";
> >> +		enable-active-high;
> >> +		gpio = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
> >> +		pinctrl-names = "default";
> >> +		pinctrl-0 = <&vcc3v3_pcie_en>;
> >> +		regulator-always-on;
> >> +		regulator-boot-on;
> >> +		regulator-min-microvolt = <3300000>;
> >> +		regulator-max-microvolt = <3300000>;
> >> +		vin-supply = <&dc_12v>;
> >> +	};
> >>  };
> >>  
> >>  &cpu_l0 {
> >> @@ -514,6 +529,19 @@
> >>  	status = "okay";
> >>  };
> >>  
> >> +&pcie_phy {
> >> +	status = "okay";
> >> +};
> >> +
> >> +&pcie0 {
> >> +	ep-gpios = <&gpio4 RK_PD1 GPIO_ACTIVE_HIGH>;
> >> +	num-lanes = <4>;
> >> +	pinctrl-names = "default";
> >> +	pinctrl-0 = <&pcie_perst>;
> >> +	vpcie3v3-supply = <&vcc3v3_pcie>;
> >> +	status = "okay";
> >> +};
> >> +
> >>  &pinctrl {
> >>  	lcd-panel {
> >>  		lcd_panel_reset: lcd-panel-reset {
> >> @@ -535,6 +563,16 @@
> >>  		};
> >>  	};
> >>  
> >> +	pcie {
> >> +		vcc3v3_pcie_en: vcc3v3-pcie-en {
> >> +			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
> >> +		};
> >> +
> >> +		pcie_perst: pcie-perst {
> >> +			rockchip,pins = <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
> >> +		};
> >> +	};
> >> +
> >>  	pmic {
> >>  		vsel1_gpio: vsel1-gpio {
> >>  			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
> >> 
> > 
> > 
> > 
> > 
> > 
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> > 
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
