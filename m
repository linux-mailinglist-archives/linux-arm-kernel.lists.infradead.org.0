Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A151363D81
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 23:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I67XNmOqxDZmBZs23nUfwJFlUZAUqa05NfgAFt8gtc4=; b=lbpIzfohNPwV2G
	ynyJ5J0/lwPd1SghLVsQc4jgB27OlZNpYzaIjWPxB1rZ1J7AXBwzTqomCsRw52n0wDyZ3rVEUbLhJ
	caGhvYkZlMbP11xF+KfiskABZcc+WzXLkOSj2DAb8+mRLivF0yLKK2/j8ywJ4TjmIEjbPWJZE3XvV
	Z0R/aTw6qfmKMmTjrLpbNJ9qPK+kgeD9P08oQL0whXbuT7nYA0Z/sUrxJd/pFbg55hBvReJ18oOAX
	8eqGh6GH1vpiBGJlBJckezjvgLHobuJl6BbeHkRCwVWt7mkpiAgAPj1ajVXdebCl8vK/GrWMyl1Zx
	c8UVUQ75gGgB87SI41fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkxxP-0007pd-9K; Tue, 09 Jul 2019 21:47:27 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkxxC-0007oc-Sq; Tue, 09 Jul 2019 21:47:16 +0000
Received: by mail-io1-f67.google.com with SMTP id m24so287747ioo.2;
 Tue, 09 Jul 2019 14:47:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fp2QaEC9w/eoPJPJ2uirJ4Jgi05QvJmCljUYdY+Ygew=;
 b=m5NGgw75awtkWCnlbEhAFH8IbIXFoqhg1Z5/vDDkgB2rrHQlPktGArOIgTLnm0jsrI
 0aRfsBzsE0AKJXAoZr2Xt4yxsPl8Mv0014clafJRq/b296rQfCc4zIbS8PXUFpZ8rimA
 o2/817+DiyqjnIiOVNlqf62SSqo/NYEx7TB+X+DyEFZvmg9oAn/NPArY9vy3VuZZmlh6
 sqaRkiYoe3PmXnHKZrPyNJqeGQnfG2Nf0vVvzBXtUZ3Tox6EHJoVbHWqAb2ZrL0l9nTq
 2RvdqTefmN3I5id64HGH86rqLpNMiZLlUg/6bilzpalvTxo+sUwet3NeY8poXfh+hmED
 SIHA==
X-Gm-Message-State: APjAAAWWG8vgFqVVixM9vQVVfUgegKPEtmDmEi/Rc5Ufp81v9wO2w1z9
 QpdL94LY+Jz5a+LyRWPygg==
X-Google-Smtp-Source: APXvYqwDAnjg5Tt3ibEL5NhcurpWnU/VEvZ9JKJRUwfsH2vEvBMPUMqe1ezOcu/WXvYDK3d5LwKUTQ==
X-Received: by 2002:a6b:d81a:: with SMTP id y26mr594024iob.126.1562708833703; 
 Tue, 09 Jul 2019 14:47:13 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id r7sm20183111ioa.71.2019.07.09.14.47.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 14:47:12 -0700 (PDT)
Date: Tue, 9 Jul 2019 15:47:11 -0600
From: Rob Herring <robh@kernel.org>
To: Roger Lu <roger.lu@mediatek.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: soc: add mtk svs dt-bindings
Message-ID: <20190709214711.GA9818@bogus>
References: <20190621084348.16834-1-roger.lu@mediatek.com>
 <20190621084348.16834-2-roger.lu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621084348.16834-2-roger.lu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_144715_444536_9E4F03E2 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 Nishanth Menon <nm@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, HenryC Chen <HenryC.Chen@mediatek.com>,
 Fan Chen <fan.chen@mediatek.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 04:43:47PM +0800, Roger Lu wrote:
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

'_clk' is redundant and can be dropped.

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

typo

> +
> +Example:
> +
> +	svs: svs@1100b000 {
> +		compatible = "mediatek,mt8183-svs";
> +		reg = <0 0x1100b000 0 0x1000>;
> +		interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW 0>;
> +		clocks = <&infracfg CLK_INFRA_THERM>;
> +		clock-names = "main_clk";
> +		nvmem-cells = <&svs_calibration>, <&thermal_calibration>;
> +		nvmem-cell-names = "svs-calibration-data", "calibration-data";
> +
> +		svs_cpu_little: svs_cpu_little {
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

This all looks like redundant data which can be found in the cpu, gpu, 
etc. nodes. Can't you parse those nodes to get the information?

> +	};
> +
> +	&svs_cpu_little {
> +		vcpu-little-supply = <&mt6358_vproc12_reg>;

Don't split examples like this. Just should one flat example.

> +	};
> +
> +	&svs_cpu_big {
> +		vcpu-big-supply = <&mt6358_vproc11_reg>;
> +	};
> +
> +	&svs_cci {
> +		vcci-supply = <&mt6358_vproc12_reg>;
> +	};
> +
> +	&svs_gpu {
> +		vgpu-spply = <&mt6358_vgpu_reg>;
> +	};
> -- 
> 2.18.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
