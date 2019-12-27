Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DFB12B239
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 08:01:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IjVzv1AyCrQCJM+1BMIvHWkBDfgfNbGxbBSfGRD3Duc=; b=ZrAS3PmcCWDa9V
	hX8x22c2kx2rd90maH63CVz9G0RIrYwNhizCoBXmS4UVgS3dWqzugH+tcJP9tK4DZLdx75dXzqp/e
	ad08CtX8dwp/UcRizkVLMfRLv5O4NWh/CKa90RbOLEfCQ9MWMXaR+8HEtu/vELOZ6iIzon5Wr69Js
	fe5AAYrFeEPJRq8p2WXCi8PCopO43k72si5jMYwAJhYOne5aj10Wcy1V/5+Btr1JMQMgq0I/lY6tU
	JnSes12fc4SQpLZtlulAodDgi3s1/oQHoHfzyTuzVQuDGwBwn64f1IlfW/tyQVtgPWXoWc/FrgEWG
	krhvh9kucWQ0SGQ7xeuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikjcq-0000U3-2M; Fri, 27 Dec 2019 07:01:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikjce-0000SF-A8; Fri, 27 Dec 2019 07:01:22 +0000
X-UUID: 378f0f958361487884fb75a71844ea1e-20191226
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=bhYU9ZH9G3H/CFlJU6OWPko4ggU1WP/IycBCw41lHR0=; 
 b=cOggosKrOxXxFxughOuTfMklrkhJVJo5yoW00P0OEqRDY3sRAtOyQzYawgNcbv+QQIaM3tFtu1nr3sJk4pFgD6znDsopMNNC7yMwPGWEsfMUirEoLTu3k0VURLoB1K9gihJQvaftnZlAICmI/SH6iAJa57IFyrwY9JW8rJJr+g8=;
X-UUID: 378f0f958361487884fb75a71844ea1e-20191226
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <roger.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1751727858; Thu, 26 Dec 2019 23:01:08 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Dec 2019 22:51:17 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 14:50:23 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Dec 2019 14:50:19 +0800
Message-ID: <1577429450.10290.47.camel@mtksdaap41>
Subject: Re: [PATCH v5 1/3] dt-bindings: soc: add mtk svs dt-bindings
From: Roger Lu <roger.lu@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Fri, 27 Dec 2019 14:50:50 +0800
In-Reply-To: <20190930133548.GA24574@bogus>
References: <20190906100514.30803-1-roger.lu@mediatek.com>
 <20190906100514.30803-2-roger.lu@mediatek.com>
 <20190930133548.GA24574@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_230120_362575_59972020 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, HenryC
 Chen <HenryC.Chen@mediatek.com>, yt.lee@mediatek.com,
 Fan Chen <fan.chen@mediatek.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias
 Brugger <matthias.bgg@gmail.com>, Nishanth Menon <nm@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Rob,

Sorry for the late reply.

On Mon, 2019-09-30 at 08:35 -0500, Rob Herring wrote:
> On Fri, Sep 06, 2019 at 06:05:13PM +0800, Roger Lu wrote:
> > Document the binding for enabling mtk svs on MediaTek SoC.
> > 
> > Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> > ---
> >  .../devicetree/bindings/power/mtk-svs.txt     | 88 +++++++++++++++++++
> >  1 file changed, 88 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/power/mtk-svs.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/power/mtk-svs.txt b/Documentation/devicetree/bindings/power/mtk-svs.txt
> > new file mode 100644
> > index 000000000000..6a71992ef162
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/power/mtk-svs.txt
> > @@ -0,0 +1,88 @@
> > +* Mediatek Smart Voltage Scaling (MTK SVS)
> > +
> > +This describes the device tree binding for the MTK SVS controller (bank)
> > +which helps provide the optimized CPU/GPU/CCI voltages. This device also
> > +needs thermal data to calculate thermal slope for accurately compensate
> > +the voltages when temperature change.
> > +
> > +Required properties:
> > +- compatible:
> > +  - "mediatek,mt8183-svs" : For MT8183 family of SoCs
> > +- reg: Address range of the MTK SVS controller.
> > +- interrupts: IRQ for the MTK SVS controller.
> > +- clocks, clock-names: Clocks needed for the svs controller. required
> > +                       clocks are:
> > +		       "main_clk": Main clock needed for register access
> 
> '_clk' is redundant.

Oh Okay. I'll remove _clk. Thanks.

