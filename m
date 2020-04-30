Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF921BFBD2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6vuDU/F+zcyVc9Rih/QmD+aXnRvZl1R6ssYu8Z1FVo=; b=DShJhPSm+jtX/Z
	KEdXznFL/JKp1+j1q1LMhRbp7Kali8zZJBa0HrakAGXCGEy0f1PqYYDEM1dL9qt08FNum7IyJysT5
	EGwSj43CkrBhJRDW+R8amC4oNljacWrVAgXCegZnVrdgfUqCDMVyNcAcsoWtF9tjGB4u6mKvC3oSD
	z404RQ7sa8UywDi0OOcBLdBpZAT6NTq5EloZ0cof8uX7O8+nuTkt7Z7frWZ8VfJf0dV71HaMYAklV
	lI3gixDyUC2E3SWdvjqopbjgJVXaUKjGkHIvuNsTvnu1qnZq4xB1tLMYQ6Q/b0NjaSzgKoPdFjlhe
	N1mRAeB1QpBvVG2+qooA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9lR-0004jF-Tl; Thu, 30 Apr 2020 14:02:09 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9lH-0004iF-Ai
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:02:00 +0000
Received: by mail-ot1-f66.google.com with SMTP id z25so4931773otq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:01:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CVFdq6UQxDJKbsif1NQfby/13W9nh3L9S4lY7xpqo6Q=;
 b=Dh1lVhMbWQvso3s48530e/Z6dZIKR6mIzLzzyZZ4oCX3LnIqiNxnUs4ZVbLXObH4/+
 nqycDQvs+u7ossqJvToWfymnWtLLcGcB/oyvzuzcEMMBFPJ42J51dSQ8mrusAtT1Dzk1
 Tx3VSE3kMZuYrSuWn2OPHppgLvRSOJ8ftDYlutB890jz3I7c4SMZfaT+nygZo8YTpNlt
 TVQlxFgLbtkMDftcYVF3e0W3cY7WMbhccmTVQ7QhkFtNGDgo0706CyWP76ongIwVrgqx
 XxcEwfE9GWHCldLXjOXqbKh+LtU3cm7F6FhaxdhsBe5pn9wT/Ggeyi0ogYJtaw7BwNND
 FNjA==
X-Gm-Message-State: AGi0PuYWywVWcEWQ4OyVoC89FHuqLTgsD/QAYBj0DlVnVWw9NE75Ne9p
 X31fsdXdick2+SKcsthowbTuER3ciJ3aOTr/n74=
X-Google-Smtp-Source: APiQypJUIE+IYTO5+NZ/A/sZ/oDHSxSbaWQRCNupntk+tPRhXXvE+d6x6FrwKggI4wtqfQWZDSOEK5v9pvRt9F25u+Q=
X-Received: by 2002:a9d:7990:: with SMTP id h16mr2567757otm.145.1588255317529; 
 Thu, 30 Apr 2020 07:01:57 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-13-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-13-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 16:01:46 +0200
Message-ID: <CAMuHMdVzcGnSZqPx0ZXXt7yahp5app2BW=GHUxgvNgEVnamLMg@mail.gmail.com>
Subject: Re: [PATCH 12/18] dt-bindings: serial: renesas,
 scif: Document r8a7742 bindings
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_070159_366036_678F776E 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Magnus Damm <magnus.damm@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dmaengine <dmaengine@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 11:58 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> RZ/G1H (R8A7742) SoC also has the R-Car gen2 compatible SCIF ports,
> so document the SoC specific bindings.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
