Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA905D21FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 09:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LRZGszb+35uoKjMW2x40C3+OPoe1yRewMU2asgote8E=; b=mX2xyZG8Yt2Qkk
	XYveI7+jhuJFCteAYlZi384VjyhrXWWUh7BcE0n11VZhE9AXvJqRqrusi0P/YUw4DJKic8+xjNWmv
	FPSLSjUrxKf/xGHMHPM8fmt3ljNh/8+W//RabKT9DYPP2obmXFX1x4AIxSrCcOWLjAi1kh8I6ZG8G
	aB3yRsGf3K2UkaIOhKGIJB+AMDrvpNnrG4lpA2QF7Fs0T1r20i5yyYPk33XdrjyP6kjYjwzU8+Elh
	fTLcyDecLLSn1Tldl746IQllfrE/rScR0ycnYbrEJRapSd4m1ZWKMtGBt2YeHEaPixCBDArMhRrDS
	i47K4B8dnEpcbhc2m4+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIT5M-0006zJ-V0; Thu, 10 Oct 2019 07:42:08 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIT5F-0006yh-CV
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 07:42:02 +0000
Received: by mail-pf1-x442.google.com with SMTP id v4so3337886pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 00:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NURwLHdKTSUja8QJMkMZYKyjuSxICE5fd85HFToXHUo=;
 b=q1RVugoYID1AntkYDacABjtI5fJI2xoh0kTSCp11ZmTPy2LsAOnqdkLl0dgT/wt0Ek
 JiPGbQPc0bUJQCNscgMRBLCd2g4y6E6UPh7YTmevt5wTSP3McI3jGC0xuIWsiCZ72TA7
 qklewgxuJP+GT9GiJyZazmKqlg+3K8MDdsU1drkv2VslNNVYeaywlhRwa6lN+3MsG/Yx
 NAardTvdjDDzxhCGflO+ITcQs+MH5S6y9SJ5JfOFMsmHHLoWV04JLW5YMMbivlJGzr79
 VEKnWfxJQa2wECy3tgO0xtCbEFQMNn4Dqp0PJDdGXNhqNPfWfFNalY3Yh/3KfAQiVfZM
 g1Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NURwLHdKTSUja8QJMkMZYKyjuSxICE5fd85HFToXHUo=;
 b=apWCSGHuC4dY8XyMGBXMLRA1PJesq9paYiBY2Oztv7Oj5uBqEqkJWhUVMdVbeKF2FY
 2P5nV98Tc0MqhFKqvC5kIc4z0z1O4hyzmKK6bTzgct5sx8XYxPss+OvCeX6pj7K1+7A9
 +n0F3VMvMnxaiJFHQfVuoO7dHy6l/x2ypxQBpkNNQzlex/o8/uNGd7OTfVjaBwany9N3
 FBioX3UDYWw5uNU59Ws1gvptMzDujY0oKSYprRHDcbwrMYJoj/IriLyE1PZwIIOClkj3
 PXG/9vwqsQcaRWuN/+4wVxcAVYxeQULz14bVUNhftvNdXfDubFsHw8UxODF5N5XR/SvN
 2d5A==
X-Gm-Message-State: APjAAAUP34jUwE/hyqyZOdZ47yoU5n/SnnjCqxdz9sfw3A6n5cuszy/Q
 2Wv471Ou6vM0A9AqriMu+a0/p995TTZlZdvNnZ0=
X-Google-Smtp-Source: APXvYqw0gPatkwLXJe/cmckF2C9gwUV1JDOD+a56x4smY8rrWTgJRDyoijvUakofMAVnEQkAbavjRoG2E7EnvtMD5Z0=
X-Received: by 2002:a17:90a:b391:: with SMTP id
 e17mr10016417pjr.132.1570693320245; 
 Thu, 10 Oct 2019 00:42:00 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
 <893c3b4f03266c9496137cc98ac2b1bd27f92c73.1570633189.git.vilhelm.gray@gmail.com>
 <CAK7LNATgW7bXUmqV=3QAaJ0Qu73Kox-TgDCQJb=s0=mwewSCUg@mail.gmail.com>
 <20191009170917.GG32742@smile.fi.intel.com>
 <CAMuHMdXyyrL4ibKvjMV6r8TuxpmK73=JxsWNEfcRk1NjwsnOjA@mail.gmail.com>
 <CAK7LNASVdqU_6+_iinWStb9ALqLw494pnZKr46fLW+WJ9nUo6A@mail.gmail.com>
 <CAHp75VeLkfNZkqhD8tedJdav81L+VA3Z50Kwcd9h4R7zMwjtvA@mail.gmail.com>
 <CAMuHMdVs=PgET6=-fKgznETOye_Bxqt6h16Ok0nu6J2vXG-r_w@mail.gmail.com>
