Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0209B1B98C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 09:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlPZz+FG+XVn5IAVhV0UQQtiLvHPWDSnUn7Wvl5feDw=; b=nJdyPRV/I5x88m
	HoFQ1skW6AoFnbJ1+eJGQ9t+TB4iPVRvcHoKQBj7/2zX1N2VrwiVxfaJ3C+Y2kxOnI3cFS8tgLDmS
	vGqhUaODSYjXdAHE7a8GiizxMWlFLA6KF/grihfYan9kVPL/und3Aon8oiY8eIg+GBs6rbVOduPma
	yHKY1JFASORhx6/ObZtn1YcV9+h/1a2tsj5ZQbAkepWdrHPo0Svoo6uKQYH0ATKJvfzifIM9Phyis
	l60yHM0EbI3jaXPN4rzFGgSdpZfLQIB3TyHaFhpkKodokz1j2Y3ttXO9WLdi5FZXvjvD0HYYMpeVs
	fdEWxBA4ZTLJEz51ndbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSyNL-0006sP-Ht; Mon, 27 Apr 2020 07:40:23 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyN6-00060k-4F
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 07:40:09 +0000
Received: by mail-ot1-f65.google.com with SMTP id z17so24657383oto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 00:40:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wek6tBW+YiNXLDCAullGByq6Df5JS2eLcCF9PYMe2Os=;
 b=WaQCPHcgfXqavJlbkq69nBScOgTXyKKNWnwFakIZRZPheqyUoWIU8/pYe5RJsNOMFE
 kgN76QVVZmT0ta3yc1xvQbNf7ZAz2rE6T7GDax0JfxfWENnWCFQdwp2Rzcaeel04B20b
 O5Z+VME3neAukTebKA9tz4hFRdDaUqWvvLAueQhJDw9edF2udoOlDZSA6OQIXNthIe9f
 pR5rLgBTAbVQLRKkxCEWoBPiZw7uvBanBa8cKFW7g8JtgdPhIFEFKfUGKZdPhudTOiWa
 BEB0WX4VIPG8CFoEJqP+TStvn/t9MlZE6SGwBaXLM4B/TOG0JwF4Wrw0iXnwJ4Knfb60
 xt9A==
X-Gm-Message-State: AGi0PuYlFuBCdw35b1VGGRh2/q7LP0T2VB/w3dBfEXzhkEBa23hAUuol
 2laiqI1QGs/7HLWFHfwnVJpWv0z5d+b4N9lMFPE26A==
X-Google-Smtp-Source: APiQypJsr17J2GPmA+VqMopmvfDZIJGNi04BuJZW9HgLZVc+RHHoovs3TupqRwUjD9U4Un5Q+0yM9r1PgNT/e3hjXEI=
X-Received: by 2002:aca:895:: with SMTP id 143mr14265203oii.153.1587973206830; 
 Mon, 27 Apr 2020 00:40:06 -0700 (PDT)
MIME-Version: 1.0
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587678050-23468-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1587678050-23468-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Apr 2020 09:39:55 +0200
Message-ID: <CAMuHMdUWwvLeuTY=DVwE3GK233dC0NNPPeeihSQX9TXKrhbA4A@mail.gmail.com>
Subject: Re: [PATCH 01/10] dt-bindings: power: rcar-sysc: Document r8a7742
 SYSC binding
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_004008_204423_F9C2BB8F 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
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
> Add binding documentation for the RZ/G1H (R8A7742) SYSC block.
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
