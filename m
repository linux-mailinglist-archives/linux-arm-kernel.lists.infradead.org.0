Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6DB1FA86B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 07:57:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5dZJwLkbLs9ifHE2KPen69bmU2mtJFrLv70NKvHWuVE=; b=psATaCqcvcwm8W
	aQWuJVXdCxkdScqAOfLyeAKdTbEnQCk+4AD61grLaBxtW6VTgKAgnextnolSCTrxwqBtYQunofTv4
	4Jn3+Lq1hadFkwPdIlhGtRXLsEonjFIQm5SJXxQiXn0y0zRL11NTjiyk2TJhyc40O7qaklt3BN052
	nDBlFBkbhH06c1+T+DTekT4lQnQNwoJ1RAjMLZpYg8p96g2cAX2uXJpUifM2coCK3T+tSNB7GkZta
	okmd3pqV5h+NJRgR4w091C4CG7uEGeZx3VPnq7SX0pGThEV5FYTOBFNbDc97U2yBPUMYyFcJ0ZcB1
	CSMCiHSB6AGU+wNpK+hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl4bJ-0001LF-Tx; Tue, 16 Jun 2020 05:57:37 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl4bC-0001KY-DZ
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 05:57:32 +0000
Received: by mail-il1-x142.google.com with SMTP id b5so17712542iln.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 22:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jO6HidFD2GZHYEdq4Pf2STG4Y5Qbo03mtR4akQ8KCrc=;
 b=XNcJFU+rZ0+XQJp6ONQ9hU4ZBMCl6KiGYneEjomu+Lm5Sl16WzM00tDZ3f7QKoct40
 Z4S778WXwJFLa9FZWahFfpuBaUw6AZD9ZZDt3Kizgl59ImGei18iRi/Xr4RuKc1wqG0x
 GpnQFApUOn0UBHJMFIRiHODUez3MBBgUiDA2CLc1tkdMnOTA1TQ1ldgaMOtPmfEo9ebS
 Py94inw3gWE2cFXJlNDTZcBVV/YJ2edW/w2AcuCdCCUSKV834QIWNDh7lg/EBOxCLZDI
 0HetA9coL37DNQoYHj4XOSn5NIhP7TwVMt4gHzhE1zZl+OcTDx0gfyQjJ55dlkw0VKzc
 LFUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jO6HidFD2GZHYEdq4Pf2STG4Y5Qbo03mtR4akQ8KCrc=;
 b=Edew8iVY4q7qzdezLiwaQeGT1yzmk4jkUk48p63208dHhw+SwTnpRYG1mY4IJ5jzSZ
 l5Jv4WKU2k5lbWCeGmvA4A5sviyE6Ra0uh7tsfaOJIe0Jk2eHSFlCvtph+BtbbEfBNIn
 kAwTsV4kohkyg0Qfu2KU2CvdzC6EKCATBEUtUvN7e7KjxGO95aasxEzcQvjLY1EBXH7L
 l8DvGnsOKzwqYY2fe6tP7srBlvMSGO4W5DC57fLgElEHwLMjQ3kiZqfA8fAl5OCMFqdS
 H6v0jEZuJ3wFj3Em3VVdiRjDNa8fllhjNzteqNWXmg1gOvk74+ie2Recu5V2FW2bUhYu
 BoxQ==
X-Gm-Message-State: AOAM532V8UPZbainszdiF6AEQfkPOPP3rU+LnaNzIjBMIOyAAP+QPc0C
 YbAH8ekK4Xth0lpXupZDktjlPGlFKGf3kr2zo2A=
X-Google-Smtp-Source: ABdhPJzJ4ulFoSzwUUSDOauNc6vwON0bZod0JOc0uYBVetSDlB2Hekxu0gh7p7PaYD/VNrPCi/qFhMZ0NAHmZyf3amk=
X-Received: by 2002:a92:7309:: with SMTP id o9mr1580810ilc.205.1592287049436; 
 Mon, 15 Jun 2020 22:57:29 -0700 (PDT)
