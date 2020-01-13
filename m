Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BCF138D54
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 09:58:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JKPLJhVoYXvW7A5FgC9/tWocWP6jXxXsoM19O0L6E68=; b=rDSthey3PggIYD
	RhHWHg6cR+p5Q03uwkQ5/QWfU8jXoOmdkaXN7BV4ojIAYYSFWz4M4clalDc1gshwDqCEadBHyTfG4
	xO30Sa1HjUlRPzq5L2t6N0t0XHEmf7lG9uTpIno0FnomDhAJGuiJEKCrf/FdJEwFhqbhGtnh7BuhK
	0HPIQeRfmydcpY1WIlubVvblzpGO4PN6zQzTqg+ll38kyQNKB4YI4uCFQJcq+j2CzaywXGrXMUolv
	KM+F5vONSW6oWyCFTwK31kb84iyRTVos+KPPO1kOSe0ZUMzBt4LBkdjOBt3USD239VEFnp3/ML3Ja
	Xnqvs/C7iBvEa2BVlLIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvYa-0002H1-3w; Mon, 13 Jan 2020 08:58:44 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvYR-0002GX-IG
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 08:58:36 +0000
Received: by mail-oi1-f194.google.com with SMTP id 18so7531717oin.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 00:58:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yqNlNrOQ7aJ6S/nMKFawkP6Fc2v57+yYYE7QCHVa+YM=;
 b=WT/C87Ql39dFzxoCME/hrRiPJnn/hPFRnX7fNOkZ1UmzLa88bgSiP+NS1W/Xm1K8CR
 QbGB6L6rrX7HTEp3RGEeP8xxsLqqz6us5R2Eap9qKc71VTz70h+8xIzVUkol8eZe8y/d
 ZisHy45I75vqdoRTGFC41qqwqVZVNeMx89EnQLxSpFXllgnLLmVq0mtlU7/MO6MEBs/m
 xOefSVHXLrXcwL7dZUldkfvvjfNW1eJN6qQDabSjsNig61CSJZxY+v3Cr+tPdDf5npkb
 +yMrt2rKXcC7H+w37vl6mQvWmWNnrHvzH1XvCG3gyGm3jsuS4TAh26/j4LnkxLj5aPCn
 J6Pg==
X-Gm-Message-State: APjAAAXwYpb109n2KBPccUSehyx4xcyLsG6Ohg/owIvKV1PTTIDiSwbb
 QtcHlXkbHQMlsPdRlDf+9HV3I3J01sRbedtWBW8=
X-Google-Smtp-Source: APXvYqxxsg0TC2Iy7kijFuyONZGoBo0TdJRSrcVkcxlFUfMwFV5qcQg4MhgfNgAma26laSlNFdZZpnD9+zujy0m2PCA=
X-Received: by 2002:aca:5905:: with SMTP id n5mr12244176oib.54.1578905914472; 
 Mon, 13 Jan 2020 00:58:34 -0800 (PST)
MIME-Version: 1.0
References: <20200112191315.118831-1-marek.vasut@gmail.com>
In-Reply-To: <20200112191315.118831-1-marek.vasut@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 13 Jan 2020 09:58:23 +0100
Message-ID: <CAMuHMdWc97=-9yBF0CJDZpWH9ZGX9uoDY_t6E6TQNc4MO93W_w@mail.gmail.com>
Subject: Re: [RFC][PATCH] ARM: dts: renesas: Add missing ethernet PHY reset
 GPIO on Gen2 reference boards
To: Marek Vasut <marek.vasut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_005835_604534_F276530E 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Sun, Jan 12, 2020 at 8:13 PM <marek.vasut@gmail.com> wrote:
> From: Marek Vasut <marek.vasut+renesas@gmail.com>
>
> The ethernet PHY reset GPIO was missing and the kernel was depending
> solely on the bootloader to bring the PHY out of reset. Fix this to
> get rid of the dependency on bootloader.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>

Thanks for your patch!

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

> NOTE: Thus far tested on R8A7791 Koelsch

>  arch/arm/boot/dts/r8a7790-lager.dts   | 1 +
>  arch/arm/boot/dts/r8a7790-stout.dts   | 1 +
>  arch/arm/boot/dts/r8a7791-koelsch.dts | 1 +
>  arch/arm/boot/dts/r8a7791-porter.dts  | 1 +
>  arch/arm/boot/dts/r8a7793-gose.dts    | 1 +
>  arch/arm/boot/dts/r8a7794-alt.dts     | 1 +
>  arch/arm/boot/dts/r8a7794-silk.dts    | 1 +

I believe all of the above (except for stout) are available in Magnus' farm...

r8a7743-sk-rzg1m.dts and r8a7745-sk-rzg1e.dts need similar changes as
r8a7791-porter.dts resp. r8a7794-silk.dts.

> --- a/arch/arm/boot/dts/r8a7790-lager.dts
> +++ b/arch/arm/boot/dts/r8a7790-lager.dts
> @@ -671,6 +671,7 @@ &ether {
>
>         phy1: ethernet-phy@1 {
>                 reg = <1>;
> +               reset-gpios = <&gpio5 31 GPIO_ACTIVE_LOW>;

I would insert this line below micrel,led-mode, though.

>                 interrupt-parent = <&irqc0>;
>                 interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
>                 micrel,led-mode = <1>;

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
