Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B8E16C95
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 22:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjO3Ngi2WnpWDzqjxkXxFisKj9Etsx1/4CDST+tE4rk=; b=ee5ZHp6f+xdRy6
	osWa7ZrPND6K+sngeHjJQinG+lIASR8iI/+6i1zvGhvceYKqXB4wkAa2kssW5DunA/UNKGvvDJEYg
	iZD89kX4UPmZADeh5Lt9I7NdwKbTedMvH0RXy+Rl8aJl40F2tp3SiU8gbHkB/ZVusf/Rqr+0M5Uhk
	wTfdKZIFCzlEMRJznSMU73qj9Ao4Tdtr1QtAnhLoygAKoFtq4DJNDTGhIKm6QPA/qsflbkAbcWfvW
	MR9q+feSQs3QI7krGlRxXKhPbHkQh90FX9lvjiFZESxEgE9n8plIGrbV74gSQL9Lh/mRO4hxJQv0V
	oIKToHklNgxG2rfeIooA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO71V-0005Xt-IX; Tue, 07 May 2019 20:49:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO71N-0005X3-LU; Tue, 07 May 2019 20:49:07 +0000
Received: from localhost (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5ED85205C9;
 Tue,  7 May 2019 20:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557262144;
 bh=UgQi0e7oHFXGjN1t4VrSnFtRC24frVRuEPTYfkilrW0=;
 h=In-Reply-To:References:From:Subject:Cc:To:Date:From;
 b=wxmG5tUCN0ycumdAr5/YRmGR0VS6AW087jInglKNSFP74iCaL9HDqJd0HLwAUYT/F
 TNmpN2BxlDjHfQzQm3/94TRUXspHIbucrf9jvaUpSHO+GHrTTODDiGrafiurVmYr3b
 9cRG+CeH6C9+gOusj5zihFQMz3pxy+0EUL75anQU=
MIME-Version: 1.0
In-Reply-To: <1557215457.2147.90.camel@mtksdaap41>
References: <20190430112012.4514-1-roger.lu@mediatek.com>
 <20190430112012.4514-2-roger.lu@mediatek.com>
 <155665629219.168659.8221738507474891604@swboyd.mtv.corp.google.com>
 <1556777971.12123.35.camel@mtksdaap41>
 <155691770027.200842.16164651681407381397@swboyd.mtv.corp.google.com>
 <1557215457.2147.90.camel@mtksdaap41>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC v1 1/3] dt-bindings: soc: add mtk svs dt-bindings
