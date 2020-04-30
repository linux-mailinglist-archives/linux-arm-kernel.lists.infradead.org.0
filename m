Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6ADC1BFC03
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yydVTgCOK5d0MutPd2loZEt9rRDS7jZ4KRm/S/ynMII=; b=h74yE/tsaE4Vo6
	dfUbzPVlTwRMFZtwcwZf/n93aARlkEOC5dvLcVvaG2U/8nHHURXq+sqeFYP/7TERR2KMoZWPBhEIP
	rdkR5z/4R9cwG9OaCx9llwRgjlhTd7VXy3A4hf9IGkzbaijukY7g4oiqdWMNfJ/PeL9FxBVL//IVS
	3ODbixCJwaQkcvrJBVNjUsckowzTcXcbcGnGyEHcTw32hGAZhg0vtaU+Pe9mJfec3Ifg88frgUj1T
	4JbPTNJBId3Ryi5x+o4vzbZYx8LNgSTz8cpzvt2OrkcV9p9tqzNySuLTRGk51N3nD2y6YvlNr9oPj
	Ji/HHWo6AYYzDcZ8PlxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9mr-0005XN-MS; Thu, 30 Apr 2020 14:03:37 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9ma-0005Vh-RW
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:03:22 +0000
Received: by mail-ot1-f66.google.com with SMTP id e20so4929777otk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:03:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Kz7Wj6UlhUtYyAjOVoDBpABEhXzAY8F1XL3/Z2xqUzA=;
 b=BwH6MCBCdiPvIN8AJwzJaB23STk4cr0D28cZD2fwJivsbBNn/eY1CKspIjuyaiGm+x
 efO+mHY9zI6yc3vbbWZ+wDtEFu0chZGTEWm+KXjXqKYysTTXq+UwDAQPcP9+SMpNE250
 /CI7O8kAJnkY25DbtxJME2oUt6VOWqr52hJy06wPGoVM0ba+2HLXylL9QjnAueFJng5R
 BYiDXIUphX8Tx6j60a0XTdUpgz/PrFMkUkhdT5iJT3iQxd/nbD3rt2TP0bJlsSsaARft
 aCfb692qRqPx92jKA11B5ari6jrcLiL6EMpqDe6MZCvC6c8HtvNMkF0r/RYlUchparwg
 2pnw==
X-Gm-Message-State: AGi0PubBBUe7fSGMmsEbyz6Kqn2+/5MYuhFKloRuu9A/1XWYOOI0eYBr
 I1jE4/iuP8c4+PKwH8O+czkNKx9wSAg0/V79jzU=
X-Google-Smtp-Source: APiQypKwUUCVBWIBcqOPUBZmRRdT7JXpn2BYbxbHqquKVj0D5RpVp1Oagg3I9RqW87RaXrHEMn4Krxr5O0GVmmhdSMo=
X-Received: by 2002:a9d:7d85:: with SMTP id j5mr2469309otn.107.1588255399560; 
 Thu, 30 Apr 2020 07:03:19 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-15-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-15-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 16:03:08 +0200
Message-ID: <CAMuHMdU=_yAxxc7vLzRC5576TTjwjZta=fBgWQ5gmDX5rfRkVA@mail.gmail.com>
Subject: Re: [PATCH 14/18] dt-bindings: serial: renesas,scifb: Document
 r8a7742 bindings
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_070320_883533_87FF9A22 
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
> RZ/G1H (R8A7742) SoC also has the R-Car gen2 compatible SCIFB ports,
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
