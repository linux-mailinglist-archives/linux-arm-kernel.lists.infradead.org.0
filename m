Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 808FBD22AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 10:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pU1xi+Ux9TGcwBjbvsclIM7Yvc65B6W5tsCKAEp66d8=; b=HYRqLhyEbs3sw1
	xMRjv/yBSbJNB6qN6w5gRcctZFNEqJJe6f8vUh7M1UdgjTAEi2xsjZJYLyRIr/n0sk0sLQTQizZBc
	GkNPZltoWymqhmewk/3n4bGA4soy58HFlfJVZNPHmZEGDEc2IHJEnyXh+C/5n/eFvs5gSwOH8sw2N
	ywcNbB1HbPIVJAflJQCMrmC9tkP44RdOKuASp+421Ew6BxVHgDr6a4sDnOdPeVDwsuMrwmdBy5Swh
	z2T12twVs3sVUxklzYWLA6XVyB7exPrQlNBZJYd/u7EqFhcaPus03rZA9EBzclLV8Vtl//xU+IQ7e
	xdkrjT1DBrt/96cLJ65g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iITkR-00013y-Ea; Thu, 10 Oct 2019 08:24:35 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iITht-00076y-VZ
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 08:21:59 +0000
Received: by mail-oi1-f196.google.com with SMTP id k9so4163559oib.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 01:21:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dc5RA2BPKZVYGXJLYtKKxLVdHq6Dac4u37aEDEUkLQM=;
 b=FBdnorE/haZgcRUXaMVSXI7M+7nbTVfV4fQI5GLKz0GnLE+/rAJpl9ppRDptcE+goU
 Xz5/ia2gAgWCYaC/DNVjoaGjpTy9HNGlbZQXzWW44HEPJSnBL+c1fXUtZMoNnHbe2TSS
 fx8xF4O52aEkvjjDyqtiZ3yHaahu4vzaIuYA44BRrPCF+ArVvZU+C1JsJexkN9cZtSOV
 addz7USrJZOmrOpJnfncCvyjANNkvU4bk8H8jhugXE05bRdVT1obw06VPfza+/56ASk8
 3wmWd6DIV74eNF37mm45hF1co8xbXAMZV8uu8a2RFoQL+2Ajr11tvBG7H8dXP47NTcDM
 aMWQ==
X-Gm-Message-State: APjAAAV3aHcfzjfilh5DnPuoaPB1rRQ6eBifR75Q1CZGkIN/aGy67Apm
 8jxUtzVujXwRlRkA80QorKWG74GZe5XqlU43RPw=
X-Google-Smtp-Source: APXvYqxtgx03+B0HB6RKN9jHyeCpS8CcGrjyRFWnknFz7FyEGnnntki6sJN+xgX/b9Aj5CRhCziqQeixZ7YTrOe0LG8=
X-Received: by 2002:aca:4bd2:: with SMTP id y201mr6665365oia.102.1570695716750; 
 Thu, 10 Oct 2019 01:21:56 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
 <893c3b4f03266c9496137cc98ac2b1bd27f92c73.1570633189.git.vilhelm.gray@gmail.com>
 <CAK7LNATgW7bXUmqV=3QAaJ0Qu73Kox-TgDCQJb=s0=mwewSCUg@mail.gmail.com>
 <20191009170917.GG32742@smile.fi.intel.com>
 <CAMuHMdXyyrL4ibKvjMV6r8TuxpmK73=JxsWNEfcRk1NjwsnOjA@mail.gmail.com>
 <CAK7LNASVdqU_6+_iinWStb9ALqLw494pnZKr46fLW+WJ9nUo6A@mail.gmail.com>
 <CAHp75VeLkfNZkqhD8tedJdav81L+VA3Z50Kwcd9h4R7zMwjtvA@mail.gmail.com>
 <CAMuHMdVs=PgET6=-fKgznETOye_Bxqt6h16Ok0nu6J2vXG-r_w@mail.gmail.com>
 <CAHp75Vc8HX=hs2F2R_wOaFM7cFjaX0k_kENybdxSh742PpVkjw@mail.gmail.com>
 <CAMuHMdVrQyt=VJ8outiGEXW78-cY=YUWyeVXN-_MFg75erJ=Yg@mail.gmail.com>
 <20191010080750.GN32742@smile.fi.intel.com>
