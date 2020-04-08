Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353B31A1BAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 07:59:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xAEuXD/jVo7LTMj/99w1eDOdMj5RVW/7JzOFwo1lsmI=; b=YUZFGr3/Axj0XX
	QAHk74JBD7/tKc/ODbUznQXCkEwMk4JoHgjhNTm8MFlJNIJnkLbW+sK6sBmZYf2kkUoRa86csz0Cd
	DOZ6VQSlfrL7gV+/5PkL0kJ/bgXOebBefFRnBoPPIB6OrM/jB8ogyGS9Z58kELccIx8yAh+/TibUg
	eYJlVfFav3N8x4TSCkl47aFyHJusWi4a0BhurRJ/rSgB3LU9hPOS5ZAyMhbNNVjG6/LUkmTq0t04c
	zZKA5W0xl/5bvPxqHLpfzRYi/JzdZsTfTd+r9i5DVhAzZx95fygCtzEZtNNaXwwVxVn6mUfO1bfgc
	K8NXYItC1unXwz2B744A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM3jz-0000NC-82; Wed, 08 Apr 2020 05:59:11 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM3jq-0000LO-1S
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 05:59:04 +0000
Received: by mail-ua1-x944.google.com with SMTP id d23so2276123uak.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 22:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JuRf6yJbWtYxlK9MiLbnHNoPgySrKime7soo03XHwg8=;
 b=hEmTMlb4G0P+2aogFyGWc7pbqPwOB9J/CxeELOvBgHigymKo71VkQZw/1AwPY8mWut
 hwlP4KtfBta/VQNebJf0HYnPZQVMVG+j5hXWeIOv+KLCeReFxuiDGM5foKGDa6dufKMS
 yCVPYX7Cm/1qWuKhZsuJ9KARUZM1CExEo8TFU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JuRf6yJbWtYxlK9MiLbnHNoPgySrKime7soo03XHwg8=;
 b=PV5bzsts+ZJ9cBoGoDqMeybnd9AayUxnDI6Fx2Agz6nZ04VWqszR+/WPwUvXARFbur
 2F3CuVh2mL8kFWY6ZbSr/LOEI3vG31M2jtNHwiciwLaQAX2AI8gyb9l6gU+QtMb6O1bA
 lNcWCQy6LFyJKBP8KNL+Es+qgnwWZn5IyzJ4ldQ3cNsCsFsNWMQfHfm//+o7z1gzUaXw
 sLEzH9szl/NLhRVLs5vpJ9GGkYx8/e3E1h8geVoD6Qrh22TLQ/RY5dw9uEfKKmLk4hWZ
 RpJO6sVrYuNicIpGwi6IH2h2RD9okUmFYdEjcU8HtV+83YMRX0R1labQv+mD05v6NOox
 /IBA==
X-Gm-Message-State: AGi0Pub8XHkdf05I7LvqbLBT5U1688MQ3uWfaMHYkZamLFXPF1bgdOdu
 IpwdZwaPLpZxCbAsG2i5+iX1jvNnyfOzDDB/KkidwQ==
X-Google-Smtp-Source: APiQypKMQ51JKxh8oiu6lK7kqI3wqi5K92W9MpE8rI9SPxjpQoT14gqiJBH6/yay/Jqgt97yU6ykLrh500/nJv1Ksio=
X-Received: by 2002:a9f:3770:: with SMTP id a45mr4294126uae.117.1586325539503; 
 Tue, 07 Apr 2020 22:58:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200107070154.1574-1-roger.lu@mediatek.com>
 <20200107070154.1574-2-roger.lu@mediatek.com>
 <20200108203829.GA18987@bogus>
 <CANMq1KBu-gFy701BgFcjEwyhV9GgCCU2mkT9c8LviOJKBF30UA@mail.gmail.com>
 <CAL_JsqLnVEhvAh_8DfGWRZa+MdPRpXc9sWEQ6-3HQAeUfvkOSg@mail.gmail.com>
 <1581406566.14120.46.camel@mtksdaap41>
 <CANMq1KBVs7ZucNu9pTxXGZ0__E6tyxd1+mm2Zui81G=xQNtShA@mail.gmail.com>
