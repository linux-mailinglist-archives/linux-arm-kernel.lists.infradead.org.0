Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11EE57AB03
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 16:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkCGk+tjQGs3dqT8SjYbbXxmL9bCVBRNKXIuUovnLXY=; b=TgHapz34NI/ugC
	lnLrKSvsgw+g2PTfQNDYvgKvZLAScUYg9jVsQKESnw48XhLg4szKSfVNAPSxOWTBt5UkPhmHicwQu
	qiL+KBIgD2sYPkMrM9LGuwkl/wAEGlwMnd4jdsPELMHj0Wj3TKQFy6rvmPokNhan90J8ecjwK3sXI
	h1qUa32c+7AaK1keP2cw6wGdmUeia03+za8L/ibYmkPuwdq/liXnIagsidePoZ474nFIIwSOCKuJI
	kOx1GuklrCCyxTWUJnUG+2+s+IJdfgbjRu5BYpOhAXYU4itoLBgKV7onfPKx9rWplMephKXkjc+c4
	URDrfq6xUWFxAd9NOJBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsT97-0006Db-PZ; Tue, 30 Jul 2019 14:30:33 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsT8v-0006DB-1M
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 14:30:22 +0000
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com
 [209.85.222.52]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id x6UETrnA012183
 for <linux-arm-kernel@lists.infradead.org>; Tue, 30 Jul 2019 23:29:54 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x6UETrnA012183
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1564496994;
 bh=0hc3Uu9nCIoE1SS53/NliN1JNvYIDZvrrXG5AJfRp38=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cca3XGZcjEDP+3Di0PFOf71mc1PVWZJd08455cvM5iMOy9FVVZg8h1aBgMcCJUc0C
 YAWB9KMa9qpT/gMlxTC5gkVz3C4Au07tHGwT1JLssZ6PmkyB5RZmYZR6KdBLI//1z3
 p3ev2kMLQVA36UIvUOmcXSRL0r7sZZANoB6fNMYXtRr++eqT418gKLlat6NX78cwVP
 8WHKnyhv/bCRp/HIpYrqIcS8yZGWosJNazJ2is+yrDakOKu5k7Bm78Jk31scgbai3X
 wXyds86TkwHNlc4/PjwRbygb/nLugaAGdFhnOhgLxEOBe6u875sM81koqaZ4VGnmRE
 /sdoLHBv3wmGQ==
X-Nifty-SrcIP: [209.85.222.52]
Received: by mail-ua1-f52.google.com with SMTP id j8so25497159uan.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 07:29:54 -0700 (PDT)
X-Gm-Message-State: APjAAAUOd5H5LbzBi7Shmq2e3aEVAo+QpGy1hcl9HUhoRbUhJpffhXt3
 MiywO0flEr4A2ca7Jantm30PBhRi3Fe9Tr8AUlg=
X-Google-Smtp-Source: APXvYqzTa+qzpINOT2XZDf/K7sGcDUA0vckyvpjF65oqd9ogwq5I7ovAg+Z4nhc+il2dE73E9Q8CIn8qVhargUmVkWY=
X-Received: by 2002:ab0:70d9:: with SMTP id r25mr44806891ual.109.1564496992810; 
 Tue, 30 Jul 2019 07:29:52 -0700 (PDT)
MIME-Version: 1.0
References: <1564465410-9165-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1564465410-9165-2-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1564465410-9165-2-git-send-email-hayashi.kunihiko@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 30 Jul 2019 23:29:15 +0900
X-Gmail-Original-Message-ID: <CAK7LNASbe8tyxfhuwmUpA+M7D9AdPa6v7UaAC7qLvY_eN2sxTg@mail.gmail.com>
Message-ID: <CAK7LNASbe8tyxfhuwmUpA+M7D9AdPa6v7UaAC7qLvY_eN2sxTg@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] pinctrl: uniphier: Separate modem group from UART
 ctsrts group
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_073021_320792_6D342726 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 2:43 PM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> It depends on the board implementation whether to have each pins of
> CTS/RTS, and others for modem. So it is necessary to divide current
> uart_ctsrts group into uart_ctsrts and uart_modem groups.
>
> Since the number of implemented pins for modem differs depending
> on SoC, each uart_modem group also has a different number of pins.
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---

Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>

-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
