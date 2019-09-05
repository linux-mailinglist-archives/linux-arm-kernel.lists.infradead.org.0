Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E87A9FBA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 12:33:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9jj8NgZVhsypWFJ1ksvNZz9fNrMl7im0X/BnQohMps=; b=WZSSl+z3Iw0obe
	PpO1k006dD8zorBgDq5MPPs5yhGAU21QaaYuZB+JXvesIM/Qnx/RslVmFEojP3jr8v/NuN98CEG2H
	N1IM0GpvRP2+PYPYAtQcVoX0RdazCkMLcb/u4t3Oc7bZW0YdCmYKS6z7RL6+Ge10l5D1y6hHFB/+2
	5tSAYljbw2jEZeJBsg207oPNhrswzbFhCubwzgeitNkp9ckkzbxV8TnHgvtYqslHXUXHnfg96QewI
	9JGsSzQUuPDP1ClrYpK+cmMQlBVHPHJ5ktYPUrqDmmrK7UkCOVPUq7qTZk8JCebJY02N91e+3xxlL
	f22mgsJbXFnOldXuHKIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5p4R-0003zf-T6; Thu, 05 Sep 2019 10:32:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5p4E-0003vp-Hq; Thu, 05 Sep 2019 10:32:44 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3323121883;
 Thu,  5 Sep 2019 10:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567679561;
 bh=NQujPZaifvocqXBm599tGClyU1aW6kjLF6eo/z6uOaA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=W9Tn7qVrlMY1fcBtiJ06AOYQViFIU1snLQymJvqz/C/R0E6lNN6BZiflc+uA6jcGD
 hWPgq0KYVqZW0NCdqUKPil1w9T0z0Nnoe5mlNDf3Helte4q3i+3+6iL52doqp04O5/
 7pu6mXzqcaTvDHa+ohcsMqBCseKADvQF0n7/vB+0=
Received: by mail-qt1-f169.google.com with SMTP id g4so2151303qtq.7;
 Thu, 05 Sep 2019 03:32:41 -0700 (PDT)
X-Gm-Message-State: APjAAAWD2RJcgM84TfdZMSAOOGaM4uI0RLft4db/muvZlCU5EfJSlAlF
 QimieOPK+dVHVEGT1FN7m+zRMa1hhuB4W1q7qQ==
X-Google-Smtp-Source: APXvYqz7/ulBAvR7x3VrV/jxmMu9as/2Hzs9+dy1OH+geYhotKlOQxVVZj0kapvCvcSo3AeWsbYX9GZHNBzrJ0ONyGQ=
X-Received: by 2002:a0c:f70c:: with SMTP id w12mr470851qvn.200.1567679560330; 
 Thu, 05 Sep 2019 03:32:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190905081546.42716-1-drinkcat@chromium.org>
 <CAL_JsqJCO2G90TTT9Mpy4kjVKQyXWw4aXEEnbRp_SE8X=EGc5g@mail.gmail.com>
 <CANMq1KCTPdFhJG1SLf-i+-557Yx-1WLzWCHu3tT_5Q2BF+JgdQ@mail.gmail.com>
