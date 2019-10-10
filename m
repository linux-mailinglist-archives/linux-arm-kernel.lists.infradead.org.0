Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA96AD2B09
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 15:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IK/qFZwle7T8mebeB2UhhO8nY4xS3F/c7vv+ok21aeQ=; b=qTXh/UcV4fzD+J
	obmPM1mp5GaQtPTnn41aT3uk7Mjv921aALgNDcvyNhv2FyhV+u82ATzZ4Xx6xd6uPsgiLVaIKSz4k
	NjgvW+Qxs+SpSQaA8sz5P0iHuONVhHFMoIzWFQ5M7bT8llVmMQufKe3uHTYrawhi7gLtRS7GjgF3x
	eLwLTss5iPCekVZt6iZREazt/sU9BvfmdebvbVwkKE9gMnQqGNkwpO02rYtj/JxDIqYxnf6cHc0xa
	tOeD0a1uaUlbwE/p+elAAXsiWtorM49TaGA2IAQEsIy6y1g9W2lrr/lX57TkMwTub7L+AlRBh3stX
	UPKCHU5AWxc8PE68P5qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIYLH-0001Cd-KM; Thu, 10 Oct 2019 13:18:55 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIYLA-0001C1-G6
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 13:18:49 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 06:18:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,280,1566889200"; d="scan'208";a="277774911"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga001.jf.intel.com with ESMTP; 10 Oct 2019 06:18:43 -0700
Received: from andy by smile with local (Exim 4.92.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1iIYL4-0006iA-Ey; Thu, 10 Oct 2019 16:18:42 +0300
Date: Thu, 10 Oct 2019 16:18:42 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v18 01/14] bitops: Introduce the for_each_set_clump8 macro
Message-ID: <20191010131842.GT32742@smile.fi.intel.com>
References: <cover.1570641097.git.vilhelm.gray@gmail.com>
 <893c3b4f03266c9496137cc98ac2b1bd27f92c73.1570641097.git.vilhelm.gray@gmail.com>
 <20191009141855.310f1fa8bde58df0df27b8f0@linux-foundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009141855.310f1fa8bde58df0df27b8f0@linux-foundation.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_061848_544414_58702797 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 William Breathitt Gray <vilhelm.gray@gmail.com>, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, lukas@wunner.de, geert@linux-m68k.org,
 preid@electromag.com.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 02:18:55PM -0700, Andrew Morton wrote:
> On Wed,  9 Oct 2019 13:14:37 -0400 William Breathitt Gray <vilhelm.gray@gmail.com> wrote:
> 
> > This macro iterates for each 8-bit group of bits (clump) with set bits,
> > within a bitmap memory region. For each iteration, "start" is set to the
> > bit offset of the found clump, while the respective clump value is
> > stored to the location pointed by "clump". Additionally, the
> > bitmap_get_value8 and bitmap_set_value8 functions are introduced to
> > respectively get and set an 8-bit value in a bitmap memory region.
> > 
> > ...
> >  
> > +#define for_each_set_clump8(start, clump, bits, size) \
> > +	for ((start) = find_first_clump8(&(clump), (bits), (size)); \
> > +	     (start) < (size); \
> > +	     (start) = find_next_clump8(&(clump), (bits), (size), (start) + 8))
> > +
> 
> It wouldn't hurt to give this some documentation.  In kerneldoc form, I
> guess.

Good idea!

William, I have just tested your series with a complex hardware setup,
everything works to me.

I think I may give

Tested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

for this patch as well.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
