Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAE3CE739
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 17:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTsLGF3RVQjbBuWW1rZUWNqCjRkpOunH1mo8KnvmHjs=; b=Tf8teGKmPvJF1F
	PJHNtvG9c+outYEifLEbQZAegKuCQy404kkdKG0gZeHeR1jwfKUpRViQ2LaWzhB81FrFTxLP87HcX
	mKno4IB318VY7fa1XHs4r8wl+4Y1Bagw1ewk98ilPcGf1/iRCCgb3xBro0AOoS/4WWP/HD1fxRUtk
	7ucM+pr1OttPxe5eHMTvfJn4s9HByVtGfqfWvKQbZiAXSTM3gpGjFnRwOa3DOb5/V0At4g8M3/Cjm
	A2Mb7AEk3Ac5SyZ4O2H6WzDmr51XTS3uQ7Qy0a+inNlr3gAkcDbECfQBd21s250dNPVX9TwDqE0Ue
	Bp4Q0xS1gCoQbzQRlyVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHUn6-0000wn-Hq; Mon, 07 Oct 2019 15:19:16 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHUmz-0000wC-82
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 15:19:10 +0000
Received: by mail-yw1-xc44.google.com with SMTP id x64so5257710ywg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 08:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wiNFdskpw4yBMm9nyiqt5ftRnxZo6W3oQSMb5hEf9N0=;
 b=lb4bWWehvLkfbpod5kZF+pZetwwjP/Hl4QHssFZCruTsJ2+da6Y7y2IT76QjtCuIXY
 jcHRPM3UIIntO35bKebInFUzmiuZ2fCLpF9l2UqODiQa1nhnut99+IDTo02WkZee0Lqh
 HaVANCKIYksMAT+SUbHNB3LY2GtLN+X5ySty1pg7Pmm8erKDW95qj3gyiMeA/DPeDzUS
 gc8Ydvc7F24bWkxsLrDXbS6GVid127WHhbmMJ9GrMm/PXNMxymwLPg5f7X4KaMM2N72b
 YxuI3iw/0sU7ng+V57pPA2LWXWEFfEl4atDnE1D+y74Gm0Rpw27+7LS1nUaz/haerXsE
 hF+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wiNFdskpw4yBMm9nyiqt5ftRnxZo6W3oQSMb5hEf9N0=;
 b=iVzgCdbCsluEDH2BsgGg+FPHGJhDcUsbt98ZsLByyctOcughZk2oPl2X5+ZNvKn57S
 O36CVsH0aeFQL3CPWdJ2BpLDIWHq6MHqKDAzPHRLPoJQDa+Fingw+j7QCvsEFA6kdtxU
 s5vq7YSuFZno5P519DAUjgTnTUHlRdFKXvmVHBCZmGP0gnfBtVbyHigaYtRBDT1oZy5Z
 j5nEDI+TexYhAQTv61bPLelGyZwfIg7e9TK8tkQh0g7YldffBB3groySTsW0KQ8im44V
 tB1JYbWRSZRM1EPOOlcVky1ZyC3gIf2RPNNR2vvFeA4aSuXtEbdcdCMlyfooYnjxeOdU
 75hw==
X-Gm-Message-State: APjAAAXU9qhxExxRqV/pHhflQPYazrhhEVF1kA/cR5B3w8sZOHptTYRy
 wFK2elyiYV02a+Ua35vMhfo=
X-Google-Smtp-Source: APXvYqzRFRpv7XJTv8PKNwl6Ppt8cG35jqRtYU+F/E4Oee5d9CbO3gFPtNFJXNPBhZtX6QAVzod2Qw==
X-Received: by 2002:a0d:cccc:: with SMTP id o195mr18912544ywd.44.1570461547530; 
 Mon, 07 Oct 2019 08:19:07 -0700 (PDT)
