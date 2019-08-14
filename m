Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B68058CA76
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 06:39:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2RdHdMCY3R2gvL1P4TiQmpOblFDY2gndtLZ9whUz6E=; b=srkjmqBJNQaYJN
	ieNvfQAJZyA6cdgiiGXoqDewmge7qDRA2QxnQ1SeACMKQHDPtOo2SSZ+eaXJpO5t9YG56pCJcFGxe
	ooMBzuXrCeSFAM2Jr24O20ij4HOvBYmjStuAsgW7g/GF9Q7SDlCLeZCDQZweBJURhf0z66t6y74+c
	XXGhVCkNokao4Vy96lh+sFHcKZTTjawNssSrA+KxE/ebc7E/c20VdWbaH8ghnFt/+dlvvWX37Nj2W
	IPKtwTgD0r9qhldCn5u8mLKwD48NBAp+SpxCKxwHg0ruYaWMoTD/3TIAjmBZu5pR5BzPRqUW2scuE
	9UpJkQjfClQ4Er0/nOkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxl4C-0007nz-K7; Wed, 14 Aug 2019 04:39:20 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxl3y-0007ng-Or
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 04:39:08 +0000
Received: by mail-ed1-f65.google.com with SMTP id x19so102829889eda.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 21:39:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tOFzth/1t3h2J4LDht3H6+aj/CXIWQiypTJlHhUjEtg=;
 b=C8rPI5i744+K3/h6gchEk3o9z0dueAqFqDmCrumCl1ZpwB8tz+ZtSpdVFIvHC25ufS
 TVcdXlIYrgDEeWe+cICOWR6bJg6lBUH3Wc8O9iCmBOpbIb3dz78wWBk6z2DNRCz+I+YV
 8TMbqkzkV+DfV7avWxSbAxuPY1QRWxW80AoFzJ3WIxt8KYyA7quBV82bP9hRtVrna+ie
 rjpwuxIaOJazsFTORsA/bcGn6OnO7OkbpwAjtS4lEgPXmVSv6epgpKRZqAxHqUG8f7t9
 IqUalDZmNxYFa9xyRuVrGC2Ou2X7v0fXL298x8vcyCaLIE4oFlDJviQVInDAcSHa6yEE
 kD8w==
X-Gm-Message-State: APjAAAVKDjO/BoBjfbpIbcC0KSJjQeomIbwE/1ZKoBlba0bo9pJWb8s8
 lJL36EJy7PyzSNS36kUOokMZGNNo4v8=
X-Google-Smtp-Source: APXvYqywzmNpJgcv8KjQ4Ps+PZXIZ+/2BL8keIkdvW5Dcu9R6Xr52JQKLC4PmXinKSsdiEg1MwMzag==
X-Received: by 2002:a17:906:797:: with SMTP id
 l23mr4865899ejc.228.1565757544630; 
 Tue, 13 Aug 2019 21:39:04 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com.
 [209.85.128.43])
 by smtp.gmail.com with ESMTPSA id gw11sm1760522ejb.29.2019.08.13.21.39.03
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Aug 2019 21:39:04 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id o4so3202024wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 21:39:03 -0700 (PDT)
X-Received: by 2002:a7b:c21a:: with SMTP id x26mr5533924wmi.61.1565757543807; 
 Tue, 13 Aug 2019 21:39:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190813124744.32614-1-mripard@kernel.org>
 <20190813124744.32614-4-mripard@kernel.org>
In-Reply-To: <20190813124744.32614-4-mripard@kernel.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 14 Aug 2019 12:38:51 +0800
X-Gmail-Original-Message-ID: <CAGb2v66mp-=T=-zDYMf6Qw-vaiR3OB5Xhxie39jeKWS+Kvmecw@mail.gmail.com>
Message-ID: <CAGb2v66mp-=T=-zDYMf6Qw-vaiR3OB5Xhxie39jeKWS+Kvmecw@mail.gmail.com>
Subject: Re: [PATCH 4/5] ARM: dts: sun8i: a83t: Remove the watchdog clock
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_213906_810545_5AAF52D4 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Frank Rowand <frowand.list@gmail.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 8:47 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The watchdog binding doesn't define a clock, and it indeed looks like
> there's no explicit clock feeding it.

The diagram on page 133 of the manual shows OSC24M / 750 feeding the watchdog.

Other manuals, such as the A10 one, mention:

    Watchdog clock source is OSC24M. if the OSC24M is turned off, the watchdog
    will not work.

So in fact it does use a clock signal. It's just that we've been lazy, since
the clock rate is fixed and is always on.

ChenYu

> Let's remove it from our DT.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  arch/arm/boot/dts/sun8i-a83t.dtsi | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
> index 523be6611c50..15f8c80f69a5 100644
> --- a/arch/arm/boot/dts/sun8i-a83t.dtsi
> +++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
> @@ -817,7 +817,6 @@
>                         compatible = "allwinner,sun6i-a31-wdt";
>                         reg = <0x01c20ca0 0x20>;
>                         interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> -                       clocks = <&osc24M>;
>                 };
>
>                 spdif: spdif@1c21000 {
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
