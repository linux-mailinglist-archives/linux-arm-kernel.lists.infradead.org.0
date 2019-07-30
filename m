Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F717A3BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/sNfXIcHWSHy8ffQwreCy6+hKg2kkKyozgwHSSgK5g=; b=SfUh66ivCjO80j
	XjF7tTW3wdzTjivPbOISncvjPcB1i0Jrl3H0N5GqiMwR5w8RC2yonLvhGju5b9RWa4g3zer9nqJND
	8qcJU62f1EylDv1YV2wd53jz8I6NlnZ+0F5B9liO9yxo+3kdSirqPAKnLs7XLudBOgL3Y4grb77KQ
	JLQ9FtrNssI7fmP+bigrLCYkFfXQIONoGcFVHk+f+Svpc6m1m2bG8fCMbjzmr07BgNxkTSyf1pkcV
	77puVYmVotUDKXwLn6dL+cHhkElzFjDzqJ6z+YyvoUkKV48tuX7iSvFvGaWfvgZeCswGCoVzN3byq
	Vok8bpCeOkqW29I90esw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsODX-0004Np-CY; Tue, 30 Jul 2019 09:14:47 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsODI-0004NL-Il
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:14:33 +0000
Received: by mail-wr1-f65.google.com with SMTP id g17so64910333wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 02:14:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yyyyivOFALWUjQNYz7gWNvYjCdrc1ktC7R8Wm+E1v/s=;
 b=ki6Atl1xEXkWUEhf5Ow7aeYTENitO4NJcoEGv/eM7730TjeARfd6N8cgqZeCjzLwUA
 mxT/BsXzBoskexHRTHvjctkf0a1nooCYnziB4nHupsGBA4WC9ujfNeHLsRztqA23dIcl
 NOwT0LDsCEb5DrDu5z4JsHSfJJ8jNJOvCwv/7xy8dhp49CFf75XUDGzBgV7msAfq71Jc
 6BWCyhR7+YCs1uhK/T+Q33U0uZBcW5UEfO6q6NXX22g4IsJFO/60CtqRy6B4MtdlrYFm
 5J4VTN9bMKL/C1nsSbAhlPbCz1o3qNcPIlhtIomepq+8a2yQ9pmLbLfZ3vHAyswlTZMf
 XxbA==
X-Gm-Message-State: APjAAAWxRqmF801PzWcmFjoPbfDloLKOlOKKfxgzLE6dkQd5pKCDeifs
 WglZXLxu6h4T+UtTx01xTtFKlSLFRgySCP1KyJc=
X-Google-Smtp-Source: APXvYqx/MtvzULwd4Zw4vIfrVj6xW7FZXJYlJY/iLXjJX1DmBhrY9D4vmmCoYkq6454PB+kg830HfifUIgkd3kuOOx4=
X-Received: by 2002:adf:cd81:: with SMTP id q1mr124853646wrj.16.1564478070273; 
 Tue, 30 Jul 2019 02:14:30 -0700 (PDT)
MIME-Version: 1.0
References: <1563905015-2911-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1563905015-2911-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Jul 2019 11:14:18 +0200
Message-ID: <CAMuHMdWwMfduK_G3_YRxyuYsmd51Hmj5UJshRvZjZ+zNVo-CVQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: ulcb-kf: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_021432_623019_F344C8D6 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
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

Hi Kaneko-san,

On Tue, Jul 23, 2019 at 8:03 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> Sort nodes.
>
> If node address is present
>    * Sort by node address, grouping all nodes with the same compat string
>      and sorting the group alphabetically.
> Else
>    * Sort alphabetically
>
> This should not have any run-time effect.
>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>

You forgot to sort the i2c slave nodes.
As this kind of patches is hard to rebase and rework, I'm fixing that up while
applying:

