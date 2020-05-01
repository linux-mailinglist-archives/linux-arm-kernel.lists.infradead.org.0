Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 234B31C0F45
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 10:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A0V0aMdNmbqnr9v14Qi747/bjeIZH87yZJGMHueTdAw=; b=aj7aGiQdoaBMOo
	vpcrSvUF4n05dWjxzm0SNzeyCfBl4PX02iyeZrFQH1ShCEvSMgOhpTJ/fiFZrsU4t9esFEKRyfI91
	t2MNcJGZZOLrvEyYCH68s9ywqUJ3n7n18Bcwm8JFnTd0jDr+APifuZpMHHTIE1dMfxJaZ4ghEqOpE
	MSxV5FISup0N1klNSWcSgkrx+zNaXvyVuAODhtiCl216jwQ4/qxJvqxwv1oDeTtxZyCrSe0ozhYTq
	tBYR1ouGmTMyKrPhbQU3XELupFGgfGs6j3ERWcdPtO7lHAeVA4sFNBawvRC0Ba2GpLwWyQ3ROpZpR
	XAvX9D6kxnNNQm1URPrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUQpk-0005QJ-3C; Fri, 01 May 2020 08:15:44 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUQpc-0005OZ-F8
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 08:15:37 +0000
Received: by mail-oi1-x242.google.com with SMTP id o24so2162112oic.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 01:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=67PD+4N6OTeLQfdVEtLP8JgZsz239nlSbqS4Vkr8Dyw=;
 b=kLDxDqPs9e69GaVMoTLIbt5TvwRXfennTnwhak3ZePa6Iw3AisJOdncZZtD5a3g+Iz
 YF/82TokyreEFFn60NinKIGrC0hy0MwKvtZHCwyFrC85V4U2jf51couuP4yBrXn/TQAF
 BLDeJG+s/qPBOdTUrh7x2jcV6xVGy1+FRUZAegp4jwA+7qmCYzGGJ8QUhZmEy9zXIWNo
 4ih3ouFd+mP1Pnx96vHgtEw/r/WzELYEDu6LsgVwa5zBqJ8pQ7R2iM4deN5x8o+RZIB7
 SHmgCDIJ9rKhPh32VzsySTwtLpGAnFTGMg9KICJnlJ2oJyqVxCkOIRyzEPpya8Ja6m5g
 TOMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=67PD+4N6OTeLQfdVEtLP8JgZsz239nlSbqS4Vkr8Dyw=;
 b=T4OoHYhT19qqbBUAKpjYgFXg6i47qR9Gtl+F73+5gk2M3TY2gv+1LM+2EKaoD+qI0c
 +Re6lU942p34og1xmNcpmRK3RB73G7JWaZ1UztasEhovE9JS6TRWDoaDFr29dTUE4r3p
 Tq8qAaUtZ/ecC8gCQw9QDsYcXZlwASLV3AR35qUIdsIcEz3Pae1HF+TeXGOZqZPbYqjN
 dFFFQHWMCnaML+cFv/Xb+0X+iYAfEdmo+JxgdhsfArPrPCzSxAokXL7R2Arq6kCuoLGi
 ehKUaw4LaPfWAp2Tg9GPtMnCvi3HRncbGXG0rVf1J6lKIHxJN/uaX0InVs7Uom7n4CIC
 J6AQ==
X-Gm-Message-State: AGi0PuawgIAmq3Bogtys0rYDLMTL1nty678+bxIhqTTHKbA/bLZrx/SV
 U4s7e/m96JGZf5PKQs3WBvLJLtQwcc6yK1Zd1zM=
X-Google-Smtp-Source: APiQypIgr6pyF8u5FiRXk8vY7iTPFETvjGXZfjd03HJ7Sse1ymzPq5v9ms+GEMVAq9d2o2xjZGdRdTbFSnFcUHZk+Yk=
X-Received: by 2002:aca:b783:: with SMTP id h125mr2296549oif.62.1588320931075; 
 Fri, 01 May 2020 01:15:31 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdU90pqCVd=jombH-JMomoCDe1tA8Lq=m0urACK67ZNYuw@mail.gmail.com>
