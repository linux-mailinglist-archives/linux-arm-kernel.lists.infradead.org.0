Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CE6123D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 23:07:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNJ2MKvX/1JujgFklkXD7qcsurkAW2OIDnPNmYE7Wvk=; b=U5cjmCO1y3Q2XD
	lMg1UwjWuloMUBQuNyaRqnOCoQ+znUukfrpbdtWbE59knmUVIdCe9/P+i55HZTiu2vI2/N9jRmVaA
	FHksmVFXc6uJaDYOk2onJJp9wYTysAWXf4NJJaZGZEKMKkblJS9ZCEnDF1ETtmQqYW6rSDssjqVZb
	TlpZCJHt7e9K4VGmOTewuelP82j4+nr0rIrWM7osHthwLjA1zzCAORPJJckuXnOFfd/WqX2b6qtYE
	hHZUYPdvGap+bMDQtQhAjlfUTzKAfB1HjNybqu8JK+HCaZcPgj1qZvC4aFGQLyOaxXdvFOiKMDmTx
	Vw0w03JhwWpN0S+SKWUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMIuv-0002tj-HR; Thu, 02 May 2019 21:06:57 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMIuo-0002sx-2h; Thu, 02 May 2019 21:06:51 +0000
Received: by mail-ot1-f65.google.com with SMTP id g24so3463812otq.2;
 Thu, 02 May 2019 14:06:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CuGAjHSPjjBWWVAFMyTE3knLTp6TXz4Szt1/dM+IzVE=;
 b=Wt3LD5XQF3xCvi0+8ZjUEPHw7yE8YwSInTSpOhDFdaFtrDPYxckjVCcQDuQeInP5Sf
 Pa4QHpyvnz6xkXl/FTdxM8dEyRvxwx3ec0xFw/MAn1tWui++J/tqVwqHVUhKZgLLeyRR
 p52Kci5VA7jsjAWwKC+B/uDVbBkj8Mr+wArgje4Th7TlpK1xFsiJvLB+ptNmpOEooN15
 NsHND5zoORh5YFqPT5ik1Hrts5HuSg6ZsTYkAezE4wcmLhCJTdIkbgihPqKAHAZM1DXT
 sTrnrvBmlGFF0E2Pc8/rZ40+23p/U4KUzMaBpglUceX1CBoPH137MR7MWlHSIQ8ZoqEN
 mEvg==
X-Gm-Message-State: APjAAAWc+2bUC6jTOqsS08cedI/2xgv4jiFVvwC7O5r0TDv1huEruxM9
 9EuE4TC6/SJLSeKmq+TEq8YmL7o=
X-Google-Smtp-Source: APXvYqyKMgnvb3ZJTI9cej9idHGzwn8Jc5NYtnpoVITtSflxkN3uRtjD+X0X3SoavlxzWIHmMYUeRQ==
X-Received: by 2002:a9d:5e82:: with SMTP id f2mr4073879otl.217.1556831209035; 
 Thu, 02 May 2019 14:06:49 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a131sm192923oif.23.2019.05.02.14.06.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 14:06:48 -0700 (PDT)
Date: Thu, 2 May 2019 16:06:47 -0500
From: Rob Herring <robh@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC v1 1/3] dt-bindings: soc: add mtk svs dt-bindings
Message-ID: <20190502210647.GA32209@bogus>
References: <20190430112012.4514-1-roger.lu@mediatek.com>
 <20190430112012.4514-2-roger.lu@mediatek.com>
 <155665629219.168659.8221738507474891604@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <155665629219.168659.8221738507474891604@swboyd.mtv.corp.google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_140650_123491_F8F9F65F 
X-CRM114-Status: GOOD (  22.59  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Kevin Hilman <khilman@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-pm@vger.kernel.org, Roger Lu <roger.lu@mediatek.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Viresh Kumar <vireshk@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 01:31:32PM -0700, Stephen Boyd wrote:
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

It's also a node, not a property.

> 
> > +           table and power-domains.
> > +- vxxx-supply: Phandle to each regulator. vxxx can be "vcpu_little",
> > +              "vcpu_big", "vcci" and "vgpu".

Just list each property instead of the indirection with 'xxx'. Though 
here to, these should be in the nodes actually getting the power.

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

Not documented. Though I think the child nodes should be removed if you 
do as Stephen suggests below.

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
> tables with? Why can't these OPP tables be attached to the devices that
> use them, i.e. CPU, GPU, CCI, etc.? Seems odd that those devices don't
> have OPP tables that this hardware block can look up somehow. Similarly,
> the power domains should probably be part of the devices that are using
> them and not these sub-nodes that are mirroring the other hardware
> blocks in the system?
> 
> > +       };
> > +
> > +       &svs_cpu_little {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