MIME-Version: 1.0
References: <46c05c5deeada60a13ee0de83c68583d578f42fd.1592224129.git.syednwaris@gmail.com>
 <202006160420.iatdr9ab%lkp@intel.com>
In-Reply-To: <202006160420.iatdr9ab%lkp@intel.com>
From: Syed Nayyar Waris <syednwaris@gmail.com>
Date: Tue, 16 Jun 2020 11:27:18 +0530
Message-ID: <CACG_h5oiA8mDpTjtyGFYR4eptbxppN9tq+2wUj8T1hsbZ5h47A@mail.gmail.com>
Subject: Re: [PATCH v8 4/4] gpio: xilinx: Utilize for_each_set_clump macro
To: kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_225730_477705_9F9B228B 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kbuild-all@lists.01.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 1:39 AM kernel test robot <lkp@intel.com> wrote:
>
> Hi Syed,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on 444fc5cde64330661bf59944c43844e7d4c2ccd8]
>
> url:    https://github.com/0day-ci/linux/commits/Syed-Nayyar-Waris/Introduce-the-for_each_set_clump-macro/20200615-205729
> base:    444fc5cde64330661bf59944c43844e7d4c2ccd8
> config: sparc64-randconfig-s032-20200615 (attached as .config)
> compiler: sparc64-linux-gcc (GCC) 9.3.0
> reproduce:
>         # apt-get install sparse
>         # sparse version: v0.6.2-rc1-3-g55607964-dirty
>         # save the attached .config to linux build tree
>         make W=1 C=1 ARCH=sparc64 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
>
> sparse warnings: (new ones prefixed by >>)
>
> >> include/linux/bitmap.h:639:45: sparse: sparse: shift too big (64) for type unsigned long
> >> include/linux/bitmap.h:639:45: sparse: sparse: shift too big (64) for type unsigned long
>    include/linux/bitmap.h:594:63: sparse: sparse: shift too big (64) for type unsigned long
> >> include/linux/bitmap.h:639:45: sparse: sparse: shift too big (64) for type unsigned long
> >> include/linux/bitmap.h:638:17: sparse: sparse: invalid access past the end of 'old' (8 8)
>
> vim +639 include/linux/bitmap.h
>
> 169c474fb22d8a William Breathitt Gray 2019-12-04  613
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  614  /**
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  615   * bitmap_set_value - set n-bit value within a memory region
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  616   * @map: address to the bitmap memory region
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  617   * @value: value of nbits
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  618   * @start: bit offset of the n-bit value
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  619   * @nbits: size of value in bits
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  620   */
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  621  static inline void bitmap_set_value(unsigned long *map,
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  622                               unsigned long value,
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  623                               unsigned long start, unsigned long nbits)
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  624  {
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  625   const size_t index = BIT_WORD(start);
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  626   const unsigned long offset = start % BITS_PER_LONG;
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  627   const unsigned long ceiling = roundup(start + 1, BITS_PER_LONG);
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  628   const unsigned long space = ceiling - start;
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  629
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  630   value &= GENMASK(nbits - 1, 0);
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  631
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  632   if (space >= nbits) {
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  633           map[index] &= ~(GENMASK(nbits + offset - 1, offset));
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  634           map[index] |= value << offset;
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  635   } else {
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  636           map[index] &= ~BITMAP_FIRST_WORD_MASK(start);
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  637           map[index] |= value << offset;
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15 @638           map[index + 1] &= ~BITMAP_LAST_WORD_MASK(start + nbits);
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15 @639           map[index + 1] |= (value >> space);
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  640   }
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  641  }
> 803024b6c8a375 Syed Nayyar Waris      2020-06-15  642


Regarding the compilation warning reported above:

"sparse: shift too big (64) for type unsigned long" at line 639
"sparse: invalid access past the end of 'old' (8 8)" at line 638

Kindly refer to the code above, at these line numbers.

I am in the process of fixing this warning. But what would be the fix
? At the moment can't think of a code-fix to make the compilation
warning disappear (specially at line 639). Can anyone please explain
to me the meaning of the compilation warning more deeply?

By the way, this warning was not reported in (earlier) v7 of the patchset.

Regards
Syed Nayyar Waris

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
