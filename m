Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 872E41B9FDE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 11:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXYN7/C/Dk3TYOd33FK0fC9zPki6H6GQPMj0666LiW0=; b=aTV0MjNRfcWKAr
	5UZ7lPB+B8YZbKQ3LjnUo9S5P/Ii7h6FP4MfUyBMrwt1axNa9eTjyw7+a6McNmi+hiE2VjqrJkIHe
	mbO5X9y8YQ4BXR0g/9AiP9kNIX0lYzmjT/pn+rlA7k/R8GBq8t7sSYVXc/UOkFKnuzACfrdgdGIWo
	+SrvrINT3UnVlCtIVZ5LyExENcSti2GAEAX0iW4Blta09APIsP4rvJ3+5dnU/NPuzW7GMTuVNKb7T
	Diu7JhG61Qom+O7QOxRR8olke5WAabxg9wfIDA9SIhjCX8SWUVTSwJjSRPMvKytjxhTWgCP2MKv3a
	ByJrEOnnawzmkV+Kj8jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT03l-0004ge-Dr; Mon, 27 Apr 2020 09:28:17 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT03c-0004fx-0u
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 09:28:09 +0000
Received: by mail-ot1-f66.google.com with SMTP id i27so25018186ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 02:28:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=satcs0L6pCESi5s1zRT0opUmLRyAMa2F37DYw2oCF+o=;
 b=clf+QfHJVjVz4HApVdFBBDOBaXappeWF51JR5q5fMbDdOIjyf4jKuzZd6YoucJIJb6
 X6URJpP2y2b7R+ThWr4hciMy1pEO0rGf+wlUNyUBYh9OG2QCqomH8Dk1dhnxSnaZR8Du
 3Rou+7hKG39OzOjUFnRjhpKabWljNoeS4gOtjy5QFF7LyoXL26WyzUojUJbxubrU1V7f
 jLhYe7JEJyUcSLcI/eHmdW41wP7kTKY8+upl6pGazfsRV0mBWKuGhVblLpN7aKpGsVfB
 XUaTFUePawku69gJd3jkNRTw/Rna89cHLPSCnTjpZAWp0sJrPYBpiZqrI7BdUumiLVTH
 kHyQ==
X-Gm-Message-State: AGi0PuaA441TKsGyZlwSY27AvNjP2cJUpmwoTGev55+aZsda8Cep2KP7
 kxIPJa/o65euqeagPkMuPiU0MYW1HviOCnol1pA=
X-Google-Smtp-Source: APiQypJzALJgRY1d91rA8c98t1wolcYkZSylcGRu1D6EuuJWyXLxqd15Cj20htAHNIdKONFRaH1i3C9mh1n0ja0zK0E=
X-Received: by 2002:a9d:564:: with SMTP id 91mr17595764otw.250.1587979686512; 
 Mon, 27 Apr 2020 02:28:06 -0700 (PDT)
MIME-Version: 1.0
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Apr 2020 11:27:55 +0200
Message-ID: <CAMuHMdXwsUAaeY+b6t-nqPE8kL-p+F4HqXE2mujP0eXPjrbooQ@mail.gmail.com>
Subject: Re: [PATCH 00/10] Add RZ/G1H support.
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_022808_070857_7284DC3B 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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

On Thu, Apr 23, 2020 at 11:41 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> This patch series aims to add support for Renesas RZ/G1H (r8a7742) SoC.
>
> RZ/G1H SoC is similar to R-Car Gen2 H2 SoC.
>
> This patch set is based on renesas-drivers/master-v5.7-rc1.

Thanks for your series!

Looks mostly OK to me.
The missing code part seems to be the introduction of the main
CONFIG_ARCH_R8A7742 symbol?

I assume you plan to submit the DTS for v5.8, too, so I'll have to be
careful and apply the binding definitions to a separate shared branch?

Thanks again!

> Lad Prabhakar (10):
>   dt-bindings: power: rcar-sysc: Document r8a7742 SYSC binding
>   dt-bindings: power: rcar-sysc: Add r8a7742 power domain index macros
>   soc: renesas: rcar-sysc: add R8A7742 support
>   dt-bindings: reset: rcar-rst: Document r8a7742 reset module
>   soc: renesas: rcar-rst: Add support for RZ/G1H
>   dt-bindings: clock: renesas: cpg-mssr: Document r8a7742 binding
>   clk: renesas: Add r8a7742 CPG Core Clock Definitions
>   clk: renesas: cpg-mssr: Add R8A7742 support
>   ARM: shmobile: r8a7742: Basic SoC support
>   cpufreq: dt: Add support for r8a7742

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
