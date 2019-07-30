Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D3C7A3FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:24:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2MbTK6lCeEnPGkQrFzMKTqqCjKLCGLy9v8fLj2WVX2s=; b=sPLe43VL7Ps2h9
	gluSDLiENPc/DzImYYLMQdLQ9PRi8lpAb+hzpG7sh9feF6Kn6noMgfhJCjq1SRqKOqFwzNOuE0EM4
	qDfsSCL14A+aH8c51woTGAAK/bybWG9sJw4fbfZtEMXPifiFZGR3A8kFWMo5MQW3M1iFyJSBykUjU
	UU4HbO8anqxcBww9+XDdliG9X7bsxGzQsjrSY2VkJFiKcQaU6RkLDZ7pGyVU8WkGWc6BYppGqbtvK
	BaI1k1iQU6FOE++5uu+pP6/ovnUoYdt3dbMHSR/cmcYDwE8uvx1aMsZhvmTc3O8jVhymr722/gyyq
	roMYLZ6tVR+WkEVuyhPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOMZ-000195-BF; Tue, 30 Jul 2019 09:24:07 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOMF-000156-8P
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:23:48 +0000
Received: by mail-wm1-f66.google.com with SMTP id p74so56392686wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 02:23:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IVKY/KEUXjTWN+bYP3M9li6aLpvlVa9sTGtOM6kUeiU=;
 b=jrZzXMa9QzncuFEfMkqV0/pYFfU++FgCcDE3hAWwZyuFPj1stJ4+ziIqEQBkm5/h0B
 hDr0GehgOeDwPLYIibDHwr+y3zmxRJr3eAk+ejnCDJAqxVOVv01tluzGhKMHAR1R9Ueu
 v4JHDq2YcLXs/9cVHOuEXohs6pzF0MxWWtyEYJFiAbeaT7wI0aAEoC5uPhcl8TwJFUJ4
 hjReBHEbTMbGx/XWppYeOQVRdxnBxJqYMyiuvhUTuuP2wUycrBubcLLuTutfIyXAxFx4
 EPI3Zc+WzaPLtgx0HPG9aKUB02nLu8Npp+prtLD3v+3goTaNew6ufIiujRNUKarXtRGI
 CnMA==
X-Gm-Message-State: APjAAAVQSsEiCGDXNxQ8c25Sq1TsBfoH2ytko6nQggshRBoTCRSQDpyo
 5+hO0Qg4RZf2sO6MkhFdDDG8BIy93TS0cvdoPjo=
X-Google-Smtp-Source: APXvYqyFeh5CWq4lx5qP/Lw6wykdQGeWP2Ty9SqBR2iBLJHWuDQBk7YcFYjciyT2+R2xAH4drl8Z8kyjyYjieNyymmA=
X-Received: by 2002:a05:600c:254b:: with SMTP id
 e11mr97212692wma.171.1564478625893; 
 Tue, 30 Jul 2019 02:23:45 -0700 (PDT)
MIME-Version: 1.0
References: <1563905015-2911-1-git-send-email-ykaneko0929@gmail.com>
 <CAMuHMdWwMfduK_G3_YRxyuYsmd51Hmj5UJshRvZjZ+zNVo-CVQ@mail.gmail.com>
