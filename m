Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DF711349
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 08:20:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hSdKRs8xJrckUGTdU2Hp+0/TW0iLK7kBVw3yS2Hzdhk=; b=hXIWM4C8YXSn1O
	Htm2ESty55pOjhobxUwZTHGs9j7s3HDpL0PfT9mtpOmDv40836e6e0gihfkTPGuM+G5yX0P6MSs5s
	r6NrcgvdrdKuEKsAxsZNI/im7JcE4SBrXWmt4z8nR+uG7awWz2reBmWdHYAObVkbK6ASN9shvwWpQ
	fejoAXKGwad40oPL/HtPHs5CJ+apEhFpMzu24eKFvTOm8zxmwZ1YUgHToDis8vroeX1cTluLr2u8C
	eDuz0izuWtrZJFjxb9lU4QuZkWfqb9BeVUQcTRp3pf45GXj2e5nEp1shkd1YtI2NN1RxZ4616g2qb
	Iq+YUfaA0wPYCKTteiZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM54d-0000s4-G4; Thu, 02 May 2019 06:20:03 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM54U-0000rX-5c; Thu, 02 May 2019 06:19:56 +0000
X-UUID: b1f68a2e1a7d4243838937cd640a314e-20190501
X-UUID: b1f68a2e1a7d4243838937cd640a314e-20190501
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <roger.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1135422410; Wed, 01 May 2019 22:19:41 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 1 May 2019 23:19:40 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 May 2019 14:19:31 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 2 May 2019 14:19:31 +0800
Message-ID: <1556777971.12123.35.camel@mtksdaap41>
Subject: Re: [RFC v1 1/3] dt-bindings: soc: add mtk svs dt-bindings
From: Roger Lu <roger.lu@mediatek.com>
To: Stephen Boyd <sboyd@kernel.org>
Date: Thu, 2 May 2019 14:19:31 +0800
In-Reply-To: <155665629219.168659.8221738507474891604@swboyd.mtv.corp.google.com>
References: <20190430112012.4514-1-roger.lu@mediatek.com>
 <20190430112012.4514-2-roger.lu@mediatek.com>
 <155665629219.168659.8221738507474891604@swboyd.mtv.corp.google.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2E2F08777EB39D1A247C11B19DDF97D305EB6283DD65100F47975443F62BB5352000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_231954_218671_1B5D9086 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Angus.Lin@mediatek.com, devicetree@vger.kernel.org,
 Viresh Kumar <vireshk@kernel.org>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org, Kevin
 Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Andy-YT.Liu@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Stephen,

Thanks for the review.

On Tue, 2019-04-30 at 13:31 -0700, Stephen Boyd wrote:
> Quoting Roger Lu (2019-04-30 04:20:10)
> > Document the binding for enabling mtk svs on MediaTek SoC.
> > 
> > Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> > ---
> >  .../devicetree/bindings/power/mtk-svs.txt     | 70 +++++++++++++++++++
> >  1 file changed, 70 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/power/mtk-svs.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/power/mtk-svs.txt b/Documentation/devicetree/bindings/power/mtk-svs.txt
> > new file mode 100644
> > index 000000000000..355329db74ba
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/power/mtk-svs.txt
> > @@ -0,0 +1,70 @@
> > +* Mediatek Smart Voltage Scaling (MTK SVS)
> > +
> > +This describes the device tree binding for the MTK SVS controller
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
> > +                      "main_clk": Main clock needed for register access
> > +- nvmem-cells: Phandle to the calibration data provided by a nvmem device.
> > +- nvmem-cell-names: Should be "svs-calibration-data" and "calibration-data"
> > +- svs_xxx: Phandle of svs_bank device for controlling corresponding opp
> 
> Properties shouldn't have underscores in them. Use dashes?
Ok. I'll use dashes.

> 
> > +           table and power-domains.
> > +- vxxx-supply: Phandle to each regulator. vxxx can be "vcpu_little",
> > +              "vcpu_big", "vcci" and "vgpu".
> > +
> > +Example:
> > +
> > +       svs: svs@1100b000 {
> > +               compatible = "mediatek,mt8183-svs";
> > +               reg = <0 0x1100b000 0 0x1000>;
> > +               interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW 0>;
> > +               clocks = <&infracfg CLK_INFRA_THERM>;
> > +               clock-names = "main_clk";
> > +               nvmem-cells = <&svs_calibration>, <&thermal_calibration>;
> > +               nvmem-cell-names = "svs-calibration-data", "calibration-data";
> > +
> > +               svs_cpu_little: svs_cpu_little {
> > +                       compatible = "mediatek,mt8183-svs-cpu-little";
> > +                       operating-points-v2 = <&cluster0_opp>;
> > +               };
> > +
> > +               svs_cpu_big: svs_cpu_big {
> > +                       compatible = "mediatek,mt8183-svs-cpu-big";
> > +                       operating-points-v2 = <&cluster1_opp>;
> > +               };
> > +
> > +               svs_cci: svs_cci {
> > +                       compatible = "mediatek,mt8183-svs-cci";
> > +                       operating-points-v2 = <&cluster2_opp>;
> > +               };
> > +
> > +               svs_gpu: svs_gpu {
> > +                       compatible = "mediatek,mt8183-svs-gpu";
> > +                       power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
> > +                       operating-points-v2 = <&gpu_opp_table>;
> > +               };
> 
> It looks like you need multiple OPPs for a single device, because it has
> different independent power supplies it wants to associate the OPP
> tables with?
Yes. SVS has different controllers inside the hardware in order to
calculate and optimize different OPP table voltage part.

> Why can't these OPP tables be attached to the devices that
> use them, i.e. CPU, GPU, CCI, etc.? Seems odd that those devices don't
> have OPP tables that this hardware block can look up somehow.
Those OPP tables are attached by our DVFS node (please refers below
patch). SVS just shares with their OPP table and help optimize these OPP
tables' voltage part.

Add cpufreq DTS node to the mt8183 and mt8183-evb
https://patchwork.kernel.org/patch/10921675/


> Similarly,
> the power domains should probably be part of the devices that are using
> them and not these sub-nodes that are mirroring the other hardware
> blocks in the system?
Oh. There is a svs controller in GPU power-domain. We need to turn on
GPU power so that svs controller can work functionally. Therefore, we
add GPU power-domains in our svs_gpu sub-node.


> 
> > +       };
> > +
> > +       &svs_cpu_little {
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
