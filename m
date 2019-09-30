Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED617C2229
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 15:36:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ivz1eSXVMbVQDEq3ddauDiqsPcPFkzjQ9L6q5iXiP8=; b=CAenTL3Te0RG1d
	OvnSsA0Xfx2sfOwF75UMhUdJcKBH99IxEYWu9M7yZUU05keHt+hhrJiNCZ+VEY1UxhzFvcFrMfix7
	JSrNLj7P5qVwYYcIRErfhUic4T55yQIZkdw9hvKKsWsAD1afyiYIToLVaXr8cfGtDmZT+8GR5kzLX
	esKEqSkMhxWEy8FOFu4YJ30zYXsNPHCWx3O6c6hwBKAKkHKn7iB/BmNdFcygdjcUxMkACdarI5asA
	/VeDq99n7ZNaDVYjwaShtQwLtLV2JKb+/pjcz6wK0QRJh6e6RYz3Qm8UkPWkSvB6DcfzmlUxNY8If
	KxvdmGTwMEYukiLWi/JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvqU-0001rW-Fw; Mon, 30 Sep 2019 13:36:10 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEvqB-0001qC-3P; Mon, 30 Sep 2019 13:35:53 +0000
Received: by mail-oi1-f195.google.com with SMTP id e18so11129389oii.0;
 Mon, 30 Sep 2019 06:35:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=a9jR1BNKDDZGZvIL5lhodG0XnQTe5HRm6UzcjXJdIrE=;
 b=Y7Sm+8AKaq4HY6QlPDY/50SetSya214r94T6pWszT+6tKE0/MtKQDYb4oXPK8WNgkG
 JGln8561AXwBVlrJWCqPf6W5n3RcVQf1wj39ZqoGEdI2kCc8hZsIWFfL1D5t1WPcrhaQ
 +Pu9vr1GHlUYn3R/1lFktxLHjM9Jl5APLXB/ZqqrJJ5XQeOB7kA77ZAnef9oI3jB0cpQ
 9Kejuhd+1J1UD+C3DOOSK7f6qO/zpF0z3Kl9xlcyu71/0wGVy7tID0k5VmPTkF0BXc+Y
 oO+WgkN5YIVBQv7taTzHts263DiWZ2e+ynqsyGftPaJPQ51JQz2WRFZSGrQcwJEYBwH/
 xkJA==
X-Gm-Message-State: APjAAAXwf9CHP03ccg1HZqvwW+r+/6m1Z8wh+3R9mbqdwGTm3TMkVScK
 8DgKIioi8cKKzX/EVMvvTA==
X-Google-Smtp-Source: APXvYqz7v38Yb3gdAuwcC3Pdow5jowdh8vbv74h20x1h3izlQLTP8SfiZeKSqNctH5OMmF/elaB/Rg==
X-Received: by 2002:aca:cf13:: with SMTP id f19mr17629022oig.154.1569850549773; 
 Mon, 30 Sep 2019 06:35:49 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 11sm3864751otg.62.2019.09.30.06.35.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 06:35:49 -0700 (PDT)
Date: Mon, 30 Sep 2019 08:35:48 -0500
From: Rob Herring <robh@kernel.org>
To: Roger Lu <roger.lu@mediatek.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: soc: add mtk svs dt-bindings
Message-ID: <20190930133548.GA24574@bogus>
References: <20190906100514.30803-1-roger.lu@mediatek.com>
 <20190906100514.30803-2-roger.lu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906100514.30803-2-roger.lu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_063551_142639_5A70A7AA 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 yt.lee@mediatek.com, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Nishanth Menon <nm@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 06:05:13PM +0800, Roger Lu wrote:
> Document the binding for enabling mtk svs on MediaTek SoC.
> 
> Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> ---
>  .../devicetree/bindings/power/mtk-svs.txt     | 88 +++++++++++++++++++
>  1 file changed, 88 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/mtk-svs.txt
> 
> diff --git a/Documentation/devicetree/bindings/power/mtk-svs.txt b/Documentation/devicetree/bindings/power/mtk-svs.txt
> new file mode 100644
> index 000000000000..6a71992ef162
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/mtk-svs.txt
> @@ -0,0 +1,88 @@
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
> +- clocks, clock-names: Clocks needed for the svs controller. required
> +                       clocks are:
> +		       "main_clk": Main clock needed for register access

'_clk' is redundant.

> +- nvmem-cells: Phandle to the calibration data provided by a nvmem device.
> +- nvmem-cell-names: Should be "svs-calibration-data" and "calibration-data"
> +
> +Subnodes:
> +- svs_cpu_little: SVS bank device node of little CPU
> +  compatible: "mediatek,mt8183-svs-cpu-little"
> +  operating-points-v2: OPP table hooked by SVS little CPU bank.
> +		       SVS will optimze this OPP table voltage part.
> +  vcpu-little-supply: PMIC buck of little CPU
> +- svs_cpu_big: SVS bank device node of big CPU
> +  compatible: "mediatek,mt8183-svs-cpu-big"
> +  operating-points-v2: OPP table hooked by SVS big CPU bank.
> +		       SVS will optimze this OPP table voltage part.
> +  vcpu-big-supply: PMIC buck of big CPU
> +- svs_cci: SVS bank device node of CCI
> +  compatible: "mediatek,mt8183-svs-cci"
> +  operating-points-v2: OPP table hooked by SVS CCI bank.
> +		       SVS will optimze this OPP table voltage part.
> +  vcci-supply: PMIC buck of CCI
> +- svs_gpu: SVS bank device node of GPU
> +  compatible: "mediatek,mt8183-svs-gpu"
> +  operating-points-v2: OPP table hooked by SVS GPU bank.
> +		       SVS will optimze this OPP table voltage part.
> +  vgpu-spply: PMIC buck of GPU
> +
> +Example:
> +
> +	svs: svs@1100b000 {
> +		compatible = "mediatek,mt8183-svs";
> +		reg = <0 0x1100b000 0 0x1000>;
> +		interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW 0>;

GIC interrupts are 3 cells, you have 4.

> +		clocks = <&infracfg CLK_INFRA_THERM>;
> +		clock-names = "main_clk";
> +		nvmem-cells = <&svs_calibration>, <&thermal_calibration>;
> +		nvmem-cell-names = "svs-calibration-data", "calibration-data";
> +
> +		svs_cpu_little: svs_cpu_little {

Don't use '_' in node names.

> +			compatible = "mediatek,mt8183-svs-cpu-little";
> +			operating-points-v2 = <&cluster0_opp>;
> +		};
> +
> +		svs_cpu_big: svs_cpu_big {
> +			compatible = "mediatek,mt8183-svs-cpu-big";
> +			operating-points-v2 = <&cluster1_opp>;
> +		};
> +
> +		svs_cci: svs_cci {
> +			compatible = "mediatek,mt8183-svs-cci";
> +			operating-points-v2 = <&cci_opp>;
> +		};
> +
> +		svs_gpu: svs_gpu {
> +			compatible = "mediatek,mt8183-svs-gpu";
> +			power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
> +			operating-points-v2 = <&gpu_opp_table>;
> +		};
> +	};
> +
> +	&svs_cpu_little {
> +		vcpu-little-supply = <&mt6358_vproc12_reg>;

It's already defined to have OPP and supply in the cpu nodes. Parse them
to get this information rather than duplicating it here.

The same should apply to the CCI and GPU.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
