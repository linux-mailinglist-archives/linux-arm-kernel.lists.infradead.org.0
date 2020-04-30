Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECF91BF8AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 14:59:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxIYB1hJMuuexbznAIpGRfhoQ3KhTmdzMeHWo5JzR2I=; b=TWJrHjPBUJScCA
	XJj9jDJVTzhYhhg71EmQw9F3XrM0r+D5FFw1nZzWr7h/gquoLgDaCihROM7PaRY8ZGasgxfsuei3H
	padQTRgXavETqRRdQkXfTVxbPYgqu+P2Lpna/EIu/bIsklTiLWcFf15ajz1hbwkdu+b8a4BKL8qgN
	fws3sw7iCIf9kL7r+KFAN2xXwVaL/FzxQDP+yfCJeWMGjogOiG63oumOwXKc1eI5iaBGo+g3ZDaU2
	asoA9GQwwwWcph1VH37q0seZ+s7OIpQQYkjbXCBO0iuJ7lCPmXsVRfMq3Rj5CsKIOaYOVwQ5dgj8w
	XDUBe1e4FapyylJiJNig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU8mg-0000pg-Q1; Thu, 30 Apr 2020 12:59:22 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU8mX-0000pH-If
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 12:59:14 +0000
Received: by mail-oi1-f196.google.com with SMTP id m10so5101349oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 05:59:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lFd0mFF+Oi7oyBZIDq8g60aiuPWlTPswKEMj2mCEslc=;
 b=uPzXK/TYsuqynvxP3G5nq/CjU3fCJUebFYR9WiWPLUzlEjea3/EgiqkapiE7aCiEf6
 OEyPQjpG+79OddA/ie/8BbLEknZkgkbJ97Tf1AqaywxL3r7m7H+dCo0jnBWpmJC4H3R/
 RNs4wX7rpnqBVfWa9rscSrJGV8RzCotPfmnXijoGcN/JL+lbBatTvRP+Ge/UjezluJvv
 aTwqDIje6widds07htJC7Ri5ojS++Y0z53GrEGlpAKSgRE08cSntVyvdxp/UK5T09E9x
 GT4K3pFpOQWNTKFiqCTiNk1Dja2dMAMcBka8Ufl3ufTnP7xqE8Ic2TwBE285ERO8m9lV
 ylWw==
X-Gm-Message-State: AGi0PuZzFv2g7yjKwyxNx1y1G9HjdIOjVX7O30JjYOm9kc7TLX+ojn/L
 HvbCgX06Aq/LSw/ES/ogoSzCh+KTYmsaFmUzfIc=
X-Google-Smtp-Source: APiQypKbIFfpHEXzOX2dxSQf2ILcVnLcCfpVuwsgYdFPltw0zUwaBesFmNJeGmcaPY8Ao/9oH4A2Zgt2d21nG0O6IDg=
X-Received: by 2002:aca:f541:: with SMTP id t62mr1538425oih.148.1588251552921; 
 Thu, 30 Apr 2020 05:59:12 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 14:59:01 +0200
Message-ID: <CAMuHMdWm25oGgwkA-nP5oRic9Gi1fZaZEx35Egj6-5254K89Mw@mail.gmail.com>
Subject: Re: [PATCH 03/18] ARM: multi_v7_defconfig: Enable r8a7742 SoC
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_055913_610203_D7D9939C 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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

On Wed, Apr 29, 2020 at 11:57 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> Enable recently added r8a7742 (RZ/G1H) SoC.
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
