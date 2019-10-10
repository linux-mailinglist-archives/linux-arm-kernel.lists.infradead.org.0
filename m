Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAB3D20C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 08:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQ7smB9v60Rx1kG+H64TDDOh/iL5ylwQMOHZ31PWgMw=; b=RYZiCogRy77ahX
	ckn3unHjfvaz1Wg9TK2Inv/G7gcbwykMCxB3TWS1icqX39KhFUzK3yBL2A0TJ2JX9uqvtwKrllhvs
	KDKuAO92XsE6Yom9bRDX4Et95SiKsy6plpEImkIWu0XI2WIK7x4fgTAlwJQ9crWVxcZyoSNBxqOX0
	YyOvE7V+A2x+z3eIqaJh2GzE4j9zLl3WkYaa9iDrbEIb5y51yGu9Jj0NXezMUWlLiil2dXqGczmAn
	RDwjEMigP5z3mfSxq3FKzwzd2ALgbRgiryz+d0RJfurqlxHXK2T24AW1vkOJxRRorOztnKal/+twB
	hEjinVq+Uda9/suBc5GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIRxD-0000sV-4n; Thu, 10 Oct 2019 06:29:39 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIRx6-0000rl-7z
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 06:29:33 +0000
Received: by mail-oi1-f193.google.com with SMTP id m16so3940274oic.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 23:29:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+Cx2nK6QRBgJuBNcUtpzK8FDH7ngKKIhRfZFf1NmTFQ=;
 b=WzrgQ6v3YQedpZVP5dBRiQGZdG/14eE0evHdq5eYvPB2UhcDbFzeQUQ7B75xIXaEar
 unkQ8t555ztt3199LG/uQp1IMFk8JzVteDSzW7qd7LNbse1tswZY3kcep223jTCmv1OY
 Zbhqn/aR/bDG0zso0tM12ThttZTHfoJmxkKOhFtLj1E8P8VptQ3DkieyvTPB/6i11rBx
 7MdIvIHuCsYTQsHTFKZ3b98wU3SN/fJK/RUq8sRq94vltJt3U/701U6lQiwiNdwOTcf0
 /hWTAVvT22yR6/SKlw7JSzi0mDtjWChSwKSPF3a8rBGNZI1phj3RXN/ycmBURLMRaXP3
 LP7A==
X-Gm-Message-State: APjAAAXqdJfTE0/LBABJ5g+g/cTgrUwGxrSCU04JpwtD44WyVpd5DBi0
 TbcJ84g5ITMVa7laU1Pr81/yTxlCcXMQMf3HhiY=
X-Google-Smtp-Source: APXvYqxmAwoB1fEOxz3+Xl/nikYsLddSYKE5o75tBiCX/ExRRXKw9htkShc664JHnVxtveTq0QU4eZt/Zpliy/z2V/0=
X-Received: by 2002:a05:6808:3b4:: with SMTP id
 n20mr5863396oie.131.1570688969834; 
 Wed, 09 Oct 2019 23:29:29 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
 <893c3b4f03266c9496137cc98ac2b1bd27f92c73.1570633189.git.vilhelm.gray@gmail.com>
 <CAK7LNATgW7bXUmqV=3QAaJ0Qu73Kox-TgDCQJb=s0=mwewSCUg@mail.gmail.com>
 <20191009170917.GG32742@smile.fi.intel.com>
 <CAMuHMdXyyrL4ibKvjMV6r8TuxpmK73=JxsWNEfcRk1NjwsnOjA@mail.gmail.com>
 <CAK7LNASVdqU_6+_iinWStb9ALqLw494pnZKr46fLW+WJ9nUo6A@mail.gmail.com>
 <CAHp75VeLkfNZkqhD8tedJdav81L+VA3Z50Kwcd9h4R7zMwjtvA@mail.gmail.com>
