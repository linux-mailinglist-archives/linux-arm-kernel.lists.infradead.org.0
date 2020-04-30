Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BBF1C02BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+U0fbby9iD4UROB+9vCrrpl8H2V2MQwFk/sc5iDiXw=; b=qXzK21EEwIX3hm
	kgm5jNYdq8O7h2IS8ud1HwNskUoAjFAKN81kJ/gNHZ1WTBwW5B6XZFb1vYOXT7Mm24x95VjGQlC1S
	Zij+5FxLMOrhe+3cBX5G22TFG8XpBVVgtlx+YSxkh4P5Zu5r9jqYAiGkUr7SWawxvfJBIrtahwjI9
	kBq6l7Vel5u11Y9U7AO8udCqCLBnKAzFk+sU+pmKrunsF1ANcHbKHCNYaRG/4XcTb1TpGbzmu94m0
	OvR+EgqX+fb3E83GowJq0X/4K3FGre1RvplSNuImgLBXWV9ZXeFCqJMbAUWi5dw8pyqvuRjMkPIfJ
	RqhBeWRxUaOStywlfTSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUCDT-0002lJ-Du; Thu, 30 Apr 2020 16:39:15 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUCDI-0002iq-E6
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:39:05 +0000
IronPort-SDR: B40m2+N/K6idejYeDx3liAegQ0Hg6AlBKfae6mpZEkaP+4IeQ+iuSCIaw8jGr9hlzFWKG7NGAS
 TeeFCxpd6tHQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 09:38:59 -0700
IronPort-SDR: ME5Ydnoy+OAr2lFUJblXA0A6ioZNOJkRmsQr7GxyMwPdnz/fSx/zy5+Unt5y3JubqY9W4wfgY3
 OHFKiMXFCseg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,336,1583222400"; d="scan'208";a="261836945"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga006.jf.intel.com with ESMTP; 30 Apr 2020 09:38:52 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jUCD9-003x70-2a; Thu, 30 Apr 2020 19:38:55 +0300
Date: Thu, 30 Apr 2020 19:38:55 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Syed Nayyar Waris <syednwaris@gmail.com>
Subject: Re: [PATCH v3 4/4] gpio: xilinx: Utilize for_each_set_clump macro
Message-ID: <20200430163855.GU185537@smile.fi.intel.com>
References: <cover.1588112714.git.syednwaris@gmail.com>
 <80745504d15c87aa1da0d4be3c16d1279f48615b.1588112716.git.syednwaris@gmail.com>
 <20200429102114.GF185537@smile.fi.intel.com>
 <20200430161514.GA7107@syed>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430161514.GA7107@syed>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_093904_547857_F4315E05 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linus.walleij@linaro.org, vilhelm.gray@gmail.com, michal.simek@xilinx.com,
 bgolaszewski@baylibre.com, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 09:45:14PM +0530, Syed Nayyar Waris wrote:
> On Wed, Apr 29, 2020 at 01:21:14PM +0300, Andy Shevchenko wrote:
> > On Wed, Apr 29, 2020 at 04:39:47AM +0530, Syed Nayyar Waris wrote:

...

> > > +	const unsigned long state_size = BITS_PER_TYPE(*state);
> > 
> > This '*state' is unneeded complication, use BITS_PER_U32.
> > 
> > > +#define TOTAL_BITS BITS_PER_TYPE(chip->gpio_state)
> > 
> > This macro makes code uglier, besides the fact of absence of #undef.
> > And also see above.
> 
> Thank you for your review comments. Just want to clarify, you want
>  a new macro to be created - 'BITS_PER_U32' ?

It's already there (read bits.h).

> Also, don't you think that with BITS_PER_TYPE(), in case later the type
> of 'state' changes, it will be reflected in this code without any code
> change?

If it changes the bits per type will be least issues there. The rationale
behind is to have code readable. In proposed change it is not.

> Let me know if I have misunderstood something.
> 
> > 
> > > +	DECLARE_BITMAP(old, TOTAL_BITS);
> > > +	DECLARE_BITMAP(new, TOTAL_BITS);
> > > +	DECLARE_BITMAP(changed, TOTAL_BITS);

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
