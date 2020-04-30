Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA7A1BF911
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 15:17:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yb3jnaZ2ulqDkkNIrpZKDQYHMN65/EbNI1V2AXBVChE=; b=LwJdDFExzDxA7u
	ldZjnAJnqF/emVquc9CmgNdIwTta87vDwi5XMQmWCd8uHMccxqLw9zodthHcE2UIjOu6tGp6WdFcf
	I28gaXVUXOxMtem/Hw/vh2OdKoH3x1hP52efyw+01yY8l/lyF9qVRpQvgeQgR6DAgILzbEWLj3N3o
	K5TJK9zfLXKf2sHXt+fEcjBEVOwiiFqGmipXTECcmjdQw9mRFfeKYaUxZwFwRSePrxCEbP49lNRqu
	F2gb4nn7c0xfge0J8jsOg1rK7k4g4uvCkVo/wjHFtUgFkH7eqjCr7D0c0yAA4KgedDqS5k108gUuC
	PQ1BvlLTKgwDDXhB4T0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU949-0007BS-Hj; Thu, 30 Apr 2020 13:17:25 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU941-0007AJ-Pk
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 13:17:19 +0000
Received: by mail-ot1-f65.google.com with SMTP id z17so4844599oto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 06:17:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TYuSc1eBkZJQojwW+mycEWGyCJ0BWkp4Uav1Yp+waH4=;
 b=UKkz3hXOvubs8efOnSeXUWKXwGzFFkHjEzKi2xEUj8bTTPv3vYx6KBMAPAksvUuog9
 WaSN//vi+0Or7nen7uKuJKsSzYkhOh5oRbvFjbasaGUxHAc98SgHx4pVTCcGWumSMhZD
 Rqfb7/uoPDt6dOF+imAwsoBYSUWHKcxvyZkcfTD650vmrVzkWFkk9Pdpw0ag48FMwiVf
 RAejGOxVUfTTsfRSvzyyDk0HRDPHJEqPKzWSW9PkeNEXdqhxRQeQ6qQ90/K9hysgzxK/
 LSo1L5vXGyL1Yn4J9lXkLDqek7Pxx+AYsq1UK1kSeSodqlq+ACta9IzfFHYOcAoH0LDB
 205g==
X-Gm-Message-State: AGi0PuabUvIunUJCweSRsyceuXvYPQTssDqKffHb7SbJGTIur/i9pE6W
 rN8HdpyG28sMz9xHROpB7vHKeZyH+4Br4SeKAb0=
X-Google-Smtp-Source: APiQypIgBXU9BSTQiGJjGVpm37UKzZ3o3uIg7xCulwGQee8j0/6+X/C6FX1fA+tIeRv6xErPA9HMWzTT4VA6MAkCalo=
X-Received: by 2002:a9d:7d85:: with SMTP id j5mr2302946otn.107.1588252634888; 
 Thu, 30 Apr 2020 06:17:14 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-7-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-7-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 15:17:03 +0200
Message-ID: <CAMuHMdWNSgqfCd4ZGR4Y-9M_-nKH7nO9aNcQ9z-E97CB4E5Zbw@mail.gmail.com>
Subject: Re: [PATCH 06/18] pinctrl: sh-pfc: r8a7790: Add r8a7742 PFC support
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_061717_843190_9259192B 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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

Hi Prabhakar,

Thanks for your patch!

On Wed, Apr 29, 2020 at 11:58 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> Renesas RZ/G1H (R8A7742) is pin compatible with R-Car H2 (R8A7790).

but lacks several automotive-specific peripherals.
So please split the pinmux groups and functions in common and automotive
parts.  From a quick look, for now the latter is limited to MLB
groups/functions.

> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>

The rest looks good to me.

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
