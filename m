Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5BE1B993F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 10:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JaFcTtpiFzmOhEA4WXAx3uICSfCrVqmgmheU6cRoL+c=; b=Gp2VNGasH4OsKY
	agJkp3JSNPHgHGFFGW2RnKHW8rMdMFLWdJAnAL1zz+G8TtLe564x1edZyh5qlR8/bY55NdcgfsrEo
	4GuhSoh7Jsk6wf18GXOGEUjZyJ06MyX5OGrIe2UjKFWjMcoa3GG/XH5Po5KhOLSAMu/9nTkSOgLEU
	qjtFVvWh0DZ/RkE8FcyJosyy+cTqNrjglJL9KYtfTyf8FpcfUYmHkj5yRT7nTISMU36LVu6jsrTrT
	EosTQoc12iMOtw3e8nuHhW+jz7l5Du4SfrTSvTw2O4gChCNaRFEkBzi9Oj6y2Rk5lfLgAIntZy+VF
	6r5+pJuC8isAIbESBcgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSyjB-0007QV-3b; Mon, 27 Apr 2020 08:02:57 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyj0-0007Py-Jq
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 08:02:47 +0000
Received: by mail-ot1-f65.google.com with SMTP id e26so24746851otr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 01:02:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f5Ebv09fgLvXhH+xtkwAAFGfajOYbV6HYFuo3teIizk=;
 b=dE7eXy2vj6XkrFR3pRwvkxrw5gnrD4yhfm2Iv5NBsDoZh5MSSbCT2c4eMEMKRtds4q
 i80kbhwITBFbRkW2EnWvZ6zBgPFntGPAs6wcThZgSmXvv9e7lWpt2t2aXP/no9EOVrHR
 COsGVHxSlWQ5wij02QXLFOfd+JbHsOheDdPzew1lHiYJEVFLk0yHStdFRV2IDT6oU1MY
 6czhEukAL//7scRSoWYPZDop8hnftiXvi3dPbEMhmHXOBBmY2oJB6ePaNOod1GVwVPtE
 hGDaSHVtAjeB2nJDbnxS6m+QkYS+2ptKoU5d4wzVbEilWpiRtf8g0BZbsivId5/29GE9
 PIAQ==
X-Gm-Message-State: AGi0PuYwpj/s0BAwThDayhqbGzw2wNQ1EnEVitNQBfnX7ixUexJFFlIa
 t8tXm9kYu16UwAW02LC7oU1Di8kSXVeZRMtQmxc=
X-Google-Smtp-Source: APiQypIckWSRUFUfZAWUBejtBhO2NfwPOP9jI9vNGdXY4ftuZTnLKOuMb4y3ZUy6caTNdp7h21vQCdF9p5aUhAKKMC8=
X-Received: by 2002:aca:895:: with SMTP id 143mr14299678oii.153.1587974565833; 
 Mon, 27 Apr 2020 01:02:45 -0700 (PDT)
MIME-Version: 1.0
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587678050-23468-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1587678050-23468-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Apr 2020 10:02:34 +0200
Message-ID: <CAMuHMdWGJ6cDcbt7RJr1Wa+Sqbnxackg6JC4b+=HqvmDx8L0ww@mail.gmail.com>
Subject: Re: [PATCH 05/10] soc: renesas: rcar-rst: Add support for RZ/G1H
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_010246_650595_2ABDFFB9 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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

On Thu, Apr 23, 2020 at 11:41 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> Add support for RZ/G1H (R8A7742) to the R-Car RST driver.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v5.8.

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
