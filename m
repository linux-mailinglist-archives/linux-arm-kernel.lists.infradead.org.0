Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E9A47D63
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 10:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JSMsBEGgwtebN85I6k90L8noP9LY5izO3qTQjqNeaI=; b=MZniSYHAsAljas
	zIC/2lVn8Z6v8wJfiieLYo875YHm78aqN1Rx+hPZb05LyUWe19wW8eeaA38nn5UQTXKr3ciANNc1v
	a0QBAIOmdXkMVPwC9vGfpcchrNm2zg5NACQtvewz//MWBmbbXCAcG5VlvB6idJIRtRc268mecpOqL
	wsVhrbJYRhFK5IXHHjtEse94EjhXFa3CqYNhx3oNPqt1W0EZvACoU0wHzoAWMG6IAGZhBUDp1n8bz
	lzqSxWm4N5Kz+EIkbioQksDpB052XuuBC6v7sMzpX86PKMZvhzBmCqD5dma2QbY+8FvCkw6Fl1yAq
	veAGMc+zTG8Wkr9Xo68A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcnEp-00006j-AC; Mon, 17 Jun 2019 08:43:39 +0000
Received: from mail-lf1-f66.google.com ([209.85.167.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcnEa-00006J-Lg
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 08:43:26 +0000
Received: by mail-lf1-f66.google.com with SMTP id q26so5892915lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 01:43:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p4VKAprg7mXUJd6G8Qf2jpLDJEVAi1L24CO1vzj3CGU=;
 b=Kw+/BA5d1j8ud+dmOfy5FlI1LAkkxpo110e345bhmd0vUhCk9qGON8xv4seLNJ/BQI
 2KifIkn2KFG0LkjF4m2noR5VBbUDhkv7EpXs1zewHYOe3PecTjFjVhCDh14d3woZfGoD
 NSL5goDWTZGJ3DtP/u+8P+xM4RNDuSLc+F9T7BLEmRHsqYhWgcawP+nWXgrWKvgoO6be
 pHErzve1ipYwZxnE2deRC3KNjBIMq0RlofKvqijwxW53UZUwzpNzCW016+ruTKSWFKra
 gi8JetL2z5xHp8UDYmqCdF+Azyk8Wk6tBfixjLZbOftGA5RBS/uLjNXEnJU+Q1ovm90u
 UoIg==
X-Gm-Message-State: APjAAAWZAxm+is3YFh/G2Ne55Velwc5OLZrt15n91wqqP4VbO1/o0ehy
 ii42OIGeR+opBEQcQrYKVVMk1v3sfuQdqtahuso=
X-Google-Smtp-Source: APXvYqyzlinULIwCTQjvK3dU45P5C1mboR5bQEvnqFKJJDzMHrNXC72e93q8r138d5PLeAGt7y20WxK5UyK4E8ydR1k=
X-Received: by 2002:ac2:597c:: with SMTP id h28mr15739604lfp.90.1560761002181; 
 Mon, 17 Jun 2019 01:43:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190617083704.3941-1-horms+renesas@verge.net.au>
 <20190617083704.3941-2-horms+renesas@verge.net.au>
In-Reply-To: <20190617083704.3941-2-horms+renesas@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 17 Jun 2019 10:43:09 +0200
Message-ID: <CAMuHMdUu2T2+Ri_xEq+Nr1qD_Dm067TDkfxTDpduX4xia2FGDQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: renesas: r8a77990: Add cpg reset for
 LVDS Interface
To: Simon Horman <horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_014324_713935_827AC0A8 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Takeshi Kihara <takeshi.kihara.df@renesas.com>,
 Yoshihiro Kaneko <ykaneko0929@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Simon,

On Mon, Jun 17, 2019 at 10:37 AM Simon Horman
<horms+renesas@verge.net.au> wrote:
> From: Takeshi Kihara <takeshi.kihara.df@renesas.com>
>
> It is necessary to reset the LVDS Interface according to display on/off.

This is not the LVDS interface.
The LVDS interface has its own device node.

> Therefore, this patch adds CPG reset properties in DU device node
> for the R8A77990 SoC.
>
> According to Laurent Pinchart, R-Car Gen3 reset is handled at the group
> level so specifying one reset entry per group is sufficient. For this
> reason <&cpg 724> is not listed as a reset for "du.1" as was the case in an
> earlier revision of this patch.
>
> Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
> ---
> v2 [Simon Horman]
> - only add one reset entry per group
>
> v1 [Yoshihiro Kaneko]
>
> v0 [Takeshi Kihara]
> ---
>  arch/arm64/boot/dts/renesas/r8a77990.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/renesas/r8a77990.dtsi b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> index b4318661f35e..84d1f58e73e7 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> @@ -1766,6 +1766,8 @@
>                         clocks = <&cpg CPG_MOD 724>,
>                                  <&cpg CPG_MOD 723>;
>                         clock-names = "du.0", "du.1";
> +                       resets = <&cpg 724>;
> +                       reset-names = "du.0";
>                         vsps = <&vspd0 0 &vspd1 0>;
>                         status = "disabled";

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
