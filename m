Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B921DCCC65
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 20:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VvejY3SzoD2ZATeiQr+x0IyFtSj5xjEn+JOMffhNkcU=; b=OWvd6LTdmgAr3P
	Zak5BQBW2B41LhDNxG134GnEo8WLywzGkUSTpkvemMKTUfmGy+cNXLhF8An6gIyV6kDhRY/o6KPxk
	khL3bof1EO6/FufNM7HHE2LEXL6m1w8shHiBKlT2fm3V/WwfspOqt1PCvcdOYbdv/jUfFj28YdKs0
	Dp+WJnEuBdWBtPe0bvJZLtLP7nx9CfWZf+jqfbXRcJ+tPll4fOCEKyhBooSD7ADfb+63YM/XYJozA
	4rymQ7lbzwn1AJIJA9G1/Sbs4kuaWC7eHXd+rsY7qY/1AxqFQSrKv6epWGkzG0uijX+H7NZitjn+Z
	EOH53jM0TpJCSC4eZCUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGp54-0000WF-Gp; Sat, 05 Oct 2019 18:47:02 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGp4x-0000VU-1T
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 18:46:56 +0000
Received: by mail-yb1-xb43.google.com with SMTP id m1so3283806ybm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 11:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TBJjABokkrKZ/d54kCejrL00qG1tE+E2KRyIwFedZfQ=;
 b=RODcag4X4gLNgSIcrEODfVVVCxgSvlzgu2+GzOBREj+1fYMTpqnIi3FaI3Gij0vbxO
 teEzYNgVAMvOT9ghtfx0DVSy0VNyihzmempv+773xWR5LlJvR14sndko+V5lO75yEC5x
 HN2OS01Wqb1OH5a2mrpqlhapTCz56K3b77FpiYl/x3LoviZNbP1DoSU4QaRQCxjP26BJ
 Vet5FFTzOliBWSKomDmoCVkOkLVGzZGnrZuFJo53pV5hVs0jnLd/mzWdvOO6N/GOmgfZ
 jr0BKOowuP5rBZoBuN3Ca+UHTQ9TnF+TCHK5Mb6y8jxTktTVxn1e240U0uOn/ve3yGs9
 s53w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TBJjABokkrKZ/d54kCejrL00qG1tE+E2KRyIwFedZfQ=;
 b=RmP9HknEbBoB+gJm2lk3a8cGWihzbDGDJWzbiqDM2NCf1bCUkVYrTIuwc4K0Lbjbf/
 CWo2mf5fxvr2CyfZXDx086k3Lw7bVgAH8D4v7/gHhjC9Y1AXKDua95nnyIfcg6EAbgz1
 LdTG7XC9iwcg+TtqeZbZFqvupbTGSfM1XwlMX588c/aAyprX002SBxjvE4o5bjgMP4F+
 7shZ+ViH+HR89EJow5lsegugFtu5igk0NzBfY4oTkxzEgTJgakSbqDkHf3OQTgMP8Na8
 Ge8F3+OiOQvhk37ivolhBUnUiP4P+0hrStqWKcvK+PxrsZeZo0F5sa3WQxwQ++aUjgCl
 nfDQ==
X-Gm-Message-State: APjAAAWBrrbtahwvKfpP/RkEEmku0kf5RvKezZ5671Zvl70wmQwfyjoK
 0Ggv854uyvggxAn9W3QjdW4=
X-Google-Smtp-Source: APXvYqypjGkV6aP1OrkE5Eb3ln3sgMaerj4stbaQyuaW82pGa7hVgOgDYlnVuxRaYbSmwQJ8cx8w9w==
X-Received: by 2002:a25:ab21:: with SMTP id u30mr1521570ybi.143.1570301214234; 
 Sat, 05 Oct 2019 11:46:54 -0700 (PDT)
