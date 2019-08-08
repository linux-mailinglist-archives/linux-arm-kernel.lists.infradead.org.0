Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A972C85DA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdaih2OdGcmTg88N1AhFehltjTE16bRNDz86Jo/MxG8=; b=fATqdKx4fc2QKV
	ov0hCoxq+g86mgrDFD2CNiH0OMpKh5RVlLPhGSeD1oMOoQmHsDF6X0LmqR5ZzacMKDERWiNDeJ5te
	5Tu/6k+5D7pgoB22c6khJYaeqly5LqIDJ+nJwk+Ak79w3dofCD8hY44Y0P08UZ3FimEJlju1RF1uD
	6aK3OxsZyr2Rs/4wxevVnetwk5Y7GRhAIAkBfff1hXhn2hdNmFRGYICETWqYS0w/47AsGX5ZQXlk1
	IvQfznAwoG4aqITIDeipX/3go1KcQ7cyFrRJ12PY03AZRj64zSV+zuA1TfK2/ygHxhbloR6QwbiL5
	iyYL0U/bYgj/648lBx2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveHw-0007Ld-1e; Thu, 08 Aug 2019 09:00:48 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hveHh-0007Ku-Eu
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 09:00:34 +0000
Received: by mail-ot1-f66.google.com with SMTP id l15so115667694otn.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 02:00:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NQIzgC+Bm4Ug1AA7j10Dm7ByH7H90ws0/6j0w3ZAKqM=;
 b=ufq11FdGrKq6uHw6O34Y6J1dpg1lxRgm6Yt6QJExWG+4t0yoOKM8B5N7Rlqr/5tMIX
 8xmofCf0XnCBhejB5h8SQ41ce+Gq9cpuJRFgxyw0a1BWl+pQNgNWuhhhPC4eiGekrTWb
 Ue72VYLN5WwdghDsuQZAbyZEhTvnKn2uTAxwHgKqFns9f6+kpBgA9QSzT9vlV1dnZUWt
 AczmEZCPje4fyhkJ7YqSzvHGZUle1KuVEoysk4fdxHr9thg0f2H0/YvxFEuB/T2EfLln
 WbUNC5YIv4H2ZT/dkVuqWCu2v50GaXt4cKB5/KRIWkMNcFn0cMkzwYoCuXCBORfQYoQC
 E0pA==
X-Gm-Message-State: APjAAAXXNAKKU39RBhRHJ+TZwWuE5SIgo2gqKGQ/0Tt1t9k4OEIxog5q
 Bbgp3+akL8Rr3/7xR/rS2QeGQdVi+HeYT+YjjNw=
X-Google-Smtp-Source: APXvYqyWzwl/0vZpshXoQeVkdZk1wEe/HMQo1zFeQ+F2oMZwLW4xcpVgFu0Pg/eGKiqA8JDcBRvtJVTjvIlijIrfUgc=
X-Received: by 2002:a9d:5c11:: with SMTP id o17mr11226786otk.107.1565254831079; 
 Thu, 08 Aug 2019 02:00:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190731073744.13963-1-geert+renesas@glider.be>
In-Reply-To: <20190731073744.13963-1-geert+renesas@glider.be>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Aug 2019 11:00:20 +0200
Message-ID: <CAMuHMdUCb_7=yTb+E-CvbabdRgWRRg6DYzukWqzd_ZCexobnwg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77995: draak: Fix backlight
 regulator name
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_020033_495139_8D81B9D1 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Simon,

On Wed, Jul 31, 2019 at 9:37 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
> Currently there are two nodes named "regulator1" in the Draak DTS: a
> 3.3V regulator for the eMMC and the LVDS decoder, and a 12V regulator
> for the backlight.  This causes the former to be overwritten by the
> latter.
>
> Fix this by renaming all regulators with numerical suffixes to use named
> suffixes, which are less likely to conflict.
>
> Fixes: 4fbd4158fe8967e9 ("arm64: dts: renesas: r8a77995: draak: Add backlight")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> I guess this is a fix for v5.3?

Do you plan to queue this as a fix for v5.3?
Thanks!

>
> This fix takes a slightly different approach than commit
> 12105cec654cf906 ("arm64: dts: renesas: r8a77990: ebisu: Fix backlight
> regulator numbering"), which just fixed the conflicting numerical
> suffix.
> ---
>  arch/arm64/boot/dts/renesas/r8a77995-draak.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
> index 0711170b26b1fe1c..3aa2564dfdc25fff 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
> +++ b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
> @@ -97,7 +97,7 @@
>                 reg = <0x0 0x48000000 0x0 0x18000000>;
>         };
>
> -       reg_1p8v: regulator0 {
> +       reg_1p8v: regulator-1p8v {
>                 compatible = "regulator-fixed";
>                 regulator-name = "fixed-1.8V";
>                 regulator-min-microvolt = <1800000>;
> @@ -106,7 +106,7 @@
>                 regulator-always-on;
>         };
>
> -       reg_3p3v: regulator1 {
> +       reg_3p3v: regulator-3p3v {
>                 compatible = "regulator-fixed";
>                 regulator-name = "fixed-3.3V";
>                 regulator-min-microvolt = <3300000>;
> @@ -115,7 +115,7 @@
>                 regulator-always-on;
>         };
>
> -       reg_12p0v: regulator1 {
> +       reg_12p0v: regulator-12p0v {
>                 compatible = "regulator-fixed";
>                 regulator-name = "D12.0V";
>                 regulator-min-microvolt = <12000000>;
> --
> 2.17.1

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
