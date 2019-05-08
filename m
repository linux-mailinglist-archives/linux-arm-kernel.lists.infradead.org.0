Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353FC17A56
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 15:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pv80EPadBZL3c8GC7D950PPuNvD9wiJ1Ki37HW3CUrE=; b=SeZWk+/T3hewVA
	N0bdRZvEvj+FHgnR+wfmKI+ORAM7iGR1SXzD+6kadHylIwF9fJO9k/4k5tDWa6iN/DTFu518vXAAx
	EdMaoRThVoxkNkstmzdgX9lHstqI/UMq4wYzuxkWo2Kdl7s4dK+5mdYef5wHa+8tg+GrgFQJlFUMT
	M6jodvDnr4N86pXsbMxCK4ncF3r1jX8GlxMVE3g4Oeycaa11jqbWIsGVSX7eeXMPZvYrSiym8Ig0U
	1qfyB+vuLYj6hLkzkM14/qyq3LqHrnaGDpR3KH39QsY+qzlUjEPtx1XvXNVT5ZRwq4S1k/LZ48/gB
	Ck8cZCX2OC0nckgJKjfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOMUh-0005rp-M8; Wed, 08 May 2019 13:20:23 +0000
Received: from mail-ua1-f66.google.com ([209.85.222.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOMUa-0005rK-FI
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 13:20:17 +0000
Received: by mail-ua1-f66.google.com with SMTP id h4so7349931uaj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 06:20:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vxge8c0Vxi1T7nYlAa9OeuDqJOUYQ8h5Blla0Ehqg7E=;
 b=LMcN/FONWKZ8N845KwKQfyDwGEM0yi56OPD9cFi5kC1TYVbWTBVL+bEnSrNhnrFtnV
 MK3Zste3hlMXZiHxMjJGA9PxPRAOSiTJGSzsT/LXrx1aBg2jPn7xD4Vt/o89z3+Dfkym
 ASx/pA2uWHbEnz9hjq54UUfOdQUe8hjjZPKb34K1hApajlZdM923CgDyqSmf85d8vqnn
 g/JQ85514T6bB2l7MLSzJonkfPCby6IXzD7gHl2I9r2mGNHzlvRfRwd7bHFsLsK5Amnm
 l7ee5YzH1NY/ey7RIrOV4wJwCfb2qxZdxfXu5MS3hUNcqWqSekMeD06tORc1hLA30Urz
 21Nw==
X-Gm-Message-State: APjAAAUKKpmV7lh00fE9DbQhnTM3OtRPiDmkUJ+AzN2Jbm5XnLDsqKyI
 Nd7ckDoQF67QDVcjep9aE0E2HkvdL7GI/ggDfsc=
X-Google-Smtp-Source: APXvYqy+09oDA6eSEwjGV6Rz9PrI3l7+/XyTg9qu8kZL5oMBtXA2c1sxJqcGdTAXRBoweyGt8q0Y42wLZllZYVVloJY=
X-Received: by 2002:ab0:d89:: with SMTP id i9mr19771477uak.96.1557321615237;
 Wed, 08 May 2019 06:20:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190508115605.13726-1-horms+renesas@verge.net.au>
In-Reply-To: <20190508115605.13726-1-horms+renesas@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 May 2019 15:20:03 +0200
Message-ID: <CAMuHMdX3YW0NaDXvN1WjWeNrCH366LALa3UT41REqAHNJk-9JA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: renesas: r8a7795: Create thermal zone to
 support IPA
To: Simon Horman <horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_062016_514319_9851A2FB 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Yoshihiro Kaneko <ykaneko0929@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Simon,

Thanks for your patch!

On Wed, May 8, 2019 at 1:56 PM Simon Horman <horms+renesas@verge.net.au> wrote:
> From: Dien Pham <dien.pham.ry@renesas.com>
>
> Setup a thermal zone driven by SoC temperature sensor.
> Create passive trip points and bind them to CPUFreq cooling
> device that supports power extension.
>
> In R-Car Gen3, IPA is supported for only one channel
>  (on H3/M3/M3N board, it is channel THS3). Reason:
>   Currently, IPA controls base on only CPU temperature.
>   And only one thermal channel is assembled closest
>   CPU cores is selected as target of IPA.
>   If other channels are used, IPA controlling is not properly.
>
> The device supports 5 cooling states which can be categorised as follows:
>
> 0 & 1) boost (clocking up)
> 2)     default
> 3 & 4) cooling (clocking down)
>
> Currently the thermal framework assumes that the default is the minimum,
> or in other words there is no provision for handling boost states.
> So this patch only describes the upper 3 states, default and cooling.
>
> A single cooling device is described for all A57 CPUs as this
> reflects that physically there is only one cooling device present.
>
> This patch improves on an earlier version by:
>
> * Omitting cooling-max-level and cooling-min-level properties which
>   are no longer present in mainline as of v4.17
> * Removing an unused trip-point0 node sub-property from the trips
>   property.
> * Using cooling-device indexes such that maximum refers to maximum cooling
>   rather than the inverse.
>
> The long signed-off by chain below reflects many revisions, mainly
> internal, that this patch has been through.
>
> Signed-off-by: Keita Kobayashi <keita.kobayashi.ym@renesas.com>
> Signed-off-by: Gaku Inami <gaku.inami.xw@bp.renesas.com>
> Signed-off-by: Hien Dang <hien.dang.eb@rvc.renesas.com>
> Signed-off-by: An Huynh <an.huynh.uj@rvc.renesas.com>
> Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> Signed-off-by: Simon Horman <simon.horman@netronome.com>

Did you intend to use this SoB value?

> --- a/arch/arm64/boot/dts/renesas/r8a7795.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a7795.dtsi
> @@ -155,6 +155,7 @@
>                         power-domains = <&sysc R8A7795_PD_CA57_CPU0>;
>                         next-level-cache = <&L2_CA57>;
>                         enable-method = "psci";
> +                       dynamic-power-coefficient = <854>;

The dynamic-power-coefficient property is a property of the CPU,
documented in Documentation/devicetree/bindings/arm/cpus.yaml,
and not directly related to thermal zones.

Hence I think its addition should be done in a separate patch.

>                         clocks = <&cpg CPG_CORE R8A7795_CLK_Z>;
>                         operating-points-v2 = <&cluster0_opp>;
>                         capacity-dmips-mhz = <1024>;
> @@ -207,6 +208,8 @@
>                         power-domains = <&sysc R8A7795_PD_CA53_CPU0>;
>                         next-level-cache = <&L2_CA53>;
>                         enable-method = "psci";
> +                       #cooling-cells = <2>;
> +                       dynamic-power-coefficient = <277>;

Likewise.

>                         clocks = <&cpg CPG_CORE R8A7795_CLK_Z2>;
>                         operating-points-v2 = <&cluster1_opp>;
>                         capacity-dmips-mhz = <535>;

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
