Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7FDD1401
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 18:29:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ulyybdUuSd2utqYmy/XGYMvSSyAKZCiXKeGeXaQuSQ=; b=jiLrbP43tJjIkA
	WU6iSJRJqAImz6dV7p+2NgRB2gdxmQC/E8ByYURoTYMD+Zcfxj9NKcHExwLJLFNxoaKtvfU6RIq/s
	QFMgVlT0pMhNEz75Ewqho1+FWjgRqc8+gNTVx6kogH3trjpUhTnuALE8YmZunJMyb5oQncLNIJciS
	Q3O5lEi3TQrccJGt2nHGhhGCXCyDXK2iQjcwcWVLBp/C8ivNOhh1pfZPY97IEbE46biYRHJIPFK1D
	RjB5HLeQ/w3WmCsRBtC2/YbyvPrWfPKZsLp4VVbzU+M9dcYo0ORoqFWyNApaj7yrqkyZUYZ18ZP0W
	TTvwQz4w6d+HzJvnHpYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIEpw-0003hC-OI; Wed, 09 Oct 2019 16:29:16 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIEpo-0003gd-Mz
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 16:29:10 +0000
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
 [209.85.217.49]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id x99GSjW5029161
 for <linux-arm-kernel@lists.infradead.org>; Thu, 10 Oct 2019 01:28:46 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x99GSjW5029161
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1570638526;
 bh=zM7dxD3GmLuJA27n7tj6vmU9wclV7umhFu5rYXOd+6c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WMDiQTEWIBwEvpJpTB9eyQDIwV3PJWS313QWFGarMNTe6494JfeZcS0qYC5nxQ8SY
 QfEu5D8NCs3nb5ulo5tgU1Q5jiJWxFGZOtQ+Z+YIvXJq3rbyn5hc3rAgSmKrWzNK0O
 7GkdmPYijZiXjNF+Y1FeU5fcYMrE2qZkudmy+UU7eOMfnyb0s5JFgQyJ+esaqju80j
 C/937G/VI58NU1IQ40IYIuIojxvHEA4xrO531jwMt74V6tpEOs/bSTQTi5gg3uX4jG
 eyXOtUert+Y17oiMfy9TLpCiSxUd39MQj8spta6/7J42VG3WobAsrSX9A1xPSWDOg7
 vIal0reMdwxCA==
X-Nifty-SrcIP: [209.85.217.49]
Received: by mail-vs1-f49.google.com with SMTP id d204so1902800vsc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 09:28:46 -0700 (PDT)
X-Gm-Message-State: APjAAAWnBBNxdTxcWXkxSmg/n+1lRs0+oH7qdPeWgNLmu11WcDTQXYUi
 8Sk8tUNneSnoDwabNjf51PP7KyLIGXuoEuJY+Ss=
X-Google-Smtp-Source: APXvYqzH0lno0Jfiz/rFQhtYHfui45CzQbPKiMY0yhhlnjAVEgFdHdM9+zJ7EOc9vXnfVbLZJAT9ZLaAw0J1HbDFjmA=
X-Received: by 2002:a67:2e81:: with SMTP id u123mr1224042vsu.155.1570638525039; 
 Wed, 09 Oct 2019 09:28:45 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
 <893c3b4f03266c9496137cc98ac2b1bd27f92c73.1570633189.git.vilhelm.gray@gmail.com>