To: Roger Lu <roger.lu@mediatek.com>
Message-ID: <155726214346.14659.17800352563837760252@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Tue, 07 May 2019 13:49:03 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_134905_743193_F22E7D7C 
X-CRM114-Status: GOOD (  30.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Angus.Lin@mediatek.com, linux-pm@vger.kernel.org,
 Viresh Kumar <vireshk@kernel.org>, Kevin Hilman <khilman@kernel.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 HenryC.Chen@mediatek.com, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Andy-YT.Liu@mediatek.com, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Roger Lu (2019-05-07 00:50:57)
> Dear Stephen,
> 
> Sorry for the late reply.
> 
> On Fri, 2019-05-03 at 14:08 -0700, Stephen Boyd wrote:
> > Quoting Roger Lu (2019-05-01 23:19:31)
> > > On Tue, 2019-04-30 at 13:31 -0700, Stephen Boyd wrote:
> > > > Quoting Roger Lu (2019-04-30 04:20:10)
> > > > > diff --git a/Documentation/devicetree/bindings/power/mtk-svs.txt b/Documentation/devicetree/bindings/power/mtk-svs.txt
> > > > > new file mode 100644
> > > > > index 000000000000..355329db74ba
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/power/mtk-svs.txt
> > [..]
> > > > > +
> > > > > +               svs_gpu: svs_gpu {
> > > > > +                       compatible = "mediatek,mt8183-svs-gpu";
> > > > > +                       power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
> > > > > +                       operating-points-v2 = <&gpu_opp_table>;
> > > > > +               };
> > > > 
> > > > It looks like you need multiple OPPs for a single device, because it has
> > > > different independent power supplies it wants to associate the OPP
> > > > tables with?
> > > Yes. SVS has different controllers inside the hardware in order to
> > > calculate and optimize different OPP table voltage part.
> > 
> > So is there more than one SVS register region that needs certain devices
> > to be powered on or at least have their power domain enabled so that the
> > SVS hardware can read the voltage and adjust accordingly? I should read
> > the driver I suppose.
> No, basically, each SVS controller (aka SVS bank) only has one SVS
> register region that needs to be powered on for the init.
> In MT8183 SVS case, SVS has four controllers (banks). Each SVS bank
> needs corresponding power domain to be on for its init.
> 
> #SVS bank corresponding power domain
> svs_cpu_little: Needs CPU-A53 power on for init
> svs_cpu_big: Needs CPU-A73 power on for init
> svs_cci: Needs CPU-A53 power on for init
> svs_gpu: Needs MFG_2D power on for init
> 
> P.S SVS driver will use pm_runtime_get_sync() to turn on power before
> svs bank init and pm_runtime_put_sync() to turn off power power after
> svs bank init.

Ok. How are you making sure that certain CPUs are powered on?

> 
> > 
> > > 
> > > > Why can't these OPP tables be attached to the devices that
> > > > use them, i.e. CPU, GPU, CCI, etc.? Seems odd that those devices don't
> > > > have OPP tables that this hardware block can look up somehow.
> > > Those OPP tables are attached by our DVFS node (please refers below
> > > patch). SVS just shares with their OPP table and help optimize these OPP
> > > tables' voltage part.
> > > 
> > > Add cpufreq DTS node to the mt8183 and mt8183-evb
> > > https://patchwork.kernel.org/patch/10921675/
> > 
> > Cool thanks for the pointer.
> > 
> > > 
> > > 
> > > > Similarly,
> > > > the power domains should probably be part of the devices that are using
> > > > them and not these sub-nodes that are mirroring the other hardware
> > > > blocks in the system?
> > > Oh. There is a svs controller in GPU power-domain. We need to turn on
> > > GPU power so that svs controller can work functionally. Therefore, we
> > > add GPU power-domains in our svs_gpu sub-node.
> > > 
> > > 
> > 
> > Sorry, I'm not really following what you're saying too closely. I think
> > I get it but it sounds complicated.
> > 
> > I'm mostly wondering if having properties like svs-gpu = <&gpu_node>,
> > and svs-cci = <&cci_node> would work for you. The idea would be to link
> > this hardware block to the nodes that it's going to adjust the OPPs of.
> > Once you have the node, use some sort of OPP API to get the OPP table
> > for a device_node and adjust it at runtime for the current OPP.
> Yes, I understand your idea. Thank you. I share my design purpose and
> the troubles I encountered when linking other hardware block.
> 
> #my design purpose
> 1. SVS bank doesn't need all the resources in other device node like
> cci_node. Therefore, I model SVS sub-nodes to declare what svs bank
> needs.

Do you mean that there are other properties in the cci_node that the SVS
hardware block doesn't use? That doesn't sound like a problem to me. I
view nodes in the SoC bus as all memory mapped IO devices and it sounds
like SVS is a hardware IP core that's off to the side in the system that
has some sensors that goes into various other IP blocks in the system.
It's correct to model the registers and interrupts, etc. as one node for
the one hardware block that's delivered by the hardware engineers.

> 
> #troubles - linking other hardware block
> 1. I don't know how to get cpu devcie after we link CPU node
> (svs_cpu_little = <cpu0>). I use "get_cpu_device(unsigned cpu)" in Linux
> driver to attain cpuX device generally.

This should probably be some sort of list property that points to all
the CPUs in the little and big clusters. Then the code can iterate
through the node pointers and look for an OPP table in any of them by
combining of_cpu_node_to_id() with get_cpu_device()?

> 2. Our MT8183 has three gpu-related node as below, svs_gpu need the
> reference of gpu (OPP table) & gpu_core2 (power-domain MFG_2D) to make
> sure svs_gpu can init and update gpu OPP table. I don't know how to
> refer two nodes by one property. Therefore, I model a svs_gpu to declare
> what it needs.
> 
> gpu: mali@13040000 {
>         ...
>         power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_CORE0>;
>         operating-points-v2 = <&gpu_opp_table>;
>         ...
> }
> 
> gpu_core1: mali_gpu_core1 {
>         ...
>         power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_CORE1>;
> };
> 
> gpu_core2: mali_gpu_core2 {
>         ...
>         power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
> };

These three nodes should be combined into one node for the GPU. The
power domains will need to be referred to by name. Luckily we have
support for multiple power domains in the kernel now so this should
work. Let us know if it doesn't work for some reason.

> 
> P.S MT8183 GPU won't do upstream. So, there is no patchwork weblink to
> refer.

Sure.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
