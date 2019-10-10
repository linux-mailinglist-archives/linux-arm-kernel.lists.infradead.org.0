Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8864AD221A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 09:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OfZ2cBeSJDMpDdT21bjjFiHCVTeY52+GFVhng9KnOzc=; b=Gtd7TICI/KNpBk
	g8NJ2tlmQji9874fkepSV+IUd5fIHr1LkzS4CM3jayOMUXBpOGOOp84Jxugjji1MesR/nOvtMurwS
	3LbXHoDDUvqQ/ybIqPnuYDAoEHauE2mCwAFjLol5fyG/1YdMaMBPjKWCQf0CvNSvAjWP2YO15hHDW
	qp/yDig4vbPlpbRHIr66HVqwrbmc2LB9rANQz5SaraydVkm8QdxADH80LSyy8j04Xl6NTHAMOLMco
	A326w5SqnhbikXfOnZOQcSMNS/yesZ+WBa5PoIXb3RfcVshDI5hBv7M/dzqaEhh8r7BUXjnkbXppT
	GIOe+7EKsz9iYY1iiMBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iITDB-0001A0-PD; Thu, 10 Oct 2019 07:50:13 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iITD1-0000ce-Cc
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 07:50:05 +0000
Received: by mail-oi1-f195.google.com with SMTP id w144so4097294oia.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 00:50:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eVvYMYarzhJrwE6yFFXzgyZHGyeDwkr9hOnx2vpOIME=;
 b=MEQ3hO2KLcVDo1JdKeO7KR0KbC2I/qyx1DP4W+/dbRCr7hLFtjkHJtne9Ykhrx1VhU
 1hMiHzAAsMVDh/vH7WXK9166D7qZyeYmluwPd3q2dbg2HlDaA60zxjJclyu78L1Y6OGu
 KFcYhDtsxXtmFyHHuZ7XrNFCzjd/JgOYOnGfOyWY/yZ1X/8gbMemELwimOQoSQgKTvKo
 /Lni5S3IOxm3/ioRrJbbvV3D1xP0uHi1YKvVey3HBInEiuRq/q71gt9ihBINAVKTAx4L
 i7V49RsypUHTRl5C7sCl1vK6ai4EWfE0iw9qf00NJf94tD7BnMcQGHeIidhrnmzcWZNz
 RFEA==
X-Gm-Message-State: APjAAAXBRwiYZeinJO5uQ4aKU+eNDNIOZUmQ7M38xCczuVzwuiCJBeOo
 IZCO+n08SSaWKlbByXlOV2Klb7O/M8S6Nbek38A=