In-Reply-To: <893c3b4f03266c9496137cc98ac2b1bd27f92c73.1570633189.git.vilhelm.gray@gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 10 Oct 2019 01:28:08 +0900
X-Gmail-Original-Message-ID: <CAK7LNATgW7bXUmqV=3QAaJ0Qu73Kox-TgDCQJb=s0=mwewSCUg@mail.gmail.com>
Message-ID: <CAK7LNATgW7bXUmqV=3QAaJ0Qu73Kox-TgDCQJb=s0=mwewSCUg@mail.gmail.com>
Subject: Re: [PATCH v17 01/14] bitops: Introduce the for_each_set_clump8 macro
To: William Breathitt Gray <vilhelm.gray@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_092908_975301_4A05C5A3 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, Oct 10, 2019 at 12:27 AM William Breathitt Gray
<vilhelm.gray@gmail.com> wrote:
>
> This macro iterates for each 8-bit group of bits (clump) with set bits,
> within a bitmap memory region. For each iteration, "start" is set to the
> bit offset of the found clump, while the respective clump value is
> stored to the location pointed by "clump". Additionally, the
> bitmap_get_value8 and bitmap_set_value8 functions are introduced to
> respectively get and set an 8-bit value in a bitmap memory region.
>
> Suggested-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Suggested-by: Lukas Wunner <lukas@wunner.de>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> ---
>  include/asm-generic/bitops/find.h | 17 +++++++++++++++
>  include/linux/bitmap.h            | 35 +++++++++++++++++++++++++++++++
>  include/linux/bitops.h            |  5 +++++
>  lib/find_bit.c                    | 14 +++++++++++++
>  4 files changed, 71 insertions(+)
>
> diff --git a/include/asm-generic/bitops/find.h b/include/asm-generic/bitops/find.h
> index 8a1ee10014de..9fdf21302fdf 100644
> --- a/include/asm-generic/bitops/find.h
> +++ b/include/asm-generic/bitops/find.h
> @@ -80,4 +80,21 @@ extern unsigned long find_first_zero_bit(const unsigned long *addr,
>
>  #endif /* CONFIG_GENERIC_FIND_FIRST_BIT */
>
> +/**
> + * find_next_clump8 - find next 8-bit clump with set bits in a memory region
> + * @clump: location to store copy of found clump
> + * @addr: address to base the search on
> + * @size: bitmap size in number of bits
> + * @offset: bit offset at which to start searching
> + *
> + * Returns the bit offset for the next set clump; the found clump value is
> + * copied to the location pointed by @clump. If no bits are set, returns @size.
> + */
> +extern unsigned long find_next_clump8(unsigned long *clump,
> +                                     const unsigned long *addr,
> +                                     unsigned long size, unsigned long offset);
> +
> +#define find_first_clump8(clump, bits, size) \
> +       find_next_clump8((clump), (bits), (size), 0)
> +
>  #endif /*_ASM_GENERIC_BITOPS_FIND_H_ */
> diff --git a/include/linux/bitmap.h b/include/linux/bitmap.h
> index 90528f12bdfa..761fab5b60a7 100644
> --- a/include/linux/bitmap.h
> +++ b/include/linux/bitmap.h
> @@ -66,6 +66,8 @@
>   *  bitmap_allocate_region(bitmap, pos, order)  Allocate specified bit region
>   *  bitmap_from_arr32(dst, buf, nbits)          Copy nbits from u32[] buf to dst
>   *  bitmap_to_arr32(buf, src, nbits)            Copy nbits from buf to u32[] dst
> + *  bitmap_get_value8(map, start)               Get 8bit value from map at start
> + *  bitmap_set_value8(map, value, start)        Set 8bit value to map at start
>   *
>   * Note, bitmap_zero() and bitmap_fill() operate over the region of
>   * unsigned longs, that is, bits behind bitmap till the unsigned long
> @@ -488,6 +490,39 @@ static inline void bitmap_from_u64(unsigned long *dst, u64 mask)
>                 dst[1] = mask >> 32;
>  }
>
> +/**
> + * bitmap_get_value8 - get an 8-bit value within a memory region
> + * @map: address to the bitmap memory region
> + * @start: bit offset of the 8-bit value; must be a multiple of 8
> + *
> + * Returns the 8-bit value located at the @start bit offset within the @src
> + * memory region.
> + */
> +static inline unsigned long bitmap_get_value8(const unsigned long *map,
> +                                             unsigned long start)

Why is the return type "unsigned long" where you know
it return the 8-bit value ?

u8?



> +{
> +       const size_t index = BIT_WORD(start);
> +       const unsigned long offset = start % BITS_PER_LONG;
> +
> +       return (map[index] >> offset) & 0xFF;
> +}
> +
> +/**
> + * bitmap_set_value8 - set an 8-bit value within a memory region
> + * @map: address to the bitmap memory region
> + * @value: the 8-bit value; values wider than 8 bits may clobber bitmap
> + * @start: bit offset of the 8-bit value; must be a multiple of 8
> + */
> +static inline void bitmap_set_value8(unsigned long *map, unsigned long value,


Same here,   "u8 value"



> +                                    unsigned long start)
> +{
> +       const size_t index = BIT_WORD(start);
> +       const unsigned long offset = start % BITS_PER_LONG;
> +
> +       map[index] &= ~(0xFF << offset);
> +       map[index] |= value << offset;
> +}
> +
>  #endif /* __ASSEMBLY__ */
>
>  #endif /* __LINUX_BITMAP_H */
> diff --git a/include/linux/bitops.h b/include/linux/bitops.h
> index cf074bce3eb3..fb94a10f7853 100644
> --- a/include/linux/bitops.h
> +++ b/include/linux/bitops.h
> @@ -40,6 +40,11 @@ extern unsigned long __sw_hweight64(__u64 w);
>              (bit) < (size);                                    \
>              (bit) = find_next_zero_bit((addr), (size), (bit) + 1))
>
> +#define for_each_set_clump8(start, clump, bits, size) \
> +       for ((start) = find_first_clump8(&(clump), (bits), (size)); \
> +            (start) < (size); \
> +            (start) = find_next_clump8(&(clump), (bits), (size), (start) + 8))
> +
>  static inline int get_bitmask_order(unsigned int count)
>  {
>         int order;
> diff --git a/lib/find_bit.c b/lib/find_bit.c
> index 5c51eb45178a..e35a76b291e6 100644
> --- a/lib/find_bit.c
> +++ b/lib/find_bit.c
> @@ -214,3 +214,17 @@ EXPORT_SYMBOL(find_next_bit_le);
>  #endif
>
>  #endif /* __BIG_ENDIAN */
> +
> +unsigned long find_next_clump8(unsigned long *clump, const unsigned long *addr,


Ditto.   "u8 *clump"




> +                              unsigned long size, unsigned long offset)
> +{
> +       offset = find_next_bit(addr, size, offset);
> +       if (offset == size)
> +               return size;
> +
> +       offset = round_down(offset, 8);
> +       *clump = bitmap_get_value8(addr, offset);
> +
> +       return offset;
> +}
> +EXPORT_SYMBOL(find_next_clump8);
> --
> 2.23.0
>


--
Best Regards

Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
