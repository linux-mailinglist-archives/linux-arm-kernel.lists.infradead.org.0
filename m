Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464E81C0F7D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 10:28:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Lh2VjJ+9NhtWO2wjPtR+vV39MSlHnQjhWwFcldf+3s=; b=C79AXGMzlekJ5T
	TslAcr03hhrhi6xTgcHGj1jeUFUxHAPsi8uWnD2+5QkQDxSAqg9QXSmYJrO/ia1mn5ITQylqTmR+i
	nCdZDbO9J5FTYsR4ZRIjDbKO4GxPzvCDRZC9Dp7WcGeTXh8TaLD0sUg5rsepjB1r/kjAuHgQvVQH0
	LM4ZERNk2oB9QZ43rhnXpwIXNqRUHzhMzUeZBHjJuUXNIbtC7tzm6cxPOjRlFlhDfJ01ZBxil/vzl
	7yaGjxKoTV3SGyZtSDSjVWDyfSwnbRC7643YGFn8tzO5QQvaO2cA2Vq0gP98dSZxGxiwh557cXU4n
	MSVnPW1cuAQopDy121VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUR1n-000416-D9; Fri, 01 May 2020 08:28:11 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUR1g-00040O-Tk
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 08:28:06 +0000
Received: by mail-oi1-x243.google.com with SMTP id j16so2124868oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 01:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iIaRGYpAPupU8ap77mm0+hl9zSz1kLjaWyzfce1Qs3Y=;
 b=kitVDdx/L3DP0PkMGe4nbAT/OeUb9rxLisr3H1naWl4uvidfeWv+LsXSQEgmmyc0X/
 iLi76W4bs3UsILqhkHUgncUHqEUqeBZ807rF4XZtjj2UQ67sZ4mxfq8Rz5lTBq2RNN+v
 9/S7EJEZh7aqpKGRbqGY8MNKVZ1kFzS8Qyhlb5ZJs4YPTpvsgZQEVgDc8FP/aj/kr24B
 mD/lDEQb5IO+ZfE5flM5Fs50UniK7R/Y60Rs+7W7iMXftdnv38rWWXkWJdLnEIk81P8R
 YBN1wqcVZHOU0FJbuDxdB/nALwtchR1n48YTjEaft/fGl60RWwSo7g9wzWS58jpzwAKS
 vXIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iIaRGYpAPupU8ap77mm0+hl9zSz1kLjaWyzfce1Qs3Y=;
 b=P/FQbnA0L/9gcIwPg4zPXcGeRkFAtEWdtfioxRXGizvstRUgj//Q1ot79zdd7VFGXd
 ZfZJjfnhTwwvLS23jm4qW6HVauoeDe77Xp1dJRIBXrVJdVLt3rGKSTmNw8BkCeo9nhMa
 /oJUM0sw+vRjTn91k4R5AziDJnrc/nQhN1eMdp9NM2p4TxFa94uMbNu+y0FfeOyZM62N
 QOlUCyFXky7gazNXerZSHH9sxhJ2lq3y75V06uKpM9JmKIb/1sX+uNS2fbOc7qhIOVKw
 QhwxiOmcUFnzjRR2BAxGxjAMOeW+XlzzGKjrZblFvoB4knB2/BlepP0vhvnc2hb+Wx6D
 KECw==
X-Gm-Message-State: AGi0PuZRHcc35SeRp8jS9EpA5MueaF/ncp00TNSk3j7dv2cTQHaWuGr/
 Ee8wavRvOomP85CapmnesoB0D/hsp85kQmp2+/k=
X-Google-Smtp-Source: APiQypK7F/qXasasin7MAQYiif3YYm7Zv+A3AA59LZg9zaayKtl+Wh4ZN+37kvvRqqUEkgvPlkOR6eZ2Unj/057MAYA=
X-Received: by 2002:a05:6808:5c5:: with SMTP id d5mr2347754oij.8.1588321684000; 
 Fri, 01 May 2020 01:28:04 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 1 May 2020 09:27:37 +0100
