Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 710238256B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 21:16:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8C0eqIyOcn/eg50Nckm3o/nn7HpibOw936xmBSZTCgA=; b=lYmdBBQPoHkgEV
	yx84V9/TxRewqNEdIXQ6SmxCyG+gHtLzNvsBrQ+LcSTO+ioByBr9wUvPf+xhvbiEpcugkuxyMj7JV
	nqoTqoAckjEyNYNNilwGkoe69Ijic69Mpr2Iub7ryTGreOOTyvqKB3MLRB1AIGQEag3rMj2+rvfgg
	cCbj1jutOUwqzMadZq5VyV5Gowd/XmZk3hISzrqF5M5wtiXcgVWFYdT/MmKqVhCtINTv3kY5uu7aH
	gMOrarYoeEkDRKfmD/+yhKC9/8TZYZfO4dGH8EdlcFwm5YNARiEy9YhRxpq1mKrUWnuwPFkuuJMgf
	Tk5eEVwrQh7HucYSgGvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huiTJ-0002Hd-3E; Mon, 05 Aug 2019 19:16:41 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huiT5-0002Fn-OV; Mon, 05 Aug 2019 19:16:29 +0000
Received: by mail-oi1-x241.google.com with SMTP id a127so62876408oii.2;
 Mon, 05 Aug 2019 12:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SB9PCM35FSWuVi9z7hK4WLl0EufG465Q6bcQ2wNo7bY=;
 b=fPeG/D4Hqu47BMZb3UOQ87U5iajC3QZ4ivfrPnXbDsQoUIxO0SgtXUdhkh5QfAblsp
 0NXROtXwiO5QfX3dWJ5LtPE4SYREbzWPFv2HnQGbJ1WShc12rv5wtcnMFqDVeiLhcVcs
 Yy/BK/5cBrp1ZCVL1mQlZM5UCijWZEzZvrujG56PKPSeKUT507lxmVxNXSCNDJ2KYCvC
 Vw3dPfLw6HQX0X6GQz3F60VnbyousA9d0H49d0OdTgF1hv6M7SgNB+d+f6pUxPpSgi5K
 tGuAWJGFX67j+WG7qexUfiQc8rTs1qrcwADWRRiYXkLxTqP4Em8za0IEtQQwxzRR5+nZ
 z0yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SB9PCM35FSWuVi9z7hK4WLl0EufG465Q6bcQ2wNo7bY=;
 b=RnE1RokUyn0HWwvW+5iXPQ0y4jDZ5SgcQ5O5gzEhJQp6fqXyzOnOO68p3tWyW4nigi
 n7xB/KEqjDRmIOV51Q/xcW/q/EUPpFbjhmm1sdUBYddTxIUB3SL4z3FIiYzSFsqjvKr1
 BThcbxz/aqJecLsZ5dkAkH2qrohRJ7uMA9l8okOeSuj7TT2eFhcyfHY3QKRa1O58jIDd
 DQeSB2do51y52+e88LV0vRrKpCXJYn74JjxLGRXZtbNEztlBhqvZdevjGPulHcvEwhrg
 dXhcFFWwymbj71Slgxey7AYVYwBPoQJKG7jON17MzPCC/7a7QX/3QDbgxZzuf4KK+8KK
 VZ2g==
X-Gm-Message-State: APjAAAXRkRcrP9D1CVjuKyL7v7xYfSzsV3elqbGbB8TMV7A8qjGPygZW
 qod6F3Je2ICqkje8ix1T/8qe7a0XBdehlMqr4/I=
X-Google-Smtp-Source: APXvYqzFT8IoyTFbzdFGvxOVX5N3A3720NSMyOcsf0yQEULh63dB+8S3SFHt/cHpUIrbyALl7n3dlEJWHcC2bmo/1TE=
X-Received: by 2002:aca:5c55:: with SMTP id q82mr12374312oib.15.1565032584908; 
 Mon, 05 Aug 2019 12:16:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190727194647.15355-1-martin.blumenstingl@googlemail.com>
 <20190727194647.15355-2-martin.blumenstingl@googlemail.com>
 <9814939f-8580-c8f6-5c2f-7e64db60e6ae@baylibre.com>
 <CAFBinCC5Bz-Oe4G1dtABrU+RFWUmqpdgyuDdRPp=Mo_Cucz7Wg@mail.gmail.com>
In-Reply-To: <CAFBinCC5Bz-Oe4G1dtABrU+RFWUmqpdgyuDdRPp=Mo_Cucz7Wg@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 5 Aug 2019 21:16:13 +0200
Message-ID: <CAFBinCASC92TbPT-WU17iXfY7VL3-h1s8Bbt2ZVpO6mpfkRN0w@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: meson8b: add the nvmem cell with the
 board's MAC address
To: Neil Armstrong <narmstrong@baylibre.com>, hexdump0815@googlemail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_121627_798977_5DC221F5 
X-CRM114-Status: GOOD (  23.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ottuzzi@gmail.com, khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 11:45 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> On Mon, Jul 29, 2019 at 9:11 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
> >
> > Hi Martin,
> >
> > On 27/07/2019 21:46, Martin Blumenstingl wrote:
> > > Amlogic's BSP kernel defines that all boards with a MAC address stored
> > > in the eFuse have it at offset 0x1b4. It is up to the board to
> > > decide whether to use this MAC address or not:
> > > - Odroid-C1 uses the MAC address from the eFuse
> > > - EC-100 seems to read the MAC address from eMMC
> > >
> > > Add the nvmem cell which describes the Ethernet MAC address. Don't
> > > assign it to the Ethernet controller, because depending on the board the
> > > actual MAC address may be read from somewhere else.
> > >
> > > Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > > ---
> > >  arch/arm/boot/dts/meson8b.dtsi | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > >
> > > diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
> > > index 30fca9bb4bbe..c7de58b71d08 100644
> > > --- a/arch/arm/boot/dts/meson8b.dtsi
> > > +++ b/arch/arm/boot/dts/meson8b.dtsi
> > > @@ -402,6 +402,10 @@
> > >       clocks = <&clkc CLKID_EFUSE>;
> > >       clock-names = "core";
> > >
> > > +     ethernet_mac_address: mac@1b4 {
> > > +             reg = <0x1b4 0x6>;
> > > +     };
> >
> > Is this a fixed position for all boards ? if not, I'll suggest moving
> > it to the odroid-c1 dt until you have more users.
> the 0x1b4 offset is hardcoded in Amlogic's kernel sources
> if some board uses another offset then the manufacturer had to patch
> the kernel to make it work (like Endless did)
>
> +Cc hexdump0815 - can you please run the following command on your
> Meson8b MXQ board:
> $ hexdump -C /sys/bus/nvmem/devices/meson8b-efuse0/nvmem | grep
> 000001b0 | cut -d' ' -f7,8,9,10,12,13
>
> this should print the MAC address that is also used by the stock
> firmware and/or printed on the board
> if it is then I'm happy to provide a patch also for your MXQ board so
> it also uses the correct MAC address
hexdump got back to me on IRC (thank you!) with unfortunate news:
the MXQ board doesn't seem to have the MAC address in the eFuse at all

thus I'll go with Neil's suggestion and move this to meson8b-odroidc1.dts


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