In-Reply-To: <CANMq1KBVs7ZucNu9pTxXGZ0__E6tyxd1+mm2Zui81G=xQNtShA@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 8 Apr 2020 13:58:48 +0800
Message-ID: <CANMq1KBcV_7O-_XQxk+6LTWywVoPW1U5BjYRG=-ojih9DOK-Wg@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: soc: add mtk svs dt-bindings
To: Roger Lu <roger.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_225902_110178_392E6C38 
X-CRM114-Status: GOOD (  40.62  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 =?UTF-8?B?QW5ndXMgTGluICjmnpfnkZvosaop?= <Angus.Lin@mediatek.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Nicolas Boichat <drinkcat@google.com>, Stephen Boyd <sboyd@kernel.org>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Kevin Hilman <khilman@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?SGVucnlDIENoZW4gKOmZs+W7uuixqik=?= <HenryC.Chen@mediatek.com>,
 =?UTF-8?B?WVQgTGVlICjmnY7ku7Dlk7Ip?= <yt.lee@mediatek.com>,
 =?UTF-8?B?RmFuIENoZW4gKOmZs+WHoSk=?= <fan.chen@mediatek.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 =?UTF-8?B?WGlhb3FpbmcgTGl1ICjliJjmmZPluoYp?= <Xiaoqing.Liu@mediatek.com>,
 =?UTF-8?B?Q2hhcmxlcyBZYW5nICjmpYrkuo7pgLIp?= <Charles.Yang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Nishanth Menon <nm@ti.com>,
 James Liao <jamesjj.liao@mediatek.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 11:55 AM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> Hi Rob,
>
> On Tue, Feb 11, 2020 at 3:36 PM Roger Lu <roger.lu@mediatek.com> wrote:
> >
> > Hi Rob & Nicolas,
> >
> > Sorry for the late reply.
> >
> > On Mon, 2020-01-13 at 23:50 +0800, Rob Herring wrote:
> > > On Mon, Jan 13, 2020 at 12:44 AM Nicolas Boichat <drinkcat@chromium.org> wrote:
> > > >
> > > > On Thu, Jan 9, 2020 at 4:38 AM Rob Herring <robh@kernel.org> wrote:
> > > > >
> > > > > On Tue, Jan 07, 2020 at 03:01:52PM +0800, Roger Lu wrote:
> > > > > > Document the binding for enabling mtk svs on MediaTek SoC.
> > > > > >
> > > > > > Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> > > > > > ---
> > > > > >  .../devicetree/bindings/power/mtk-svs.txt     | 76 +++++++++++++++++++
> > > > > >  1 file changed, 76 insertions(+)
> > > > > >  create mode 100644 Documentation/devicetree/bindings/power/mtk-svs.txt
> > > > > >
> > > > > > diff --git a/Documentation/devicetree/bindings/power/mtk-svs.txt b/Documentation/devicetree/bindings/power/mtk-svs.txt
> > > > > > new file mode 100644
> > > > > > index 000000000000..9a3e81b9e1d2
> > > > > > --- /dev/null
> > > > > > +++ b/Documentation/devicetree/bindings/power/mtk-svs.txt
> > > > > > @@ -0,0 +1,76 @@
> > > > > > +* Mediatek Smart Voltage Scaling (MTK SVS)
> > > > > > +
> > > > > > +This describes the device tree binding for the MTK SVS controller (bank)
> > > > > > +which helps provide the optimized CPU/GPU/CCI voltages. This device also
> > > > > > +needs thermal data to calculate thermal slope for accurately compensate
> > > > > > +the voltages when temperature change.
> > > > > > +
> > > > > > +Required properties:
> > > > > > +- compatible:
> > > > > > +  - "mediatek,mt8183-svs" : For MT8183 family of SoCs
> > > > > > +- reg: Address range of the MTK SVS controller.
> > > > > > +- interrupts: IRQ for the MTK SVS controller.
> > > > > > +- clocks, clock-names: Clocks needed for the svs hardware. required
> > > > > > +                       clocks are:
> > > > > > +                    "main": Main clock for svs controller to work.
> > > > > > +- nvmem-cells: Phandle to the calibration data provided by a nvmem device.
> > > > > > +- nvmem-cell-names: Should be "svs-calibration-data" and "calibration-data"
> > > > > > +
> > > > > > +Subnodes:
> > > > > > +- svs-cpu-little: SVS bank device node of little CPU
> > > > > > +  compatible: "mediatek,mt8183-svs-cpu-little"
> > > > > > +  operating-points-v2: OPP table hooked by SVS little CPU bank.
> > > > > > +                    SVS will optimze this OPP table voltage part.
> > > > > > +  vcpu-little-supply: PMIC buck of little CPU
> > > > > > +- svs-cpu-big: SVS bank device node of big CPU
> > > > > > +  compatible: "mediatek,mt8183-svs-cpu-big"
> > > > > > +  operating-points-v2: OPP table hooked by SVS big CPU bank.
> > > > > > +                    SVS will optimze this OPP table voltage part.
> > > > > > +  vcpu-big-supply: PMIC buck of big CPU
> > > > > > +- svs-cci: SVS bank device node of CCI
> > > > > > +  compatible: "mediatek,mt8183-svs-cci"
> > > > > > +  operating-points-v2: OPP table hooked by SVS CCI bank.
> > > > > > +                    SVS will optimze this OPP table voltage part.
> > > > > > +  vcci-supply: PMIC buck of CCI
> > > > > > +- svs-gpu: SVS bank device node of GPU
> > > > > > +  compatible: "mediatek,mt8183-svs-gpu"
> > > > > > +  operating-points-v2: OPP table hooked by SVS GPU bank.
> > > > > > +                    SVS will optimze this OPP table voltage part.
> > > > > > +  vgpu-supply: PMIC buck of GPU
> > > > > > +
> > > > > > +Example:
> > > > > > +
> > > > > > +     svs: svs@1100b000 {
> > > > > > +             compatible = "mediatek,mt8183-svs";
> > > > > > +             reg = <0 0x1100b000 0 0x1000>;
> > > > > > +             interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW>;
> > > > > > +             clocks = <&infracfg CLK_INFRA_THERM>;
> > > > > > +             clock-names = "main_clk";
> > > > > > +             nvmem-cells = <&svs_calibration>, <&thermal_calibration>;
> > > > > > +             nvmem-cell-names = "svs-calibration-data", "calibration-data";
> > > > > > +
> > > > > > +             svs_cpu_little: svs-cpu-little {
> > > > > > +                     compatible = "mediatek,mt8183-svs-cpu-little";
> > > > > > +                     operating-points-v2 = <&cluster0_opp>;
> > > > > > +                     vcpu-little-supply = <&mt6358_vproc12_reg>;
> > > > > > +             };
> > > > >
> > > > > I don't think this is a good binding. This information already exists
> > > > > elsewhere in the DT, so your driver should just look in those nodes.
> > > > > For example the regulator can be in the cpu nodes or the OPP table
> > > > > itself.
> > > >
> > > > Roger, if that helps, without changing any other binding, on 8183,
> > > > basically you could have:
> > > >  - svs-cpu-little: Add a handle to &cpu0 and get the regulator/opp
> > > > table from it.
> > > >  - svs-cpu-big: Handle to &cpu4
> > >
> > > Why do you need those? Use the compatible of the cpus to determine big
> > > and little cores. Or there's the cpu capacity property that could be
> > > used instead.
> > >
> > > >  - svs-cci: Handle to &cci
> > >
> > > Is there more than 1 CCI? Just retrieve the node by the compatible.
> > > There's no need to have nodes that simply serve as a collection of
> > > data for some driver.
> > >
> > > >  - svs-gpu: Handle to &gpu (BTW, it is expected that SVS would only
> > > > apply to vgpu/mali regulator, and not vsram regulator?)
> >
> > svs-gpu depends on vgpu power on for init (don't care vgpu_sram). After
> > svs-gpu init is done, it doesn't need vgpu power on anymore. (vgpu can
> > be turned off)
> >
> > Please allows me to introduce more about what svs-gpu device needs.
> > 1. It needs gpu opp table from "gpu node" and gpu_core2 power-domains
> > from "gpu_core2 node". When svs-gpu has those resources, it turns on
> > gpu_core2 power-domain for svs-gpu-hw to have power (for calculating)
> > and svs-gpu-sw will update gpu opp table voltages' part.
> > 2. Therefore, if I retrieve gpu-related node from phandle or compatible,
> > it means svs-gpu device in driver needs to attach two different gpu
> > nodes for attaining gpu opp table and gpu_core2 power-domains. I think
> > this architecture of svs-gpu confuses maintainer why it attaches two
> > different nodes instead of having a device to describe what it needs.
>
> > 3. Is it acceptable to have a Linux device attaching two different
> > nodes? If yes, could you guide us some APIs for one device to attach two
> > nodes? I don't know how to implement it. Thanks.
>
> I'm also trying to understand how that would work. The way the code
> works now (https://chromium.googlesource.com/chromiumos/third_party/kernel/+/refs/heads/chromeos-4.19/drivers/power/avs/mtk_svs.c#1388):
>
> The SVS driver creates a platform device for each sub-node, find the
> sub-node that matches the compatible (pdev->dev.of_node):
> for_each_child_of_node(svs->dev->of_node, np) {
>   if (of_device_is_compatible(np, svsb->of_compatible)) {
>     pdev->dev.of_node = np;
>     break;
>   }
> }
>
> Then, thanks to that, the 2 functions dev_pm_opp_of_add_table and
> devm_regulator_get_optional "just work", as the get the opp table and
> regulator from the device tree node.
>
> So what you suggest is basically something like this:
> pdev->dev.of_node = of_find_compatible_node(NULL, NULL, "mediatek,mt8183-cci");
>
> I came up with a (very dirty) prototype here:
> https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/2076718
> ... and it doesn't really work
> (https://gist.github.com/drinkcat/61e50eedbdc301d418c9cee3ee5b6b06, I
> think the kernel is probing more than it should, like the DMA mask
> errors should not happen...)
>
> Before I dig further... I have the same concern as Roger, is it ok to
> have 2 devices bound to the same device tree node/compatible? My
> understanding was also that it's not.

Rob: It seems like this conversation died here. Do you have any
suggestions for the above?

Thanks,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
