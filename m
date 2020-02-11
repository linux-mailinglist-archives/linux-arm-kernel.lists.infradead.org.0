Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D76158A94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 08:44:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3c/0hfgA9wiyaC6L463KTmDKQOjD936sp1CL48wbuIA=; b=uply0uShynQMUe
	f5TqTMlz5rEkk3f+dGFvk0w+0A4QUtyts59SrdMf6pm6ckW1QUIvJyVEq7F47vetLjsLsYGvRtVeZ
	chBg4X8mG3906+p5nBN6Vcy+LZfHZ01PxoFXVXQPsWnoDb+cHW88QwxX2VO3ZXIrHS/dIiVPMQORk
	+/OiYBV++DWczhmz7qt+o5zzgH5X3JBh3fXfbQy5cQMXm48FyVwFvkEgfPI4mbJ+43F0prx8XXVRe
	9iqEAWHHI5pYRXgBaliPeWq6Z4UIucKSV3jRkgE6n1kI14YjTyBiqiPgJSNx9oIk489cB0j7uUHW+
	3ubxJCtEpnTlbQTZfaYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1QDS-0007mt-EG; Tue, 11 Feb 2020 07:44:18 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1QDK-0007lT-Kh; Tue, 11 Feb 2020 07:44:12 +0000
X-UUID: 9cb0417af0364f938a6ae87a9aab0423-20200210
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=WF9g4PEqWlupM4phER8lYwnueeO3pdMwX2AAwBSYAFg=; 
 b=FTelS1W2ak4xC5AmE2V0wcsa9Rda4LaM3ywcKXJdrshuDKsgoWpUffDK8ongubWop0DZZD89r41mPLBabbicUdGz1XTyBesSGr6AGVuvLGJDQFCuq/5Hr0x6pi+xAtPDBPARppiz6WNEQmlpjI2n/Fc7u+HsodFyZXy+e03yK3o=;
X-UUID: 9cb0417af0364f938a6ae87a9aab0423-20200210
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <roger.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 730199669; Mon, 10 Feb 2020 23:44:02 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Feb 2020 23:36:15 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Feb 2020 15:35:03 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Feb 2020 15:36:19 +0800
Message-ID: <1581406566.14120.46.camel@mtksdaap41>
Subject: Re: [PATCH v6 1/3] dt-bindings: soc: add mtk svs dt-bindings
From: Roger Lu <roger.lu@mediatek.com>
To: Rob Herring <robh@kernel.org>, Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 11 Feb 2020 15:36:06 +0800
In-Reply-To: <CAL_JsqLnVEhvAh_8DfGWRZa+MdPRpXc9sWEQ6-3HQAeUfvkOSg@mail.gmail.com>
References: <20200107070154.1574-1-roger.lu@mediatek.com>
 <20200107070154.1574-2-roger.lu@mediatek.com>
 <20200108203829.GA18987@bogus>
 <CANMq1KBu-gFy701BgFcjEwyhV9GgCCU2mkT9c8LviOJKBF30UA@mail.gmail.com>
 <CAL_JsqLnVEhvAh_8DfGWRZa+MdPRpXc9sWEQ6-3HQAeUfvkOSg@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_234410_691340_30C59F27 
