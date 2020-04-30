Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 010C21BFE3D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:29:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5w6ENp7oxJffVuODcdwhac4eUC94dbAEoK8LqgL/4w=; b=oiT8t9brrJtTdo
	+cI01VTesH0PajuZ/tzavGkJtaKQpJisOAG0NDChpg3ImVyzAsvv41NlBmoD8A0XLmLvoJBiFhNCW
	/chZBkhvXYBZWjJIJ5jkl1AGEAXLY0f+WDG2bIswXJHY+zTZfhPviK4EonpfHSYi43BTErOJ8zl36
	AigNRnv2mGKKfLMMyrLxYQrRoxVRn04OZu7pyGmiNowoailBigfffdkZUxN8mQbslKEmlQ/DjqFvW
	0eQMeRNlfUhtdvr6pahfCiheAAVupWgIQem68Z/w0f0EE1GeAB8eK/aLX/W3trmRkCS0tYwzhImod
	+oNdtCAQrcfWdjH/t3vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUABV-000087-W0; Thu, 30 Apr 2020 14:29:06 +0000
Received: from mail-qv1-f65.google.com ([209.85.219.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUABK-00006f-Jl
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:28:55 +0000
Received: by mail-qv1-f65.google.com with SMTP id h6so3058142qvz.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:28:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vVWzBYKJUQDuVX/btoJY+6LYMrXr1RGguk9M1fRb2Gk=;
 b=P2yDBr+95x0XPZuZiB3TyoJxDnNTuUBjHqA5UwzAWkS2u0hbfafXptqj8WLF6okB7P
 wb/DByPHC51H3xf4p3pdOpPBNusRq2rTA72odVXh2x7NO40XZraAQFywVOP8zLksWM+w
 f1lDgfNJeMA+XT2vz1WN2IaePsNMUxbO7imWMrD/+TuCju+8YNmeJD4uUx8bDDpsgoB3
 05Hr+XtSd7diY0eq0f6H/VpveBJKN2vbyMIW4em3sYolPiS0iv23ILqOuTgb3LK2/Gtg
 mytCgeM1RMLIW+uej17I8Nr1c+1k3j6er1huzI9A9Dptm85ZBi+jycgvS5CBdFRmODaR
 E08g==
X-Gm-Message-State: AGi0PuaKiP6T24oHz+j+kNK9tIakWnNJPPpJFQ0iHokV6MvxodvrpvOw
 nkmUDw/94Q+dS9cmFtUaJgJiOqGApxp8AVA4y0vNhHQ3
X-Google-Smtp-Source: APiQypJRTf/ui9dNutw4tN535a/lPdlLEOpjjfiChGE7kI685qtINjYPuVWS/8HbqUbbyS9WsJPmByFOcVrXUvlv1Rk=
X-Received: by 2002:a0c:ec8f:: with SMTP id u15mr3355852qvo.102.1588256932282; 
 Thu, 30 Apr 2020 07:28:52 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-18-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-18-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 16:28:40 +0200
Message-ID: <CAMuHMdXrX-Crdgjx31LzYpGabfMcZ6GcVQuUFo64Dxd3y3orgg@mail.gmail.com>
Subject: Re: [PATCH 17/18] dt-bindings: gpio: rcar: Add r8a7742 (RZ/G1H)
 support
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_072854_651840_8742E170 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.65 listed in wl.mailspike.net]
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

On Wed, Apr 29, 2020 at 11:59 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> Renesas RZ/G1H (R8A7742) SoC GPIO blocks are identical to the R-Car Gen2
> family. Add support for its GPIO controllers.
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
