Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44F9200439
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsUnztt2n4ETxvdjCCY12FDH00EbiFs+VYHIOQzl4kI=; b=uvt2IHFtu7rq7n
	dSY0mKZuCbqEy6YenaTEm3yo1WlsnET2fyuyiUdp8KGfTYNTOlrc8zKVcIJY/A7BHaEy9/cmMmS7Y
	IiBaiSH1qK2A3gVkDiv9nm0x5j050EeTnJVKpPWRaAZsukCy20uDkaUWYTjKO3opaskMo22SwpVaJ
	PmTZzu4Q1yW+mkpFWjkhtQGf0TTopgxK2gqILXDx0HUmUEgXOpKt41vHr32N79UvT5p9jHoDMwa7C
	Uu7sxhbKZ11HRp7ZjhA4/EjGNlRn5sgGBsOfMHd2jZJNh956240HZgDZWByE9aMyZeSErlzN7iMo1
	r/FlQgWTfIBgBUovETJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCYq-0001LC-0M; Fri, 19 Jun 2020 08:39:44 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCYP-0001Aa-4M
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 08:39:18 +0000
Received: by mail-pg1-x541.google.com with SMTP id s10so4234508pgm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 01:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LfTeBjhR0kC/kK7WQYyTyG0IANM/qncZSxXBu+sRGtY=;
 b=T9dc5Ch5gxUc1jDKbjX71G2VmmZw1r7BEgF7KmxF4vnRI4P9j/V/WlaCptYKUtMpyR
 ivyJF2sc2mdUCSzFXIHeak5h1NO87TdMi/W6nBe4iWCmJrqta935EtSaBNOrTL3IwZAO
 oOkacdPcf6+R/gyEKdGw0gbicWVBdqDKEwf/hOQx5kVEXKc6fKzismDwvgX4JDNcbby+
 BoN5/dXiv2+guMQ4K20gWJQbEooxbr1h9BsXtv8vJfuK0/Ku4eGTmCPWMm+NrY3DpeUQ
 Iz5pVcaJqdpbjjMdikNdH2k+6S6TgL580Q6O4DPStdEpjkRKTPw9xUQxmmPTSBaqAZ1G
 7MLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LfTeBjhR0kC/kK7WQYyTyG0IANM/qncZSxXBu+sRGtY=;
 b=ZWifT20MSuFyiAC2crA7QKAHbyBiAc+2GGgkOLtG48+yFubQzwtN2qiiaZOzCq3/1D
 zZBCivdi0E+YjLIR/J9s6pf2R/qpVERCP5AygMInKjknpJEM0ATmlpH90xZkLFhFCw99
 U0kbiREgy/zEfaz6cNo96DzF5hpTDcMRJgO/A4KOKI8D4ePYEcu0uL0HMNdhVkSDRxuH
 K/vmeuU7IhCF+4mjSFNorKEtFKH4czttpJW/LBj5910G5G2/vZc9BkeuMfVhxZ7VEW+b
 7LSVgWbEi1Zqph9o/So7HcTeV5IRUoKIoL8VwHv4riaLYPy7atX7mdpAQZOO3bTU5k3M
 8T8g==
X-Gm-Message-State: AOAM532jDnX3nNBa5Jz1/VLdSq8zWg4HX2j3A7kRKCrEPtNs7gEk+s4v
 vQGXW/h0WuLz5bgZjqqY8h7gbqiaNO1b8YEzEEI=
X-Google-Smtp-Source: ABdhPJxj+EHwZq+iO64fyDjYHgaXsf4TlDuik/wYP0ViFcx7bNlgX9UOQvCtKXgl3wBWGY7ZlfeZoULLrRn60mWoUR0=
X-Received: by 2002:a63:f042:: with SMTP id s2mr2179441pgj.4.1592555956013;
 Fri, 19 Jun 2020 01:39:16 -0700 (PDT)
MIME-Version: 1.0
References: <46c05c5deeada60a13ee0de83c68583d578f42fd.1592224129.git.syednwaris@gmail.com>
 <202006160420.iatdr9ab%lkp@intel.com>
 <CACG_h5qUZsR7Zd9a+BQJqyuJZBrv-en+gC-sgcV+xV+A5ZOBhA@mail.gmail.com>
In-Reply-To: <CACG_h5qUZsR7Zd9a+BQJqyuJZBrv-en+gC-sgcV+xV+A5ZOBhA@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 19 Jun 2020 11:38:59 +0300
Message-ID: <CAHp75Ve_=LwV6fO3ESgbCOVDVr=C5wrnAJX9od9evFvHU5-Krw@mail.gmail.com>
Subject: Re: [PATCH v8 4/4] gpio: xilinx: Utilize for_each_set_clump macro
To: Syed Nayyar Waris <syednwaris@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_013917_175929_8A220400 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kbuild-all@lists.01.org, kernel test robot <lkp@intel.com>,
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

On Fri, Jun 19, 2020 at 10:02 AM Syed Nayyar Waris <syednwaris@gmail.com> wrote:

...

> > config: sparc64-randconfig-s032-20200615 (attached as .config)
> > compiler: sparc64-linux-gcc (GCC) 9.3.0
> > reproduce:
> >         # apt-get install sparse
> >         # sparse version: v0.6.2-rc1-3-g55607964-dirty
> >         # save the attached .config to linux build tree
> >         make W=1 C=1 ARCH=sparc64 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

...

> > sparse warnings: (new ones prefixed by >>)
> >
> > >> include/linux/bitmap.h:639:45: sparse: sparse: shift too big (64) for type unsigned long
> > >> include/linux/bitmap.h:639:45: sparse: sparse: shift too big (64) for type unsigned long
> >    include/linux/bitmap.h:594:63: sparse: sparse: shift too big (64) for type unsigned long
> > >> include/linux/bitmap.h:639:45: sparse: sparse: shift too big (64) for type unsigned long
> > >> include/linux/bitmap.h:638:17: sparse: sparse: invalid access past the end of 'old' (8 8)

> It seems to me that to reproduce this warning, I have to use the
> sparc64 compiler. I have installed 'sparc64-linux-gnu-gcc' on my
> computer.

Sparse is not a compiler.

> I have to specify that this compiler needs to be used for build
> process. How/ Where do I specify this?
>
> I have downloaded the config.gz (has config file) and placed it at the
> root of the linux kernel project tree. But the Makefile STILL has
> 'gcc' as the compiler. When I build, it is the 'gcc' compiler being
> used and not 'sparc64-linux-gnu-gcc'. I know I can manually change the
> Makefile to use sparc64 compiler, but I think there must be some more
> elegant way to do this, perhaps using make menuconfig?

If you wish to run a compilation, download a compiler from [1], and,
after adding its bin/ folder to PATH, run
make CROSS_COMPILE=sparc64-linux- ARCH=sparc64 ... # first generate .config

> Kindly illuminate as to how shall I reproduce the compiler warning.

> > 803024b6c8a375 Syed Nayyar Waris      2020-06-15 @638           map[index + 1] &= ~BITMAP_LAST_WORD_MASK(start + nbits);
> > 803024b6c8a375 Syed Nayyar Waris      2020-06-15 @639           map[index + 1] |= (value >> space);

Hmm... I think I sent a reply [2] where I explained how space can be
64. Do you agree with analysis?

[1]: https://mirrors.edge.kernel.org/pub/tools/crosstool/
[2]: https://lore.kernel.org/lkml/20200616081428.GP2428291@smile.fi.intel.com/

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