X-CRM114-Status: GOOD (  31.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Angus Lin =?UTF-8?Q?=28=E6=9E=97=E7=91=9B=E8=B1=AA=29?=
 <Angus.Lin@mediatek.com>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, jamesjj.liao@mediatek.com,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>,
 HenryC Chen =?UTF-8?Q?=28=E9=99=B3=E5=BB=BA=E8=B1=AA=29?=
 <HenryC.Chen@mediatek.com>, YT
 Lee =?UTF-8?Q?=28=E6=9D=8E=E4=BB=B0=E5=93=B2=29?= <yt.lee@mediatek.com>,
 Fan Chen =?UTF-8?Q?=28=E9=99=B3=E5=87=A1=29?= <fan.chen@mediatek.com>,
 Devicetree
 List <devicetree@vger.kernel.org>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Xiaoqing Liu =?UTF-8?Q?=28=E5=88=98=E6=99=93=E5=BA=86=29?=
 <Xiaoqing.Liu@mediatek.com>,
 Charles Yang =?UTF-8?Q?=28=E6=A5=8A=E4=BA=8E=E9=80=B2=29?=
 <Charles.Yang@mediatek.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, Nishanth Menon <nm@ti.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob & Nicolas,

Sorry for the late reply.

On Mon, 2020-01-13 at 23:50 +0800, Rob Herring wrote:
> On Mon, Jan 13, 2020 at 12:44 AM Nicolas Boichat <drinkcat@chromium.org> wrote:
> >
> > On Thu, Jan 9, 2020 at 4:38 AM Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Tue, Jan 07, 2020 at 03:01:52PM +0800, Roger Lu wrote:
> > > > Document the binding for enabling mtk svs on MediaTek SoC.
> > > >
> > > > Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> > > > ---
> > > >  .../devicetree/bindings/power/mtk-svs.txt     | 76 +++++++++++++++++++
> > > >  1 file changed, 76 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/power/mtk-svs.txt
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/power/mtk-svs.txt b/Documentation/devicetree/bindings/power/mtk-svs.txt
> > > > new file mode 100644
> > > > index 000000000000..9a3e81b9e1d2
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/power/mtk-svs.txt
> > > > @@ -0,0 +1,76 @@
> > > > +* Mediatek Smart Voltage Scaling (MTK SVS)
> > > > +
> > > > +This describes the device tree binding for the MTK SVS controller (bank)
> > > > +which helps provide the optimized CPU/GPU/CCI voltages. This device also
> > > > +needs thermal data to calculate thermal slope for accurately compensate
> > > > +the voltages when temperature change.
> > > > +
> > > > +Required properties:
> > > > +- compatible:
> > > > +  - "mediatek,mt8183-svs" : For MT8183 family of SoCs
> > > > +- reg: Address range of the MTK SVS controller.
> > > > +- interrupts: IRQ for the MTK SVS controller.
> > > > +- clocks, clock-names: Clocks needed for the svs hardware. required
> > > > +                       clocks are:
> > > > +                    "main": Main clock for svs controller to work.
> > > > +- nvmem-cells: Phandle to the calibration data provided by a nvmem device.
> > > > +- nvmem-cell-names: Should be "svs-calibration-data" and "calibration-data"
> > > > +
> > > > +Subnodes:
> > > > +- svs-cpu-little: SVS bank device node of little CPU
> > > > +  compatible: "mediatek,mt8183-svs-cpu-little"
> > > > +  operating-points-v2: OPP table hooked by SVS little CPU bank.
> > > > +                    SVS will optimze this OPP table voltage part.
> > > > +  vcpu-little-supply: PMIC buck of little CPU
> > > > +- svs-cpu-big: SVS bank device node of big CPU
> > > > +  compatible: "mediatek,mt8183-svs-cpu-big"
> > > > +  operating-points-v2: OPP table hooked by SVS big CPU bank.
> > > > +                    SVS will optimze this OPP table voltage part.
> > > > +  vcpu-big-supply: PMIC buck of big CPU
> > > > +- svs-cci: SVS bank device node of CCI
> > > > +  compatible: "mediatek,mt8183-svs-cci"
> > > > +  operating-points-v2: OPP table hooked by SVS CCI bank.
> > > > +                    SVS will optimze this OPP table voltage part.
> > > > +  vcci-supply: PMIC buck of CCI
> > > > +- svs-gpu: SVS bank device node of GPU
> > > > +  compatible: "mediatek,mt8183-svs-gpu"
> > > > +  operating-points-v2: OPP table hooked by SVS GPU bank.
> > > > +                    SVS will optimze this OPP table voltage part.
> > > > +  vgpu-supply: PMIC buck of GPU
> > > > +
> > > > +Example:
> > > > +
> > > > +     svs: svs@1100b000 {
> > > > +             compatible = "mediatek,mt8183-svs";
> > > > +             reg = <0 0x1100b000 0 0x1000>;
> > > > +             interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW>;
> > > > +             clocks = <&infracfg CLK_INFRA_THERM>;
> > > > +             clock-names = "main_clk";
> > > > +             nvmem-cells = <&svs_calibration>, <&thermal_calibration>;
> > > > +             nvmem-cell-names = "svs-calibration-data", "calibration-data";
> > > > +
> > > > +             svs_cpu_little: svs-cpu-little {
> > > > +                     compatible = "mediatek,mt8183-svs-cpu-little";
> > > > +                     operating-points-v2 = <&cluster0_opp>;
> > > > +                     vcpu-little-supply = <&mt6358_vproc12_reg>;
> > > > +             };
> > >
> > > I don't think this is a good binding. This information already exists
> > > elsewhere in the DT, so your driver should just look in those nodes.
> > > For example the regulator can be in the cpu nodes or the OPP table
> > > itself.
> >
> > Roger, if that helps, without changing any other binding, on 8183,
> > basically you could have:
> >  - svs-cpu-little: Add a handle to &cpu0 and get the regulator/opp
> > table from it.
> >  - svs-cpu-big: Handle to &cpu4
> 
> Why do you need those? Use the compatible of the cpus to determine big
> and little cores. Or there's the cpu capacity property that could be
> used instead.
> 
> >  - svs-cci: Handle to &cci
> 
> Is there more than 1 CCI? Just retrieve the node by the compatible.
> There's no need to have nodes that simply serve as a collection of
> data for some driver.
> 
> >  - svs-gpu: Handle to &gpu (BTW, it is expected that SVS would only
> > apply to vgpu/mali regulator, and not vsram regulator?)

svs-gpu depends on vgpu power on for init (don't care vgpu_sram). After
svs-gpu init is done, it doesn't need vgpu power on anymore. (vgpu can
be turned off)

Please allows me to introduce more about what svs-gpu device needs.
1. It needs gpu opp table from "gpu node" and gpu_core2 power-domains
from "gpu_core2 node". When svs-gpu has those resources, it turns on
gpu_core2 power-domain for svs-gpu-hw to have power (for calculating)
and svs-gpu-sw will update gpu opp table voltages' part.
2. Therefore, if I retrieve gpu-related node from phandle or compatible,
it means svs-gpu device in driver needs to attach two different gpu
nodes for attaining gpu opp table and gpu_core2 power-domains. I think
this architecture of svs-gpu confuses maintainer why it attaches two
different nodes instead of having a device to describe what it needs.
3. Is it acceptable to have a Linux device attaching two different
nodes? If yes, could you guide us some APIs for one device to attach two
nodes? I don't know how to implement it. Thanks.

> >
> > I'm not too sure how we'd fetch the right regulator name, however (for
> > the first 3 the name is "proc", for the last one it's "mali"), maybe
> > add a regulator-name list in the DT?
> 
> To put this another way, write an SoC specific driver that understands
> to some extent what exists in the SoC (and DT). I doubt something like
> this is going to be generic across more than a few SoCs at most.

> 
> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
