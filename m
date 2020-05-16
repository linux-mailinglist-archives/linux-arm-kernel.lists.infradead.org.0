Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 362E81D5FBB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 10:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sHu5oL1zuP2wqtu0yMSyKVw1hB9AyhJNbey6dAxz4g4=; b=tx6U+AZzVr9aMn
	CfTu2XTAPN5PimSuWTqqdyriBVTQxx/r26h59sSxnWdGAAG9Lk/O2jrmRVtO9TgCvsWfSWODJX11j
	IwfTAOwpMK+uWggLO1GFhQbTbx/rXjRFMN5wXvw7HZ46QUmjBfA+du2GQQxmNYn9N+En2BdjUPQaq
	PDSspfLtLWEcoesCP27xw5KV/l4YqQ7bQbne+L4QTPlBYXbzwN0FcIKVraOBQvcuf8PT+DyV22GEU
	UxzTSTLSrfgxGOABh50nSJXrab023Fq6spGn8ebEiYueF1ooG/XXm88+BKdc/4Zo6cyRGv4nIKQVw
	UgW7Q0jn/KN/hTF384ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZsLW-0004Dd-Ro; Sat, 16 May 2020 08:39:02 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZsL9-0004AZ-At
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 08:38:45 +0000
Received: by mail-ej1-x643.google.com with SMTP id z5so4314817ejb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 May 2020 01:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T9ORqMPvwiPeuaiySbbL/RSXPYuFp2sjZBmBACSvVb4=;
 b=oJiFmaO9gqb7DS1dlpAacukIBF598UJA4Nt5ZUhceGhBnOdLi4ljWtFz8Fxiof/69A
 Fkr/ViVuvP/a+Vn13nKPzNjcsKwLxXlHyfZdBm7NVj4zxZPLN/Aiu4B2qY6zqVraUpfG
 WN/eiYpLK/Q6gnuKTtrtwbJ6ZHfIyYUvJLvR9ul233drEZqDJMograz/Bc5AgibvRNgJ
 +Txc9cvSHdp2JrTMQN5JNUdaM39aIcFHMWfky5Ex1FqaptXNqvPxuULv9bNZnL7s6JUH
 UtwvP+ch5XWhL52oNiU6yHzmmD6WtiCwCyn8xNJJOSnvcz4vySq2mYRqGWaAbL+7CwCu
 b81w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T9ORqMPvwiPeuaiySbbL/RSXPYuFp2sjZBmBACSvVb4=;
 b=mhUAWdiaAfnRpRI8snqQUbld+C5JN8NATtXTpF/iMGpb+I96fViN16e9Hci88kZsu0
 5eBiO0CfxFhDjOdiimgqbgEbEHsVypXhWcRmwE4FmiSPSxHBygGX7bQ3Ipu570Emc0ch
 Q3g9t2282jGFua0JCjLXaCTkZO7acs8eP5/LbmsTTKAs4ccwPv7kD2MQRsarbRJPPP99
 o10Gv+CR6iL49zTxnTkK08ibYxHM6ZS1DIn44bG0Ss+nx5JnVJsF+QYQivRJAjsDbmG8
 ghHss1SD48YCuBKlhmwuw0y/hmgMwBFLItJVA8lcFJ3pRXwNL4MmvYhLzU7sGwbM+3xs
 j18Q==
X-Gm-Message-State: AOAM531TmvK4sFuk+iYPJD7axY6zXipfXfAe5XvtLX7tsvO1lYAU9+VW
 aXemGSHrY+N9Lc66jtCh9dG3HMWVFP4EuOJ4kBw=
X-Google-Smtp-Source: ABdhPJwgyqfhQZmST+qUmMJfbQH9nNG9wMTERbqLfZfDLKc6LtGT6612db5GWSq0gSN6itAjdhp4IWRS8xTO5tkXAQs=
X-Received: by 2002:a17:906:90c1:: with SMTP id
 v1mr6187140ejw.322.1589618314221; 
 Sat, 16 May 2020 01:38:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200424182139.32190-1-pop.adrian61@gmail.com>
 <3efb57a1-283b-f2f0-66a4-97e88c6c02d6@st.com>
 <CAP-HsdS0rq4iCq1oqpTU=EXF8UWbfPivCJVZG-4b7jyvdHHXUw@mail.gmail.com>
 <39c59632-e395-f7ec-12b9-ca1d667651a6@st.com>
