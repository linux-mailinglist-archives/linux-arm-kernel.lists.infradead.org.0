Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 794201C387A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FAnpwd4m8noT9gHT4e4P2Uenpune3jFEHLaEMBfkBeU=; b=W0nS+cBM4K77gQ
	5V1SiUA34bPn2He4AG79CoIsygT+65X83mbQtkhzSqQjOdEN1ZXx9EZFGufaj/FUhNjPwPBGvQooz
	tE7SVJQUAZ3M9ke3fnDDXEqIfOf3Za4/XYRCn08NjCZGME1rP74s/dAft9P1g5/gO3QSjwjS0t96o
	H/5Y/QQmtB067+mGd4AkRtZc0zydZl2LDRzvjeQT8ACSnk/RVbfvyFzQXu3tMrE/f/8M8OhHkxTKX
	YB049KDhbTyK2qua//FNtirATyGhX3esvefSgKKUEYRK3C2QFj3sVusaPPrEaBtEskdlPf3bdZxf/
	9D7LRZJm9gjMEideUWxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZTM-0000kR-Mi; Mon, 04 May 2020 11:41:20 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZTE-0000jX-4L
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 11:41:13 +0000
IronPort-SDR: 9kjKhVJMjzsJ7KlfhYMr0yyyzlFvDse+fcN6iqavkUUiw3HKDri6oXqOxTHzvHVFUZ45/eYYQo
 iwZVfBTAXOEQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 04:41:11 -0700
IronPort-SDR: nK1XVmEP/7h0Dz9nRq3BHsCwEWqIAqIaOYKzPSsL9UGWuseFvAxw0CBmTaJZwhBHb/MKLwbX/x
 FvpEWpGlLdfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,351,1583222400"; d="scan'208";a="248193832"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga007.jf.intel.com with ESMTP; 04 May 2020 04:41:06 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jVZTB-004bjy-4p; Mon, 04 May 2020 14:41:09 +0300
Date: Mon, 4 May 2020 14:41:09 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Syed Nayyar Waris <syednwaris@gmail.com>
Subject: Re: [PATCH v5 0/4] Introduce the for_each_set_clump macro
Message-ID: <20200504114109.GE185537@smile.fi.intel.com>
References: <cover.1588460322.git.syednwaris@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1588460322.git.syednwaris@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_044112_189092_D256513D 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, amit.kucheria@verdurent.com, arnd@arndb.de,
 yamada.masahiro@socionext.com, linux-kernel@vger.kernel.org,
 linus.walleij@linaro.org, daniel.lezcano@linaro.org, vilhelm.gray@gmail.com,
 michal.simek@xilinx.com, bgolaszewski@baylibre.com, rrichter@marvell.com,
 linux-gpio@vger.kernel.org, linux-pm@vger.kernel.org,
 akpm@linux-foundation.org, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 03, 2020 at 04:38:36AM +0530, Syed Nayyar Waris wrote:
> This patchset introduces a new generic version of for_each_set_clump. 
> The previous version of for_each_set_clump8 used a fixed size 8-bit
> clump, but the new generic version can work with clump of any size but
> less than or equal to BITS_PER_LONG. The patchset utilizes the new macro 
> in several GPIO drivers.
> 
> The earlier 8-bit for_each_set_clump8 facilitated a
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
> But with the new for_each_set_clump the clump size can be different from 8 bits.
> Moreover, the clump can be split at word boundary in situations where word 
> size is not multiple of clump size. Following are examples showing the working 
> of new macro for clump sizes of 24 bits and 6 bits.
> 
> Example 1:
> clump size: 24 bits, Number of clumps (or ports): 10
> bitmap stores the bit information from where successive clumps are retrieved.
> 
>      /* bitmap memory region */
>         0x00aa0000ff000000;  /* Most significant bits */
>         0xaaaaaa0000ff0000;
>         0x000000aa000000aa;
>         0xbbbbabcdeffedcba;  /* Least significant bits */
> 
> Different iterations of for_each_set_clump:-
> 'offset' is the bit position and 'clump' is the 24 bit clump from the
> above bitmap.
> Iteration first:        offset: 0 clump: 0xfedcba
> Iteration second:       offset: 24 clump: 0xabcdef
> Iteration third:        offset: 48 clump: 0xaabbbb
> Iteration fourth:       offset: 96 clump: 0xaa
> Iteration fifth:        offset: 144 clump: 0xff
> Iteration sixth:        offset: 168 clump: 0xaaaaaa
> Iteration seventh:      offset: 216 clump: 0xff
> Loop breaks because in the end the remaining bits (0x00aa) size was less
> than clump size of 24 bits.
> 
> In above example it can be seen that in iteration third, the 24 bit clump
> that was retrieved was split between bitmap[0] and bitmap[1]. This example 
> also shows that 24 bit zeroes if present in between, were skipped (preserving
> the previous for_each_set_macro8 behaviour). 
> 
> Example 2:
> clump size = 6 bits, Number of clumps (or ports) = 3.
> 
>      /* bitmap memory region */
>         0x00aa0000ff000000;  /* Most significant bits */
>         0xaaaaaa0000ff0000;
>         0x0f00000000000000;
>         0x0000000000000ac0;  /* Least significant bits */
> 
> Different iterations of for_each_set_clump:
> 'offset' is the bit position and 'clump' is the 6 bit clump from the
> above bitmap.
> Iteration first:        offset: 6 clump: 0x2b
> Loop breaks because 6 * 3 = 18 bits traversed in bitmap.
> Here 6 * 3 is clump size * no. of clumps.

Looking into the last patches where we have examples I still do not see a
benefit of variadic clump sizes. power of 2 sizes would make sense (and be
optimized accordingly (64-bit, 32-bit).

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
