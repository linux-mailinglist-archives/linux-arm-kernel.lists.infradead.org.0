Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 617BF20048E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 11:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQtQm9RzqZ+771+6T2dg5ze6O73ueOUFbPZ20SBi3qc=; b=l8Pf/3s4AgI7/B
	cVO3xqTHre8R8dQJYCD9MkFJBA+jSF10jmUbsN15ShOs/AbOSUzCZDCRaMrFYGJm60e+yV1c1Pghs
	GvUg9yBLWNInNJanzC8n1xQ9QZfGpW8CAHs3INibEXZCxsGR3U3srP+4tPfQFNGL0Mrk4A0ukK360
	BmDnoy1T3XkZ+SO0hLDrWfRErpSxqdQ8oTYi3Oiaug0rOX5KSZTrJnPYfDuiHj0OPzWwI9/9An0Rt
	HzVOMANwtOlcja+vrztr2UZksHb3BER/O8dNGHvVUv1GiM7xwNX1FUNOgu1dbLljRIi7zM0X5/AU6
	BTPpz0qqqTin3npxAmaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCxg-0001cF-Dt; Fri, 19 Jun 2020 09:05:24 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCxK-0000uP-QE
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 09:05:04 +0000
IronPort-SDR: R/LCN//fq7w4zv+6W/bOs8hg7IoYi9yoXGOtwTjvo2QL3cIudiAQWa1IS9soytN6cTrtf7uqCf
 uWu4DEcthmBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9656"; a="130261274"
X-IronPort-AV: E=Sophos;i="5.75,254,1589266800"; d="scan'208";a="130261274"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2020 02:05:01 -0700
IronPort-SDR: kF7t/FU4z5wGAUzCozSJdjd4BBAbdDGgBBHDlB9u9WN/LIQDdScZQmzCyhb/NdB4JlLBMi1ZDx
 6ziPktrLxEQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,254,1589266800"; d="scan'208";a="310110943"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga002.fm.intel.com with ESMTP; 19 Jun 2020 02:04:58 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jmCxI-00ERf1-JA; Fri, 19 Jun 2020 12:05:00 +0300
Date: Fri, 19 Jun 2020 12:05:00 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Syed Nayyar Waris <syednwaris@gmail.com>
Subject: Re: [PATCH v8 4/4] gpio: xilinx: Utilize for_each_set_clump macro
Message-ID: <20200619090500.GC2428291@smile.fi.intel.com>
References: <46c05c5deeada60a13ee0de83c68583d578f42fd.1592224129.git.syednwaris@gmail.com>
 <202006160420.iatdr9ab%lkp@intel.com>
 <CACG_h5qUZsR7Zd9a+BQJqyuJZBrv-en+gC-sgcV+xV+A5ZOBhA@mail.gmail.com>
 <CAHp75Ve_=LwV6fO3ESgbCOVDVr=C5wrnAJX9od9evFvHU5-Krw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75Ve_=LwV6fO3ESgbCOVDVr=C5wrnAJX9od9evFvHU5-Krw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_020502_934326_F97495A6 
X-CRM114-Status: GOOD (  20.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 19, 2020 at 11:38:59AM +0300, Andy Shevchenko wrote:
> On Fri, Jun 19, 2020 at 10:02 AM Syed Nayyar Waris <syednwaris@gmail.com> wrote:
> 
> ...
> 
> > > config: sparc64-randconfig-s032-20200615 (attached as .config)
> > > compiler: sparc64-linux-gcc (GCC) 9.3.0
> > > reproduce:
> > >         # apt-get install sparse
> > >         # sparse version: v0.6.2-rc1-3-g55607964-dirty
> > >         # save the attached .config to linux build tree
> > >         make W=1 C=1 ARCH=sparc64 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'
> 
> ...
> 
> > > sparse warnings: (new ones prefixed by >>)
> > >
> > > >> include/linux/bitmap.h:639:45: sparse: sparse: shift too big (64) for type unsigned long
> > > >> include/linux/bitmap.h:639:45: sparse: sparse: shift too big (64) for type unsigned long
> > >    include/linux/bitmap.h:594:63: sparse: sparse: shift too big (64) for type unsigned long
> > > >> include/linux/bitmap.h:639:45: sparse: sparse: shift too big (64) for type unsigned long
> > > >> include/linux/bitmap.h:638:17: sparse: sparse: invalid access past the end of 'old' (8 8)
> 
> > It seems to me that to reproduce this warning, I have to use the
> > sparc64 compiler. I have installed 'sparc64-linux-gnu-gcc' on my
> > computer.
> 
> Sparse is not a compiler.

On x86_64:

  CHECK   drivers/gpio/gpio-xilinx.c
  include/linux/bitmap.h:639:45: warning: shift too big (64) for type unsigned long
  include/linux/bitmap.h:639:45: warning: shift too big (64) for type unsigned long
  include/linux/bitmap.h:594:63: warning: shift too big (64) for type unsigned long
  include/linux/bitmap.h:639:45: warning: shift too big (64) for type unsigned long
  include/linux/bitmap.h:638:17: warning: invalid access past the end of 'old' (8 8)

> > I have to specify that this compiler needs to be used for build
> > process. How/ Where do I specify this?
> >
> > I have downloaded the config.gz (has config file) and placed it at the
> > root of the linux kernel project tree. But the Makefile STILL has
> > 'gcc' as the compiler. When I build, it is the 'gcc' compiler being
> > used and not 'sparc64-linux-gnu-gcc'. I know I can manually change the
> > Makefile to use sparc64 compiler, but I think there must be some more
> > elegant way to do this, perhaps using make menuconfig?
> 
> If you wish to run a compilation, download a compiler from [1], and,
> after adding its bin/ folder to PATH, run
> make CROSS_COMPILE=sparc64-linux- ARCH=sparc64 ... # first generate .config
> 
> > Kindly illuminate as to how shall I reproduce the compiler warning.
> 
> > > 803024b6c8a375 Syed Nayyar Waris      2020-06-15 @638           map[index + 1] &= ~BITMAP_LAST_WORD_MASK(start + nbits);
> > > 803024b6c8a375 Syed Nayyar Waris      2020-06-15 @639           map[index + 1] |= (value >> space);
> 
> Hmm... I think I sent a reply [2] where I explained how space can be
> 64. Do you agree with analysis?
> 
> [1]: https://mirrors.edge.kernel.org/pub/tools/crosstool/
> [2]: https://lore.kernel.org/lkml/20200616081428.GP2428291@smile.fi.intel.com/

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
