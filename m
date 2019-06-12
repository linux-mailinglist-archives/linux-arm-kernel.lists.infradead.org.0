Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2AA41DDE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxcuDZ244X+m/wV0h0JUXv3LUJbE184E1hWpMBROdVY=; b=Oe0ojODXsRNkBv
	C7Xwph4CNaBribmqQpCv02MZU5zSthIgSFOAwtVsIkXlhA1+pOONsXUIsW5jIM0fjJRrCY5aWZHHX
	BflPfhU6t/3v4uQ/pSN9UIokP1EFfpf/Q8wElyB8gOYLLVO40Fxt/epou6TpcxwzPPBud33Dh7GMg
	+c5jX1XPlwjjFGF8p94kA5blJBwr4ziyV9B507WTrXwU9wRtojAXHQ/6ElmX4DnXCrSdgeyJIzGxA
	c7K/AJQUBj4MyC9hX27yJrswzeWmchBfm79cyuvVkXNPSVaeRr3QZK1JP/MCiIMWWqeCEQrdD0nf1
	iw3irWI70Vm90zCXzSog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haxpL-0005S1-8q; Wed, 12 Jun 2019 07:37:47 +0000
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haxp5-0005Rg-8F
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:37:32 +0000
Received: by mail-lf1-f65.google.com with SMTP id u10so11252745lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 00:37:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tLGWOKEe6QM5UY+pbGi3iUeKzW8p++aAOpZGDFj/kEE=;
 b=BTdrVSLA/yuLXDs8CTWvP/h/x4/HKIZgCkyVuJtqzogRNodzh/ARMG7bJW1Joq1qnK
 oTK6eR10S1+ARhM9sfH2+Tr4Bnx6aMJySUCVT8k84U4HJGAjsuQ1oKimXpDEgSDpZyVy
 7nmT8im255LLApPotxtxhbvR3sstMii/DhdLaaGGqed2Bk194KsPNPuxvqyYGcNd1Jhw
 CFcBt3fx+/ddiZjYtVaM5KaD/+wJC+0mVvB2TvIZxPr5I4tndHGSj1ag8T2hBKRiUx9a
 NNEEeljci7AYxzT/MEJIt8UE2CzZHmusS+/Oaza1i1NBkd25QHeR4WWAeLbRjm6WFenr
 1SbA==
X-Gm-Message-State: APjAAAVu5DSyNkFkMLwrrn8aPoBQwdDzEIQUdOkAi/LDHd+5KA0y8ghy
 CS7Nl6fbaUvZd94/1IGO0oneHITtrSEkq8fpdGapUTvO
X-Google-Smtp-Source: APXvYqy5Gb6G+AWzbA9YyUSLoC0IXrltzZHsQx1Xnij93SbOPifDjX9FNgrUiRdecRLVBlJyCXwuGvVMCvo+5K3VGSo=
X-Received: by 2002:a19:6e41:: with SMTP id q1mr32772104lfk.20.1560325048995; 
 Wed, 12 Jun 2019 00:37:28 -0700 (PDT)
MIME-Version: 1.0
References: <1560078659-19236-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1560078659-19236-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 12 Jun 2019 09:37:14 +0200
Message-ID: <CAMuHMdV8Mg2ao9EwrLkiHF53Y_a5RKyvaqAv13uPvqTr19K++Q@mail.gmail.com>
Subject: Re: [PATCH/RFT] arm64: dts: renesas: r8a77995: Add cpg reset for LVDS
 Interface
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_003731_298040_1D27D25F 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
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
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kaneko-san,

On Sun, Jun 9, 2019 at 1:11 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> It is necessary to reset the LVDS Interface according to display on/off.
> Therefore, this patch adds CPG reset properties in DU device node
> for the R8A77995 SoC.
>
> This patch was inspired by a patch in the BSP by Takeshi Kihara <takeshi.kihara.df@renesas.com>.
>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> @@ -1001,6 +1001,8 @@
>                         clocks = <&cpg CPG_MOD 724>,
>                                  <&cpg CPG_MOD 723>;
>                         clock-names = "du.0", "du.1";
> +                       resets = <&cpg 724>, <&cpg 724>;
> +                       reset-names = "du.0", "du.1";

These are not the LVDS resets, but the (shared) DU channel resets.

The LVDS interface has its own separate device node, so if you want to
be able to reset that, you need to add reset properties to the LVDS
node instead.

Note that I haven't reposted a new version of "[PATCH v2] dt-bindings:
drm: rcar-du: Document optional reset properties"[1] yet, after the
split off of the LVDS interface into its own device node. Laurent wanted
to wait until the driver gained DU reset support.
However, the above differs from my proposal, as it also adds "du.1",
pointing to the same (shared) reset.
With a fresh look (2 years later ;-), that actually makes sense, so
perhaps I should change my proposal and repost? We do have shared
resets in other places (e.g. USB).
Laurent, what do you think?

Thanks!

[1] https://lore.kernel.org/linux-renesas-soc/1488817556-21410-1-git-send-email-geert+renesas@glider.be/

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
