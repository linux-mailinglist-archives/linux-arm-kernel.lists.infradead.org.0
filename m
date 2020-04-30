Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7AA1BF9F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 15:49:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2mRAjKrrm3KnG02IErdpFM94erJ5t7CV4ZGlX8/F4b0=; b=mleFCWyGLLv3ib
	2E7De09ml7SvPO4x+i4Zkol/JFThq7g3l8ELV6Mv0oqbGW0eUQFDW4tgogoBe+dy/JuiQ3liqR+yh
	BonYEHC9BAiwFAwlrLaoCeOeYNxl2OFAKxUjamnZ1Wn8VLC6Vn3YbToapmIqqZsmaVcCVO3IBFoLi
	J9Zj/YwSlOIicGvYEOI4FSntRfJhXtPndzIso+bRMQoD37wQn1PAIE/xF7qbHPkCB/IOGP27C89IH
	MagTyagyNjf641uCufbIRDttOFmif2x/Z0gkmvSF/ClkXbSfaQ96e+ynh37Etg9ocBcS7KsQgauZa
	ozajJSrixa5UoUn60aeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9ZR-0005M4-JI; Thu, 30 Apr 2020 13:49:45 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9ZC-0005Jk-9X
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 13:49:31 +0000
Received: by mail-oi1-f194.google.com with SMTP id j16so5233315oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 06:49:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rjrzO+MFhCxKv5bAtNJEkkZ3+0bygxPZ8Xsyxb6NgPo=;
 b=GpdcYUT/ueM6FxeKLnHsZPXkicpceqszn6rTY/yJWD6Ls/D2flAb3bUJ/UhthXRz3K
 0etBN8UKsDgYmo4fUTCQ3UrQS5L3ZZ/MaZR07CWeXhniwEAlobTOhdUUxHhMhr9g2q4z
 +qr0zK7OLl1axXONs9MLpPcGIlxZYwstGVVk0ljnUUAGyO//PCyCnDtGn6/kOPensGST
 3cZQt4cPYYe0Suv4yqRBICVV/lhgNZYKF4CJgR5JWWk6r8iox8MjtAfSnmFr0z0F4Nif
 cEFF/emnDEingDdt8aFnBVuQbvv4pT3yNjKARBy1Mha3vYQBhMf9PonNVdDWUozout99
 tAYA==
X-Gm-Message-State: AGi0PuYBWI07wRSQqqMqa39EVpWGXxqfL0JD4uBCJAmU73IGiu3rGMZy
 rWugusbVCDUcCWldI8co/G37DfMwrnCaWAhYSJw=
X-Google-Smtp-Source: APiQypLKYEdDONP0TBzThQv78/9Ygy1b6alSM4Yc0B+LRdJxCQZdxj0F0voJal5X/EWZDKQ3nzYUXD+H8+a8j7LvATM=
X-Received: by 2002:aca:d50f:: with SMTP id m15mr1837989oig.54.1588254569157; 
 Thu, 30 Apr 2020 06:49:29 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 15:49:17 +0200
Message-ID: <CAMuHMdU90pqCVd=jombH-JMomoCDe1tA8Lq=m0urACK67ZNYuw@mail.gmail.com>
Subject: Re: [PATCH 07/18] ARM: dts: r8a7742: Initial SoC device tree
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_064930_336971_8D640C80 
X-CRM114-Status: GOOD (  19.76  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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

Hi Prabhakar,

Thanks for your patch!

On Wed, Apr 29, 2020 at 11:58 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> Basic support for the RZ/G1H (R8A7742) SoC. Added placeholders
> for the peripherals supported by the SoC which will be filled up
> by incremental patches.

Please remove the placeholders, as there is nothing that depends on their
presence.

> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>

> --- /dev/null
> +++ b/arch/arm/boot/dts/r8a7742.dtsi
> @@ -0,0 +1,715 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Device Tree Source for the r8a7742 SoC
> + *
> + * Copyright (C) 2020 Renesas Electronics Corp.
> + */
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/clock/r8a7742-cpg-mssr.h>
> +#include <dt-bindings/power/r8a7742-sysc.h>
> +
> +/ {
> +       compatible = "renesas,r8a7742";
> +       #address-cells = <2>;
> +       #size-cells = <2>;
> +
> +       /*
> +        * The external audio clocks are configured as 0 Hz fixed frequency
> +        * clocks by default.
> +        * Boards that provide audio clocks should override them.
> +        */
> +       audio_clk_a: audio_clk_a {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency = <0>;
> +       };
> +
> +       audio_clk_b: audio_clk_b {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency = <0>;
> +       };
> +
> +       audio_clk_c: audio_clk_c {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency = <0>;
> +       };
> +
> +       /* External CAN clock */
> +       can_clk: can {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               /* This value must be overridden by the board. */
> +               clock-frequency = <0>;
> +       };

Please drop the audio and CAN clocks for now, as they are not used.

> +       /* External root clock */
> +       extal_clk: extal {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               /* This value must be overridden by the board. */
> +               clock-frequency = <0>;
> +       };
> +
> +       /* External PCIe clock - can be overridden by the board */
> +       pcie_bus_clk: pcie_bus {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency = <0>;
> +       };

Please drop the PCI clock for now, as it is not used.

> +
> +       /* External SCIF clock */
> +       scif_clk: scif {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               /* This value must be overridden by the board. */
> +               clock-frequency = <0>;
> +       };

This should be used (see below).

> +
> +       /* External USB clock - can be overridden by the board */
> +       usb_extal_clk: usb_extal {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency = <48000000>;
> +       };
> +
> +       cpus {

Please sort nodes by unit-address (if present) per type, or alphabetically.

> +       soc {

> +               scifa2: serial@e6c60000 {
> +                       reg = <0 0xe6c60000 0 0x40>;
> +                       /* placeholder */
> +               };

I prefer to see a real node for the serial console, so the system can at
least be boot tested to a console prompt.
Note that this requires adding a minimal board DTS, too.

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
