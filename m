Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9B91BAEB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 22:06:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Js9q+YAMpCWGiPZArSbzuaccXx51/grlgl8f+5yowcE=; b=kxcMkxTPBuaUTa
	8dtkydTLH5+F6LrU5IrXE/UN24AMLYYZmQacALd9NfeGxUI8Ol1hqJRfQFrU7jnz5s5+f64zZcPkd
	hKrwK97qb7P1zm5HiBElgrxFBeTdZyKP6wCyDsBVeCSdjuzDzDwJHilxzSZ1ZaSqiJH0GNDh+Y9vm
	WTr3DetoVae0PhzK+Pq6R+phU/o59MdGb/kWm1o/PYVBh747/mfyGkEEnNtqMB0XH99dS6cjXKn6u
	d7dwvYKmuLoX7JGy0f3yVdobYs3IKCr9BjjlKgKDny0FE/8oW8g2gZVKhpsuMtkXjVVXwORnl6UgH
	8Cnlrs6bzNHzZMrb46Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTA12-0000mG-4p; Mon, 27 Apr 2020 20:06:08 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTA0s-0000lP-9x
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 20:06:00 +0000
Received: by mail-ed1-x544.google.com with SMTP id j20so14539890edj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 13:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7yXU65+Kc2UcXPVHH+ETGSKy2NXXR26k4bx7MRK6hTc=;
 b=iD++08mifUw87PBkeoPTVMI7mbtR+i/1xKZuKo7UCCyKXSzoR+YFPV54sMxoT+YfT7
 R+XRVcH/4Jy7rCBcYSO6hiXrbCG1DU5ASjLZzgew3SdylK5Tvww/vbQMbZVFvDUifc2z
 viS/T9HH4P+Sx0N3bMYlM0ar+/Qzu/LJAvgS3mUS1DsENx6/YmDkiumtOJoz4FafSkx/
 tuYRhXkMd7+zBEZsPpiJbhEaXo8XL2yYFNFeoEo965qBen7ETP/t4koP0RR/CVA6Haai
 ts8fR3gjLyNWxt8wZv5sKqSsAoKc7TiMlDnWehYj4KEorjs266UydRf2uHipI07oJdNg
 OPjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7yXU65+Kc2UcXPVHH+ETGSKy2NXXR26k4bx7MRK6hTc=;
 b=NyymCxEeo3lleeIPjPvQFEFLyLx00xlWT8dHq0JZ7+P1FHKEB7EYHosviZTbE3b5j6
 33vLCW8PE4Sz/+Oq3UWBj2vgbvrtXaOYZXck0YFnqACCqgYO8U25RlZd9DendhbdnK8T
 7aSowGMplsSZJw1ot334PzpauPlu9eHTx8OUrLKmi0qyxOLvSpKgAHT8nVqv9u6BUdat
 VtVUPsnEAy3Iiu1smDV7TKcBkveRSxRAK/X9jyXPHGUSbm95xUzrxou+5GN03HDBhhQJ
 eVqITSNVyqNC5Mg0m/VdcqvkWptMHmdNgwNJBi2nqyGCZg9oLMAyYXs2ARcXdt56ZMZb
 ZJPw==
X-Gm-Message-State: AGi0Pub10Q979zdmj1fwAhyBZFUvhkW+/9cIuLSw32hDJaygjAmS5Qu1
 0gKt3Ry//WoBXM8rC565zK8xL6+HjqdBXlEeJCO3QqFcapN+rg==
X-Google-Smtp-Source: APiQypIY/zDA+cX9HGDQmCk+x1yevA/lfThelg1G0GWFZnD3MnNwgcSiaZezJPN3HQIKkIAKGXiuhtDyOOlj9uQzePY=
X-Received: by 2002:a05:6402:319c:: with SMTP id
 di28mr20908888edb.185.1588017956568; 
 Mon, 27 Apr 2020 13:05:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200424182139.32190-1-pop.adrian61@gmail.com>
 <3efb57a1-283b-f2f0-66a4-97e88c6c02d6@st.com>
In-Reply-To: <3efb57a1-283b-f2f0-66a4-97e88c6c02d6@st.com>
From: Adrian Pop <pop.adrian61@gmail.com>
Date: Mon, 27 Apr 2020 23:05:54 +0300
Message-ID: <CAP-HsdS0rq4iCq1oqpTU=EXF8UWbfPivCJVZG-4b7jyvdHHXUw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm: dts: stm32f769-disco: Enable MIPI DSI display
 support
