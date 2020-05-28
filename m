Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8201E6D9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 23:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJf8N+6zZCcgtbjNZrDnst1+dN1wVy6lfZrCEUseiCg=; b=TyymoM/z09nckc
	s09XHaJZyYS0/zBxXeyQUxvy0/EgJsOllahA5brAwn3GPdW50t1nk4FQuq5PsW2w/73/MfB8oGKtI
	is63bWM0YsVEyt8c0htZoDNe2gT7GJIGCNjzFOhtk+cytkBRCg3yBqPmF2eZCaiNqrw3VHd7WHSeb
	yrC1OTvWipLRQWrlEReEEYJrjArzLNzFXTL8vA3wq01GzJvb0ifNzcb2bcDs8XToqWZvsmAu4SXUa
	k6CgjE3xHwz4wbhI772Z9j/l2Ed/ncmeQVi5YfxSKE57I58Z2AV64c4TvqVL7+QHMPrYegg5WC3dl
	n4Bg7f92/7ArzBgars8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeQ5f-0002oR-1J; Thu, 28 May 2020 21:29:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeQ5V-0002o1-W9
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 21:29:19 +0000
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
 [209.85.210.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D843820C56
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 21:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590701357;
 bh=8EmXt7+sx2zpcAnqb4dBd/eiqziXuMWKAY0+XHFCUQw=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=GOYDP8YZSZcyPZ8bN+By3tcJnQcKiqUNbgHxBN6X48YP3y1EGob+o57gR5yIj4XbQ
 OeCX1bQeFDWThuybN8Cupuhh/5waJuDuqGOSeVoimkbx5bxNUG4clW0nMjiHqK1bI3
 vaEtKDU2s8bwtr6n2oqpo375tofGNNCxMimYe6A4=
Received: by mail-ot1-f45.google.com with SMTP id u23so324087otq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 14:29:16 -0700 (PDT)
X-Gm-Message-State: AOAM530AixlXenOJ5sUC2Y76RMJH8x9/qQaPDQCCrItQPgxWnlL0xzT7
 91lKvDdihKpQmsOT00m7DGpJ0RaUHSZVep2FpQ==
X-Google-Smtp-Source: ABdhPJxZe4GmM7dI7GKHhyH2IF8+GSfwhJkELtWNvkTJFK3Is7mrHEaEfNLozBax7aG2C0/CABYTK9gju3Qdsn1IR6c=
X-Received: by 2002:a05:6830:3104:: with SMTP id
 b4mr3843852ots.192.1590701356022; 
 Thu, 28 May 2020 14:29:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200527181307.2482167-1-robh@kernel.org>
 <CAK8P3a27RkBkt5mnBeVJ-67MnJi29Dc+jYL2Q8JskaZ1W_XrKg@mail.gmail.com>
In-Reply-To: <CAK8P3a27RkBkt5mnBeVJ-67MnJi29Dc+jYL2Q8JskaZ1W_XrKg@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 28 May 2020 15:29:00 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ83UJ0Roy_NJBLXuvhPG2zBDod8ZgSGrEtpKSnYPtowQ@mail.gmail.com>
Message-ID: <CAL_JsqJ83UJ0Roy_NJBLXuvhPG2zBDod8ZgSGrEtpKSnYPtowQ@mail.gmail.com>
Subject: Re: [PATCH] clk: versatile: Fix kconfig dependency on
 COMMON_CLK_VERSATILE
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_142918_055803_61B877BE 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Anders Roxell <anders.roxell@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>, SoC Team <soc@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 5:57 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Wed, May 27, 2020 at 8:13 PM Rob Herring <robh@kernel.org> wrote:
> > diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
> > index a0ed412e8396..8c1b0e8e8d32 100644
> > --- a/drivers/clk/versatile/Kconfig
> > +++ b/drivers/clk/versatile/Kconfig
> > @@ -1,11 +1,8 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >
> > -menuconfig COMMON_CLK_VERSATILE
> > -       bool "Clock driver for ARM Reference designs" if COMPILE_TEST
> > -       default y if ARCH_INTEGRATOR || ARCH_REALVIEW || \
> > -               ARCH_VERSATILE || ARCH_VEXPRESS
> > -
> > -if COMMON_CLK_VERSATILE
> > +menu "Clock driver for ARM Reference designs"
> > +       depends on ARCH_INTEGRATOR || ARCH_REALVIEW || \
> > +               ARCH_VERSATILE || ARCH_VEXPRESS || COMPILE_TEST
> >
>
> I've applied this version now but added ARCH_ZYNQ as an additional
> dependency to work around one of the warnings we got earlier.

That's just spreading a copy-n-paste error. Why don't you apply the
Zynq patch I referenced if Michal never did?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
