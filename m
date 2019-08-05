Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F7682096
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 17:43:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=da0znSNvaQT8fauTvnsoy2EZ92Go5K1wC/0GqOvtCVQ=; b=TfarevsSR6SJsO
	WxvNxAtRe/lygdFPqbjpk/6o6OPfqH1DvT2moIo+3ND6R7ACuIfe9kfYpyxKT0xanqJDft/IjPfcE
	o12+yWkBzU4HD9E527vYHBx0uB8W76sYFlXQ9UlVyyNBLO0Gnt5diIocUpM4i+7daFleNPDbjHZCA
	cHFRrrH6XbieNMyvlCytrzxICs+JiAv8VfNaALI7pkRoXNSREHsyibP1en/sVgpwpQDf77mFFUUFu
	IMtRQH3KfWngRxo0BSjTU2BWLZ9tzk9UtWI+EI5l+npcwhqE74ZcPi4+XlUpqoQzO8razqp3wUkAF
	CzUOgwIFj8aGPlvO6Egg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huf8n-0000FG-3f; Mon, 05 Aug 2019 15:43:17 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huf7y-0007y2-4h
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 15:42:27 +0000
Received: by mail-wr1-f67.google.com with SMTP id p13so10326815wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 08:42:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UOOyGykR4exrts5mLOsqpvR/FvgLN8IQrdwmn4eiOZA=;
 b=pKuLBH2e9vJ0FtpHpWOZitR1ZcMH1TX9wHKHcxG8vvQvWjAc3L4vVcom03Vznr/idy
 2MBbFkvtA4AStuDMmkGYSGf7PMEtDkN/wWthI4plxjPME+OmDj5Fl+rpHwLOBNLNjRN7
 ctnCvole/7WYUdDxN5XyrCM9PaB+wt6jj3paeCb78aHOBGD6mZQT0ENgQ//dSPjD1qoO
 e9RVjCWREaGdNntBO4Te6MtU34g4PSC/a//PeiVpQ9TOG/ssBYnwE4BoNBKkWq9AYyiB
 A/KubuwtBWI6QacEYOBVbRpvYijSzK96TPvV8RYyd59ZmIQP09QpRRbcURqTjsXqhpvL
 OcpQ==
X-Gm-Message-State: APjAAAU0/xtNgn/ep0IJ6cBRG55drBlU1Qx9rA6Gfo0X1XNOAR8YcggC
 AqUyIfVzidwi5N9F3KYioackvmsdMsmscOhqqnQ=
X-Google-Smtp-Source: APXvYqyBggpKQBQTtKbD8kpA9IvhKu4dLpSWRVkaXps9OGX8/cHF5+iMHiNo/AvUM1LhsdpvW/in4OnEBYOlvV4iKLo=
X-Received: by 2002:adf:cd81:: with SMTP id q1mr162624759wrj.16.1565019744920; 
 Mon, 05 Aug 2019 08:42:24 -0700 (PDT)
MIME-Version: 1.0
References: <1564669452-22631-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1564669452-22631-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 5 Aug 2019 17:42:12 +0200
Message-ID: <CAMuHMdVkn1wq1xcLhU0GWujrmu492utmAAV2KKgiqsaersGt-Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77990-ebisu: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_084226_193460_0756D3B5 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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

On Thu, Aug 1, 2019 at 4:24 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
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

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
> +++ b/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts

> @@ -157,15 +125,13 @@
>                 regulator-always-on;
>         };
>
> -       vbus0_usb2: regulator-vbus0-usb2 {
> +       reg_12p0v: regulator2 {
>                 compatible = "regulator-fixed";
> -
> -               regulator-name = "USB20_VBUS_CN";
> -               regulator-min-microvolt = <5000000>;
> -               regulator-max-microvolt = <5000000>;
> -
> -               gpio = <&gpio6 4 GPIO_ACTIVE_HIGH>;
> -               enable-active-high;
> +               regulator-name = "D12.0V";
> +               regulator-min-microvolt = <12000000>;
> +               regulator-max-microvolt = <12000000>;
> +               regulator-boot-on;
> +               regulator-always-on;
>         };
>
>         rsnd_ak4613: sound {

You forgot to sort the sound subnodes.

@@ -142,13 +142,13 @@
                simple-audio-card,bitclock-master = <&sndcpu>;
                simple-audio-card,frame-master = <&sndcpu>;

-               sndcpu: simple-audio-card,cpu {
-                       sound-dai = <&rcar_sound>;
-               };
-
                sndcodec: simple-audio-card,codec {
                        sound-dai = <&ak4613>;
                };
+
+               sndcpu: simple-audio-card,cpu {
+                       sound-dai = <&rcar_sound>;
+               };
        };

        vbus0_usb2: regulator-vbus0-usb2 {

As this kind of patches is a hell to rebase/rework, I'll fix that up myself
while appying.

Apart from that:
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