Received: from icarus (072-189-084-142.res.spectrum.com. [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id g128sm3727806ywb.13.2019.10.07.08.19.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 08:19:06 -0700 (PDT)
Date: Mon, 7 Oct 2019 11:18:51 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v16 01/14] bitops: Introduce the for_each_set_clump8 macro
Message-ID: <20191007151851.GA3494@icarus>
References: <cover.1570374078.git.vilhelm.gray@gmail.com>
 <c0830858f19c852f6d124395a32410bc645ecd15.1570374078.git.vilhelm.gray@gmail.com>
 <20191007082156.GL32742@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007082156.GL32742@smile.fi.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_081909_311459_EABB1E5C 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-gpio@vger.kernel.org, yamada.masahiro@socionext.com,
 linus.walleij@linaro.org, linux-pm@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux-kernel@vger.kernel.org, morten.tiljeset@prevas.dk,
 sean.nyekjaer@prevas.dk, bgolaszewski@baylibre.com, lukas@wunner.de,
 geert@linux-m68k.org, akpm@linux-foundation.org, preid@electromag.com.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 11:21:56AM +0300, Andy Shevchenko wrote:
> On Sun, Oct 06, 2019 at 11:10:58AM -0400, William Breathitt Gray wrote:
> > This macro iterates for each 8-bit group of bits (clump) with set bits,
> > within a bitmap memory region. For each iteration, "start" is set to the
> > bit offset of the found clump, while the respective clump value is
> > stored to the location pointed by "clump". Additionally, the
> > bitmap_get_value8 and bitmap_set_value8 functions are introduced to
> > respectively get and set an 8-bit value in a bitmap memory region.
> 
> Very much thank you for an update!
> I have comments below.
> 
> > +/**
> > + * bitmap_get_value8 - get an 8-bit value within a memory region
> 
> Since it's in find.h I would not collide with bitmap namespace.
> How about
> 
> 	find_and_get_value8()

We modeled the interface for these on the existing bitmap functions, so
perhaps it would be better to move bitmap_get_value8 and
bitmap_set_value8 to include/linux/bitmap.h so that they are with the
rest of the bitmap functions -- afterall, they are operating on bitmaps.

> > + * @addr: address to the bitmap memory region
> > + * @start: bit offset of the 8-bit value; must be a multiple of 8
> > + *
> > + * Returns the 8-bit value located at the @start bit offset within the @addr
> > + * memory region.
> > + */
> > +static inline unsigned long bitmap_get_value8(const unsigned long *addr,
> > +					      unsigned long start)
> > +{
> > +	const size_t index = BIT_WORD(start);
> > +	const unsigned long offset = start % BITS_PER_LONG;
> > +
> > +	return (addr[index] >> offset) & 0xFF;
> > +}
> > +
> > +/**
> > + * bitmap_set_value8 - set an 8-bit value within a memory region
> 
> 	find_and_set_value8()
> 
> ?
> 
> > + * @addr: address to the bitmap memory region
> > + * @value: the 8-bit value; values wider than 8 bits may clobber bitmap
> > + * @start: bit offset of the 8-bit value; must be a multiple of 8
> > + */
> > +static inline void bitmap_set_value8(unsigned long *addr, unsigned long value,
> > +				     unsigned long start)
> > +{
> > +	const size_t index = BIT_WORD(start);
> > +	const unsigned long offset = start % BITS_PER_LONG;
> > +
> > +	addr[index] &= ~(0xFF << offset);
> > +	addr[index] |= value << offset;
> > +}
> 
> -- 
> With Best Regards,
> Andy Shevchenko

The find_next_clump8 function can remain exposed via
include/linux/find.h since it fits in with the rest of the functions
there.

The reason I moved the definition to lib/find_bit.c is due to the
circular dependency that arose from the round_down macro. Should I try
to move the definition back to include/linux/find.h and reimplement it
without the round_down macro; or is it best to keep this simpler
implementation here in lib/find_bit.c?

William Breathitt Gray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
