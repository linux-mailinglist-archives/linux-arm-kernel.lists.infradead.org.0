Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE53B1CF80D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:56:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yqok27/dnOafpBuUl/IfRdIXEoYEVNvu6+Ds6qYm4/k=; b=jx6s2xSl3PXMhl
	qouEhxg+Fbv9Xg/WuLo1iCLyfFuuaD4Y0HSaGO8MZ7bc8+hTRjQ386uEZI7BkSv0MZ7OqUmGATi6K
	m8a7voGilZ4ZGLD8eDGx50ur+NSImZmaSvGSj30LqZlD9sePBOjIEvQkXNKIrfD/vZnZqRp+aWrRP
	4kM3A5/xROGXcXKAnl2+Yjs5Er6+KVL8M7sOjzQIGoRfmE3vFDCBxT1l+J10Gj69XlfzD5RRTeuOd
	pL4WBFyTBK5VDXRPvCLUq34OvRUOsjmi90k6tTo2PdM6akK09qQtFwW1I5hhgaiSERjjZRxULoRfn
	PhNKjctpBzAYOYskJiIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYWKY-0005AN-3T; Tue, 12 May 2020 14:56:26 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYWKM-00059M-W2
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:56:16 +0000
Received: by mail-oi1-f194.google.com with SMTP id k133so18260149oih.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 07:56:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a/N06xotf8iar1D4UgdTjomlZyumlZDa21O+nxsz7Gs=;
 b=oqNLpDqFd6wfIl0Pkfw+JYfrbSmBxykIy2w40nx97aGQxQR8PLwgu90yMfLNqepVoe
 /3qa/WPuoyTSGbUvqU1vXAW06IvPtWi+E1evju4w/kTWAnalPI4AO+xk58tEI3AtrPfY
 nQEMzPqez5Q95ZzQRR1pjr664Z0MBvHAzDkhOTP7PcN2PZQBFBntrrnmUFLI+Rz4adL8
 i9z/iLGRyAsLRUz2uqkzq8pI4sCujhn0lTYq+EXzjJt8iOYZEcOBZ19XmxelgYZA6UvG
 tZnbupwnBavNpD3E/8NhtZ8b/rsSXqN1Q4228+8k7kx2Hid1DYI3mB9+T7d3GblCATF1
 aWgA==
X-Gm-Message-State: AGi0Pua9XIivNOq3luAXlyl8ZJHoD3wZ9iYLKYBa0oxP5R7U1BmvwIuF
 re3olL4xXoP+EK0T9AblZ3MXdcU/K1MH0vdiuvk=
X-Google-Smtp-Source: APiQypLPHII6upk6iNYoZD9pYfWhiPJxDNt/TH7BuAvFbVXWIAt/4KdUs8x3tA8y610NHj/T3IkbGJwtxVll7YHTVaA=
X-Received: by 2002:aca:d50f:: with SMTP id m15mr23734306oig.54.1589295373790; 
 Tue, 12 May 2020 07:56:13 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-18-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200512145256.GA25121@bogus>
In-Reply-To: <20200512145256.GA25121@bogus>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 12 May 2020 16:56:01 +0200
Message-ID: <CAMuHMdXzeJdBqjshm5eEqTF05GZC1HS02=oJ2VG+B0r16=gkeQ@mail.gmail.com>
Subject: Re: [PATCH 17/18] dt-bindings: gpio: rcar: Add r8a7742 (RZ/G1H)
 support
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_075615_032915_6D5C6CF0 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dmaengine <dmaengine@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Tue, May 12, 2020 at 4:53 PM Rob Herring <robh@kernel.org> wrote:
> On Wed, 29 Apr 2020 22:56:54 +0100, Lad Prabhakar wrote:
> > Renesas RZ/G1H (R8A7742) SoC GPIO blocks are identical to the R-Car Gen2
> > family. Add support for its GPIO controllers.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>
>
> Acked-by: Rob Herring <robh@kernel.org>

Note that you've just applied 7f7d408e5a00d515 ("dt-bindings: gpio: rcar:
Convert to json-schema"), so this no longer applies.

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
