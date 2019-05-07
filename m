Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3B215E9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 09:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BOwP1jcM3i7XM7ZWIxKRXCKxA009ByiaW8jviRMPoS4=; b=pf5D7JB0kmDsy+
	NxMgd6XLWekwqZLCRvR6r2Qq1V0naG8ZypJdf/DvjyKaDmA3/nb1hRK5OHoAXftmozpjANKESqBiz
	BaMhJgjh8yehdAthOPegzrKJ+ctfaEN0/byvAoF+cktNAMB7vMIjsinKIXEzQozgrJx0yQaLIA/FR
	bdA1wur+PtlO6ccadwkQVhdAoyvWOdVgRm7cMwgtnXVuhZmbPrWlQe9aP8sdURyMdIvPl1MJGFXaI
	8Rrh9Ye+16rJttEQyCmKRQh6EinWHEUFpRgNbIQVO1BwUVyS3V2l1YKYSltucKjW0819wNOCAeoIV
	JID7mrVqZrRuFWnVX1lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNut2-0007Yy-9k; Tue, 07 May 2019 07:51:40 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNusp-0007Np-4E; Tue, 07 May 2019 07:51:31 +0000
X-UUID: 2afb7553cbbe413fa3590c0414014418-20190506
X-UUID: 2afb7553cbbe413fa3590c0414014418-20190506
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <roger.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 491281644; Mon, 06 May 2019 23:51:07 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 00:51:06 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 15:50:57 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 7 May 2019 15:50:57 +0800
Message-ID: <1557215457.2147.90.camel@mtksdaap41>
Subject: Re: [RFC v1 1/3] dt-bindings: soc: add mtk svs dt-bindings
From: Roger Lu <roger.lu@mediatek.com>
To: Stephen Boyd <sboyd@kernel.org>
Date: Tue, 7 May 2019 15:50:57 +0800
In-Reply-To: <155691770027.200842.16164651681407381397@swboyd.mtv.corp.google.com>
References: <20190430112012.4514-1-roger.lu@mediatek.com>
 <20190430112012.4514-2-roger.lu@mediatek.com>
 <155665629219.168659.8221738507474891604@swboyd.mtv.corp.google.com>
 <1556777971.12123.35.camel@mtksdaap41>
 <155691770027.200842.16164651681407381397@swboyd.mtv.corp.google.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2A70FA32ECE4104952054275D588E9976EED734ADF312A104C76D8D354D178072000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_005127_512096_2F34A9E3 
X-CRM114-Status: GOOD (  26.74  )
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
 Angus.Lin@mediatek.com, linux-pm@vger.kernel.org,
 Viresh Kumar <vireshk@kernel.org>, Kevin Hilman <khilman@kernel.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 HenryC.Chen@mediatek.com, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Andy-YT.Liu@mediatek.com, Matthias
 Brugger <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Stephen,

Sorry for the late reply.

On Fri, 2019-05-03 at 14:08 -0700, Stephen Boyd wrote:
> Quoting Roger Lu (2019-05-01 23:19:31)
> > On Tue, 2019-04-30 at 13:31 -0700, Stephen Boyd wrote:
> > > Quoting Roger Lu (2019-04-30 04:20:10)
> > > > diff --git a/Documentation/devicetree/bindings/power/mtk-svs.txt b/Documentation/devicetree/bindings/power/mtk-svs.txt
> > > > new file mode 100644
> > > > index 000000000000..355329db74ba
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/power/mtk-svs.txt
> [..]
> > > > +
> > > > +               svs_gpu: svs_gpu {
> > > > +                       compatible = "mediatek,mt8183-svs-gpu";
> > > > +                       power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
> > > > +                       operating-points-v2 = <&gpu_opp_table>;
> > > > +               };
> > > 
> > > It looks like you need multiple OPPs for a single device, because it has
> > > different independent power supplies it wants to associate the OPP
> > > tables with?
> > Yes. SVS has different controllers inside the hardware in order to
> > calculate and optimize different OPP table voltage part.
> 
> So is there more than one SVS register region that needs certain devices
> to be powered on or at least have their power domain enabled so that the
> SVS hardware can read the voltage and adjust accordingly? I should read
> the driver I suppose.
No, basically, each SVS controller (aka SVS bank) only has one SVS
register region that needs to be powered on for the init.
In MT8183 SVS case, SVS has four controllers (banks). Each SVS bank
needs corresponding power domain to be on for its init.

