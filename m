Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC7E100DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 22:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2SHUUyK8TMBs4Pby8wd9VPIC0euVJJg13A0iue7o6og=; b=Q2fohUq6qi0Mer
	XN6C8eFPQj0saP9UYkGeHc74QTQbJnG7YHfKQCCipYmWsFKm4ZkYRiJFnXLnVVjIruZLE9HsYGfKI
	xz2hgdwMk2P20I14qKUP3tOaVDnrIHP1jpgYggUH2vYzbqKKCZoMWhhwF0F6sLJIK8Z2eW9AGJwWI
	A/wXZ6UrTjZuL7of6cjNiKCPq2V4XxlOYzJHnOwQ9uAmkMfcgX29sVecd0pDd9SfSYWpl2SYLo6z7
	lhqfgZWQP2nsnXjRkZDvl8LPMx21b7WnUmIefaEI7O01JFbRQK9e7AbJEjy426GywoZjbq2lrx4YV
	wQGRe3sGhk4IkFFGfmKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLZPq-0004Ff-Th; Tue, 30 Apr 2019 20:31:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLZPZ-0003xo-Eg; Tue, 30 Apr 2019 20:31:35 +0000
Received: from localhost (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 068C92087B;
 Tue, 30 Apr 2019 20:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556656293;
 bh=Rl6KR3mE/J4TovWktTnPEk6bL3lFfupWJ2cXE8RKcsA=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=wHvQCF48Origsh+9ks+KYh/bRuAs6K6xp778iJA1nRTZzsT36/reutO1Up4TzrAds
 WiRpljJ4fDtsI1kUoNe0YkY9axaShkcYuXsQCaYQqivN7wRDjcek1H8cymh1H4V+Mr
 /CdVuiy/7arCFuCtZOhpv5dw5dpt+lmN6NiHND5k=
MIME-Version: 1.0
In-Reply-To: <20190430112012.4514-2-roger.lu@mediatek.com>
References: <20190430112012.4514-1-roger.lu@mediatek.com>
 <20190430112012.4514-2-roger.lu@mediatek.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC v1 1/3] dt-bindings: soc: add mtk svs dt-bindings
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Roger Lu <roger.lu@mediatek.com>, Viresh Kumar <vireshk@kernel.org>
Message-ID: <155665629219.168659.8221738507474891604@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Tue, 30 Apr 2019 13:31:32 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_133133_596119_9D8D7295 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Kevin Hilman <khilman@kernel.org>, Roger Lu <roger.lu@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Roger Lu (2019-04-30 04:20:10)
> Document the binding for enabling mtk svs on MediaTek SoC.
> 
> Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> ---
>  .../devicetree/bindings/power/mtk-svs.txt     | 70 +++++++++++++++++++
>  1 file changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/mtk-svs.txt
> 
> diff --git a/Documentation/devicetree/bindings/power/mtk-svs.txt b/Documentation/devicetree/bindings/power/mtk-svs.txt
> new file mode 100644
> index 000000000000..355329db74ba
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/mtk-svs.txt
> @@ -0,0 +1,70 @@
> +* Mediatek Smart Voltage Scaling (MTK SVS)
> +
> +This describes the device tree binding for the MTK SVS controller
> +which helps provide the optimized CPU/GPU/CCI voltages. This device also
> +needs thermal data to calculate thermal slope for accurately compensate
> +the voltages when temperature change.
> +
> +Required properties:
> +- compatible:
> +  - "mediatek,mt8183-svs" : For MT8183 family of SoCs
> +- reg: Address range of the MTK SVS controller.
> +- interrupts: IRQ for the MTK SVS controller.
> +- clocks, clock-names: Clocks needed for the svs controller. required
> +                       clocks are:
> +                      "main_clk": Main clock needed for register access
> +- nvmem-cells: Phandle to the calibration data provided by a nvmem device.
> +- nvmem-cell-names: Should be "svs-calibration-data" and "calibration-data"
> +- svs_xxx: Phandle of svs_bank device for controlling corresponding opp

Properties shouldn't have underscores in them. Use dashes?

> +           table and power-domains.
> +- vxxx-supply: Phandle to each regulator. vxxx can be "vcpu_little",
> +              "vcpu_big", "vcci" and "vgpu".
> +
> +Example:
> +
> +       svs: svs@1100b000 {
> +               compatible = "mediatek,mt8183-svs";
> +               reg = <0 0x1100b000 0 0x1000>;
> +               interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW 0>;
> +               clocks = <&infracfg CLK_INFRA_THERM>;
> +               clock-names = "main_clk";
> +               nvmem-cells = <&svs_calibration>, <&thermal_calibration>;
> +               nvmem-cell-names = "svs-calibration-data", "calibration-data";
> +
> +               svs_cpu_little: svs_cpu_little {
> +                       compatible = "mediatek,mt8183-svs-cpu-little";
> +                       operating-points-v2 = <&cluster0_opp>;
> +               };
> +
> +               svs_cpu_big: svs_cpu_big {
> +                       compatible = "mediatek,mt8183-svs-cpu-big";
> +                       operating-points-v2 = <&cluster1_opp>;
> +               };
> +
> +               svs_cci: svs_cci {
> +                       compatible = "mediatek,mt8183-svs-cci";
> +                       operating-points-v2 = <&cluster2_opp>;
> +               };
> +
> +               svs_gpu: svs_gpu {
> +                       compatible = "mediatek,mt8183-svs-gpu";
> +                       power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
> +                       operating-points-v2 = <&gpu_opp_table>;
> +               };

It looks like you need multiple OPPs for a single device, because it has
different independent power supplies it wants to associate the OPP
tables with? Why can't these OPP tables be attached to the devices that
use them, i.e. CPU, GPU, CCI, etc.? Seems odd that those devices don't
have OPP tables that this hardware block can look up somehow. Similarly,
the power domains should probably be part of the devices that are using
them and not these sub-nodes that are mirroring the other hardware
blocks in the system?

> +       };
> +
> +       &svs_cpu_little {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
