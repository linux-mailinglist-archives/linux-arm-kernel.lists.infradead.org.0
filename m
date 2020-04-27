Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0E11B9FC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 11:22:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtI5ic/D1TRIGh7x6WmK4xLiRq6BmQMqSPtOA4y3dYA=; b=LLZbhis1rqzovS
	DdqsBL1KUTiEHgR6KCqQrLPY9psdEH7kzAOOAhB2IeCTAW1wtbUtG48Hh4dHsSdIHVnaYiSojajvb
	DX5ekMVgD/1Gy+OLl94oVZnTKSkQrY7ZIxQKBzqQZIxSFE6rLhw4XKC377yzTWTUx9xN6E91sbeD6
	lA5ZzIMKQ8ih0teEaRcUsG+1d0LdSqa2xy6q7mJDaTSB//3qarsl27Q2W619+ZVWd4QKfhI0/r+lW
	PtCUppnTwFYigZsfj+FSqycvCtXIjdwmT12+U8zBXl2bQ1Wf6k1psPaiuMjclenJzq9A4wElaT8kN
	4WRmRt9CktGIHWYMK1Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzyH-0000tS-FW; Mon, 27 Apr 2020 09:22:37 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzy3-0000sC-M8
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 09:22:25 +0000
Received: by mail-ot1-f67.google.com with SMTP id e20so24990881otk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 02:22:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8DC9wuWVCpF4fX18bDiRbTVykcklvB3HgA/RSTX3Ci8=;
 b=ibP4eCc5cH+siqVVHz3exImV2iMKoPLqzfifHejyCftZCTopuUFdNAzwEmHqyokyIs
 6QYj8LYy+qBdFjKAs9CujIyMDYDEdcfpT+UueVV6GNBklnZAIkJeyu3uGgp1nj17OoEw
 hnwK672C1ZSjD59Zc8MqKk85xTbZsPFWACr4Ki1v+kHIu8NmN5N/HhW65OBF9EkOgv7n
 Kc2pUXHgQp2+UoGw94GlPb62sjkn6qamEHC2GxCBcSgieQIf/OTQ9INqyf4VMrcvj2/Z
 s5c5/VeSmRG0mJBudfI75cSq3SUHZEZamVH6S7fCA5O+k+WiX9wy4+oKGXIzYTeb5Usy
 ohpw==
X-Gm-Message-State: AGi0PuYH3yEvtRgQyXcat233dAza6GOeKu3MssXksbe66156vaLkajIo
 vDlT4npGuqLAJVWeqVUtvpE8NKHZQENbee0wPGM=
X-Google-Smtp-Source: APiQypJ10JMZ48yMEr4gCPT2ON7rEsolbc8FeD4lWrGcROoB5VwAc887q0ILi7S4AP3Z/A1HrLX90XTtwrazUTrCwvg=
X-Received: by 2002:a9d:7d85:: with SMTP id j5mr16573914otn.107.1587979343075; 
 Mon, 27 Apr 2020 02:22:23 -0700 (PDT)
MIME-Version: 1.0
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587678050-23468-11-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1587678050-23468-11-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Apr 2020 11:22:11 +0200
Message-ID: <CAMuHMdV6J-_gBkzhUXtA8OrxhJVzyrAqjA8oeGJGBp86X-C3Nw@mail.gmail.com>
Subject: Re: [PATCH 10/10] cpufreq: dt: Add support for r8a7742
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_022223_733803_C6FB0401 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Magnus Damm <magnus.damm@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

This patch should be merged through Viresh's cpufreq tree (CCed).

On Thu, Apr 23, 2020 at 11:41 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> Add the compatible strings for supporting the generic cpufreq driver on
> the Renesas RZ/G1H (R8A7742) SoC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -53,6 +53,7 @@ static const struct of_device_id whitelist[] __initconst = {
>         { .compatible = "renesas,r7s72100", },
>         { .compatible = "renesas,r8a73a4", },
>         { .compatible = "renesas,r8a7740", },
> +       { .compatible = "renesas,r8a7742", },
>         { .compatible = "renesas,r8a7743", },
>         { .compatible = "renesas,r8a7744", },
>         { .compatible = "renesas,r8a7745", },
> --
> 2.7.4

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