In-Reply-To: <CAMuHMdU90pqCVd=jombH-JMomoCDe1tA8Lq=m0urACK67ZNYuw@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 1 May 2020 09:15:04 +0100
Message-ID: <CA+V-a8sMKWD_FMcEhm-gAOPx2Xdr-4wRdgaiumWLA4vRBUkMMg@mail.gmail.com>
Subject: Re: [PATCH 07/18] ARM: dts: r8a7742: Initial SoC device tree
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_011536_509304_6A4D1F24 
X-CRM114-Status: GOOD (  25.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dmaengine <dmaengine@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

Thank you for the review.

On Thu, Apr 30, 2020 at 2:49 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Prabhakar,
>
> Thanks for your patch!
>
> On Wed, Apr 29, 2020 at 11:58 PM Lad Prabhakar
> <prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> > Basic support for the RZ/G1H (R8A7742) SoC. Added placeholders
> > for the peripherals supported by the SoC which will be filled up
> > by incremental patches.
>
> Please remove the placeholders, as there is nothing that depends on their
> presence.
>
Sure will drop that.

> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>
>
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/r8a7742.dtsi
> > @@ -0,0 +1,715 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Device Tree Source for the r8a7742 SoC
> > + *
> > + * Copyright (C) 2020 Renesas Electronics Corp.
> > + */
> > +
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> > +#include <dt-bindings/clock/r8a7742-cpg-mssr.h>
> > +#include <dt-bindings/power/r8a7742-sysc.h>
> > +
> > +/ {
> > +       compatible = "renesas,r8a7742";
> > +       #address-cells = <2>;
> > +       #size-cells = <2>;
> > +
> > +       /*
> > +        * The external audio clocks are configured as 0 Hz fixed frequency
> > +        * clocks by default.
> > +        * Boards that provide audio clocks should override them.
> > +        */
> > +       audio_clk_a: audio_clk_a {
> > +               compatible = "fixed-clock";
> > +               #clock-cells = <0>;
> > +               clock-frequency = <0>;
> > +       };
> > +
> > +       audio_clk_b: audio_clk_b {
> > +               compatible = "fixed-clock";
> > +               #clock-cells = <0>;
> > +               clock-frequency = <0>;
> > +       };
> > +
> > +       audio_clk_c: audio_clk_c {
> > +               compatible = "fixed-clock";
> > +               #clock-cells = <0>;
> > +               clock-frequency = <0>;
> > +       };
> > +
> > +       /* External CAN clock */
> > +       can_clk: can {
> > +               compatible = "fixed-clock";
> > +               #clock-cells = <0>;
> > +               /* This value must be overridden by the board. */
> > +               clock-frequency = <0>;
> > +       };
>
> Please drop the audio and CAN clocks for now, as they are not used.
>
OK.

> > +       /* External root clock */
> > +       extal_clk: extal {
> > +               compatible = "fixed-clock";
> > +               #clock-cells = <0>;
> > +               /* This value must be overridden by the board. */
> > +               clock-frequency = <0>;
> > +       };
> > +
> > +       /* External PCIe clock - can be overridden by the board */
> > +       pcie_bus_clk: pcie_bus {
> > +               compatible = "fixed-clock";
> > +               #clock-cells = <0>;
> > +               clock-frequency = <0>;
> > +       };
>
> Please drop the PCI clock for now, as it is not used.
>
OK

> > +
> > +       /* External SCIF clock */
> > +       scif_clk: scif {
> > +               compatible = "fixed-clock";
> > +               #clock-cells = <0>;
> > +               /* This value must be overridden by the board. */
> > +               clock-frequency = <0>;
> > +       };
>
> This should be used (see below).
>
> > +
> > +       /* External USB clock - can be overridden by the board */
> > +       usb_extal_clk: usb_extal {
> > +               compatible = "fixed-clock";
> > +               #clock-cells = <0>;
> > +               clock-frequency = <48000000>;
> > +       };
> > +
> > +       cpus {
>
> Please sort nodes by unit-address (if present) per type, or alphabetically.
>
Sure will take care of it.

> > +       soc {
>
> > +               scifa2: serial@e6c60000 {
> > +                       reg = <0 0xe6c60000 0 0x40>;
> > +                       /* placeholder */
> > +               };
>
> I prefer to see a real node for the serial console, so the system can at
> least be boot tested to a console prompt.
> Note that this requires adding a minimal board DTS, too.
>
OK so in that case Ill enable scifa2 and SDHI interface so it can be bootable.

Cheers,
--Prabhakar

> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