Received: from icarus (072-189-084-142.res.spectrum.com. [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id p204sm2597405ywp.110.2019.10.05.11.46.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 11:46:53 -0700 (PDT)
Date: Sat, 5 Oct 2019 14:46:40 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com
Subject: Re: [PATCH v15 00/14] Introduce the for_each_set_clump8 macro
Message-ID: <20191005184640.GA117093@icarus>
References: <cover.1570299719.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1570299719.git.vilhelm.gray@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_114655_148207_667AAC22 
X-CRM114-Status: GOOD (  22.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, preid@electromag.com.au,
 yamada.masahiro@socionext.com, linux-pm@vger.kernel.org,
 linux@rasmusvillemoes.dk, linux-kernel@vger.kernel.org,
 morten.tiljeset@prevas.dk, sean.nyekjaer@prevas.dk, linux-gpio@vger.kernel.org,
 lukas@wunner.de, geert@linux-m68k.org, akpm@linux-foundation.org,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 05, 2019 at 02:36:54PM -0400, William Breathitt Gray wrote:
> Changes in v15:
>   - Move find_next_clump8 to lib/find_bit.c since it requires round_down
>     (I want this to be static inline like the others, but I need help)
>   - Utilize for_each_set_clump8 in pisosr, max3191x, and pca953x
> 
> While adding GPIO get_multiple/set_multiple callback support for various
> drivers, I noticed a pattern of looping manifesting that would be useful
> standardized as a macro.
> 
> This patchset introduces the for_each_set_clump8 macro and utilizes it
> in several GPIO drivers. The for_each_set_clump macro8 facilitates a
> for-loop syntax that iterates over a memory region entire groups of set
> bits at a time.
> 
> For example, suppose you would like to iterate over a 32-bit integer 8
> bits at a time, skipping over 8-bit groups with no set bit, where
> XXXXXXXX represents the current 8-bit group:
> 
>     Example:        10111110 00000000 11111111 00110011
>     First loop:     10111110 00000000 11111111 XXXXXXXX
>     Second loop:    10111110 00000000 XXXXXXXX 00110011
>     Third loop:     XXXXXXXX 00000000 11111111 00110011
> 
> Each iteration of the loop returns the next 8-bit group that has at
> least one set bit.
> 
> The for_each_set_clump8 macro has four parameters:
> 
>     * start: set to the bit offset of the current clump
>     * clump: set to the current clump value
>     * bits: bitmap to search within
>     * size: bitmap size in number of bits
> 
> In this version of the patchset, the for_each_set_clump macro has been
> reimplemented and simplified based on the suggestions provided by Rasmus
> Villemoes and Andy Shevchenko in the version 4 submission.
> 
> In particular, the function of the for_each_set_clump macro has been
> restricted to handle only 8-bit clumps; the drivers that use the
> for_each_set_clump macro only handle 8-bit ports so a generic
> for_each_set_clump implementation is not necessary. Thus, a solution for
> large clumps (i.e. those larger than the width of a bitmap word) can be
> postponed until a driver appears that actually requires such a generic
> for_each_set_clump implementation.
> 
> For what it's worth, a semi-generic for_each_set_clump (i.e. for clumps
> smaller than the width of a bitmap word) can be implemented by simply
> replacing the hardcoded '8' and '0xFF' instances with respective
> variables. I have not yet had a need for such an implementation, and
> since it falls short of a true generic for_each_set_clump function, I
> have decided to forgo such an implementation for now.
> 
> In addition, the bitmap_get_value8 and bitmap_set_value8 functions are
> introduced to get and set 8-bit values respectively. Their use is based
> on the behavior suggested in the patchset version 4 review.
> 
> William Breathitt Gray (14):
>   bitops: Introduce the for_each_set_clump8 macro
>   lib/test_bitmap.c: Add for_each_set_clump8 test cases
>   gpio: 104-dio-48e: Utilize for_each_set_clump8 macro
>   gpio: 104-idi-48: Utilize for_each_set_clump8 macro
>   gpio: gpio-mm: Utilize for_each_set_clump8 macro
>   gpio: ws16c48: Utilize for_each_set_clump8 macro
>   gpio: pci-idio-16: Utilize for_each_set_clump8 macro
>   gpio: pcie-idio-24: Utilize for_each_set_clump8 macro
>   gpio: uniphier: Utilize for_each_set_clump8 macro
>   gpio: 74x164: Utilize the for_each_set_clump8 macro
>   thermal: intel: intel_soc_dts_iosf: Utilize for_each_set_clump8 macro
>   gpio: pisosr: Utilize the for_each_set_clump8 macro
>   gpio: max3191x: Utilize the for_each_set_clump8 macro
>   gpio: pca953x: Utilize the for_each_set_clump8 macro
> 
>  drivers/gpio/gpio-104-dio-48e.c            |  73 ++++----------
>  drivers/gpio/gpio-104-idi-48.c             |  36 ++-----
>  drivers/gpio/gpio-74x164.c                 |  19 ++--
>  drivers/gpio/gpio-gpio-mm.c                |  73 ++++----------
>  drivers/gpio/gpio-max3191x.c               |  19 ++--
>  drivers/gpio/gpio-pca953x.c                |  17 ++--
>  drivers/gpio/gpio-pci-idio-16.c            |  75 +++++---------
>  drivers/gpio/gpio-pcie-idio-24.c           | 109 ++++++++-------------
>  drivers/gpio/gpio-pisosr.c                 |  12 +--
>  drivers/gpio/gpio-uniphier.c               |  16 ++-
>  drivers/gpio/gpio-ws16c48.c                |  73 ++++----------
>  drivers/thermal/intel/intel_soc_dts_iosf.c |  29 +++---
>  drivers/thermal/intel/intel_soc_dts_iosf.h |   2 -
>  include/asm-generic/bitops/find.h          |  50 ++++++++++
>  include/linux/bitops.h                     |   5 +
>  lib/find_bit.c                             |  14 +++
>  lib/test_bitmap.c                          |  65 ++++++++++++
>  17 files changed, 325 insertions(+), 362 deletions(-)
> 
> -- 
> 2.23.0

This patchset only implements for_each_set_clump8 which restricts the
looping to 8 bits at a time. The drivers/gpio/gpio-thunderx.c file has a
set_multiple callback that loops 64 bits at a time. That would be one
case where a more general for_each_set_clump macro would be useful.

However, we can focus on the simpler for_each_set_clump8 macro for now
since looping by 8 bits at a time is the most common situation.

William Breathitt Gray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
