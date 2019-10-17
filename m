Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 693A2DBA41
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 01:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yiDAc14ImR3U2+H3kx6v+EKX+D9N8eX6h4IIfiYWFRo=; b=Ip8DWRRiwEFfz1
	ChHxuWXa2fwK6q4jMM3Y0jhOiIKK8AnDthcxY1K3UHI+sbHANkZxvCFZ+8Z5HFYg0U0CwedCo8SsU
	egifospy+qy2ALOloChYiAo1OhllSODTBIrjYymN0hrKqE7nBRU9Zpyl3kU9279MvOOtNgHSg2oXB
	JL0v2knMxqBbLXq0ofdqVY4bcu3Rort3Puepc5I9Wnhb3MPwKWtnhCvkZevjvAlpxRcfeov9Ktrqh
	Uso9UWiI6G+pQ4AU3nJdpMB/7Zpo48tNXOvcOzjqCYba853u+M/Euvuoj1Wb6FnDB9OS7jf3pVFQP
	PCg/tZnUnsgS3eMm+HKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLFNS-0004KX-QL; Thu, 17 Oct 2019 23:40:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLFNF-0003gr-Vt; Thu, 17 Oct 2019 23:40:07 +0000
Received: from remote.shanghaihotelholland.com ([46.44.148.63]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iLFNE-0004OT-M8; Fri, 18 Oct 2019 01:40:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add basic dts for RK3308 EVB
Date: Fri, 18 Oct 2019 01:39:58 +0200
Message-ID: <120878573.PH0Dm224ES@phil>
In-Reply-To: <20191017030520.32420-1-andy.yan@rock-chips.com>
References: <20191017030242.32219-1-andy.yan@rock-chips.com>
 <20191017030520.32420-1-andy.yan@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_164006_194870_AA020F67 
X-CRM114-Status: GOOD (  12.45  )
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
Cc: devicetree@vger.kernel.org, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

Am Donnerstag, 17. Oktober 2019, 05:05:20 CEST schrieb Andy Yan:
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index c82c5e57d44c..b680c4b8b2c9 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -447,6 +447,11 @@ properties:
>            - const: rockchip,r88
>            - const: rockchip,rk3368
>  
> +      - description: Rockchip RK3308 Evaluation board
> +        items:
> +          - const: rockchip,rk3308-evb
> +          - const: rockchip,rk3308
> +
>        - description: Rockchip RK3228 Evaluation board
>          items:
>            - const: rockchip,rk3228-evb

Rob likes the binding addition to be a separate patch.

> +	vdd_log: vdd_core: vdd-core {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm0 0 5000 1>;
> +		regulator-name = "vdd_core";
> +		regulator-min-microvolt = <827000>;
> +		regulator-max-microvolt = <1340000>;
> +		regulator-init-microvolt = <1015000>;
> +		regulator-early-min-microvolt = <1015000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-settling-time-up-us = <250>;
> +		status = "okay";

It's a board-regulator, so always "okay", no need for a status.

In general for regulators, please create an actual regulator tree, with
correctly modelled supply-chains following the naming according
to the board schematics. See for example rk3399-gru for a nice example.

> +	};
> +
> +	vdd_1v0: vdd-1v0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_1v0";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1000000>;
> +		regulator-max-microvolt = <1000000>;

As noted above, missing vin-supply

> +	};
> +

> +	vccio_flash: vccio-flash {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vccio_flash";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +	};
> +
> +	vcc_phy: vcc-phy-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_phy";
> +		regulator-always-on;
> +		regulator-boot-on;

This is the classic example of not following the schematics.
I.e. no Rockchip board I know has a regulator named "vcc_phy"
that is completely unconnected, yet all boards in the vendor tree
have this regulator ;-) ... so as I said, please follow the schematics.

> +	};
> +
> +	vbus_host: vbus-host-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usb_drv>;
> +		regulator-name = "vbus_host";
> +	};
> +};
> +


Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
