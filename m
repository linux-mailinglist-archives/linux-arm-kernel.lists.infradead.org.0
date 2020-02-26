Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2688A16F787
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 06:43:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhtdMVOM51jPQ1tKnATDzJJG1Zwvoq8t1DndMJs7oOw=; b=KLmRgADIIli8Pz
	cVH+9FF4uYEWbLuskTyEGIsELOn3wjqiNLF0X2yLau6byArouMqJUZl5N9B3ezuZ+EHs4Tes7SZxi
	ChO0XItRc3QAHgblqlv7CNjD84SNkxcsf9zA/SCUhNGc+NMOCbaHxzkrpndJMhvkQgRLFVlFpoV5R
	gaR6irVBIJJUIX/ND15Rp8jUh2Y40WOwH7aNF/8oWZ3IouvN16piGUom4aWsnE/4yuckFwnJ0vfKK
	flcQBuuAk1TfyGtNd3PuQ4vdT2b5vKwYnoa6YYSpsFF4qebLR+yd2ebza79luoJ64J9ECOVTx0LDC
	b/L8JDzmEop+yA8LjyOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6pTV-0006eG-B4; Wed, 26 Feb 2020 05:43:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6pRf-0005Hx-Rb; Wed, 26 Feb 2020 05:41:23 +0000
X-UUID: 179739f6f60e427f95fa5c175548e40c-20200225
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=S2g8v/NbyIa+ijgNYV0Tg3GbSpE4QX9qqeqOCYKa+z4=; 
 b=Vi3x9lcf5CY5/r0bGJu3MgVBHt7+6OhMR4PkMrnQNXn4vvRpxralTPDJzeX/SvSlmHYpqWYC1jWmJPZnSqb3YhO6PMaxAHO4sHrJk9p6f3BVcmshYpMpMPdrLyNQ2rOQYq5jMpz36iWgBJy/yfgcGvb3H/wlmZUTT4avaqqfZr0=;
X-UUID: 179739f6f60e427f95fa5c175548e40c-20200225
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1529916244; Tue, 25 Feb 2020 21:41:12 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 21:33:36 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Feb 2020 13:31:03 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 26 Feb 2020 13:33:05 +0800
Message-ID: <1582695176.8324.4.camel@mtksdaap41>
Subject: Re: [PATCH v8 0/6] arm/arm64: mediatek: Fix mmsys device probing
From: CK Hu <ck.hu@mediatek.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Date: Wed, 26 Feb 2020 13:32:56 +0800
In-Reply-To: <688f6c85-0063-9458-858c-de7bbfb8a530@collabora.com>
References: <20200220172147.919996-1-enric.balletbo@collabora.com>
 <1582259996.1846.7.camel@mtksdaap41>
 <7a87b486-1622-7f27-f5af-427b94a14c00@collabora.com>
 <1582277229.25992.9.camel@mtksdaap41>
 <1393a8c5-065f-cccb-2563-8b159c951d4b@suse.com>
 <1582283518.5889.10.camel@mtksdaap41>
 <6deab0a4-44a6-a15f-ac01-374f818b267c@collabora.com>
 <6eb9da70-9a0c-27fc-6c31-3ac62ede5a35@suse.com>
 <d9ad35c0-57df-ebb2-67e8-4aae55dd2fcb@collabora.com>
 <1582523544.25316.2.camel@mtksdaap41>
 <688f6c85-0063-9458-858c-de7bbfb8a530@collabora.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_214119_931800_2EA33A94 
