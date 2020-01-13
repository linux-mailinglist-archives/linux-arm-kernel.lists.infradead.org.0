Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCBB138C22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 08:03:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vUVaM4S5wOuHXgcwDHeEwtAEAGtGg04iS7saX2smud0=; b=h0M61bZAPFW+Kx
	e7gpl7s2HJjArULh0Ccfde34T4hwBvrOMIthiYyE3bgQ64I0ZfxoDb2OS/IUWPocKOhlXTbMT9XrY
	2p3VyUjqXSFQaW6Tk9foWX5dto3ikO66rXas/D1C4z6T8vHvRcFgAg3JTxlBg6yuQ4Qz2Lph0fAaq
	SR7u4jrAhCFyFh5l8D+nF8VvAjzSJPZTn7Kk9pVMpkXnZr7VfDYT7vTmJrvPQEVlkQf6pvB4fpf3J
	OCSOlaJ6BaVC+NYcaUN6d4b8eyZ8SowDtPZcRDJuDfgVeaD+ZLs7vjNLG+kKFWM1B/UkmjPE2O/4h
	S06xUcxSocGFxwSGoP6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqtkk-0004iu-PA; Mon, 13 Jan 2020 07:03:10 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqtkY-0004hB-HU
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 07:03:00 +0000
Received: by mail-qk1-x743.google.com with SMTP id d71so7634937qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 23:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2K36+LY4tN/Cuk9TuKZ9obMWdWD2cQOBdE1ooq67vcY=;
 b=A/xMlDoReXGb70l5stlQeC5VS6KsRtK3WJhpU6b+scCfDM3Vf0zDYy+RAF+OIF4lrA
 fMSXjyto0aKufDajYSWeZzCh/lOr7eBgVuz3C3n1aNEXCmodW5s7FMPq2vhMpGeMawu5
 dM1ZJv50OY3YhDsvyyQCa9w5fBvuu34+PBwbY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2K36+LY4tN/Cuk9TuKZ9obMWdWD2cQOBdE1ooq67vcY=;
 b=Vq7bjNXDyBnp/j4o8u0ahNhrM8+izawCkgTQNDgPz07pHIFZhpOwa4Ruu6qGKGg77p
 fDSYOcA+nyDO6psL55v7y/4KlyGEOJwvhd8ZuDPQupqB72tkDXTzVcZB1GrkAC7CkS37
 966+1Loh/kufaYY4ct0Z+oX0wy6zNJ9LpRbJi+CegYfOsqTwIL22bAlzPONtket4kzm4
 8U1v42/P1BhQDPukSx38H1rwSSKTxol6rQfM3lLVw14/LFhNwNx/uqhgveJHsKU18VnF
 T/Dk+S7lUJBuxecs1s8+r55nLxEXTHUmdMqt+68lSB8/IVJ+WiXCORd9+7/23hquS/z6
 IIsg==
X-Gm-Message-State: APjAAAXgMwerBxvJrNa5Dtca2gEZNB3CnXS+KjZW3NHWWPafXBtnazqY
 J6Ij/vyf19+uB5OTjVselGTH7mmPnvoBLzJ/sRxg5Q==
X-Google-Smtp-Source: APXvYqzyFcsTC6SV/9v+0c2iO5eTJ1fr5S8u1LUXKUfdU24tfRLPsnI2WnOV4KaJ6n0aX7Qh/FjTi4RgwzDmSx7ggc8=
X-Received: by 2002:a05:620a:6d7:: with SMTP id
 23mr14161009qky.299.1578898977343; 
 Sun, 12 Jan 2020 23:02:57 -0800 (PST)
MIME-Version: 1.0
References: <20190906100514.30803-1-roger.lu@mediatek.com>
 <20190906100514.30803-2-roger.lu@mediatek.com>
 <20190930133548.GA24574@bogus> <1577429450.10290.47.camel@mtksdaap41>
