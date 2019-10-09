Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABE8D14CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 19:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXMHokvjajPQc01h6TTlLhhrMqKVDr16nL3oHhJZQKA=; b=IgLrF9z9rLF+1J
	4k634veYHGtC+l2db2wwnZ+TCxc4QVYNTR2bcmCQSycNoobKlwqcvn05vmZcFXBrMows2JcoJMs70
	TBHnEob/p0DG5miN9MgNcFHIb0ChTrrAR1rX0gctT11DNQaYcClcL/akHvilkffirdFOn4j4XTkAI
	g4KfF/feyvIxxLYXKF6g3G+0TKCbN+YYkCJ5LaiA2vf7zNGY4wfbkDHjJ1zapQOcOD1PwdaFGAytX
	gijt3KHiUx4AvUz/JocimS+Wm1KNQtOgleWodAdKkMu66QPkTchJs2bAUw79W5iueW0urbKwtBOjh
	jypPUlTotIZHWdYLBGig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIFMg-0000Di-Rz; Wed, 09 Oct 2019 17:03:06 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIFMX-0000Cz-SL
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 17:02:59 +0000
Received: by mail-yw1-xc43.google.com with SMTP id n11so1072976ywn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 10:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dnZL99JTjxlFGbIIkPg5NnyiKXKoXT11Svd0yN/CwU8=;
 b=X5EfiGl+x8wyhlFGWbMvw90DM6DDHhDPF/5gPzPNCRnzrFO0yt9/jWjlnH2Iy5gy+a
 9QmS6vt+ZLtP8PzRhnHnZ8zpoOgsnOv6KDKOjgKBDIXEwwtZ6/DOPwMeD6jH8yZOzRhF
 BGH4SIWcOfCasEWCrlm3EQd402/8oVJs/5MB4CD9LNj6prg6MqLUHhRDO1s2NXTi5kzu
 E9T6OVmiKiNgRgbvmNQJ2oA2/smIEAUON0UvuNe1E9xSXJxpVGcDXKVV8Ih4Sg99/n5b
 gX1/RKF0jXJr1Q6PV2OIG/ZZeo+8gPimesWSB13HQRg9OXNr7y/+5Yv5iVJwjp+kBOw0
 a3XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dnZL99JTjxlFGbIIkPg5NnyiKXKoXT11Svd0yN/CwU8=;
 b=nkqSygaTKZTef+LOaTq7iUGjNfAEP67AQxzgldjTeFu7W1he+Jn56xWbmIN6QJ2yRt
 6a02P48x/3f2DQERWxygmMAvDNuCmlfgw+sUJmFAUJ/rPS+U4svFZFThgG0+ETvrRjQk
 ie1b3P6ixwHUTwK0G/d2ssUhE2LmHPETAMW1t/87fJRixTUyNb0ZDjuBT9yTEqg1qcPd
 4QiU/w+M17GHmPcJFRHSeiG+fEiqbQOtw5YqCQ02Sl19o7cxdoC7mHF9g6ZWX0DX1v9V
 emXWH6I1vjLK0P0c8q3HdC19ezBslvSmcMmXayUDgqrmbbc2l/6+qxo1RrvNn5BoP4lu
 GSPQ==
X-Gm-Message-State: APjAAAWvKhvrzetJ1LGnMr7yAi0/LQ0K+KVJzuGVNxPHK5FeZEpZkSKF
 J9pQwPkvqUfuCPNP1yuNuXM=
X-Google-Smtp-Source: APXvYqx2fVc37Jf8721/9k+odhIVUj6R9YZYy9mgpcFhtXL3ap9OvdV7k7YmGOGXRyU68K5foqvdxg==
X-Received: by 2002:a81:b607:: with SMTP id u7mr3541174ywh.77.1570640576499;
 Wed, 09 Oct 2019 10:02:56 -0700 (PDT)