--- a/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
+++ b/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
@@ -83,6 +83,56 @@
 };

 &i2c2 {
+       i2cswitch2: i2c-switch@71 {
+               compatible = "nxp,pca9548";
+               #address-cells = <1>;
+               #size-cells = <0>;
+               reg = <0x71>;
+               reset-gpios = <&gpio5 3 GPIO_ACTIVE_LOW>;
+
+               /* Audio_SDA, Audio_SCL */
+               i2c@7 {
+                       #address-cells = <1>;
+                       #size-cells = <0>;
+                       reg = <7>;
+
+                       pcm3168a: audio-codec@44 {
+                               #sound-dai-cells = <0>;
+                               compatible = "ti,pcm3168a";
+                               reg = <0x44>;
+                               clocks = <&clksndsel>;
+                               clock-names = "scki";
+
+                               VDD1-supply     = <&snd_3p3v>;
+                               VDD2-supply     = <&snd_3p3v>;
+                               VCCAD1-supply   = <&snd_vcc5v>;
+                               VCCAD2-supply   = <&snd_vcc5v>;
+                               VCCDA1-supply   = <&snd_vcc5v>;
+                               VCCDA2-supply   = <&snd_vcc5v>;
+
+                               ports {
+                                       #address-cells = <1>;
+                                       #size-cells = <0>;
+                                       mclk-fs = <512>;
+                                       port@0 {
+                                               reg = <0>;
+                                               pcm3168a_endpoint_p: endpoint {
+
remote-endpoint = <&rsnd_for_pcm3168a_play>;
+                                                       clocks = <&clksndsel>;
+                                               };
+                                       };
+                                       port@1 {
+                                               reg = <1>;
+                                               pcm3168a_endpoint_c: endpoint {
+
remote-endpoint = <&rsnd_for_pcm3168a_capture>;
+                                                       clocks = <&clksndsel>;
+                                               };
+                                       };
+                               };
+                       };
+               };
+       };
+
        /* U11 */
        gpio_exp_74: gpio@74 {
                compatible = "ti,tca9539";
@@ -153,56 +203,6 @@
                interrupt-parent = <&gpio6>;
                interrupts = <4 IRQ_TYPE_EDGE_FALLING>;
        };
-
-       i2cswitch2: i2c-switch@71 {
-               compatible = "nxp,pca9548";
-               #address-cells = <1>;
-               #size-cells = <0>;
-               reg = <0x71>;
-               reset-gpios = <&gpio5 3 GPIO_ACTIVE_LOW>;
-
-               /* Audio_SDA, Audio_SCL */
-               i2c@7 {
-                       #address-cells = <1>;
-                       #size-cells = <0>;
-                       reg = <7>;
-
-                       pcm3168a: audio-codec@44 {
-                               #sound-dai-cells = <0>;
-                               compatible = "ti,pcm3168a";
-                               reg = <0x44>;
-                               clocks = <&clksndsel>;
-                               clock-names = "scki";
-
-                               VDD1-supply     = <&snd_3p3v>;
-                               VDD2-supply     = <&snd_3p3v>;
-                               VCCAD1-supply   = <&snd_vcc5v>;
-                               VCCAD2-supply   = <&snd_vcc5v>;
-                               VCCDA1-supply   = <&snd_vcc5v>;
-                               VCCDA2-supply   = <&snd_vcc5v>;
-
-                               ports {
-                                       #address-cells = <1>;
-                                       #size-cells = <0>;
-                                       mclk-fs = <512>;
-                                       port@0 {
-                                               reg = <0>;
-                                               pcm3168a_endpoint_p: endpoint {
-
remote-endpoint = <&rsnd_for_pcm3168a_play>;
-                                                       clocks = <&clksndsel>;
-                                               };
-                                       };
-                                       port@1 {
-                                               reg = <1>;
-                                               pcm3168a_endpoint_c: endpoint {
-
remote-endpoint = <&rsnd_for_pcm3168a_capture>;
-                                                       clocks = <&clksndsel>;
-                                               };
-                                       };
-                               };
-                       };
-               };
-       };
 };

 &i2c4 {

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v5.4.

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