In-Reply-To: <1577429450.10290.47.camel@mtksdaap41>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 13 Jan 2020 15:02:46 +0800
Message-ID: <CANMq1KDHPA9eOufL5X9OLfQESL=MdHvuQfQkyJ1Q381MeDkSQQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: soc: add mtk svs dt-bindings
To: Roger Lu <roger.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_230258_605596_F601D2E6 
X-CRM114-Status: GOOD (  30.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Angus Lin <Angus.Lin@mediatek.com>, Nicolas Boichat <drinkcat@google.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-pm@vger.kernel.org,
 Kevin Hilman <khilman@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 HenryC Chen <HenryC.Chen@mediatek.com>, YT Lee <yt.lee@mediatek.com>,
 Fan Chen <fan.chen@mediatek.com>, Devicetree List <devicetree@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Nishanth Menon <nm@ti.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 27, 2019 at 2:51 PM Roger Lu <roger.lu@mediatek.com> wrote:
>
> Dear Rob,
>
> Sorry for the late reply.
>
> On Mon, 2019-09-30 at 08:35 -0500, Rob Herring wrote:
> > On Fri, Sep 06, 2019 at 06:05:13PM +0800, Roger Lu wrote:
> > > Document the binding for enabling mtk svs on MediaTek SoC.
> > >
> > > Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> > > ---
> > >  .../devicetree/bindings/power/mtk-svs.txt     | 88 +++++++++++++++++++
> > >  1 file changed, 88 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/power/mtk-svs.txt
> > >
> > > diff --git a/Documentation/devicetree/bindings/power/mtk-svs.txt b/Documentation/devicetree/bindings/power/mtk-svs.txt
> > > new file mode 100644
> > > index 000000000000..6a71992ef162
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/power/mtk-svs.txt
> > > @@ -0,0 +1,88 @@
> > > +* Mediatek Smart Voltage Scaling (MTK SVS)
> > > +
> > > +This describes the device tree binding for the MTK SVS controller (bank)
> > > +which helps provide the optimized CPU/GPU/CCI voltages. This device also
> > > +needs thermal data to calculate thermal slope for accurately compensate
> > > +the voltages when temperature change.
> > > +
> > > +Required properties:
> > > +- compatible:
> > > +  - "mediatek,mt8183-svs" : For MT8183 family of SoCs
> > > +- reg: Address range of the MTK SVS controller.
> > > +- interrupts: IRQ for the MTK SVS controller.
> > > +- clocks, clock-names: Clocks needed for the svs controller. required
> > > +                       clocks are:
> > > +                  "main_clk": Main clock needed for register access
> >
> > '_clk' is redundant.
>
> Oh Okay. I'll remove _clk. Thanks.
>
> >
> > > +- nvmem-cells: Phandle to the calibration data provided by a nvmem device.
> > > +- nvmem-cell-names: Should be "svs-calibration-data" and "calibration-data"
> > > +
> > > +Subnodes:
> > > +- svs_cpu_little: SVS bank device node of little CPU
> > > +  compatible: "mediatek,mt8183-svs-cpu-little"
> > > +  operating-points-v2: OPP table hooked by SVS little CPU bank.
> > > +                  SVS will optimze this OPP table voltage part.
> > > +  vcpu-little-supply: PMIC buck of little CPU
> > > +- svs_cpu_big: SVS bank device node of big CPU
> > > +  compatible: "mediatek,mt8183-svs-cpu-big"
> > > +  operating-points-v2: OPP table hooked by SVS big CPU bank.
> > > +                  SVS will optimze this OPP table voltage part.
> > > +  vcpu-big-supply: PMIC buck of big CPU
> > > +- svs_cci: SVS bank device node of CCI
> > > +  compatible: "mediatek,mt8183-svs-cci"
> > > +  operating-points-v2: OPP table hooked by SVS CCI bank.
> > > +                  SVS will optimze this OPP table voltage part.
> > > +  vcci-supply: PMIC buck of CCI
> > > +- svs_gpu: SVS bank device node of GPU
> > > +  compatible: "mediatek,mt8183-svs-gpu"
> > > +  operating-points-v2: OPP table hooked by SVS GPU bank.
> > > +                  SVS will optimze this OPP table voltage part.
> > > +  vgpu-spply: PMIC buck of GPU
> > > +
> > > +Example:
> > > +
> > > +   svs: svs@1100b000 {
> > > +           compatible = "mediatek,mt8183-svs";
> > > +           reg = <0 0x1100b000 0 0x1000>;
> > > +           interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW 0>;
> >
> > GIC interrupts are 3 cells, you have 4.
>
> Oops, I'll remove the fourth parameter. Thanks a lot.
>
> >
> > > +           clocks = <&infracfg CLK_INFRA_THERM>;
> > > +           clock-names = "main_clk";
> > > +           nvmem-cells = <&svs_calibration>, <&thermal_calibration>;
> > > +           nvmem-cell-names = "svs-calibration-data", "calibration-data";
> > > +
> > > +           svs_cpu_little: svs_cpu_little {
> >
> > Don't use '_' in node names.
>
> Okay. I'll replace it with '-'. Thanks.
>
> >
> > > +                   compatible = "mediatek,mt8183-svs-cpu-little";
> > > +                   operating-points-v2 = <&cluster0_opp>;
> > > +           };
> > > +
> > > +           svs_cpu_big: svs_cpu_big {
> > > +                   compatible = "mediatek,mt8183-svs-cpu-big";
> > > +                   operating-points-v2 = <&cluster1_opp>;
> > > +           };
> > > +
> > > +           svs_cci: svs_cci {
> > > +                   compatible = "mediatek,mt8183-svs-cci";
> > > +                   operating-points-v2 = <&cci_opp>;
> > > +           };
> > > +
> > > +           svs_gpu: svs_gpu {
> > > +                   compatible = "mediatek,mt8183-svs-gpu";
> > > +                   power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
> > > +                   operating-points-v2 = <&gpu_opp_table>;
> > > +           };
> > > +   };
> > > +
> > > +   &svs_cpu_little {
> > > +           vcpu-little-supply = <&mt6358_vproc12_reg>;
> >
> > It's already defined to have OPP and supply in the cpu nodes. Parse them
> > to get this information rather than duplicating it here.
> >
> > The same should apply to the CCI and GPU.
>
> Please let me explain the reason why I add SVS sub-nodes. I ever try to
> parse other nodes to get desired power-domains/OPP table. However, it
> makes SVS driver harder to develop and maintain.
>
> 1. When a SVS-controller-init wants GPU_CORE0's OPP table in one node
> but it needs power-domains(GPU_MFG_2D) in another node, it becomes
> complicated and confusing when SVS sub-node tries to parse many nodes.
> Therefore, we want SVS sub-node to focus on what SVS bank requires by
> how we do in this patch.
>
> 2. In hardware point of view, SVS controller depends on other hardware's
> power only. All the SVS controller registers are in SVS hardware. So, we
> think It's good that SVS sub-node describes what SVS controller requires
> instead of linking other subsys nodes and parse the property that SVS
> controller needs.
>
> 3. We want SVS driver to have a generic way to attain subsys device for
> using "pm_runtime and OPP framework" API. If SVS driver tries to parse
> CPU(little/big core) and other subsys device node(e.g cci/gpu), it means
> SVS driver has to maintain different methodologies(cpu-specific?
> devfreq? others?) in order to get CPU(little/big core) and other subsys
> device(e.g cci/gpu) for using "pm_runtime and OPP framework" API.

(Didn't see this more complete reply before replying to v6, I can see
your argument, but if we wanted to push further to have the sub-device
node in the DT)

From what I see, the SVS driver for node x (cpu/cci/gpu) requires only 3 things:
 - An OPP table => that should always be "operating-points-v2"
property of the node x.
 - A power domain => that should always be power-domains property of node x.
 - A regulator. That one is a bit tricky as the cpu/cci uses "proc",
but gpu uses "mali" (at least on 8183). But maybe you can add a
child-regulator-name property or something to the DT so that the SVS
driver can find the correct regulator?

Seems like the solution could be quite generic?

> >
> > Rob
>
> Sincerely,
> Roger Lu.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
