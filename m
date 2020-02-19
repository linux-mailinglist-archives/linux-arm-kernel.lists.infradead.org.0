Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3493F16494D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:56:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ATo8jSllXh6T+sHGLoVg4Z37wyxoqfiFMNjkUp68ri8=; b=Yw4Ep5JmpDumLU
	ES33UK4LuA4fV53eD+4OLYOZAWMBRaIpeCRiHCI6j0WIiCcZPuQtwC/lfCXZQ8kb31PNQB8YoTZFk
	9PiR9BKGXNFgLkZOMhYFlT0kQI5noFHlEMYqYkVvq/3xx4ozvjhQRumoIpIynlmPOiAAnn1WRgYkN
	fBE4mY1NvEZVT+Rq7YcCRyY2LV1N1ShNxSDI4FcLRhiR9yEvOKlKhGZSbJFUulm90EQkK+fAV0xj2
	By6bebO1IXzIR/bDB5zkNOvKEyP4MatoypuMoW3jipF5bUGLRc0sDmD6A+dP+Qv7kU5bTBjSAhy97
	aDFFZTjMRRgCL0regHkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Rhs-00068D-VB; Wed, 19 Feb 2020 15:56:12 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Rhl-00067n-8I
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:56:06 +0000
Received: by mail-oi1-f193.google.com with SMTP id d62so24211431oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 07:56:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Bx6vzrqE5hplAO8MNZe9jieF7dCT8kB+q/3eDNnOWhg=;
 b=GW6aZcGpEqlbSYmsBbPZjOgj3PBM9YtygSu0c2LZafQYHxcWePvP+eKlr8sD+obj29
 iKBGxTPBsT5/Ao8TMdm+Ms7smI+/1FHQfGfFs7XV0bWs0oQnXbpmUU6Ho7xOxL2pbaM9
 ogCa38c1AsuJi8IEEtb0WK+cgKgMOROgTnrOsh5PIjFIkK/7wNuSlo5GAnnNvB8p1skf
 edDKl6o1qrfukEF/ya+3WgqsnwcK8mRb4V/uq1zxfkyKRvkrJ7X1zKstqmLTjzdET6X4
 QOiMyZQOlSfEaWvbTeLpvlDNe+liP4NmOYRkkKqGiFm5gnwBVgafuTiyctHtwjJd5Lvc
 luPQ==
X-Gm-Message-State: APjAAAWaGhkzGJ6bHxQRnt3I3NfJh60a5ztZH37EQ9zOkljl3A49fSch
 IMXM5eieEwry1Fzai1tOaxMD9QorZhuuerNcyns=
X-Google-Smtp-Source: APXvYqzx4VtaQt/IrxTLwnLVsaRZe3wNkoH7Wpfv3AakFcZdpIu7qv6v07N8aRpr6peCmj1s+B0Pgqyce7PVieucr8U=
X-Received: by 2002:aca:c4d2:: with SMTP id u201mr5138250oif.54.1582127763970; 
 Wed, 19 Feb 2020 07:56:03 -0800 (PST)
MIME-Version: 1.0
References: <20200218133019.22299-1-geert+renesas@glider.be>
 <20200218133019.22299-4-geert+renesas@glider.be>
 <20200219153339.GT5070@pendragon.ideasonboard.com>
In-Reply-To: <20200219153339.GT5070@pendragon.ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 19 Feb 2020 16:55:52 +0100
Message-ID: <CAMuHMdUjVqC=AsNjO1icMyNRrdeMVed_HxMzn6HY=fRt+LvUwQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: renesas: rcar-gen3: Add reset control
 properties for display
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_075605_293633_F361B910 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

On Wed, Feb 19, 2020 at 4:33 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Tue, Feb 18, 2020 at 02:30:18PM +0100, Geert Uytterhoeven wrote:
> > Add reset control properties to the device nodes for the Display Units
> > on all supported R-Car Gen3 SoCs.  Note that on these SoCs, there is
> > only a single reset for each pair of DU channels.
> >
> > The display nodes on R-Car V3M and V3H already had "resets" properties,
> > but lacked the corresponding "reset-names" properties.
> >
> > Join the clocks lines while at it, to increase uniformity.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

> > --- a/arch/arm64/boot/dts/renesas/r8a77965.dtsi
> > +++ b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
> > @@ -2503,10 +2503,11 @@
> >                       interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
> >                                    <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>,
> >                                    <GIC_SPI 270 IRQ_TYPE_LEVEL_HIGH>;
> > -                     clocks = <&cpg CPG_MOD 724>,
> > -                              <&cpg CPG_MOD 723>,
> > +                     clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>,
> >                                <&cpg CPG_MOD 721>;
> >                       clock-names = "du.0", "du.1", "du.3";
> > +                     resets = <&cpg 724>, <&cpg 722>;
> > +                     reset-names = "du.0", "du.3";
>
> I wonder if this should be du.2, especially given that 722 corresponds
> to the non-existing DU2 channel. It's a bit of a mess at the hardware

Just following the bindings: "du.3" is the lowest channel that is affected
by the reset.

> level :-S

Note that supporting R-Car H3-N will make your^H^H^H^Hthe rcar-du device
driver writer's life even more miserable, as suddenly there is no longer
a DU2, while the single unified Display Unit node prevents the DTS
writer from not setting the DU2's status to "okay" in the board DTS
file. But you might look at the ports submode?

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
