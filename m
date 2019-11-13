Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4E2FB159
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:32:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zed58eh+WG/VvyDA7kC25CIz8CmXyu3/Be7+w7JyChs=; b=UmcvjdWIwyattA
	uV3sLjfdCfeRLmFrVUPf/IZtyCZtYWEmvVWYAhVuWlfrMzGnk4hsVfkHvBnEUf6+VRsDYAuF7bbN/
	YMnZTLoFmBmgwvfcmoKtU/WXvIGJbPVnbhQa+v0AV8ssexiNmz0X+lzVLHF0E5OimJt/+I+WHzC7+
	sdjnorX3DmWmeKWYuWdYkh4l/QPs42WYKMvINyFi5U7NDaF4oVTrL9TNI5P80Ys/wzHcSYRXmWYKK
	j0c3SEs+tfQb/X87C5MKYzYpb2rUj6ZZGYgJZ+p9o9bTeHB3TNXzI2FMoQuy4vr0qzF+dSrHiY8IC
	2Ov6Hos8bmBaQ8QB/kAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUslC-0005bD-9G; Wed, 13 Nov 2019 13:32:38 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUsl5-0005am-7l
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:32:32 +0000
Received: by mail-ot1-f67.google.com with SMTP id 5so1611324otk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 05:32:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Lq8qtGwmpElTMrGp/VyZWwTWqE2Cbch/Z4ML6h6REjs=;
 b=J8Q4NFKuAiqPI4I8Qr+8OUNfV5g5VAcaNCgbyLwbnIjP6wkZrA/CqImYlJaavB32HN
 W5++NZDt6CA0DH9HXfk46W7dKGaG19ivCJsPxAkGbj6DifQELpilyHKEcaUnGqqzlWLZ
 9FtkN3N52ubKtFfoW70UulTQ3fDU7dMMgAMVXmusITdBvVsy6w55b9WWSOe0CHKHabx5
 RdMCUwZRi+KOh2AJ6nPHwv2A8/LceXgXwLqMK8tyJ5GUtL+H4acN+e6CKly2TCsnwB1J
 YyEz4MX3NUBKZXZ65/C9Tzu+3gLE7wJbABF0ca4/uDBl/KmYczpn49up9kLLzi0GYHVe
 494A==
X-Gm-Message-State: APjAAAUtRjKQhLwiViU0bG4JSwro80K34juDMVpaokWARgNETw5j5Urr
 nuK42xrV9MmI+3nGInHaCWG01o/5Bnt0GXXcCFY=
X-Google-Smtp-Source: APXvYqx4GkIzrsgTfrDR16BExlducFGjzv3b6lG1dfNDm66M/Rs0tk7Eols4b2XLbBz5ooEFRMDAFWsw4lAWEAJmHEI=
X-Received: by 2002:a9d:5511:: with SMTP id l17mr3150607oth.145.1573651950407; 
 Wed, 13 Nov 2019 05:32:30 -0800 (PST)
MIME-Version: 1.0
References: <20191113102729.29303-1-geert+renesas@glider.be>
 <20191113103919.GM25745@shell.armlinux.org.uk>
In-Reply-To: <20191113103919.GM25745@shell.armlinux.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 13 Nov 2019 14:32:19 +0100
Message-ID: <CAMuHMdXWsUChMA+_6sdavo8nd-9icX6nsN7unSfMMViOQrUVMQ@mail.gmail.com>
Subject: Re: [PATCH/RFC] ARM: boot: Relax kernel image alignment for RZ/A with
 CS3 SDRAM
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_053231_277797_A7008FF1 
X-CRM114-Status: GOOD (  21.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Wed, Nov 13, 2019 at 11:39 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Wed, Nov 13, 2019 at 11:27:29AM +0100, Geert Uytterhoeven wrote:
> > The RZA2MEVB sub board has 64 MiB of SDRAM at 0x0C000000 (CS3 space).
> > Hence the mask for CONFIG_AUTO_ZRELADDR needs to be changed, otherwise
> > the system will crash because it will try to decompress a zImage or
> > uImage to a non-RAM garbage address.
> >
> > Based on a patch in the BSP by Chris Brandt <chris.brandt@renesas.com>.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> > No idea what to do with the rest of the comment, or if this breaks
> > existing platforms.
>
> We occasionally have discussions about this - the last one was a big
> one in Edinburgh, and the answer is we can't change this in mainline.
> They've also come up on the mailing lists as well.
>
> I'm not going to rehash this old argument yet again - the comment
> details the reason for it, and is there to prevent exactly this.

Sorry, I wasn't aware of that discussion.
I had a chat about this at ELC-E with Arnd, and he was open to this change.

> If someone is silly enough to come up with a platform that violates
> the documented 32-bit ARM booting protocol, then they can't expect
> the kernel to bend to their platform's requirements at the expense of
> already merged platforms.

Documentation/arm/booting.rst:
  1. The kernel should be placed in the first 128MiB of RAM: check.
  2. A safe location is just above the 128MiB boundary from start of RAM:
     oops. Not all platforms have more than 128 MiB of RAM...

An alternative is to fall to the builtin 4 MiB of SRAM, or the 8 MiB of
HyperRAM on RZA2MEVB, but doing that requires using XIP.
Which brings us to your response in the other email:

> Are we going back to non-multi-platform kernels? ;)

Good question! ;-)

  1. CONFIG_AUTO_ZRELADDR=n
  2. CONFIG_XIP_KERNEL=y

What do you suggest?
Thanks!

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