X-Google-Smtp-Source: APXvYqysMMf5yeS+bvd+d64d0b4d0QWCLGnQ+1EuJ7pMdhAJG06ztEeNrc8aR7qc9c2xlUXkVf58Z+O0t+BAwLK1Mcs=
X-Received: by 2002:aca:cf58:: with SMTP id f85mr6038657oig.153.1570693802394; 
 Thu, 10 Oct 2019 00:50:02 -0700 (PDT)
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
In-Reply-To: <CAHp75Vc8HX=hs2F2R_wOaFM7cFjaX0k_kENybdxSh742PpVkjw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 10 Oct 2019 09:49:51 +0200
Message-ID: <CAMuHMdVrQyt=VJ8outiGEXW78-cY=YUWyeVXN-_MFg75erJ=Yg@mail.gmail.com>
Subject: Re: [PATCH v17 01/14] bitops: Introduce the for_each_set_clump8 macro
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_005003_462392_DED432D6 
X-CRM114-Status: GOOD (  25.05  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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

On Thu, Oct 10, 2019 at 9:42 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
> On Thu, Oct 10, 2019 at 9:29 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Thu, Oct 10, 2019 at 7:49 AM Andy Shevchenko
> > <andy.shevchenko@gmail.com> wrote:
> > > On Thu, Oct 10, 2019 at 5:31 AM Masahiro Yamada
> > > <yamada.masahiro@socionext.com> wrote:
> > > > On Thu, Oct 10, 2019 at 3:54 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > On Wed, Oct 9, 2019 at 7:09 PM Andy Shevchenko
> > > > > <andriy.shevchenko@linux.intel.com> wrote:
> > > > > > On Thu, Oct 10, 2019 at 01:28:08AM +0900, Masahiro Yamada wrote:
> > > > > > > On Thu, Oct 10, 2019 at 12:27 AM William Breathitt Gray
> > > > > > > <vilhelm.gray@gmail.com> wrote:
> > > > > > > >
> > > > > > > > This macro iterates for each 8-bit group of bits (clump) with set bits,
> > > > > > > > within a bitmap memory region. For each iteration, "start" is set to the
> > > > > > > > bit offset of the found clump, while the respective clump value is
> > > > > > > > stored to the location pointed by "clump". Additionally, the
> > > > > > > > bitmap_get_value8 and bitmap_set_value8 functions are introduced to
> > > > > > > > respectively get and set an 8-bit value in a bitmap memory region.
> > > > > >
> > > > > > > Why is the return type "unsigned long" where you know
> > > > > > > it return the 8-bit value ?
> > > > > >
> > > > > > Because bitmap API operates on unsigned long type. This is not only
> > > > > > consistency, but for sake of flexibility in case we would like to introduce
> > > > > > more calls like clump16 or so.
> > > > >
> > > > > TBH, that doesn't convince me: those functions explicitly take/return an
> > > > > 8-bit value, and have "8" in their name.  The 8-bit value is never
> > > > > really related to, retrieved from, or stored in a full "unsigned long"
> > > > > element of a bitmap, only to/from/in a part (byte) of it.
> > > > >
> > > > > Following your rationale, all of iowrite{8,16,32,64}*() should take an
> > > > > "unsigned long" value, too.
> > > > >
> > > >
> > > > +1
> > > >
> > > > Using u8/u16/u32/u64 looks more consistent with other bitmap helpers.
> > > >
> > > > void bitmap_from_arr32(unsigned long *bitmap, const u32 *buf, unsigned
> > > > int nbits);
> > > > void bitmap_to_arr32(u32 *buf, const unsigned long *bitmap, unsigned int nbits);
> > > > static inline void bitmap_from_u64(unsigned long *dst, u64 mask);
> > > >
> > > >
> > > >
> > > > If you want to see more examples from other parts,
> > >
> > > Geert's and yours examples both are not related. They are about
> > > fixed-width properies when we know that is the part of protocol.
> > > Here we have no protocol which stricts us to the mentioned fixed-width types.
> >
> > Yes you have: they are functions to store/retrieve an 8-bit value from
> > the middle of the bitmap, which is reflected in their names ("clump8",
> > "value8").
> > The input/output value is clearly separated from the actual bitmap,
> > which is referenced by the "unsigned long *".
> >
> > If you add new "value16" functions, they will be intended to store/retrieve
> > 16-bit values.
>
> And if I add 4-bit, 12-bit or 24-bit values, what should I use?

Whatever is needed to store that?
I agree "unsigned long" is appropriate for a generic function to extract a
bit field of 1 to BITS_PER_LONG bits.

> > Besides, if retrieving an 8-bit value requires passing an
> > "unsigned long *", the caller needs two variables: one unsigned long to
> > pass the address of, and one u8 to copy the returned value into.
>
> Why do you need a temporary variable? In some cases it might make
> sense, but in general simple cases I don't see what you may achieve
> with it.

Because find_next_clump8() takes a pointer to store the output value.

> I looked at bitmap.h and see few functions may have benefited of
> actually eliminating a use of long -> u8 -> long conversion.
>
> Here is the question what we are mostly doing after we got a clump out
> of bitmap.

If I call find_next_clump8() to extract a byte, I guess I want to process an u8
aftwerwards?

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