Received: from icarus (072-189-084-142.res.spectrum.com. [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id v8sm698871ywg.91.2019.10.09.10.02.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 10:02:55 -0700 (PDT)
Date: Wed, 9 Oct 2019 13:02:40 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH v17 01/14] bitops: Introduce the for_each_set_clump8 macro
Message-ID: <20191009170240.GA93820@icarus>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
 <893c3b4f03266c9496137cc98ac2b1bd27f92c73.1570633189.git.vilhelm.gray@gmail.com>
 <CAK7LNATgW7bXUmqV=3QAaJ0Qu73Kox-TgDCQJb=s0=mwewSCUg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNATgW7bXUmqV=3QAaJ0Qu73Kox-TgDCQJb=s0=mwewSCUg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_100257_971351_74F0FE65 
X-CRM114-Status: GOOD (  26.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
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
Cc: linux-arch <linux-arch@vger.kernel.org>, preid@electromag.com.au,
 Arnd Bergmann <arnd@arndb.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux PM mailing list <linux-pm@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 morten.tiljeset@prevas.dk, sean.nyekjaer@prevas.dk,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Lukas Wunner <lukas@wunner.de>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 01:28:08AM +0900, Masahiro Yamada wrote:
> On Thu, Oct 10, 2019 at 12:27 AM William Breathitt Gray
> <vilhelm.gray@gmail.com> wrote:
> >
> > This macro iterates for each 8-bit group of bits (clump) with set bits,
> > within a bitmap memory region. For each iteration, "start" is set to the
> > bit offset of the found clump, while the respective clump value is
> > stored to the location pointed by "clump". Additionally, the
> > bitmap_get_value8 and bitmap_set_value8 functions are introduced to
> > respectively get and set an 8-bit value in a bitmap memory region.
> >
> > Suggested-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> > Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> > Suggested-by: Lukas Wunner <lukas@wunner.de>
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: Andrew Morton <akpm@linux-foundation.org>
> > Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
> > Cc: Linus Walleij <linus.walleij@linaro.org>
> > Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> > ---
> >  include/asm-generic/bitops/find.h | 17 +++++++++++++++
> >  include/linux/bitmap.h            | 35 +++++++++++++++++++++++++++++++
> >  include/linux/bitops.h            |  5 +++++
> >  lib/find_bit.c                    | 14 +++++++++++++
> >  4 files changed, 71 insertions(+)
> >
> > diff --git a/include/asm-generic/bitops/find.h b/include/asm-generic/bitops/find.h
> > index 8a1ee10014de..9fdf21302fdf 100644
> > --- a/include/asm-generic/bitops/find.h
> > +++ b/include/asm-generic/bitops/find.h
> > @@ -80,4 +80,21 @@ extern unsigned long find_first_zero_bit(const unsigned long *addr,
> >
> >  #endif /* CONFIG_GENERIC_FIND_FIRST_BIT */
> >
> > +/**
> > + * find_next_clump8 - find next 8-bit clump with set bits in a memory region
> > + * @clump: location to store copy of found clump
> > + * @addr: address to base the search on
> > + * @size: bitmap size in number of bits
> > + * @offset: bit offset at which to start searching
> > + *
> > + * Returns the bit offset for the next set clump; the found clump value is
> > + * copied to the location pointed by @clump. If no bits are set, returns @size.
> > + */
> > +extern unsigned long find_next_clump8(unsigned long *clump,
> > +                                     const unsigned long *addr,
> > +                                     unsigned long size, unsigned long offset);
> > +
> > +#define find_first_clump8(clump, bits, size) \
> > +       find_next_clump8((clump), (bits), (size), 0)
> > +
> >  #endif /*_ASM_GENERIC_BITOPS_FIND_H_ */
> > diff --git a/include/linux/bitmap.h b/include/linux/bitmap.h
> > index 90528f12bdfa..761fab5b60a7 100644
> > --- a/include/linux/bitmap.h
> > +++ b/include/linux/bitmap.h
> > @@ -66,6 +66,8 @@
> >   *  bitmap_allocate_region(bitmap, pos, order)  Allocate specified bit region
> >   *  bitmap_from_arr32(dst, buf, nbits)          Copy nbits from u32[] buf to dst
> >   *  bitmap_to_arr32(buf, src, nbits)            Copy nbits from buf to u32[] dst
> > + *  bitmap_get_value8(map, start)               Get 8bit value from map at start
> > + *  bitmap_set_value8(map, value, start)        Set 8bit value to map at start
> >   *
> >   * Note, bitmap_zero() and bitmap_fill() operate over the region of
> >   * unsigned longs, that is, bits behind bitmap till the unsigned long
> > @@ -488,6 +490,39 @@ static inline void bitmap_from_u64(unsigned long *dst, u64 mask)
> >                 dst[1] = mask >> 32;
> >  }
> >
> > +/**
> > + * bitmap_get_value8 - get an 8-bit value within a memory region
> > + * @map: address to the bitmap memory region
> > + * @start: bit offset of the 8-bit value; must be a multiple of 8
> > + *
> > + * Returns the 8-bit value located at the @start bit offset within the @src
> > + * memory region.
> > + */
> > +static inline unsigned long bitmap_get_value8(const unsigned long *map,
> > +                                             unsigned long start)
> 
> Why is the return type "unsigned long" where you know
> it return the 8-bit value ?
> 
> u8?

The primary reason is to be consistent with the datatype of the bitmap:
https://lkml.org/lkml/2019/1/12/26

This should also make it easier to extent to other sizes in the future
since we won't have to change the interface in order to support 16-bit
or 32-bit values -- they should easily fit within an unsigned long.

William Breathitt Gray

> 
> 
> 
> > +{
> > +       const size_t index = BIT_WORD(start);
> > +       const unsigned long offset = start % BITS_PER_LONG;
> > +
> > +       return (map[index] >> offset) & 0xFF;
> > +}
> > +
> > +/**
> > + * bitmap_set_value8 - set an 8-bit value within a memory region
> > + * @map: address to the bitmap memory region
> > + * @value: the 8-bit value; values wider than 8 bits may clobber bitmap
> > + * @start: bit offset of the 8-bit value; must be a multiple of 8
> > + */
> > +static inline void bitmap_set_value8(unsigned long *map, unsigned long value,
> 
> 
> Same here,   "u8 value"
> 
> 
> 
> > +                                    unsigned long start)
> > +{
> > +       const size_t index = BIT_WORD(start);
> > +       const unsigned long offset = start % BITS_PER_LONG;
> > +
> > +       map[index] &= ~(0xFF << offset);
> > +       map[index] |= value << offset;
> > +}
> > +
> >  #endif /* __ASSEMBLY__ */
> >
> >  #endif /* __LINUX_BITMAP_H */
> > diff --git a/include/linux/bitops.h b/include/linux/bitops.h
> > index cf074bce3eb3..fb94a10f7853 100644
> > --- a/include/linux/bitops.h
> > +++ b/include/linux/bitops.h
> > @@ -40,6 +40,11 @@ extern unsigned long __sw_hweight64(__u64 w);
> >              (bit) < (size);                                    \
> >              (bit) = find_next_zero_bit((addr), (size), (bit) + 1))
> >
> > +#define for_each_set_clump8(start, clump, bits, size) \
> > +       for ((start) = find_first_clump8(&(clump), (bits), (size)); \
> > +            (start) < (size); \
> > +            (start) = find_next_clump8(&(clump), (bits), (size), (start) + 8))
> > +
> >  static inline int get_bitmask_order(unsigned int count)
> >  {
> >         int order;
> > diff --git a/lib/find_bit.c b/lib/find_bit.c
> > index 5c51eb45178a..e35a76b291e6 100644
> > --- a/lib/find_bit.c
> > +++ b/lib/find_bit.c
> > @@ -214,3 +214,17 @@ EXPORT_SYMBOL(find_next_bit_le);
> >  #endif
> >
> >  #endif /* __BIG_ENDIAN */
> > +
> > +unsigned long find_next_clump8(unsigned long *clump, const unsigned long *addr,
> 
> 
> Ditto.   "u8 *clump"
> 
> 
> 
> 
> > +                              unsigned long size, unsigned long offset)
> > +{
> > +       offset = find_next_bit(addr, size, offset);
> > +       if (offset == size)
> > +               return size;
> > +
> > +       offset = round_down(offset, 8);
> > +       *clump = bitmap_get_value8(addr, offset);
> > +
> > +       return offset;
> > +}
> > +EXPORT_SYMBOL(find_next_clump8);
> > --
> > 2.23.0
> >
> 
> 
> --
> Best Regards
> 
> Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