#SVS bank corresponding power domain
svs_cpu_little: Needs CPU-A53 power on for init
svs_cpu_big: Needs CPU-A73 power on for init
svs_cci: Needs CPU-A53 power on for init
svs_gpu: Needs MFG_2D power on for init

P.S SVS driver will use pm_runtime_get_sync() to turn on power before
svs bank init and pm_runtime_put_sync() to turn off power power after
svs bank init.

> 
> > 
> > > Why can't these OPP tables be attached to the devices that
> > > use them, i.e. CPU, GPU, CCI, etc.? Seems odd that those devices don't
> > > have OPP tables that this hardware block can look up somehow.
> > Those OPP tables are attached by our DVFS node (please refers below
> > patch). SVS just shares with their OPP table and help optimize these OPP
> > tables' voltage part.
> > 
> > Add cpufreq DTS node to the mt8183 and mt8183-evb
> > https://patchwork.kernel.org/patch/10921675/
> 
> Cool thanks for the pointer.
> 
> > 
> > 
> > > Similarly,
> > > the power domains should probably be part of the devices that are using
> > > them and not these sub-nodes that are mirroring the other hardware
> > > blocks in the system?
> > Oh. There is a svs controller in GPU power-domain. We need to turn on
> > GPU power so that svs controller can work functionally. Therefore, we
> > add GPU power-domains in our svs_gpu sub-node.
> > 
> > 
> 
> Sorry, I'm not really following what you're saying too closely. I think
> I get it but it sounds complicated.
> 
> I'm mostly wondering if having properties like svs-gpu = <&gpu_node>,
> and svs-cci = <&cci_node> would work for you. The idea would be to link
> this hardware block to the nodes that it's going to adjust the OPPs of.
> Once you have the node, use some sort of OPP API to get the OPP table
> for a device_node and adjust it at runtime for the current OPP.
Yes, I understand your idea. Thank you. I share my design purpose and
the troubles I encountered when linking other hardware block.

#my design purpose
1. SVS bank doesn't need all the resources in other device node like
cci_node. Therefore, I model SVS sub-nodes to declare what svs bank
needs.

#troubles - linking other hardware block
1. I don't know how to get cpu devcie after we link CPU node
(svs_cpu_little = <cpu0>). I use "get_cpu_device(unsigned cpu)" in Linux
driver to attain cpuX device generally.
2. Our MT8183 has three gpu-related node as below, svs_gpu need the
reference of gpu (OPP table) & gpu_core2 (power-domain MFG_2D) to make
sure svs_gpu can init and update gpu OPP table. I don't know how to
refer two nodes by one property. Therefore, I model a svs_gpu to declare
what it needs.

gpu: mali@13040000 {
	...
	power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_CORE0>;
	operating-points-v2 = <&gpu_opp_table>;
	...
}

gpu_core1: mali_gpu_core1 {
	...
	power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_CORE1>;
};

gpu_core2: mali_gpu_core2 {
	...
	power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
};

P.S MT8183 GPU won't do upstream. So, there is no patchwork weblink to
refer.

> It sounds like it might be a little more complicated if the hardware goes
> haywire when the device like GPU is powered down and the power domain is
> shut off. Hopefully it isn't though, so that the driver can mostly sit
> on top of the SVS hardware and poke OPP every once and a while when the
> voltage needs to change, regardless of the power state of the device.

> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
