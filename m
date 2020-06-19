Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED9720025E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 09:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPWQ37khQwNQSUOGMmT+YUy6dBJL6AqOIZ0D00oGpAM=; b=TSjYhqyJnTn0M5
	nqoWMZwZ31X1g3UcnfAdQie3B09WBouB6DQz6BA4eWo+s1PJeoZUzavb2N+0daELBlYj5CAHvxtoX
	/kSyYOYWn6hWAHt4C+iefrHrkV+rOsnaEUl4jVvnX8LEj5GTJwSz0Oso1uMQVb1yIBfD/wOswwvbt
	CesJa8r2eZYU4OP6bsJvKqEmV2dtc6xqLOTyvRg8DZWBzUcwhy5IYZhyQANdPIZP1cTZ2zkG+HVVn
	EQoQnq1PxeT0oLFUXPTb1B0ofYx6b5CfHuYk/eMn1nBCcFjsztknfVJD4oDEZsSgwMv1tHdfRfcm8
	qrKZF8unxezevuljzpIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmB1D-0006Wb-S5; Fri, 19 Jun 2020 07:00:55 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmB16-0006W8-2E
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 07:00:49 +0000
Received: by mail-il1-x141.google.com with SMTP id j19so8289216ilk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 00:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QMbAt1k2a7uyQKReEMHBWVP+e2hPp2/KEXSt2hE1Dgs=;
 b=EnS0KyEyEIhjKeIuzeRJah7X1i1UxSV1Rc5cg+gRQzYq1q+L5/rIHmPaol264xjvv/
 ks5u6LizmnNhGeOrdThBcxEi4lbW0gqmxdWnnXhUuae2Rndf3306vsbIaQ63dbMQHwVj
 PIO7rL9Vuccj87q+5SInY3YfNmAQ/z7GqQ5GvXQcpTZyxTj9YAiuXDcrDxPBfjbyakre
 umL5Z0trF2e6Cmx4ps5DBd/MDfNFe/XbV0qq2virnNtr+AwDoXIb2ZluQvKMGG9EKoA/
 hquSIKw1J2zOjAslzI+MQ4aUxDJXd6kwq9gsYPKXY3SWWewO+m9DXb0jqYm60TaSn/c/
 dLIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QMbAt1k2a7uyQKReEMHBWVP+e2hPp2/KEXSt2hE1Dgs=;
 b=Oqi8eHEjVcS7HWrtgyxzHaubSrit0o6akObARYRGe/37wC93VpjNMkyRramtkENIZb
 d28DaplQLSFTtTXQ4xBBcdm8srJm0Pd92OUHdkpWX1fIA0d4C0TksczH+dE3cACILIpZ
 miDCfb7/cJet+uwe0X2u3y+JQU0xOnUS6wwYA70pAWxV54TIl7txcKzFqD3Zc2y/vclR
 mkkY0GPmB5a1LYoKcs7BaExmfkZF+QGn4gAREZRgK9z0yz1MgNlEPvhihFo3pVkSOyMQ
 0iTfyoG1iuRbUAnahe11/4FtadfNEo9tT9rKvZmp/Jc24sFlC7tbUVJc2Y2+tRJeuBcK
 P6iQ==
X-Gm-Message-State: AOAM531JkqodguUyUXCOBTeA8z8f7bXkqOYpO9PF8NdxQb06pHWVNJ+8
 cVxBpQcIDXKS18CMP8NPsvOL/6FqAz6lwxu/h2+Fo9uc
X-Google-Smtp-Source: ABdhPJwmpb/UzzdKSIlxsufaFoBTyO0NylKvjrCptfFcs41NjlXUvcCtPjMUjTr5Ee8orMJapfBSGtIuuZAWG73cUHM=
X-Received: by 2002:a92:2410:: with SMTP id k16mr2334391ilk.40.1592550046708; 
 Fri, 19 Jun 2020 00:00:46 -0700 (PDT)
MIME-Version: 1.0
References: <46c05c5deeada60a13ee0de83c68583d578f42fd.1592224129.git.syednwaris@gmail.com>
 <202006160420.iatdr9ab%lkp@intel.com>
In-Reply-To: <202006160420.iatdr9ab%lkp@intel.com>
From: Syed Nayyar Waris <syednwaris@gmail.com>
Date: Fri, 19 Jun 2020 12:30:35 +0530
Message-ID: <CACG_h5qUZsR7Zd9a+BQJqyuJZBrv-en+gC-sgcV+xV+A5ZOBhA@mail.gmail.com>
Subject: Re: [PATCH v8 4/4] gpio: xilinx: Utilize for_each_set_clump macro
To: kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_000048_122540_EB9A0E17 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi All,

It seems to me that to reproduce this warning, I have to use the
sparc64 compiler. I have installed 'sparc64-linux-gnu-gcc' on my
computer.
I have to specify that this compiler needs to be used for build
process. How/ Where do I specify this?

I have downloaded the config.gz (has config file) and placed it at the
root of the linux kernel project tree. But the Makefile STILL has
'gcc' as the compiler. When I build, it is the 'gcc' compiler being
used and not 'sparc64-linux-gnu-gcc'. I know I can manually change the
Makefile to use sparc64 compiler, but I think there must be some more
elegant way to do this, perhaps using make menuconfig?

Kindly illuminate as to how shall I reproduce the compiler warning.

Regards
Syed Nayyar Waris

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
>
> :::::: The code at line 639 was first introduced by commit
> :::::: 803024b6c8a375ba9e9e9467595d7d52d4f6a38e bitops: Introduce the for_each_set_clump macro
>
> :::::: TO: Syed Nayyar Waris <syednwaris@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