In-Reply-To: <CAHp75VeLkfNZkqhD8tedJdav81L+VA3Z50Kwcd9h4R7zMwjtvA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 10 Oct 2019 08:29:17 +0200
Message-ID: <CAMuHMdVs=PgET6=-fKgznETOye_Bxqt6h16Ok0nu6J2vXG-r_w@mail.gmail.com>
Subject: Re: [PATCH v17 01/14] bitops: Introduce the for_each_set_clump8 macro
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_232932_283509_9E46ABF8 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Phil Reid <preid@electromag.com.au>, Arnd Bergmann <arnd@arndb.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux PM mailing list <linux-pm@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 William Breathitt Gray <vilhelm.gray@gmail.com>, morten.tiljeset@prevas.dk,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Lukas Wunner <lukas@wunner.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 sean.nyekjaer@prevas.dk, Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

On Thu, Oct 10, 2019 at 7:49 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
> On Thu, Oct 10, 2019 at 5:31 AM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> > On Thu, Oct 10, 2019 at 3:54 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > On Wed, Oct 9, 2019 at 7:09 PM Andy Shevchenko
> > > <andriy.shevchenko@linux.intel.com> wrote:
> > > > On Thu, Oct 10, 2019 at 01:28:08AM +0900, Masahiro Yamada wrote:
> > > > > On Thu, Oct 10, 2019 at 12:27 AM William Breathitt Gray
> > > > > <vilhelm.gray@gmail.com> wrote:
> > > > > >
> > > > > > This macro iterates for each 8-bit group of bits (clump) with set bits,
> > > > > > within a bitmap memory region. For each iteration, "start" is set to the
> > > > > > bit offset of the found clump, while the respective clump value is
> > > > > > stored to the location pointed by "clump". Additionally, the
> > > > > > bitmap_get_value8 and bitmap_set_value8 functions are introduced to
> > > > > > respectively get and set an 8-bit value in a bitmap memory region.
> > > >
> > > > > Why is the return type "unsigned long" where you know
> > > > > it return the 8-bit value ?
> > > >
> > > > Because bitmap API operates on unsigned long type. This is not only
> > > > consistency, but for sake of flexibility in case we would like to introduce
> > > > more calls like clump16 or so.
> > >
> > > TBH, that doesn't convince me: those functions explicitly take/return an
> > > 8-bit value, and have "8" in their name.  The 8-bit value is never
> > > really related to, retrieved from, or stored in a full "unsigned long"
> > > element of a bitmap, only to/from/in a part (byte) of it.
> > >
> > > Following your rationale, all of iowrite{8,16,32,64}*() should take an
> > > "unsigned long" value, too.
> > >
> >
> > +1
> >
> > Using u8/u16/u32/u64 looks more consistent with other bitmap helpers.
> >
> > void bitmap_from_arr32(unsigned long *bitmap, const u32 *buf, unsigned
> > int nbits);
> > void bitmap_to_arr32(u32 *buf, const unsigned long *bitmap, unsigned int nbits);
> > static inline void bitmap_from_u64(unsigned long *dst, u64 mask);
> >
> >
> >
> > If you want to see more examples from other parts,
>
> Geert's and yours examples both are not related. They are about
> fixed-width properies when we know that is the part of protocol.
> Here we have no protocol which stricts us to the mentioned fixed-width types.

Yes you have: they are functions to store/retrieve an 8-bit value from
the middle of the bitmap, which is reflected in their names ("clump8",
"value8").
The input/output value is clearly separated from the actual bitmap,
which is referenced by the "unsigned long *".

If you add new "value16" functions, they will be intended to store/retrieve
16-bit values.

Besides, if retrieving an 8-bit value requires passing an
"unsigned long *", the caller needs two variables: one unsigned long to
pass the address of, and one u8 to copy the returned value into.

> So, I can tell an opposite, your arguments didn't convince me.
>
> Imagine the function which does an or / and / xor operation on bitmap.
> Now, when I supply unsigned long, I will see
> operations on one type in _one_ function independently of the size.
> Your proposal will make an unneded churn.

Depends on what kind of value you will use to do the logical operation
with the bitmap:
  - Full bitmap => unsigned long * + size,
  - Single bitmap "word" => unsigned long,
  - 8-bit value => u8,
  - 16-bit value => u16

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
