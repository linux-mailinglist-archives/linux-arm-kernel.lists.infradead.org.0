Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B157A166CDB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 03:23:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8q6Sx3pATl965i9YfLf8zIzLPRpI0ua4dTdu5Um5+MY=; b=ulD/fRQciQVOOu
	nu3xkwRfITZynX5FTZEP6gW+aH0PUArxy7sECm3aSTXVX79Ts0zbDOMCd/lka8Uf6sOQCoHpN6MyI
	LgfltazljKMulq1bis+3P3ZCR5v0aiBqmb/cUM5ak2i/lZrjwbZSe4pTdREDtkjc8CMwaOSiq+399
	SX5/vTwbfy9QPMmZAG/8xrJ5ZDKjgui4U1jWTQhFgh7Ly5LI4QUZ3LOcGq+Fmyv9xmzd9xARxAXqb
	f2dQpNlM4KabDNsaKf2UCIirGl3CD6YW9V4tvSO7vBLcDavqAqNZOJziThEHFb+BpgfmjbR6L+o6f
	hZ1aRaROkx/SRZ3c4zdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4xyT-0001h8-1b; Fri, 21 Feb 2020 02:23:29 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4xyG-0001gD-RB
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 02:23:18 +0000
Received: by mail-il1-x144.google.com with SMTP id f5so430696ilq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 18:23:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1r4Guz/pyXp2FmGJuccB7640iKmbat2fCQTpns04iQA=;
 b=Lkna8bgrY1wIa2D6YpzLy0LrWfgzvaUEsUsl3en59bAJAaA2vZ9VPIKQlDXtm+3+2+
 9pdBEzbHik3jHDJbH4uFvxBtmgF8H1fX2vh7XTfL3CQHeRV+r5yUeRR6SesXPJidAZxW
 qE20XApR58nXLCYXwc7cWM3YGLzFqizc+vgPA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1r4Guz/pyXp2FmGJuccB7640iKmbat2fCQTpns04iQA=;
 b=jFh2MDfXmIulAzB9R7+/KaeEjTjbb0+2wpUjWnVq+nLYCwUoUnNh3bltWOZq7EiHl5
 RD0220L/p8ebA9qYa0C01X/My8pxboTpgI1HpEwSbjn9m7TuHHEie4E/HWCNOHbQmNnO
 W+p+idYwdkiGl9Lpxv+L3oqFL+ju0TdUF1QddjDxsFrOF1JJUlHtUEjq8I7CvQZVOZ7O
 +w0UbL3CwH4nqlXHcTIzn1kq3UHq77SvuoYzyV/zVzwSiC60j4jUM83G9oCCFhymhz8v
 zJD3zyNtAM61aFuM5IC+qYHgfueYxFtepttRKU9t5Cow/TN/XUBnRQFviQLZX6PUe3gt
 pdAg==
X-Gm-Message-State: APjAAAXikFYkyq41yOqEemS10/xq39K9lPOvMqmBOnT3ihWI/P3XCGs7
 RGP569un/+QIqgEEdoFig5eD9yLPquFKfAYln6quOQ==
X-Google-Smtp-Source: APXvYqyrSLErmbSrh9z11lK8TdqiabptjiOsG76i8R6M6oB7VpHn99tIgFQZTTtENubg4nsK88nil5eScTiP60KPOrA=
X-Received: by 2002:a92:af8e:: with SMTP id v14mr32001179ill.150.1582251795343; 
 Thu, 20 Feb 2020 18:23:15 -0800 (PST)
MIME-Version: 1.0
References: <20200210063523.133333-1-hsinyi@chromium.org>
 <20200210063523.133333-4-hsinyi@chromium.org>
 <bbc75f19-0581-c902-a455-13157d66d72f@gmail.com>
In-Reply-To: <bbc75f19-0581-c902-a455-13157d66d72f@gmail.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 21 Feb 2020 10:22:49 +0800
Message-ID: <CAJMQK-iR4YHdgKfXGiM-gLVo7535KMaZobk=j4whF2g-xJ11DA@mail.gmail.com>
Subject: Re: [PATCH v7 3/5] arm64: dts: mt8173: fix unit name warnings
To: Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_182316_906074_43EE3D65 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>, lkml <linux-kernel@vger.kernel.org>,
 Daniel Kurtz <djkurtz@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 6:17 AM Matthias Brugger <matthias.bgg@gmail.com> wrote:
>
>
>
> On 10/02/2020 07:35, Hsin-Yi Wang wrote:
> > Fixing several unit name warnings:
> >
> > Warning (unit_address_vs_reg): /oscillator@0: node has a unit name, but no reg property
> > Warning (unit_address_vs_reg): /oscillator@1: node has a unit name, but no reg property
> > Warning (unit_address_vs_reg): /oscillator@2: node has a unit name, but no reg property
> > Warning (unit_address_vs_reg): /thermal-zones/cpu_thermal/trips/trip-point@0: node has a unit name, but no reg property
> > Warning (unit_address_vs_reg): /thermal-zones/cpu_thermal/trips/trip-point@1: node has a unit name, but no reg property
> > Warning (unit_address_vs_reg): /thermal-zones/cpu_thermal/trips/cpu_crit@0: node has a unit name, but no reg property
> > Warning (unit_address_vs_reg): /thermal-zones/cpu_thermal/cooling-maps/map@0: node has a unit name, but no reg property
> > Warning (unit_address_vs_reg): /thermal-zones/cpu_thermal/cooling-maps/map@1: node has a unit name, but no reg property
> > Warning (unit_address_vs_reg): /reserved-memory/vpu_dma_mem_region: node has a reg or ranges property, but no unit name
> > Warning (simple_bus_reg): /soc/pinctrl@10005000: simple-bus unit address format error, expected "1000b000"
> > Warning (simple_bus_reg): /soc/interrupt-controller@10220000: simple-bus unit address format error, expected "10221000"
> > Warning (alias_paths): /aliases: aliases property name must include only lowercase and '-'
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> >  arch/arm64/boot/dts/mediatek/mt8173.dtsi | 38 ++++++++++++------------
> >  1 file changed, 19 insertions(+), 19 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> > index 790cd64aa447..2b7f566fb407 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> > @@ -42,14 +42,14 @@ aliases {
> >               dpi0 = &dpi0;
> >               dsi0 = &dsi0;
> >               dsi1 = &dsi1;
> > -             mdp_rdma0 = &mdp_rdma0;
> > -             mdp_rdma1 = &mdp_rdma1;
> > -             mdp_rsz0 = &mdp_rsz0;
> > -             mdp_rsz1 = &mdp_rsz1;
> > -             mdp_rsz2 = &mdp_rsz2;
> > -             mdp_wdma0 = &mdp_wdma0;
> > -             mdp_wrot0 = &mdp_wrot0;
> > -             mdp_wrot1 = &mdp_wrot1;
> > +             mdp-rdma0 = &mdp_rdma0;
> > +             mdp-rdma1 = &mdp_rdma1;
> > +             mdp-rsz0 = &mdp_rsz0;
> > +             mdp-rsz1 = &mdp_rsz1;
> > +             mdp-rsz2 = &mdp_rsz2;
> > +             mdp-wdma0 = &mdp_wdma0;
> > +             mdp-wrot0 = &mdp_wrot0;
> > +             mdp-wrot1 = &mdp_wrot1;
>
> Won't we need to update the mdp driver as well, as it uses of_alias_get_id()?
>
It's fixed in the fifth patch
https://patchwork.kernel.org/patch/11372623/

> >               serial0 = &uart0;
> >               serial1 = &uart1;
> >               serial2 = &uart2;
> > @@ -246,21 +246,21 @@ psci {
> >               cpu_on        = <0x84000003>;
> >       };
> >
> > -     clk26m: oscillator@0 {
> > +     clk26m: oscillator0 {
> >               compatible = "fixed-clock";
> >               #clock-cells = <0>;
> >               clock-frequency = <26000000>;
> >               clock-output-names = "clk26m";
> >       };
> >
> > -     clk32k: oscillator@1 {
> > +     clk32k: oscillator1 {
> >               compatible = "fixed-clock";
> >               #clock-cells = <0>;
> >               clock-frequency = <32000>;
> >               clock-output-names = "clk32k";
> >       };
> >
> > -     cpum_ck: oscillator@2 {
> > +     cpum_ck: oscillator2 {
> >               compatible = "fixed-clock";
> >               #clock-cells = <0>;
> >               clock-frequency = <0>;
> > @@ -276,19 +276,19 @@ cpu_thermal: cpu_thermal {
> >                       sustainable-power = <1500>; /* milliwatts */
> >
> >                       trips {
> > -                             threshold: trip-point@0 {
> > +                             threshold: trip-point0 {
> >                                       temperature = <68000>;
> >                                       hysteresis = <2000>;
> >                                       type = "passive";
> >                               };
> >
> > -                             target: trip-point@1 {
> > +                             target: trip-point1 {
> >                                       temperature = <85000>;
> >                                       hysteresis = <2000>;
> >                                       type = "passive";
> >                               };
> >
> > -                             cpu_crit: cpu_crit@0 {
> > +                             cpu_crit: cpu_crit0 {
> >                                       temperature = <115000>;
> >                                       hysteresis = <2000>;
> >                                       type = "critical";
> > @@ -296,13 +296,13 @@ cpu_crit: cpu_crit@0 {
> >                       };
> >
> >                       cooling-maps {
> > -                             map@0 {
> > +                             map0 {
> >                                       trip = <&target>;
> >                                       cooling-device = <&cpu0 0 0>,
> >                                                        <&cpu1 0 0>;
> >                                       contribution = <3072>;
> >                               };
> > -                             map@1 {
> > +                             map1 {
> >                                       trip = <&target>;
> >                                       cooling-device = <&cpu2 0 0>,
> >                                                        <&cpu3 0 0>;
> > @@ -316,7 +316,7 @@ reserved-memory {
> >               #address-cells = <2>;
> >               #size-cells = <2>;
> >               ranges;
> > -             vpu_dma_reserved: vpu_dma_mem_region {
> > +             vpu_dma_reserved: vpu_dma_mem_region@b7000000 {
> >                       compatible = "shared-dma-pool";
> >                       reg = <0 0xb7000000 0 0x500000>;
> >                       alignment = <0x1000>;
> > @@ -368,7 +368,7 @@ syscfg_pctl_a: syscfg_pctl_a@10005000 {
> >                       reg = <0 0x10005000 0 0x1000>;
> >               };
> >
> > -             pio: pinctrl@10005000 {
> > +             pio: pinctrl@1000b000 {
> >                       compatible = "mediatek,mt8173-pinctrl";
> >                       reg = <0 0x1000b000 0 0x1000>;
> >                       mediatek,pctl-regmap = <&syscfg_pctl_a>;
> > @@ -575,7 +575,7 @@ mipi_tx1: mipi-dphy@10216000 {
> >                       status = "disabled";
> >               };
> >
> > -             gic: interrupt-controller@10220000 {
> > +             gic: interrupt-controller@10221000 {
> >                       compatible = "arm,gic-400";
> >                       #interrupt-cells = <3>;
> >                       interrupt-parent = <&gic>;
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