In-Reply-To: <CAMuHMdVs=PgET6=-fKgznETOye_Bxqt6h16Ok0nu6J2vXG-r_w@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 10 Oct 2019 10:41:49 +0300
Message-ID: <CAHp75Vc8HX=hs2F2R_wOaFM7cFjaX0k_kENybdxSh742PpVkjw@mail.gmail.com>
Subject: Re: [PATCH v17 01/14] bitops: Introduce the for_each_set_clump8 macro
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_004201_426535_560200D4 
X-CRM114-Status: GOOD (  23.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Thu, Oct 10, 2019 at 9:29 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Thu, Oct 10, 2019 at 7:49 AM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
> > On Thu, Oct 10, 2019 at 5:31 AM Masahiro Yamada
> > <yamada.masahiro@socionext.com> wrote:
> > > On Thu, Oct 10, 2019 at 3:54 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > On Wed, Oct 9, 2019 at 7:09 PM Andy Shevchenko
> > > > <andriy.shevchenko@linux.intel.com> wrote:
> > > > > On Thu, Oct 10, 2019 at 01:28:08AM +0900, Masahiro Yamada wrote:
> > > > > > On Thu, Oct 10, 2019 at 12:27 AM William Breathitt Gray
> > > > > > <vilhelm.gray@gmail.com> wrote:
> > > > > > >
> > > > > > > This macro iterates for each 8-bit group of bits (clump) with set bits,
> > > > > > > within a bitmap memory region. For each iteration, "start" is set to the
> > > > > > > bit offset of the found clump, while the respective clump value is
> > > > > > > stored to the location pointed by "clump". Additionally, the
> > > > > > > bitmap_get_value8 and bitmap_set_value8 functions are introduced to
> > > > > > > respectively get and set an 8-bit value in a bitmap memory region.
> > > > >
> > > > > > Why is the return type "unsigned long" where you know
> > > > > > it return the 8-bit value ?
> > > > >
> > > > > Because bitmap API operates on unsigned long type. This is not only
> > > > > consistency, but for sake of flexibility in case we would like to introduce
> > > > > more calls like clump16 or so.
> > > >
> > > > TBH, that doesn't convince me: those functions explicitly take/return an
> > > > 8-bit value, and have "8" in their name.  The 8-bit value is never
> > > > really related to, retrieved from, or stored in a full "unsigned long"
> > > > element of a bitmap, only to/from/in a part (byte) of it.
> > > >
> > > > Following your rationale, all of iowrite{8,16,32,64}*() should take an
> > > > "unsigned long" value, too.
> > > >
> > >
> > > +1
> > >
> > > Using u8/u16/u32/u64 looks more consistent with other bitmap helpers.
> > >
> > > void bitmap_from_arr32(unsigned long *bitmap, const u32 *buf, unsigned
> > > int nbits);
> > > void bitmap_to_arr32(u32 *buf, const unsigned long *bitmap, unsigned int nbits);
> > > static inline void bitmap_from_u64(unsigned long *dst, u64 mask);
> > >
> > >
> > >
> > > If you want to see more examples from other parts,
> >
> > Geert's and yours examples both are not related. They are about
> > fixed-width properies when we know that is the part of protocol.
> > Here we have no protocol which stricts us to the mentioned fixed-width types.
>
> Yes you have: they are functions to store/retrieve an 8-bit value from
> the middle of the bitmap, which is reflected in their names ("clump8",
> "value8").
> The input/output value is clearly separated from the actual bitmap,
> which is referenced by the "unsigned long *".
>
> If you add new "value16" functions, they will be intended to store/retrieve
> 16-bit values.

And if I add 4-bit, 12-bit or 24-bit values, what should I use?

> Besides, if retrieving an 8-bit value requires passing an
> "unsigned long *", the caller needs two variables: one unsigned long to
> pass the address of, and one u8 to copy the returned value into.

Why do you need a temporary variable? In some cases it might make
sense, but in general simple cases I don't see what you may achieve
with it.

I looked at bitmap.h and see few functions may have benefited of
actually eliminating a use of long -> u8 -> long conversion.

Here is the question what we are mostly doing after we got a clump out
of bitmap.

> > So, I can tell an opposite, your arguments didn't convince me.
> >
> > Imagine the function which does an or / and / xor operation on bitmap.
> > Now, when I supply unsigned long, I will see
> > operations on one type in _one_ function independently of the size.
> > Your proposal will make an unneded churn.
>
> Depends on what kind of value you will use to do the logical operation
> with the bitmap:
>   - Full bitmap => unsigned long * + size,
>   - Single bitmap "word" => unsigned long,
>   - 8-bit value => u8,
>   - 16-bit value => u16

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
