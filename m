Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA2A9EB45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 16:41:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsU6C56+oNT7pNSMcjyocJQFx5rrZUq4fh/8oeFKCyQ=; b=uBkZJ8uoETgId4
	ONcYrnAceLfsm0vwG0e2CzSNSc7UZ9Yz9PQl466ten5PY69LV9KMJ4ID7pbqlZxPdweRzTLa8+xaO
	bwLgLWstNkf5rxGXgDhB7W0WOkr/zpGxyTCZt4hr0qKjxK6uAxRSCZxLY2pQTt0260fZBtQxRk5hs
	9pdTuSZGb0enb9erwY+zPG5HSdK4MNAULYEH/MBfwi9tPYucnUDCkW4rZP0hrc10xquQK4uq5/Mj6
	+7+nto2o/cmy4uRZcWoaJ8gvYzrfNDzahezLYYQO+QZJkJrfUSBH8SEkEMpoQBLWI9nI7OQPpkWRw
	w7hyFENA9OeKO0bABMDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ceb-0004Uw-U0; Tue, 27 Aug 2019 14:41:02 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ceR-0004UU-CI
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 14:40:53 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 15D4F100013;
 Tue, 27 Aug 2019 14:40:47 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 6/6] arm64: dts: marvell: Add cpu clock node on Armada
 7K/8K
In-Reply-To: <20190710134346.30239-7-gregory.clement@bootlin.com>
References: <20190710134346.30239-1-gregory.clement@bootlin.com>
 <20190710134346.30239-7-gregory.clement@bootlin.com>
Date: Tue, 27 Aug 2019 16:40:47 +0200
Message-ID: <87ftlmzn68.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_074051_573662_1E3B5F4A 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>, Antoine Tenart <antoine.tenart@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?utf-8?Q?Miqu=C3=A8l?= Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> Add cpu clock node on AP
>
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>

Applied on mvebu/dt64

Gregory
> ---
>  arch/arm64/boot/dts/marvell/armada-ap806-quad.dtsi | 4 ++++
>  arch/arm64/boot/dts/marvell/armada-ap806.dtsi      | 7 +++++++
>  2 files changed, 11 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-ap806-quad.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806-quad.dtsi
> index 2baafe12ebd4..472211159979 100644
> --- a/arch/arm64/boot/dts/marvell/armada-ap806-quad.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-ap806-quad.dtsi
> @@ -20,24 +20,28 @@
>  			compatible = "arm,cortex-a72";
>  			reg = <0x000>;
>  			enable-method = "psci";
> +			clocks = <&cpu_clk 0>;
>  		};
>  		cpu1: cpu@1 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			reg = <0x001>;
>  			enable-method = "psci";
> +			clocks = <&cpu_clk 0>;
>  		};
>  		cpu2: cpu@100 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			reg = <0x100>;
>  			enable-method = "psci";
> +			clocks = <&cpu_clk 1>;
>  		};
>  		cpu3: cpu@101 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			reg = <0x101>;
>  			enable-method = "psci";
> +			clocks = <&cpu_clk 1>;
>  		};
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
> index 91dad7e4ee59..fca6536494b3 100644
> --- a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
> @@ -280,6 +280,13 @@
>  				#address-cells = <1>;
>  				#size-cells = <1>;
>  
> +				cpu_clk: clock-cpu@278 {
> +					compatible = "marvell,ap806-cpu-clock";
> +					clocks = <&ap_clk 0>, <&ap_clk 1>;
> +					#clock-cells = <1>;
> +					reg = <0x278 0xa30>;
> +				};
> +
>  				ap_thermal: thermal-sensor@80 {
>  					compatible = "marvell,armada-ap806-thermal";
>  					reg = <0x80 0x10>;
> -- 
> 2.20.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
