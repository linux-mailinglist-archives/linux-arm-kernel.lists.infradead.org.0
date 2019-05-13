Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF28D1B0C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 09:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODqvfg5OLj18xWnTYjY0/2lkRuQeGY91Jk8/gnn6UJ0=; b=EWbUGoFgolIARJ
	/JfUKT+/QYE+ylEXyA5Hx1dhTHKteMf9X7vEWVW9Ml6T6d/UAWIAtZQbTAGO5REcLidnuMbYo+1c9
	av3olKDdFOxl0ek2IQBJsD7B9qHm88/FJFiLBFiJBOjmGjO1CCeB9yqbYC5+WIvj36j+5AmhUeW+3
	rNdIiIOdaclSpKwzlg3vDE/fbHMdPwombdr/Cvm1WjLgkaPvchiDTH7fCdGDJTTjo66PcO/76/IZO
	c2L0wQqXJMwl9grNz/adKRBTZ+r9lvYSiNMaMxnqIa1gTreulaolvL1fr8fytO6jb7Vq/BXg+5oPk
	lV3haj2txZh21nvKwQHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ523-0008QC-Mq; Mon, 13 May 2019 07:05:55 +0000
Received: from mail-vs1-f68.google.com ([209.85.217.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ51H-0008Ma-5n
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 07:05:09 +0000
Received: by mail-vs1-f68.google.com with SMTP id o5so1062840vsq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 00:05:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4gXmxzF/Po14uQPLggz4c13bFBQQgBSLY5M86BA4rHg=;
 b=mZkQfypqhFJStw1hkSPEg/Imr4DOptQXO/C7/QI/GiNLCL4+I1lsOjRS/AhnPHQvM2
 5IiNJim1ITKB7wWFvzWRBhHOVK4fcrq+nk1fyuUYZ19749SVS6isFg/VAjm9JTWej6eN
 HNtf9KVLZDa3c+nCAeKUNf3x1J2KFpt1H+khMi8G4movg/GfFf3mTHF2nbx4XHWGncJY
 MR3K5YQVNIEymwbY2mML9j3VigVhA82VRdEadsGeQbpe2fTkj1quzywXHx2VYC1TsOo4
 Kiu4ngcbnI7ppGwDFuh6rYta/cAZfhl1ZLyATfKZ7elMLs1hbY8AkPF3uy4t/V0M7DYp
 iYhQ==
X-Gm-Message-State: APjAAAWfpSVZOpfS/7aDxNKUSnd2bhSGmsAQvfSrJZsrhLrt5F76pLKn
 2sLLSz2xYas6s6rE9H3iCwudA14n130gS1PnU2s=
X-Google-Smtp-Source: APXvYqxgfS2ynbKs1o+2aZa8e7ecnAhyI2eO9iqCen14keAf7VzmDKsxF/OAPpOIAq4KuP9J+HPN5ZGt1iA/54SjGCc=
X-Received: by 2002:a67:fdd4:: with SMTP id l20mr8909563vsq.63.1557731105926; 
 Mon, 13 May 2019 00:05:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190505180646.1442-2-radu_nicolae.pirea@upb.ro>
 <20190508090857.B7CB344003F@finisterre.sirena.org.uk>
 <20190508105105.GN3995@dell> <20190512075223.GF21483@sirena.org.uk>
In-Reply-To: <20190512075223.GF21483@sirena.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 13 May 2019 09:04:54 +0200
Message-ID: <CAMuHMdUOwff68bSjvG3vo5+HUjtRCNXLbAiUc7et4m+yfSCoFA@mail.gmail.com>
Subject: Re: Applied "dt-bindings: mfd: atmel-usart: add DMA bindings for
 USART in SPI mode" to the spi tree
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_000507_592416_4E8247BB 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Richard Genoud <richard.genoud@gmail.com>,
 Radu Pirea <radu_nicolae.pirea@upb.ro>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On Sun, May 12, 2019 at 7:05 PM Mark Brown <broonie@kernel.org> wrote:
> On Wed, May 08, 2019 at 11:51:05AM +0100, Lee Jones wrote:
> > > Signed-off-by: Mark Brown <broonie@kernel.org>
> > > ---
> > >  .../devicetree/bindings/mfd/atmel-usart.txt   | 20 ++++++++++++++-----
>
> > Interesting!
>
> For some reason the bindings for the SPI function got put in the MFD
> directory, dunno why.

Because this is a block that can do either SPI or USART, hence MFD?

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