In-Reply-To: <CAMuHMdWwMfduK_G3_YRxyuYsmd51Hmj5UJshRvZjZ+zNVo-CVQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Jul 2019 11:23:34 +0200
Message-ID: <CAMuHMdVBpZwxNQ1apL_DkTLL_9SPFdX52cdswbvhEzCrChTzAA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: ulcb-kf: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_022347_439004_F37EF819 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 11:14 AM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
> On Tue, Jul 23, 2019 at 8:03 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> > Sort nodes.
> >
> > If node address is present
> >    * Sort by node address, grouping all nodes with the same compat string
> >      and sorting the group alphabetically.
> > Else
> >    * Sort alphabetically
> >
> > This should not have any run-time effect.
> >
> > Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
>
> You forgot to sort the i2c slave nodes.
> As this kind of patches is hard to rebase and rework, I'm fixing that up while
> applying:
>
> --- a/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
> +++ b/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
> @@ -83,6 +83,56 @@
>  };
>
>  &i2c2 {
> +       i2cswitch2: i2c-switch@71 {
> +               compatible = "nxp,pca9548";
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +               reg = <0x71>;
> +               reset-gpios = <&gpio5 3 GPIO_ACTIVE_LOW>;
> +
> +               /* Audio_SDA, Audio_SCL */
> +               i2c@7 {
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +                       reg = <7>;
> +
> +                       pcm3168a: audio-codec@44 {
> +                               #sound-dai-cells = <0>;
> +                               compatible = "ti,pcm3168a";
> +                               reg = <0x44>;
> +                               clocks = <&clksndsel>;
> +                               clock-names = "scki";
> +
> +                               VDD1-supply     = <&snd_3p3v>;
> +                               VDD2-supply     = <&snd_3p3v>;
> +                               VCCAD1-supply   = <&snd_vcc5v>;
> +                               VCCAD2-supply   = <&snd_vcc5v>;
> +                               VCCDA1-supply   = <&snd_vcc5v>;
> +                               VCCDA2-supply   = <&snd_vcc5v>;
> +
> +                               ports {
> +                                       #address-cells = <1>;
> +                                       #size-cells = <0>;
> +                                       mclk-fs = <512>;
> +                                       port@0 {
> +                                               reg = <0>;
> +                                               pcm3168a_endpoint_p: endpoint {
> +
> remote-endpoint = <&rsnd_for_pcm3168a_play>;
> +                                                       clocks = <&clksndsel>;
> +                                               };
> +                                       };
> +                                       port@1 {
> +                                               reg = <1>;
> +                                               pcm3168a_endpoint_c: endpoint {
> +
> remote-endpoint = <&rsnd_for_pcm3168a_capture>;
> +                                                       clocks = <&clksndsel>;
> +                                               };
> +                                       };
> +                               };
> +                       };
> +               };
> +       };
> +
>         /* U11 */
>         gpio_exp_74: gpio@74 {
>                 compatible = "ti,tca9539";
> @@ -153,56 +203,6 @@
>                 interrupt-parent = <&gpio6>;
>                 interrupts = <4 IRQ_TYPE_EDGE_FALLING>;
>         };
> -
> -       i2cswitch2: i2c-switch@71 {
> -               compatible = "nxp,pca9548";
> -               #address-cells = <1>;
> -               #size-cells = <0>;
> -               reg = <0x71>;
> -               reset-gpios = <&gpio5 3 GPIO_ACTIVE_LOW>;
> -
> -               /* Audio_SDA, Audio_SCL */
> -               i2c@7 {
> -                       #address-cells = <1>;
> -                       #size-cells = <0>;
> -                       reg = <7>;
> -
> -                       pcm3168a: audio-codec@44 {
> -                               #sound-dai-cells = <0>;
> -                               compatible = "ti,pcm3168a";
> -                               reg = <0x44>;
> -                               clocks = <&clksndsel>;
> -                               clock-names = "scki";
> -
> -                               VDD1-supply     = <&snd_3p3v>;
> -                               VDD2-supply     = <&snd_3p3v>;
> -                               VCCAD1-supply   = <&snd_vcc5v>;
> -                               VCCAD2-supply   = <&snd_vcc5v>;
> -                               VCCDA1-supply   = <&snd_vcc5v>;
> -                               VCCDA2-supply   = <&snd_vcc5v>;
> -
> -                               ports {
> -                                       #address-cells = <1>;
> -                                       #size-cells = <0>;
> -                                       mclk-fs = <512>;
> -                                       port@0 {
> -                                               reg = <0>;
> -                                               pcm3168a_endpoint_p: endpoint {
> -
> remote-endpoint = <&rsnd_for_pcm3168a_play>;
> -                                                       clocks = <&clksndsel>;
> -                                               };
> -                                       };
> -                                       port@1 {
> -                                               reg = <1>;
> -                                               pcm3168a_endpoint_c: endpoint {
> -
> remote-endpoint = <&rsnd_for_pcm3168a_capture>;
> -                                                       clocks = <&clksndsel>;
> -                                               };
> -                                       };
> -                               };
> -                       };
> -               };
> -       };
>  };
>
>  &i2c4 {
>

and the second i2c bus, too, of course:

--- a/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
+++ b/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
@@ -206,6 +206,14 @@
 };

 &i2c4 {
+       i2cswitch4: i2c-switch@71 {
+               compatible = "nxp,pca9548";
+               #address-cells = <1>;
+               #size-cells = <0>;
+               reg = <0x71>;
+               reset-gpios = <&gpio3 15 GPIO_ACTIVE_LOW>;
+       };
+
        gpio_exp_76: gpio@76 {
                compatible = "ti,tca9539";
                reg = <0x76>;
@@ -225,14 +233,6 @@
                interrupt-parent = <&gpio5>;
                interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
        };
-
-       i2cswitch4: i2c-switch@71 {
-               compatible = "nxp,pca9548";
-               #address-cells = <1>;
-               #size-cells = <0>;
-               reg = <0x71>;
-               reset-gpios = <&gpio3 15 GPIO_ACTIVE_LOW>;
-       };
 };

 &ohci0 {

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