> 
> > +- nvmem-cells: Phandle to the calibration data provided by a nvmem device.
> > +- nvmem-cell-names: Should be "svs-calibration-data" and "calibration-data"
> > +
> > +Subnodes:
> > +- svs_cpu_little: SVS bank device node of little CPU
> > +  compatible: "mediatek,mt8183-svs-cpu-little"
> > +  operating-points-v2: OPP table hooked by SVS little CPU bank.
> > +		       SVS will optimze this OPP table voltage part.
> > +  vcpu-little-supply: PMIC buck of little CPU
> > +- svs_cpu_big: SVS bank device node of big CPU
> > +  compatible: "mediatek,mt8183-svs-cpu-big"
> > +  operating-points-v2: OPP table hooked by SVS big CPU bank.
> > +		       SVS will optimze this OPP table voltage part.
> > +  vcpu-big-supply: PMIC buck of big CPU
> > +- svs_cci: SVS bank device node of CCI
> > +  compatible: "mediatek,mt8183-svs-cci"
> > +  operating-points-v2: OPP table hooked by SVS CCI bank.
> > +		       SVS will optimze this OPP table voltage part.
> > +  vcci-supply: PMIC buck of CCI
> > +- svs_gpu: SVS bank device node of GPU
> > +  compatible: "mediatek,mt8183-svs-gpu"
> > +  operating-points-v2: OPP table hooked by SVS GPU bank.
> > +		       SVS will optimze this OPP table voltage part.
> > +  vgpu-spply: PMIC buck of GPU
> > +
> > +Example:
> > +
> > +	svs: svs@1100b000 {
> > +		compatible = "mediatek,mt8183-svs";
> > +		reg = <0 0x1100b000 0 0x1000>;
> > +		interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW 0>;
> 
> GIC interrupts are 3 cells, you have 4.

Oops, I'll remove the fourth parameter. Thanks a lot.

> 
> > +		clocks = <&infracfg CLK_INFRA_THERM>;
> > +		clock-names = "main_clk";
> > +		nvmem-cells = <&svs_calibration>, <&thermal_calibration>;
> > +		nvmem-cell-names = "svs-calibration-data", "calibration-data";
> > +
> > +		svs_cpu_little: svs_cpu_little {
> 
> Don't use '_' in node names.

Okay. I'll replace it with '-'. Thanks.

> 
> > +			compatible = "mediatek,mt8183-svs-cpu-little";
> > +			operating-points-v2 = <&cluster0_opp>;
> > +		};
> > +
> > +		svs_cpu_big: svs_cpu_big {
> > +			compatible = "mediatek,mt8183-svs-cpu-big";
> > +			operating-points-v2 = <&cluster1_opp>;
> > +		};
> > +
> > +		svs_cci: svs_cci {
> > +			compatible = "mediatek,mt8183-svs-cci";
> > +			operating-points-v2 = <&cci_opp>;
> > +		};
> > +
> > +		svs_gpu: svs_gpu {
> > +			compatible = "mediatek,mt8183-svs-gpu";
> > +			power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
> > +			operating-points-v2 = <&gpu_opp_table>;
> > +		};
> > +	};
> > +
> > +	&svs_cpu_little {
> > +		vcpu-little-supply = <&mt6358_vproc12_reg>;
> 
> It's already defined to have OPP and supply in the cpu nodes. Parse them
> to get this information rather than duplicating it here.
> 
> The same should apply to the CCI and GPU.

Please let me explain the reason why I add SVS sub-nodes. I ever try to
parse other nodes to get desired power-domains/OPP table. However, it
makes SVS driver harder to develop and maintain.

1. When a SVS-controller-init wants GPU_CORE0's OPP table in one node
but it needs power-domains(GPU_MFG_2D) in another node, it becomes
complicated and confusing when SVS sub-node tries to parse many nodes.
Therefore, we want SVS sub-node to focus on what SVS bank requires by
how we do in this patch.

2. In hardware point of view, SVS controller depends on other hardware's
power only. All the SVS controller registers are in SVS hardware. So, we
think It's good that SVS sub-node describes what SVS controller requires
instead of linking other subsys nodes and parse the property that SVS
controller needs.

3. We want SVS driver to have a generic way to attain subsys device for
using "pm_runtime and OPP framework" API. If SVS driver tries to parse
CPU(little/big core) and other subsys device node(e.g cci/gpu), it means
SVS driver has to maintain different methodologies(cpu-specific?
devfreq? others?) in order to get CPU(little/big core) and other subsys
device(e.g cci/gpu) for using "pm_runtime and OPP framework" API.

> 
> Rob

Sincerely,
Roger Lu.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
