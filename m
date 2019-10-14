Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F13D6128
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 13:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNWXmBfcA2/hKxg1rjRCIKGa8Y1TDDDz4rVkdWn/n64=; b=kk7cMzuPHAwolf
	b/8YPEi2jIcroz8/0Y3OTklEsQa3Y2xCigegIvoU44wpKjThrBPZ1FcJE0MgeBxnuj+b7GSuemHGl
	o7r+yZpPO8VN/4uNFbp0/QMhoK/NXbRmCjYirSjrLrG3iOX3ud58Cp2pKOHovV5pRvWTICl4BnvC0
	h3Ed5Pz4jaF11UjF3CKguD9w16k9AtGF04aRPTEayaenizjOIHkAvT3hRK6bqh+k+jzlpLDqJwCg4
	NSn0jbGL153gqdLWMCXBKSlRbwn6T9wkCr7Z6Py1y/DhxTwE6GOqjRFBG4T4kthzAxdxmo5WB3RC6
	idGPWwJ7yfzJ3KFe3AwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJyOe-0003Fb-RZ; Mon, 14 Oct 2019 11:20:16 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJyOT-0002kD-By
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 11:20:07 +0000
Received: by mail-qt1-f193.google.com with SMTP id u22so24849553qtq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 04:20:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cuFapTftEQf9u/dtPS/P5xJow9aqFFLyRZszruAo5Bc=;
 b=ZJZ20EGw0NBGwjddg5C6TYYYQKwtTGXmqE39qysB1NWS/8sI3Mt7k2NpQt77wgakqX
 pNnplnLTb+FuuNe67Fb+M1Sq16PkH7MK7EPb3JNd2+7VHPKUvrtQhwKUmY+Mlfm3fIwY
 /H7+O2LyzMtIq8KJD4EOJ7SCcIVIsAW3H81Lnktdxt7UxzvKCsQ+s2cwckhqFuq8hGHR
 z2rRuP/B3D1WtSliPVrEAa9q2fA3x9aBNEGpoul4t2OYYK5AXx8js/IOgmEiImbU/m+a
 wZd5NEOOAu8gD2Vkr+D9Zz/ToUWhar18nHGHlHIk/e+H+JUu6/d6xmPB5KnA9PtNKZWI
 ZVog==
X-Gm-Message-State: APjAAAX0MjpfUN0KNt8e+yfQSIZyiAnZrj5t1+Yb9AtR4mu9rv7f7zoF
 lMKr4g6mGh6QGgNjPAfQyHUslEtpuUhU5TSK2Ug=
X-Google-Smtp-Source: APXvYqwsnP673OnCHXRZvwy9QjA/gCKBnT6U/b+69dqA6I+lLlaW8DuwRbujiE7X6gEw4SUTnJVTK6qv7hv+OXJDmtE=
X-Received: by 2002:a05:6214:1150:: with SMTP id
 b16mr30329224qvt.197.1571052003441; 
 Mon, 14 Oct 2019 04:20:03 -0700 (PDT)
MIME-Version: 1.0
References: <20191014061617.10296-1-daniel@0x0f.com>
 <20191014061617.10296-2-daniel@0x0f.com>
In-Reply-To: <20191014061617.10296-2-daniel@0x0f.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 14 Oct 2019 13:19:46 +0200
Message-ID: <CAK8P3a2U7U31eF_POU2=eCU+E1DH-wnR2uHr-VZYWLy25hLjKg@mail.gmail.com>
Subject: Re: [PATCH 2/4] ARM: mstar: Add machine for MStar infinity family SoCs
To: Daniel Palmer <daniel@0x0f.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_042005_412553_86E84782 
X-CRM114-Status: GOOD (  20.26  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Nathan Huckleberry <nhuck15@gmail.com>, Icenowy Zheng <icenowy@aosc.io>,
 DTML <devicetree@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Pitre <nico@fluxnic.net>, Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Paul Burton <paul.burton@mips.com>, Andrew Morton <akpm@linux-foundation.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 8:21 AM Daniel Palmer <daniel@0x0f.com> wrote:
>
> Initial support for the MStar infinity/infinity3 series of Cortex A7
> based IP camera SoCs.
>
> These chips are interesting in that they contain a Cortex A7,
> peripherals and system memory in a single tiny QFN package that
> can be hand soldered allowing almost anyone to embed Linux
> in their projects.
>
> Signed-off-by: Daniel Palmer <daniel@0x0f.com>

> +
> +static void __init infinity_map_io(void)
> +{
> +       iotable_init(infinity_io_desc, ARRAY_SIZE(infinity_io_desc));
> +       miu_flush = (void __iomem *)(infinity_io_desc[0].virtual
> +                       + INFINITY_L3BRIDGE_FLUSH);
> +       miu_status = (void __iomem *)(infinity_io_desc[0].virtual
> +                       + INFINITY_L3BRIDGE_STATUS);
> +}

If you do this a little later in .init_machine, you can use a simple ioremap()
rather than picking a hardcoded physical address. It looks like nothing
uses the mapping before you set soc_mb anyway.

> +static DEFINE_SPINLOCK(infinity_mb_lock);
> +
> +static void infinity_mb(void)
> +{
> +       unsigned long flags;
> +
> +       spin_lock_irqsave(&infinity_mb_lock, flags);
> +       /* toggle the flush miu pipe fire bit */
> +       writel_relaxed(0, miu_flush);
> +       writel_relaxed(INFINITY_L3BRIDGE_FLUSH_TRIGGER, miu_flush);
> +       while (!(readl_relaxed(miu_status) & INFINITY_L3BRIDGE_STATUS_DONE)) {
> +               /* wait for flush to complete */
> +       }
> +       spin_unlock_irqrestore(&infinity_mb_lock, flags);
> +}

Wow, this is a heavy barrier. From your description it doesn't sound like
there is anything to be done about it unfortunately.

Two possible issues I see here:

* It looks like it relies on CONFIG_ARM_HEAVY_BARRIER, but your Kconfig
  entry does not select that. In many configurations, CACHE_L2X0 would
  be set, but there is no need for yours on the Cortex-A7.

* You might get into a deadlock if you get an FIQ (NMI) interrupt while
   holding the infinity_mb_lock, and then issue another memory barrier
   from that handler, so you might need to use
   local_irq_disable()+local_fiq_disable()+raw_spin_lock() here, making
   it even more expensive.
   Not sure if it matters in practice, as almost nothing uses fiq any more.
   OTOH, maybe the lock is not needed at all? AFAICT if the sequence
   gets interrupted by a handler that also calls mb(), you would still
   continue in the original thread while observing a full l3 barrier. ;-)

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
