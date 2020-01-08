Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAFF134DBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:38:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QF72mirwSreDMmvR1fblbWVvosiT/lBVE+rB0y5XPi4=; b=NaYuG3E0Km4ANT
	ri9z31MzHay5Zv7S7quNWPnwEJ2mxSWoWbR1CqcrS5V9p9UfSvQ+BNzBl9RtWfEuHnE/ubh6hWTLm
	oWcOtT21oJHXj7HW0T1TEgsK5G5bqv/hHI9uhLIx8iVhzBcqWdWROg9hHnJTOxkZPsluJ9ig0X4r2
	OciHr7aQv/1+k12gD58TK+HBm0W9/F7fYe1UV7yHt88I68yR+wy5MRXu6rKPaepRiYnKFXSkgjF+o
	ScRSGpXmPSUYvjRcijCE1YAX4afZefT5hVvr6NriN8iA6QK/Dx4Tc3QMGn/hnJXmNnwSqRa/WVKR4
	/A7Y+3MuxiYTEVHPbOQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipI6F-0000Y0-4A; Wed, 08 Jan 2020 20:38:43 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipI66-0000W9-Gg
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 20:38:35 +0000
Received: by mail-oi1-f193.google.com with SMTP id v140so3928790oie.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 12:38:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fYbMCE8GKhztIwg7FUhSFbp5MPOuXQT9UONOLwZL9bI=;
 b=Xji3xVxzqWMnVAYhRuQMPwr7FXgWIkXGjK2UsoZQdbb9d3urtnpa8VvGGxa1/SSsNg
 iVyBfPA+FcfLcLDWiGHSk9smOM/BHAY5sBgjIAFICIKx/JYy4CV7gycMC9W8XdKCJYHA
 QwHn/XrF6D8cTAhYKn6Q+/29S3H5DSQCnDgFKL8Euz7K9ky0p2jwFv6hu3Y+0XW2Iog3
 CwdQxuXZkkfEJ5KyuZQzbhD45VOVHhjb45Rta7pd9p+ZWiiDg+vyTRdSSo02L3WZr21E
 tvMcTo7IJPx1nlEg9EGBHiLo3btPNAZx1QeaB0GZJAfABaRSIPdlQmwH9Ep5ezyxdeju
 tJ+w==
X-Gm-Message-State: APjAAAWYJSekRSsah803+emkY3Ri4hJq1Wc94ACLGk8Qnto5sEMy4Qwz
 3WyF+ijYBbOulHZccMFId0fBaWo=
X-Google-Smtp-Source: APXvYqw5wbLL5s1uroLrticx939/wOKmVOxq5P4wc6eYIYQ/Nh2GYcjCn0gTxawh3sF3p91N8oFT6Q==
X-Received: by 2002:aca:1204:: with SMTP id 4mr364384ois.143.1578515912634;
 Wed, 08 Jan 2020 12:38:32 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y13sm1463895otk.40.2020.01.08.12.38.29
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 12:38:30 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220333
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 08 Jan 2020 14:38:29 -0600
Date: Wed, 8 Jan 2020 14:38:29 -0600
From: Rob Herring <robh@kernel.org>
To: Roger Lu <roger.lu@mediatek.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: soc: add mtk svs dt-bindings
Message-ID: <20200108203829.GA18987@bogus>
References: <20200107070154.1574-1-roger.lu@mediatek.com>
 <20200107070154.1574-2-roger.lu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107070154.1574-2-roger.lu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_123834_548075_269B8F93 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Angus Lin <Angus.Lin@mediatek.com>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, HenryC Chen <HenryC.Chen@mediatek.com>,
 YT Lee <yt.lee@mediatek.com>, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Xiaoqing Liu <Xiaoqing.Liu@mediatek.com>,
 Charles Yang <Charles.Yang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Nishanth Menon <nm@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 03:01:52PM +0800, Roger Lu wrote:
> Document the binding for enabling mtk svs on MediaTek SoC.
> 
> Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> ---
>  .../devicetree/bindings/power/mtk-svs.txt     | 76 +++++++++++++++++++
>  1 file changed, 76 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/mtk-svs.txt
> 
> diff --git a/Documentation/devicetree/bindings/power/mtk-svs.txt b/Documentation/devicetree/bindings/power/mtk-svs.txt
> new file mode 100644
> index 000000000000..9a3e81b9e1d2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/mtk-svs.txt
> @@ -0,0 +1,76 @@
> +* Mediatek Smart Voltage Scaling (MTK SVS)
> +
> +This describes the device tree binding for the MTK SVS controller (bank)
> +which helps provide the optimized CPU/GPU/CCI voltages. This device also
> +needs thermal data to calculate thermal slope for accurately compensate
> +the voltages when temperature change.
> +
> +Required properties:
> +- compatible:
> +  - "mediatek,mt8183-svs" : For MT8183 family of SoCs
> +- reg: Address range of the MTK SVS controller.
> +- interrupts: IRQ for the MTK SVS controller.
> +- clocks, clock-names: Clocks needed for the svs hardware. required
> +                       clocks are:
> +		       "main": Main clock for svs controller to work.
> +- nvmem-cells: Phandle to the calibration data provided by a nvmem device.
> +- nvmem-cell-names: Should be "svs-calibration-data" and "calibration-data"
> +
> +Subnodes:
> +- svs-cpu-little: SVS bank device node of little CPU
> +  compatible: "mediatek,mt8183-svs-cpu-little"
> +  operating-points-v2: OPP table hooked by SVS little CPU bank.
> +		       SVS will optimze this OPP table voltage part.
> +  vcpu-little-supply: PMIC buck of little CPU
> +- svs-cpu-big: SVS bank device node of big CPU
> +  compatible: "mediatek,mt8183-svs-cpu-big"
> +  operating-points-v2: OPP table hooked by SVS big CPU bank.
> +		       SVS will optimze this OPP table voltage part.
> +  vcpu-big-supply: PMIC buck of big CPU
> +- svs-cci: SVS bank device node of CCI
> +  compatible: "mediatek,mt8183-svs-cci"
> +  operating-points-v2: OPP table hooked by SVS CCI bank.
> +		       SVS will optimze this OPP table voltage part.
> +  vcci-supply: PMIC buck of CCI
> +- svs-gpu: SVS bank device node of GPU
> +  compatible: "mediatek,mt8183-svs-gpu"
> +  operating-points-v2: OPP table hooked by SVS GPU bank.
> +		       SVS will optimze this OPP table voltage part.
> +  vgpu-supply: PMIC buck of GPU
> +
> +Example:
> +
> +	svs: svs@1100b000 {
> +		compatible = "mediatek,mt8183-svs";
> +		reg = <0 0x1100b000 0 0x1000>;
> +		interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW>;
> +		clocks = <&infracfg CLK_INFRA_THERM>;
> +		clock-names = "main_clk";
> +		nvmem-cells = <&svs_calibration>, <&thermal_calibration>;
> +		nvmem-cell-names = "svs-calibration-data", "calibration-data";
> +
> +		svs_cpu_little: svs-cpu-little {
> +			compatible = "mediatek,mt8183-svs-cpu-little";
> +			operating-points-v2 = <&cluster0_opp>;
> +			vcpu-little-supply = <&mt6358_vproc12_reg>;
> +		};

I don't think this is a good binding. This information already exists 
elsewhere in the DT, so your driver should just look in those nodes. 
For example the regulator can be in the cpu nodes or the OPP table 
itself.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
