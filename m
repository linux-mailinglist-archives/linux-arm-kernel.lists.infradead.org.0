Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9EC134A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 23:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+80yivW0vgk1zhg3uje5geuJA9R1Nd9wLMB546C8upo=; b=rFRe2z7tqKls+H
	ObUVTkyq1+wOsV+PoVlouWQ/V80PT6fGg3dKcIE6pUtOdzQWbVq6rUhFUPOVgdYg4VBM2fLa/48XZ
	hIkq3SvB2IK/giickquWgPCj7Jk+dKs7dlhFSyibViqSst+Iir5OlfLoAzqKG8Jjei73qPMgTYmLQ
	TGujby4P+5EWzGZz5PMQZaDagU1Utkpnlz8ANZFcWxi0ZZHn0MllN6y1mUDpzCJsVnSTMm+FNakYw
	rSMbu+lpK7xyubrGAXQ5j9C3+385qJOsAQX3zqRbsNgctQQdZWY132Q1jquDTpPRNUcTrZ+f9Ywb5
	5ohN1jArTx4Q4E/3fcAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMfPx-0006iZ-8v; Fri, 03 May 2019 21:08:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMfPp-0006i6-W5; Fri, 03 May 2019 21:08:23 +0000
Received: from localhost (unknown [104.132.0.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D2522070B;
 Fri,  3 May 2019 21:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556917701;
 bh=aqcL29qHJsAYLqk55Q2wpnp7s9uGAqVZLA5M+CR6604=;
 h=In-Reply-To:References:To:Cc:From:Subject:Date:From;
 b=Dso9UErmUzkJ3ZamrjDEdNv4u7/1wbneeAfHXvB0+lZJsZyTrHTNLtHb+hfLwvKHW
 ywwvXyRhWET2LFDkF3ssEpv/9pyHMhRN5kW7vZAi+ps7oH3L3AnvaRqmaCjQ+sseat
 TAcev7toef6D8yexAqbmooLK868VgmlWzGanEY8w=
MIME-Version: 1.0
In-Reply-To: <1556777971.12123.35.camel@mtksdaap41>
References: <20190430112012.4514-1-roger.lu@mediatek.com>
 <20190430112012.4514-2-roger.lu@mediatek.com>
 <155665629219.168659.8221738507474891604@swboyd.mtv.corp.google.com>
 <1556777971.12123.35.camel@mtksdaap41>
To: Roger Lu <roger.lu@mediatek.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC v1 1/3] dt-bindings: soc: add mtk svs dt-bindings
Message-ID: <155691770027.200842.16164651681407381397@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Fri, 03 May 2019 14:08:20 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_140822_070854_A6C85F3E 
X-CRM114-Status: GOOD (  20.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Angus.Lin@mediatek.com, devicetree@vger.kernel.org,
 Viresh Kumar <vireshk@kernel.org>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Andy-YT.Liu@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Roger Lu (2019-05-01 23:19:31)
> On Tue, 2019-04-30 at 13:31 -0700, Stephen Boyd wrote:
> > Quoting Roger Lu (2019-04-30 04:20:10)
> > > diff --git a/Documentation/devicetree/bindings/power/mtk-svs.txt b/Documentation/devicetree/bindings/power/mtk-svs.txt
> > > new file mode 100644
> > > index 000000000000..355329db74ba
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/power/mtk-svs.txt
[..]
> > > +
> > > +               svs_gpu: svs_gpu {
> > > +                       compatible = "mediatek,mt8183-svs-gpu";
> > > +                       power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
> > > +                       operating-points-v2 = <&gpu_opp_table>;
> > > +               };
> > 
> > It looks like you need multiple OPPs for a single device, because it has
> > different independent power supplies it wants to associate the OPP
> > tables with?
> Yes. SVS has different controllers inside the hardware in order to
> calculate and optimize different OPP table voltage part.

So is there more than one SVS register region that needs certain devices
to be powered on or at least have their power domain enabled so that the
SVS hardware can read the voltage and adjust accordingly? I should read
the driver I suppose.

> 
> > Why can't these OPP tables be attached to the devices that
> > use them, i.e. CPU, GPU, CCI, etc.? Seems odd that those devices don't
> > have OPP tables that this hardware block can look up somehow.
> Those OPP tables are attached by our DVFS node (please refers below
> patch). SVS just shares with their OPP table and help optimize these OPP
> tables' voltage part.
> 
> Add cpufreq DTS node to the mt8183 and mt8183-evb
> https://patchwork.kernel.org/patch/10921675/

Cool thanks for the pointer.

> 
> 
> > Similarly,
> > the power domains should probably be part of the devices that are using
> > them and not these sub-nodes that are mirroring the other hardware
> > blocks in the system?
> Oh. There is a svs controller in GPU power-domain. We need to turn on
> GPU power so that svs controller can work functionally. Therefore, we
> add GPU power-domains in our svs_gpu sub-node.
> 
> 

Sorry, I'm not really following what you're saying too closely. I think
I get it but it sounds complicated.

I'm mostly wondering if having properties like svs-gpu = <&gpu_node>,
and svs-cci = <&cci_node> would work for you. The idea would be to link
this hardware block to the nodes that it's going to adjust the OPPs of.
Once you have the node, use some sort of OPP API to get the OPP table
for a device_node and adjust it at runtime for the current OPP. It
sounds like it might be a little more complicated if the hardware goes
haywire when the device like GPU is powered down and the power domain is
shut off. Hopefully it isn't though, so that the driver can mostly sit
on top of the SVS hardware and poke OPP every once and a while when the
voltage needs to change, regardless of the power state of the device.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
