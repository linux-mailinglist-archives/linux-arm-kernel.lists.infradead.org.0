Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F4D1BF8A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 14:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxIYB1hJMuuexbznAIpGRfhoQ3KhTmdzMeHWo5JzR2I=; b=sBfGaaHKPn3Rgb
	TvB2WkCY/vXIuBj9wp5DGEMpYcizfSoKhvkcZQ5pFqdtARkQkSuEsPaLnk3MFv3rOpHZHAvJwuO89
	grhHkl/jm0byThLP7q9jqQDhg/e8cuSzTrsQvDU+eD1nytIEi9cuPaP0KPkcoLbEjD/c6geGT9BSl
	+yRDYuMLdRK0Q7iwRkQFxrsl77cEA2j05dBMnak1Uao4vNLlk16ngtxLC/Va13JQe7dAWIsg3STZL
	/Fir6uE/jt/aDi4GygMm261tfQFymVk33dwf9op14zlhAKhcxqhShObH0IJh7JED3QBjZrOlH9aM9
	cHPrfw+bhOMcgAfD4kbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU8mB-0000Zz-Iy; Thu, 30 Apr 2020 12:58:51 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU8lz-0000YO-VH
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 12:58:42 +0000
Received: by mail-ot1-f67.google.com with SMTP id c3so4779928otp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 05:58:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lFd0mFF+Oi7oyBZIDq8g60aiuPWlTPswKEMj2mCEslc=;
 b=n3iRy/0RqQnXakLGbw3TfOZXIH3grd5wMTv6F9gyccSJMy+C04W+etQ8AHan5TBN6r
 QlVGdP949/VWbnEKV8hVMuMK96URy++d8btUvqCIut/rRQS+E+fMyoan0DfdfR85D1CL
 RLMOvHDYfxykNhM0Z+X525HTOM+EZlq9FCv5XgdLBVVYnTHq7XNda3jKGa2WZka2992c
 wYj43QjSK2QJi8lsint7xY6IHBE2l6U9ogoItLi/UO2C/s3B82HE1bK9TqdCUEUJswuo
 KkD1MeluXUxHK8BbSSpRBqqhtD4FU0YGNSpW0uheyWBxoupnpVuMIVmp77DuvL6axgbT
 ljbQ==
X-Gm-Message-State: AGi0PuY5PeZaNwdMOrHbIaUcEYoxZpKRMii0z8G8WghRv0/Gm60xViZs
 mE/dme1RqIDUVCOM9J3Vn1lc8IrMehe5UNOm2Z4=
X-Google-Smtp-Source: APiQypL1QUWjengM4Z3jBYWUfcWFClwy5vxn0vgax8kCZQ47In29GZsjXT7y/L+Zq7rD04amU+ljAIcAVBvTfNyOgXU=
X-Received: by 2002:a9d:7d85:: with SMTP id j5mr2222464otn.107.1588251517540; 
 Thu, 30 Apr 2020 05:58:37 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 14:58:26 +0200
Message-ID: <CAMuHMdXNqqBjqBCYE=2agSaH8E4AyW4ML+0H5-+5QWhXKsO8+g@mail.gmail.com>
Subject: Re: [PATCH 02/18] ARM: shmobile: defconfig: Enable r8a7742 SoC
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_055840_008639_6FEAB5E9 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
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