Message-ID: <CA+V-a8sudn9kNs0QKQP9L_GL2wo1mifjRLcbA6sYjryD9cfZMw@mail.gmail.com>
Subject: Re: [PATCH 00/18] Add R8A7742/RZG1H board support
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_012804_982601_F85B466D 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
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
 Rob Herring <robh+dt@kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dmaengine <dmaengine@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

On Wed, Apr 29, 2020 at 10:57 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
>
> Hi All,
>
> This patch set adds initial board support for R8A7742 SoC,
> enabling R8A7742 arch in defconfigs with initial dtsi.
>
> Cheers,
> --Prabhakar
>
> Lad Prabhakar (18):
>   soc: renesas: Add Renesas R8A7742 config option
>   ARM: shmobile: defconfig: Enable r8a7742 SoC
>   ARM: multi_v7_defconfig: Enable r8a7742 SoC
>   ARM: debug-ll: Add support for r8a7742
>   dt-bindings: pinctrl: sh-pfc: Document r8a7742 PFC support
>   pinctrl: sh-pfc: r8a7790: Add r8a7742 PFC support
>   ARM: dts: r8a7742: Initial SoC device tree
>   dt-bindings: irqchip: renesas-irqc: Document r8a7742 bindings
>   ARM: dts: r8a7742: Add IRQC support
>   dt-bindings: rcar-dmac: Document r8a7742 support
>   ARM: dts: r8a7742: Add SYS-DMAC support
>   dt-bindings: serial: renesas,scif: Document r8a7742 bindings
>   dt-bindings: serial: renesas,scifa: Document r8a7742 bindings
>   dt-bindings: serial: renesas,scifb: Document r8a7742 bindings
>   dt-bindings: serial: renesas,hscif: Document r8a7742 bindings
>   ARM: dts: r8a7742: Add [H]SCIF{A|B} support
>   dt-bindings: gpio: rcar: Add r8a7742 (RZ/G1H) support
>   ARM: dts: r8a7742: Add GPIO support
>
Thank you for the review.

For v2 ill post patches from 6-18 fixing your review comments and
including the Acks, as patches 1-5 have been queued.

Cheers,
--Prabhakar

>  .../devicetree/bindings/dma/renesas,rcar-dmac.txt  |   1 +
>  .../devicetree/bindings/gpio/renesas,gpio-rcar.txt |   1 +
>  .../interrupt-controller/renesas,irqc.yaml         |   1 +
>  .../bindings/pinctrl/renesas,pfc-pinctrl.txt       |   1 +
>  .../devicetree/bindings/serial/renesas,hscif.yaml  |   1 +
>  .../devicetree/bindings/serial/renesas,scif.yaml   |   1 +
>  .../devicetree/bindings/serial/renesas,scifa.yaml  |   1 +
>  .../devicetree/bindings/serial/renesas,scifb.yaml  |   1 +
>  arch/arm/Kconfig.debug                             |  10 +
>  arch/arm/boot/dts/r8a7742.dtsi                     | 939 +++++++++++++++++++++
>  arch/arm/configs/multi_v7_defconfig                |   1 +
>  arch/arm/configs/shmobile_defconfig                |   1 +
>  drivers/pinctrl/sh-pfc/Kconfig                     |   4 +
>  drivers/pinctrl/sh-pfc/Makefile                    |   1 +
>  drivers/pinctrl/sh-pfc/core.c                      |   6 +
>  drivers/pinctrl/sh-pfc/pfc-r8a7790.c               |  24 +
>  drivers/pinctrl/sh-pfc/sh_pfc.h                    |   1 +
>  drivers/soc/renesas/Kconfig                        |   7 +
>  18 files changed, 1002 insertions(+)
>  create mode 100644 arch/arm/boot/dts/r8a7742.dtsi
>
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