To: Alexandre Torgue <alexandre.torgue@st.com>,
 Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_130558_369326_51FC5349 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [pop.adrian61[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pop.adrian61[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Added lee.jones@linaro.org.

First, thank you all for taking a look at my changes!

Hello Alex,

On Mon, Apr 27, 2020 at 11:28 AM Alexandre Torgue
<alexandre.torgue@st.com> wrote:
>
> Hi Adrian
>
> On 4/24/20 8:21 PM, Adrian Pop wrote:
> > STM32f769-disco features a 4" MIPI DSI display: add support for it.
> >
> > Signed-off-by: Adrian Pop <pop.adrian61@gmail.com>
> > ---
>
> Commit title should be ARM: dts: stm32: ...

Will fix in next version if that's ok.

>
> Can you explain a bit more in your commit message why do you use a
> reserved memory pool for DMA and where this pool is located. (I assume
> it's linked to a story of DMA and cache memory attribute on cortexM7...)

Need to look more into this, but if I remove it, /dev/fb0 is not
available anymore and I get a warning stating:
...
[drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
[drm] Initialized stm 1.0.0 20170330 for 40016800.display-controller on minor 0
------------[ cut here ]------------
WARNING: CPU: 0 PID: 13 at arch/arm/mm/dma-mapping-nommu.c:50 0xc000b8ed
CPU: 0 PID: 13 Comm: kworker/0:1 Not tainted 5.6.0-next-20200412 #23
Hardware name: STM32 (Device Tree Support)
Workqueue: events 0xc014fa35
Function entered at [<c000b325>] from [<c000a487>]
...

When I looked in arch/arm/mm/dma-mapping-nommu.c:50, there is a comment stating:

    /*
     * dma_alloc_from_global_coherent() may fail because:
     *
     * - no consistent DMA region has been defined, so we can't
     *   continue.
     * - there is no space left in consistent DMA region, so we
     *   only can fallback to generic allocator if we are
     *   advertised that consistency is not required.
     */

This is the reason I added the reserved-memory.

About the location, does it need to be hardcoded? On my board
(STM32F769I-Disco, tftp boot) in boot log I get:
...
Reserved memory: created DMA memory pool at 0xc0ef1000, size 1 MiB
OF: reserved mem: initialized node linux,dma, compatible id shared-dma-pool
...

>
> Did you try this configuration with XIP boot ?

I did not try with XIP. Currently loading zImage from tftp to memory.
Will try with XIP as well, and get back with feedback.

>
> regards
> alex
>
> >   arch/arm/boot/dts/stm32f746.dtsi      | 34 ++++++++++++++++++
> >   arch/arm/boot/dts/stm32f769-disco.dts | 50 +++++++++++++++++++++++++++
> >   2 files changed, 84 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/stm32f746.dtsi b/arch/arm/boot/dts/stm32f746.dtsi
> > index 93c063796780..202bb6edc9f1 100644
> > --- a/arch/arm/boot/dts/stm32f746.dtsi
> > +++ b/arch/arm/boot/dts/stm32f746.dtsi
> > @@ -48,6 +48,19 @@ / {
> >       #address-cells = <1>;
> >       #size-cells = <1>;
> >
> > +     reserved-memory {
> > +             #address-cells = <1>;
> > +             #size-cells = <1>;
> > +             ranges;
> > +
> > +             linux,dma {
> > +                     compatible = "shared-dma-pool";
> > +                     linux,dma-default;
> > +                     no-map;
> > +                     size = <0x10F000>;
> > +             };
> > +     };
> > +
> >       clocks {
> >               clk_hse: clk-hse {
> >                       #clock-cells = <0>;
> > @@ -75,6 +88,27 @@ clk_i2s_ckin: clk-i2s-ckin {
> >       };
> >
> >       soc {
> > +             ltdc: display-controller@40016800 {
> > +                     compatible = "st,stm32-ltdc";
> > +                     reg = <0x40016800 0x200>;
> > +                     interrupts = <88>, <89>;
> > +                     resets = <&rcc STM32F7_APB2_RESET(LTDC)>;
> > +                     clocks = <&rcc 1 CLK_LCD>;
> > +                     clock-names = "lcd";
> > +                     status = "disabled";
> > +             };
> > +
> > +             dsi: dsi@40016c00 {
> > +                     compatible = "st,stm32-dsi";
> > +                     reg = <0x40016c00 0x800>;
> > +                     interrupts = <98>;
> > +                     clocks = <&rcc 1 CLK_F769_DSI>, <&clk_hse>;
> > +                     clock-names = "pclk", "ref";
> > +                     resets = <&rcc STM32F7_APB2_RESET(DSI)>;
> > +                     reset-names = "apb";
> > +                     status = "disabled";
> > +             };
> > +
> >               timer2: timer@40000000 {
> >                       compatible = "st,stm32-timer";
> >                       reg = <0x40000000 0x400>;
> > diff --git a/arch/arm/boot/dts/stm32f769-disco.dts b/arch/arm/boot/dts/stm32f769-disco.dts
> > index 1626e00bb2cb..30ebbc193e82 100644
> > --- a/arch/arm/boot/dts/stm32f769-disco.dts
> > +++ b/arch/arm/boot/dts/stm32f769-disco.dts
> > @@ -153,3 +153,53 @@ &usbotg_hs {
> >       pinctrl-names = "default";
> >       status = "okay";
> >   };
> > +
> > +&dsi {
> > +     #address-cells = <1>;
> > +     #size-cells = <0>;
> > +     status = "okay";
> > +
> > +     ports {
> > +             #address-cells = <1>;
> > +             #size-cells = <0>;
> > +
> > +             port@0 {
> > +                     reg = <0>;
> > +                     dsi_in: endpoint {
> > +                             remote-endpoint = <&ltdc_out_dsi>;
> > +                     };
> > +             };
> > +
> > +             port@1 {
> > +                     reg = <1>;
> > +                     dsi_out: endpoint {
> > +                             remote-endpoint = <&dsi_in_panel>;
> > +                     };
> > +             };
> > +
> > +     };
> > +
> > +     panel: panel {
> > +             compatible = "orisetech,otm8009a";
> > +             reg = <0>; /* dsi virtual channel (0..3) */
> > +             reset-gpios = <&gpioj 15 GPIO_ACTIVE_LOW>;
> > +             status = "okay";
> > +
> > +             port {
> > +                     dsi_in_panel: endpoint {
> > +                             remote-endpoint = <&dsi_out>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&ltdc {
> > +     dma-ranges;

Need to remove this, not needed and causes a warning.

> > +     status = "okay";
> > +
> > +     port {
> > +             ltdc_out_dsi: endpoint {
> > +                     remote-endpoint = <&dsi_in>;
> > +             };
> > +     };
> > +};
> >

Regards,
Adrian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