X-CRM114-Status: GOOD (  41.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, Kate Stewart <kstewart@linuxfoundation.org>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, airlied@linux.ie,
 mturquette@baylibre.com, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>, laurent.pinchart@ideasonboard.com,
 ulrich.hecht+renesas@gmail.com, Collabora Kernel ML <kernel@collabora.com>,
 linux-clk@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 Weiyi Lu <weiyi.lu@mediatek.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 wens@csie.org, linux-arm-kernel@lists.infradead.org,
 mtk01761 <wendell.lin@mediatek.com>, Owen Chen <owen.chen@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, frank-w@public-files.de,
 Seiya Wang <seiya.wang@mediatek.com>, sean.wang@mediatek.com,
 Houlong Wei <houlong.wei@mediatek.com>, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Thomas
 Gleixner <tglx@linutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, Matthias Brugger <mbrugger@suse.com>,
 Fabien Parent <fparent@baylibre.com>, sboyd@kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Enric:

On Tue, 2020-02-25 at 11:56 +0100, Enric Balletbo i Serra wrote:
> 
> On 24/2/20 6:52, CK Hu wrote:
> > 
> > Hi,
> > 
> > On Fri, 2020-02-21 at 18:10 +0100, Enric Balletbo i Serra wrote:
> >> Hi,
> >>
> >> On 21/2/20 12:53, Matthias Brugger wrote:
> >>>
> >>>
> >>> On 21/02/2020 12:37, Enric Balletbo i Serra wrote:
> >>>> Hi CK and Matthias,
> >>>>
> >>>> On 21/2/20 12:11, CK Hu wrote:
> >>>>> Hi, Matthias:
> >>>>>
> >>>>> On Fri, 2020-02-21 at 11:24 +0100, Matthias Brugger wrote:
> >>>>>>
> >>>>>> On 21/02/2020 10:27, CK Hu wrote:
> >>>>>>> Hi, Enric:
> >>>>>>>
> >>>>>>> On Fri, 2020-02-21 at 09:56 +0100, Enric Balletbo i Serra wrote:
> >>>>>>>> Hi CK,
> >>>>>>>>
> >>>>>>>> Thanks for your quick answer.
> >>>>>>>>
> >>>>>>>> On 21/2/20 5:39, CK Hu wrote:
> >>>>>>>>> Hi, Enric:
> >>>>>>>>>
> >>>>>>>>> On Thu, 2020-02-20 at 18:21 +0100, Enric Balletbo i Serra wrote:
> >>>>>>>>>> Dear all,
> >>>>>>>>>>
> >>>>>>>>>> Those patches are intended to solve an old standing issue on some
> >>>>>>>>>> Mediatek devices (mt8173, mt2701 and mt2712) in a slightly different way
> >>>>>>>>>> to the precedent series.
> >>>>>>>>>>
> >>>>>>>>>> Up to now both drivers, clock and drm are probed with the same device tree
> >>>>>>>>>> compatible. But only the first driver get probed, which in effect breaks
> >>>>>>>>>> graphics on those devices.
> >>>>>>>>>>
> >>>>>>>>>> The version eight of the series tries to solve the problem with a
> >>>>>>>>>> different approach than the previous series but similar to how is solved
> >>>>>>>>>> on other Mediatek devices.
> >>>>>>>>>>
> >>>>>>>>>> The MMSYS (Multimedia subsystem) in Mediatek SoCs has some registers to
> >>>>>>>>>> control clock gates (which is used in the clk driver) and some registers
> >>>>>>>>>> to set the routing and enable the differnet blocks of the display
> >>>>>>>>>> and MDP (Media Data Path) subsystem. On this series the clk driver is
> >>>>>>>>>> not a pure clock controller but a system controller that can provide
> >>>>>>>>>> access to the shared registers between the different drivers that need
> >>>>>>>>>> it (mediatek-drm and mediatek-mdp). And the biggest change is, that in
> >>>>>>>>>> this version, clk driver is the entry point (parent) which will trigger
> >>>>>>>>>> the probe of the corresponding mediatek-drm driver and pass its MMSYS
> >>>>>>>>>> platform data for display configuration.
> >>>>>>>>>
> >>>>>>>>> When mmsys is a system controller, I prefer to place mmsys in
> >>>>>>>>> drivers/soc/mediatek, and it share registers for clock, display, and mdp
> >>>>>>>>> driver. This means the probe function is placed in
> >>>>>>>>> drivers/soc/mediatek ,its display clock function, mdp clock function are
> >>>>>>>>> placed in drivers/clk, display routing are placed in drivers/gpu/drm,
> >>>>>>>>> and mdp routing are placed in dirvers/video.
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>> I understand what you mean but I am not sure this makes the code clearer and
> >>>>>>>> useful. The driver in drivers/soc/mediatek will be a simple dummy implementation
> >>>>>>>> of a "simple-mfd" device (a driver that simply matches with
> >>>>>>>> "mediatek,mt8173-mmsys" and instantiates the "clk-mt8173-mm" and the
> >>>>>>>> "mediatek-drm" driver (note that mediatek-mdp" is already instantiated via
> >>>>>>>> device-tree).
> >>>>>>>>
> >>>>>>>
> >>>>>>> It's clear that mmsys is neither a pure clock controller nor a pure
> >>>>>>> routing controller for display and mdp. 
> >>>>>>>
> >>>>>>>> It'd be nice had a proper device-tree with a "simple-mfd" for mmsys from the
> >>>>>>>> beginning representing how really hardwware is, but I think that, change this
> >>>>>>>> now, will break backward compatibility.
> >>>>>>>
> >>>>>>> Maybe this is a solution. Current device tree would work only on old
> >>>>>>> kernel version with a bug, so this mean there is no any device tree
> >>>>>>> works on kernel version without bug. Why do we compatible with such
> >>>>>>> device tree?
> >>>>>>>
> >>>>>>
> >>>>
> >>>> So the only reason why current DT worked at some point is because there was a
> >>>> kernel bug?
> >>>>
> >>>
> >>> I'd say you can call it a kernel bug:
> >>> https://patchwork.kernel.org/patch/10367877/#22078767
> >>>
> >>>
> >>>> If that's the case I think we shouldn't worry about break DT compatibility (I'm
> >>>> sorry for those that having a buggy kernel makes display working)
> >>>>
> >>>>>> The idea behind this is, that the device-tree could be passed by some boot
> >>>>>> firmware, so that the OS do not care about it. For this we need a stable DTS as
> >>>>>> otherwise newer kernel with older FW would break.
> >>>>>>
> >>>>>> DTS is supposed to be just a different description of the HW like ACPI. So it
> >>>>>> has to be compatible (newer kernel with older DTS and if possible vice versa).
> >>>>>
> >>>>> In my view, there is no FW (except some bug-inside FW) which works on
> >>>>> this dts, so this dts is in a initial state. I think the compatibility
> >>>>> is based on that dts correctly describe the HW. If we find this dts does
> >>>>> not correctly describe the HW and it's in a initial state, should we
> >>>>> still make it compatible?
> >>>>>
> >>>>
> >>>> In this case I think we don't need to worry about buggy kernels, the only thing
> >>>> that we need to take in consideration is that mmsys is instantiated on both (the
> >>>> old DT and the new DT), we shouldn't expect display working (because never
> >>>> worked, right?)
> >>>>
> >>>> With that in mind, I agree that is a good opportunity to fix properly the HW
> >>>> topology.
> >>>>
> >>>> What thing that worries me is that I see this pattern on all Mediatek SoCs, does
> >>>> this mean that display was never well supported for Mediatek SoCs?
> >>>>
> >>>
> >>> That's exactly the case. Actually there were some patches for mt762x (can't
> >>> remember if mt7623 or mt7622) whcih got pushed back, because we would need to
> >>> fix the mmsys problem first.
> >>>
> >>> Ok, so if we come to the conclusion that this actually only worked because of a
> >>> bug, then we can remodel the whole thing.
> >>> In this case, I think the best would be to do what CK proposed:
> >>> https://patchwork.kernel.org/patch/11381201/#23158169
> >>>
> >>> Making everything below 0x14000000 a subdevice of mmsys (mdp, ovl, rdma, you
> >>> name it).
> >>>
> >>
> >>
> >> I see the MMSYS space as config registers to route the different ports in the
> >> drm and video subsystem, so, as phandle of the display (drivers/gpur/drm) and
> >> video (drivers/video) subsystem. What about something like this?
> >>
> >> mmsys: syscon@14000000 {
> >> 	compatible = "mediatek,mt8173-mmsys", "syscon";
> >> 	reg = <0 0x14000000 0 0x1000>;
> >> 	power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
> >> 	assigned-clocks = <&topckgen CLK_TOP_MM_SEL>;
> >> 	assigned-clock-rates = <400000000>;
> >> 	#clock-cells = <1>;
> >> };
> >>
> >> Basically is what we have with
> >>
> >> * [PATCH v8 4/6] clk: mediatek: mt8173: Switch MMSYS to platform driver
> >>
> >> And
> >>
> >> display-subsystem {
> >> 	compatible = "mediatek,display-subsystem";
> >> 	mediatek,mmsys = <&mmsys>; /* phandle to the routing config registers */
> >> 	ports = <&ovl0>, <&ovl1>, < ... >
> >> }
> >>
> >> We are introducing a new compatible that is not describing hardware but how
> >> hardware is grouped, which I think is fine.
> >>
> >> The mediatek-drm driver will need a bit of rework but not much I guess.
> >>
> >> What is still not clear to me is the mdp part because doesn't seem to have an
> >> entry point like the display part, instead it uses one port as entry point.
> >>
> >> 	mdp_rdma0: rdma@14001000 {
> >> 		compatible = "mediatek,mt8173-mdp-rdma",
> >> 			     "mediatek,mt8173-mdp";
> >>
> >> AFAICS that driver is not touching MMSYS config registers to route the mdp path,
> >> only is getting the clocks, but I assume it will do in the future. In such case,
> >> maybe we could do something similar to the display-subsystem node?
> >>
> > 
> > Your proposal is to probe clock driver by mmsys device and probe display driver by another device. You have two choice to probe display driver: one is to create a virtual device that group display devices and probe display driver by this device. Another one is to choose one display device, such as OVL, to probe display driver.
> > 
> > I do not like a virtual device solution. In some Mediatek SoC, the routing is so flexible that one function block could be placed in display pipe or mdp pipe by different routing.
> > 
> > mmsys device control the display routing and display clock. OVL control. display overlay function. Both devices control partial display function, so probing display driver by which one looks the same for me.
> > 
> > I prefer to probe display driver by mmsys device because it has more information of display pipe line and OVL just focus on overlay function. Only when it's difficult to probe display driver by mmsys device, we have to probe display driver by OVL.
> > 
> > I think mmsys is really a multi-function device, and the device tree description may look like:
> > 
> > mmsys: system-controller@14000000 {
> > 	compatible = "mediatek,mt8173-mmsys", "syscon", "simple-mfd";
> > 	reg = <0 0x14000000 0 0x1000>;
> > 	power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
> > 	assigned-clocks = <&topckgen CLK_TOP_MM_SEL>;
> > 	assigned-clock-rates = <400000000>;
> > 	#clock-cells = <1>;
> > 
> > 	route {
> > 		compatible = "mediatek,mt8173-mmsys-route";
> 
> Are you suggesting move the mediatek-drm routing to a new mt8173-mmsys-route
> driver? Or this is a more generic routing device? Is this routing device already
> implemented somewhere?
> 

This is a more generic routing device which control routing inside mmsys
partition (include display and mdp). Now we could find display routing
in drivers/gpu/drm/mediatek/mtk_drm_ddp.c. You could search
'config_regs' and it is the register from 0x14000000 ~ 0x14000fff.

> > 	};
> > 
> > 	clock {
> > 		compatible = "mediatek,mt8173-mmsys-clk";
> > 	};
> > };
> > 
> > But from mt6797 register map [1], mmsys have many function such as fake engine, memory delay, reset,....
> > Should we break each function into a sub device?
> > Or we do not break any function (include clock and routing) into sub device?
> > Or just break these two function into device, remove "simple-mfd" from mmsys, so the rest control is in mmsys top device?
> > 
> 
> How do you see move mmsys to drivers/soc/mediatek and instantiate the clk and
> mediatek-drm driver
> 
>  mmsys: syscon@14000000 {
>  	compatible = "mediatek,mt8173-mmsys", "syscon", "simple-mfd";
>  	reg = <0 0x14000000 0 0x1000>;
>  	power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
> 
> 	clock-controller {
> 		compatible = "mediatek,clk-mt8173-mm"
> 		assigned-clocks = <&topckgen CLK_TOP_MM_SEL>;
> 	 	assigned-clock-rates = <400000000>;
>  		#clock-cells = <1>;
> 	};
> 
> 	display-subsystem {
> 		compatible = "mediatek,display-subsystem";
> 	};
>  };
> 

Let's start with the simple definition.

mmsys: syscon at 14000000 {
	compatible = "mediatek,mt8173-mmsys", "syscon";
	reg = <0 0x14000000 0 0x1000>;
	power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
	assigned-clocks = <&topckgen CLK_TOP_MM_SEL>;
	assigned-clock-rates = <400000000>;
	#clock-cells = <1>;
};

When we break clock control to a sub device of mmsys, the reason is that
'Linux' generally categorize clock controller to a device. When we break
display control to a sub device of mmsys, the reason is that 'Linux'
generally categorize display controller to a device. All these seems
software-oriented reason, so I think we do not break any sub device and
keep mmsys simple.

When I search of_clk_add_provider(), I find that not all clock provider
code is in drivers/clk. Maybe when a clock controller is not an
independent device, the driver code of clock controller could be placed
within the device driver it belonged to. We could place mmsys driver in
drivers/soc/mediatek/, and it control the clock, routing, fake engine,
memory delay,.... I would like drm driver to be placed in
drivers/gpu/drm/ because display function block, such as OVL, does not
belong to mmsys device. And finally let mmsys driver to probe
mediatek-drm driver.

Regards,
CK

> 
> Regards,
>  Enric
> 
> > [1] https://www.96boards.org/documentation/consumer/mediatekx20/additional-docs/docs/MT6797_Register_Table_Part_2.pdf
> > 
> > Regards,
> > CK
> > 
> > 
> >> Regards,
> >>  Enric
> >>
> >>
> >>> Regards,
> >>> Matthias
> >>>
> >>>> Thanks.
> >>>>
> >>>>> If you have better solution, just let's forget this.
> >>>>>
> >>>>> Regards,
> >>>>> CK
> >>>>>
> >>>>>>
> >>>>>> Regards,
> >>>>>> Matthias
> >>>>>>
> >>>>>>> Regards,
> >>>>>>> CK
> >>>>>>>
> >>>>>>>>
> >>>>>>>> IMHO I think that considering the clk driver as entry point is fine, but this is
> >>>>>>>> something that the clock maintainers should decide.
> >>>>>>>>
> >>>>>>>> Also note that this is not only a MT8173 problem I am seeing the same problem on
> >>>>>>>> all other Mediatek SoCs.
> >>>>>>>>
> >>>>>>>> Thanks.
> >>>>>>>>
> >>>>>>>>> Regards,
> >>>>>>>>> CK
> >>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>> All this series was tested on the Acer R13 Chromebook only.
> >>>>>>>>>>
> >>>>>>>>>> For reference, here are the links to the old discussions:
> >>>>>>>>>>
> >>>>>>>>>> * v7: https://patchwork.kernel.org/project/linux-mediatek/list/?series=241217
> >>>>>>>>>> * v6: https://patchwork.kernel.org/project/linux-mediatek/list/?series=213219
> >>>>>>>>>> * v5: https://patchwork.kernel.org/project/linux-mediatek/list/?series=44063
> >>>>>>>>>> * v4:
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10530871/
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10530883/
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10530885/
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10530911/
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10530913/
> >>>>>>>>>> * v3:
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10367857/
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10367861/
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10367877/
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10367875/
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10367885/
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10367883/
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10367889/
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10367907/
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10367909/
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10367905/
> >>>>>>>>>> * v2: No relevant discussion, see v3
> >>>>>>>>>> * v1:
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10016497/
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10016499/
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10016505/
> >>>>>>>>>>   * https://patchwork.kernel.org/patch/10016507/
> >>>>>>>>>>
> >>>>>>>>>> Best regards,
> >>>>>>>>>>  Enric
> >>>>>>>>>>
> >>>>>>>>>> Changes in v8:
> >>>>>>>>>> - Be a builtin_platform_driver like other mediatek mmsys drivers.
> >>>>>>>>>> - New patches introduced in this series.
> >>>>>>>>>>
> >>>>>>>>>> Changes in v7:
> >>>>>>>>>> - Add R-by from CK
> >>>>>>>>>> - Add R-by from CK
> >>>>>>>>>> - Fix check of return value of of_clk_get
> >>>>>>>>>> - Fix identation
> >>>>>>>>>> - Free clk_data->clks as well
> >>>>>>>>>> - Get rid of private data structure
> >>>>>>>>>>
> >>>>>>>>>> Enric Balletbo i Serra (2):
> >>>>>>>>>>   drm/mediatek: Move MMSYS configuration to include/linux/platform_data
> >>>>>>>>>>   clk/drm: mediatek: Fix mediatek-drm device probing
> >>>>>>>>>>
> >>>>>>>>>> Matthias Brugger (4):
> >>>>>>>>>>   drm/mediatek: Use regmap for register access
> >>>>>>>>>>   drm/mediatek: Omit warning on probe defers
> >>>>>>>>>>   media: mtk-mdp: Check return value of of_clk_get
> >>>>>>>>>>   clk: mediatek: mt8173: Switch MMSYS to platform driver
> >>>>>>>>>>
> >>>>>>>>>>  drivers/clk/mediatek/Kconfig                  |   6 +
> >>>>>>>>>>  drivers/clk/mediatek/Makefile                 |   1 +
> >>>>>>>>>>  drivers/clk/mediatek/clk-mt2701-mm.c          |  30 +++
> >>>>>>>>>>  drivers/clk/mediatek/clk-mt2712-mm.c          |  44 +++++
> >>>>>>>>>>  drivers/clk/mediatek/clk-mt8173-mm.c          | 172 ++++++++++++++++++
> >>>>>>>>>>  drivers/clk/mediatek/clk-mt8173.c             | 104 -----------
> >>>>>>>>>>  drivers/gpu/drm/mediatek/mtk_disp_color.c     |   5 +-
> >>>>>>>>>>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c       |   5 +-
> >>>>>>>>>>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c      |   5 +-
> >>>>>>>>>>  drivers/gpu/drm/mediatek/mtk_dpi.c            |  12 +-
> >>>>>>>>>>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c       |   4 +-
> >>>>>>>>>>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c        |  53 +++---
> >>>>>>>>>>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h        |   4 +-
> >>>>>>>>>>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h   |  56 +-----
> >>>>>>>>>>  drivers/gpu/drm/mediatek/mtk_drm_drv.c        | 113 +-----------
> >>>>>>>>>>  drivers/gpu/drm/mediatek/mtk_drm_drv.h        |  13 +-
> >>>>>>>>>>  drivers/gpu/drm/mediatek/mtk_dsi.c            |   8 +-
> >>>>>>>>>>  drivers/gpu/drm/mediatek/mtk_hdmi.c           |   4 +-
> >>>>>>>>>>  drivers/media/platform/mtk-mdp/mtk_mdp_comp.c |   6 +
> >>>>>>>>>>  include/linux/platform_data/mtk_mmsys.h       |  73 ++++++++
> >>>>>>>>>>  20 files changed, 401 insertions(+), 317 deletions(-)
> >>>>>>>>>>  create mode 100644 drivers/clk/mediatek/clk-mt8173-mm.c
> >>>>>>>>>>  create mode 100644 include/linux/platform_data/mtk_mmsys.h
> >>>>>>>>>>
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>> _______________________________________________
> >>>>>>>> Linux-mediatek mailing list
> >>>>>>>> Linux-mediatek@lists.infradead.org
> >>>>>>>> http://lists.infradead.org/mailman/listinfo/linux-mediatek
> >>>>>>>
> >>>>>>
> >>>>>> _______________________________________________
> >>>>>> Linux-mediatek mailing list
> >>>>>> Linux-mediatek@lists.infradead.org
> >>>>>> http://lists.infradead.org/mailman/listinfo/linux-mediatek
> >>>>>
> >>>
> >>
> >> _______________________________________________
> >> Linux-mediatek mailing list
> >> Linux-mediatek@lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/linux-mediatek
> > 
> > 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