In-Reply-To: <39c59632-e395-f7ec-12b9-ca1d667651a6@st.com>
From: Adrian Pop <pop.adrian61@gmail.com>
Date: Sat, 16 May 2020 11:39:03 +0300
Message-ID: <CAP-HsdQLnu=_dZDHfHBmWfE3TBYt3MAB6=nkier-bpe9Jc7dVw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm: dts: stm32f769-disco: Enable MIPI DSI display
 support
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_013839_437139_CE24117A 
X-CRM114-Status: GOOD (  27.75  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [pop.adrian61[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pop.adrian61[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 Hello all,

a bit of a delayed response here, but:

On Tue, Apr 28, 2020 at 11:39 AM Alexandre Torgue
<alexandre.torgue@st.com> wrote:
>
> Hi Adrian
>
> On 4/27/20 10:05 PM, Adrian Pop wrote:
> > Added lee.jones@linaro.org.
> >
> > First, thank you all for taking a look at my changes!
>
> no pb.
>
> >
> > Hello Alex,
> >
> > On Mon, Apr 27, 2020 at 11:28 AM Alexandre Torgue
> > <alexandre.torgue@st.com> wrote:
> >>
> >> Hi Adrian
> >>
> >> On 4/24/20 8:21 PM, Adrian Pop wrote:
> >>> STM32f769-disco features a 4" MIPI DSI display: add support for it.
> >>>
> >>> Signed-off-by: Adrian Pop <pop.adrian61@gmail.com>
> >>> ---
> >>
> >> Commit title should be ARM: dts: stm32: ...
> >
> > Will fix in next version if that's ok.
> >
> >>
> >> Can you explain a bit more in your commit message why do you use a
> >> reserved memory pool for DMA and where this pool is located. (I assume
> >> it's linked to a story of DMA and cache memory attribute on cortexM7...)
> >
> > Need to look more into this, but if I remove it, /dev/fb0 is not
> > available anymore and I get a warning stating:
> > ...
> > [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
> > [drm] Initialized stm 1.0.0 20170330 for 40016800.display-controller on minor 0
> > ------------[ cut here ]------------
> > WARNING: CPU: 0 PID: 13 at arch/arm/mm/dma-mapping-nommu.c:50 0xc000b8ed
> > CPU: 0 PID: 13 Comm: kworker/0:1 Not tainted 5.6.0-next-20200412 #23
> > Hardware name: STM32 (Device Tree Support)
> > Workqueue: events 0xc014fa35
> > Function entered at [<c000b325>] from [<c000a487>]
> > ...
> >
> > When I looked in arch/arm/mm/dma-mapping-nommu.c:50, there is a comment stating:
> >
> >      /*
> >       * dma_alloc_from_global_coherent() may fail because:
> >       *
> >       * - no consistent DMA region has been defined, so we can't
> >       *   continue.
> >       * - there is no space left in consistent DMA region, so we
> >       *   only can fallback to generic allocator if we are
> >       *   advertised that consistency is not required.
> >       */
> >
> > This is the reason I added the reserved-memory.
>
> Note that on cortexM7 DMA can't use cached memory. For this reason you
> have to declare a dedicated memory area for DMA with no-cache attribute.
> It is done thanks to a "linux,dma" node plus a kernel config:
> CONFIG_ARM_MPU. I planed to declare this dedicated memeory region in
> sram. Can you check if add it for the same reason I explain and check if
> it works using sram ?
>

I did not have CONFIG_ARM_MPU enabled, enabled it now.

Just tried with SRAM:
reg = <0x20020000 0x60000>; /* SRAM1 368KB + SRAM2 16KB*/

but `arm_nommu_dma_alloc()` size parameter is 819200 (which is bigger
than the SRAM reserved memory), so the
`dma_alloc_from_global_coherent()` fails, so again I get the warning
stated above.

>
>
> >
> > About the location, does it need to be hardcoded? On my board
> > (STM32F769I-Disco, tftp boot) in boot log I get:
> > ...
> > Reserved memory: created DMA memory pool at 0xc0ef1000, size 1 MiB
> > OF: reserved mem: initialized node linux,dma, compatible id shared-dma-pool
> > ...
> >
> >>
> >> Did you try this configuration with XIP boot ?
> >
> > I did not try with XIP. Currently loading zImage from tftp to memory.
> > Will try with XIP as well, and get back with feedback.

Still trying to figure how to XIP :).

>
> Ok thanks.
>
> >
> >>
> >> regards
> >> alex
> >>
> >>>    arch/arm/boot/dts/stm32f746.dtsi      | 34 ++++++++++++++++++
> >>>    arch/arm/boot/dts/stm32f769-disco.dts | 50 +++++++++++++++++++++++++++
> >>>    2 files changed, 84 insertions(+)
> >>>
> >>> diff --git a/arch/arm/boot/dts/stm32f746.dtsi b/arch/arm/boot/dts/stm32f746.dtsi
> >>> index 93c063796780..202bb6edc9f1 100644
> >>> --- a/arch/arm/boot/dts/stm32f746.dtsi
> >>> +++ b/arch/arm/boot/dts/stm32f746.dtsi
> >>> @@ -48,6 +48,19 @@ / {
> >>>        #address-cells = <1>;
> >>>        #size-cells = <1>;
> >>>
> >>> +     reserved-memory {
> >>> +             #address-cells = <1>;
> >>> +             #size-cells = <1>;
> >>> +             ranges;
> >>> +
> >>> +             linux,dma {
> >>> +                     compatible = "shared-dma-pool";
> >>> +                     linux,dma-default;
> >>> +                     no-map;
> >>> +                     size = <0x10F000>;
> >>> +             };
> >>> +     };
> >>> +
> >>>        clocks {
> >>>                clk_hse: clk-hse {
> >>>                        #clock-cells = <0>;
> >>> @@ -75,6 +88,27 @@ clk_i2s_ckin: clk-i2s-ckin {
> >>>        };
> >>>
> >>>        soc {
> >>> +             ltdc: display-controller@40016800 {
> >>> +                     compatible = "st,stm32-ltdc";
> >>> +                     reg = <0x40016800 0x200>;
> >>> +                     interrupts = <88>, <89>;
> >>> +                     resets = <&rcc STM32F7_APB2_RESET(LTDC)>;
> >>> +                     clocks = <&rcc 1 CLK_LCD>;
> >>> +                     clock-names = "lcd";
> >>> +                     status = "disabled";
> >>> +             };
> >>> +
> >>> +             dsi: dsi@40016c00 {
> >>> +                     compatible = "st,stm32-dsi";
> >>> +                     reg = <0x40016c00 0x800>;
> >>> +                     interrupts = <98>;
> >>> +                     clocks = <&rcc 1 CLK_F769_DSI>, <&clk_hse>;
> >>> +                     clock-names = "pclk", "ref";
> >>> +                     resets = <&rcc STM32F7_APB2_RESET(DSI)>;
> >>> +                     reset-names = "apb";
> >>> +                     status = "disabled";
> >>> +             };
> >>> +
> >>>                timer2: timer@40000000 {
> >>>                        compatible = "st,stm32-timer";
> >>>                        reg = <0x40000000 0x400>;
> >>> diff --git a/arch/arm/boot/dts/stm32f769-disco.dts b/arch/arm/boot/dts/stm32f769-disco.dts
> >>> index 1626e00bb2cb..30ebbc193e82 100644
> >>> --- a/arch/arm/boot/dts/stm32f769-disco.dts
> >>> +++ b/arch/arm/boot/dts/stm32f769-disco.dts
> >>> @@ -153,3 +153,53 @@ &usbotg_hs {
> >>>        pinctrl-names = "default";
> >>>        status = "okay";
> >>>    };
> >>> +
> >>> +&dsi {
> >>> +     #address-cells = <1>;
> >>> +     #size-cells = <0>;
> >>> +     status = "okay";
> >>> +
> >>> +     ports {
> >>> +             #address-cells = <1>;
> >>> +             #size-cells = <0>;
> >>> +
> >>> +             port@0 {
> >>> +                     reg = <0>;
> >>> +                     dsi_in: endpoint {
> >>> +                             remote-endpoint = <&ltdc_out_dsi>;
> >>> +                     };
> >>> +             };
> >>> +
> >>> +             port@1 {
> >>> +                     reg = <1>;
> >>> +                     dsi_out: endpoint {
> >>> +                             remote-endpoint = <&dsi_in_panel>;
> >>> +                     };
> >>> +             };
> >>> +
> >>> +     };
> >>> +
> >>> +     panel: panel {
> >>> +             compatible = "orisetech,otm8009a";
> >>> +             reg = <0>; /* dsi virtual channel (0..3) */
> >>> +             reset-gpios = <&gpioj 15 GPIO_ACTIVE_LOW>;
> >>> +             status = "okay";
> >>> +
> >>> +             port {
> >>> +                     dsi_in_panel: endpoint {
> >>> +                             remote-endpoint = <&dsi_out>;
> >>> +                     };
> >>> +             };
> >>> +     };
> >>> +};
> >>> +
> >>> +&ltdc {
> >>> +     dma-ranges;
> >
> > Need to remove this, not needed and causes a warning.
> >
> >>> +     status = "okay";
> >>> +
> >>> +     port {
> >>> +             ltdc_out_dsi: endpoint {
> >>> +                     remote-endpoint = <&dsi_in>;
> >>> +             };
> >>> +     };
> >>> +};
> >>>
> >
> > Regards,
> > Adrian
> >

Regards,
Adrian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