In-Reply-To: <20191010080750.GN32742@smile.fi.intel.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 10 Oct 2019 10:21:45 +0200
Message-ID: <CAMuHMdVv_pYq7rVLvjAPhkoADLgXF-AFGWUBNqLjaumDPBYGaQ@mail.gmail.com>
Subject: Re: [PATCH v17 01/14] bitops: Introduce the for_each_set_clump8 macro
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_012158_060813_AAD51A4D 
X-CRM114-Status: GOOD (  24.28  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux PM mailing list <linux-pm@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 William Breathitt Gray <vilhelm.gray@gmail.com>, morten.tiljeset@prevas.dk,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Lukas Wunner <lukas@wunner.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andrew Morton <akpm@linux-foundation.org>, Phil Reid <preid@electromag.com.au>,
 sean.nyekjaer@prevas.dk,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

On Thu, Oct 10, 2019 at 10:08 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
> On Thu, Oct 10, 2019 at 09:49:51AM +0200, Geert Uytterhoeven wrote:
> > On Thu, Oct 10, 2019 at 9:42 AM Andy Shevchenko
> > <andy.shevchenko@gmail.com> wrote:
> > > On Thu, Oct 10, 2019 at 9:29 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > On Thu, Oct 10, 2019 at 7:49 AM Andy Shevchenko
> > > > <andy.shevchenko@gmail.com> wrote:
> > > > > On Thu, Oct 10, 2019 at 5:31 AM Masahiro Yamada
> > > > > <yamada.masahiro@socionext.com> wrote:
> > > > > > On Thu, Oct 10, 2019 at 3:54 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > On Wed, Oct 9, 2019 at 7:09 PM Andy Shevchenko
> > > > > > > <andriy.shevchenko@linux.intel.com> wrote:
> > > > > > > > On Thu, Oct 10, 2019 at 01:28:08AM +0900, Masahiro Yamada wrote:
> > > > > > > > > On Thu, Oct 10, 2019 at 12:27 AM William Breathitt Gray
> > > > > > > > > <vilhelm.gray@gmail.com> wrote:
>
> > > > > > > > > Why is the return type "unsigned long" where you know
> > > > > > > > > it return the 8-bit value ?
> > > > > > > >
> > > > > > > > Because bitmap API operates on unsigned long type. This is not only
> > > > > > > > consistency, but for sake of flexibility in case we would like to introduce
> > > > > > > > more calls like clump16 or so.
> > > > > > >
> > > > > > > TBH, that doesn't convince me: those functions explicitly take/return an
> > > > > > > 8-bit value, and have "8" in their name.  The 8-bit value is never
> > > > > > > really related to, retrieved from, or stored in a full "unsigned long"
> > > > > > > element of a bitmap, only to/from/in a part (byte) of it.
> > > > > > >
> > > > > > > Following your rationale, all of iowrite{8,16,32,64}*() should take an
> > > > > > > "unsigned long" value, too.
> > > > > >
> > > > > > Using u8/u16/u32/u64 looks more consistent with other bitmap helpers.
> > > > > >
> > > > > > void bitmap_from_arr32(unsigned long *bitmap, const u32 *buf, unsigned
> > > > > > int nbits);
> > > > > > void bitmap_to_arr32(u32 *buf, const unsigned long *bitmap, unsigned int nbits);
> > > > > > static inline void bitmap_from_u64(unsigned long *dst, u64 mask);
> > > > > >
> > > > > > If you want to see more examples from other parts,
> > > > >
> > > > > Geert's and yours examples both are not related. They are about
> > > > > fixed-width properies when we know that is the part of protocol.
> > > > > Here we have no protocol which stricts us to the mentioned fixed-width types.
> > > >
> > > > Yes you have: they are functions to store/retrieve an 8-bit value from
> > > > the middle of the bitmap, which is reflected in their names ("clump8",
> > > > "value8").
> > > > The input/output value is clearly separated from the actual bitmap,
> > > > which is referenced by the "unsigned long *".
> > > >
> > > > If you add new "value16" functions, they will be intended to store/retrieve
> > > > 16-bit values.
> > >
> > > And if I add 4-bit, 12-bit or 24-bit values, what should I use?
> >
> > Whatever is needed to store that?
> > I agree "unsigned long" is appropriate for a generic function to extract a
> > bit field of 1 to BITS_PER_LONG bits.
> >
> > > > Besides, if retrieving an 8-bit value requires passing an
> > > > "unsigned long *", the caller needs two variables: one unsigned long to
> > > > pass the address of, and one u8 to copy the returned value into.
> > >
> > > Why do you need a temporary variable? In some cases it might make
> > > sense, but in general simple cases I don't see what you may achieve
> > > with it.
> >
> > Because find_next_clump8() takes a pointer to store the output value.
>
> So does regmap_read().

I believe that one is different, as it is a generic function, and the
width of the
returned value depends on the regmap config.

> 8 appeared there during review when it has been proposed to optimize to 8-bit
> clumps as most of the current users utilize it. The initial idea was to be
> bit-width agnostic. And with current API it's possible to easy convert to other
> formats later if we need.

"optimized for 8-bit clumps" and "out-of-line function that takes an
unsigned long pointer for an output parameter" don't match well, IMHO.

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