In-Reply-To: <CANMq1KCTPdFhJG1SLf-i+-557Yx-1WLzWCHu3tT_5Q2BF+JgdQ@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 5 Sep 2019 11:32:29 +0100
X-Gmail-Original-Message-ID: <CAL_JsqLAEe1qYkTWCw7VPau9WnXTMUqtHR5XWGuk7ynZBiuLQA@mail.gmail.com>
Message-ID: <CAL_JsqLAEe1qYkTWCw7VPau9WnXTMUqtHR5XWGuk7ynZBiuLQA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8183: Add node for the Mali GPU
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_033242_641242_DC96A202 
X-CRM114-Status: GOOD (  30.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Nick Fan <nick.fan@mediatek.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 10:49 AM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> Thanks for the quick review!
>
> On Thu, Sep 5, 2019 at 5:09 PM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Thu, Sep 5, 2019 at 9:16 AM Nicolas Boichat <drinkcat@chromium.org> wrote:
> > >
> > > Add a basic GPU node and opp table for mt8183.
> > >
> > > The binding we use with out-of-tree Mali drivers includes more
> > > clocks, I assume this would be required eventually if we have an
> > > in-tree driver:
> >
> > We have an in-tree driver...
>
> Right but AFAICT it does not support Bifrost GPU (yet?).

It's mostly the mesa userspace side that's missing. The kernel driver
needs the compatible string and page table support[1]. The former
should be enough to access the registers which is typically enough to
sort out an platform specific clock, reset, power issues.

> > > clocks =
> > >         <&topckgen CLK_TOP_MFGPLL_CK>,
> > >         <&topckgen CLK_TOP_MUX_MFG>,
> > >         <&clk26m>,
> > >         <&mfgcfg CLK_MFG_BG3D>;
> > > clock-names =
> > >         "clk_main_parent",
> > >         "clk_mux",
> > >         "clk_sub_parent",
> > >         "subsys_mfg_cg";
>
> Do you think we should add those to the binding document? May not be
> easy to match what the amlogic binding does (I'm not sure to
> understand the details of this device, but I can dig further/ask).

I somewhat expect this needs more investigation. I'm doubtful that
there's a 26MHz clock going to Mali. Ideally, the clocks are what are
actually connected to the h/w, not just a list of all the clocks
needed on some platform because we fail to manage them elsewhere (like
an interconnect driver). Otherwise we end up with a different list for
every platform.

> > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > >
> > > ---
> > > Upstreaming what matches existing bindings from our Chromium OS tree:
> > > https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-4.19/arch/arm64/boot/dts/mediatek/mt8183.dtsi#1348
> > >
> > > The evb part of this change depends on this patch to add PMIC dtsi:
> > > https://patchwork.kernel.org/patch/10928161/
> > >
> > >  arch/arm64/boot/dts/mediatek/mt8183-evb.dts |   7 ++
> > >  arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 103 ++++++++++++++++++++
> > >  2 files changed, 110 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> > > index 1fb195c683c3d01..200d8e65a6368a1 100644
> > > --- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> > > +++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> > > @@ -7,6 +7,7 @@
> > >
> > >  /dts-v1/;
> > >  #include "mt8183.dtsi"
> > > +#include "mt6358.dtsi"
> > >
> > >  / {
> > >         model = "MediaTek MT8183 evaluation board";
> > > @@ -30,6 +31,12 @@
> > >         status = "okay";
> > >  };
> > >
> > > +&gpu {
> > > +       supply-names = "mali", "mali_sram";
> > > +       mali-supply = <&mt6358_vgpu_reg>;
> > > +       mali_sram-supply = <&mt6358_vsram_gpu_reg>;
> >
> > Not documented. Just 'sram-supply' is enough.
>
> Will fix.
>
> > Note that the binding doc queued up for 5.4 has been converted to DT schema.
>
> Yep I see that in linux-next.
>
> >
> > > +};
> > > +
> > >  &i2c0 {
> > >         pinctrl-names = "default";
> > >         pinctrl-0 = <&i2c_pins_0>;
> > > diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > > index 97f84aa9fc6e1c1..8ea548a762ea252 100644
> > > --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > > +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > > @@ -579,6 +579,109 @@
> > >                         #clock-cells = <1>;
> > >                 };
> > >
> > > +               gpu: mali@13040000 {
> >
> > gpu@...
> >
> > > +                       compatible = "mediatek,mt8183-mali", "arm,mali-bifrost";
> >
> > You need to add this compatible string too.
>
> Will do.
>
> >
> > > +                       reg = <0 0x13040000 0 0x4000>;
> > > +                       interrupts =
> > > +                               <GIC_SPI 280 IRQ_TYPE_LEVEL_LOW>,
> > > +                               <GIC_SPI 279 IRQ_TYPE_LEVEL_LOW>,
> > > +                               <GIC_SPI 278 IRQ_TYPE_LEVEL_LOW>;
> > > +                       interrupt-names = "job", "mmu", "gpu";
> > > +
> > > +                       clocks = <&topckgen CLK_TOP_MFGPLL_CK>;
> > > +                       power-domains =
> > > +                               <&scpsys MT8183_POWER_DOMAIN_MFG_CORE0>,
> > > +                               <&scpsys MT8183_POWER_DOMAIN_MFG_CORE1>,
> > > +                               <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
> >
> > This needs to be documented too.
>
> I see that Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
> has power-domains in the example both not in the yaml, is that
> expected?

Err, no. Probably some copy-n-paste from utgard.

Rob

[1] https://patchwork.freedesktop.org/patch/304731/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
