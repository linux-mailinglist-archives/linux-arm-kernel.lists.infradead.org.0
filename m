Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7806C1BD976
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:21:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HuJp43QyCe5DsDAhVXTbu4NzMvsRYMA9odsYW21J98A=; b=FcgpledCBptoZe
	gq72vuS77Qok8fuvMkMwGDhwRnvht8p4K/CrA5XpfV0xDZGWyvmX13FhAmgcTD/fYindJP51eQ3nQ
	gXLstgWFsv7NQ766Cyfz9IeRyMB4He4TIHbILZDjwuVCL7lt1V5n+fx+5fOgwelLhTJw7WF5MqshR
	E7qkdHwccHGiJq7TMuc3C8Srdy12+pKMvxU3q3oN9NW2QqHtXckCwuLza4x24JRn6gmLML6pFSDHP
	Dcat31EzVY4DTyKLevtTjmy3Mvo/Wca38ju8quj3pjC6T6aUyuaSIP9ggyjSUdTpnx4Tkf7F2mh+H
	komCwbgI3etZCb5En1JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjqK-0000dN-Gp; Wed, 29 Apr 2020 10:21:28 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjq6-0000ax-NQ
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 10:21:15 +0000
IronPort-SDR: RsnW/yOdm1Gbsunl8vr5N1KLrQxCuy0Umd76sH9haeWPTJB0lEU+c56/Pm8fwEhyC3zAbDvVSc
 iheYcu9400qA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 03:21:13 -0700
IronPort-SDR: ySQ0rVq4vj1Kw0NWsqMA+zUA61ak4m1l5gWDv1p/wODWBKx+zsg31IJqEqxh6l7ecsbszvc/KA
 dDhAkfJSz4uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,331,1583222400"; d="scan'208";a="404999202"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga004.jf.intel.com with ESMTP; 29 Apr 2020 03:21:11 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jTjq6-003hwH-5E; Wed, 29 Apr 2020 13:21:14 +0300
Date: Wed, 29 Apr 2020 13:21:14 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Syed Nayyar Waris <syednwaris@gmail.com>
Subject: Re: [PATCH v3 4/4] gpio: xilinx: Utilize for_each_set_clump macro
Message-ID: <20200429102114.GF185537@smile.fi.intel.com>
References: <cover.1588112714.git.syednwaris@gmail.com>
 <80745504d15c87aa1da0d4be3c16d1279f48615b.1588112716.git.syednwaris@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <80745504d15c87aa1da0d4be3c16d1279f48615b.1588112716.git.syednwaris@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_032114_808262_73024CBB 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, Apr 29, 2020 at 04:39:47AM +0530, Syed Nayyar Waris wrote:
> This patch reimplements the xgpio_set_multiple function in
> drivers/gpio/gpio-xilinx.c to use the new for_each_set_clump macro.
> Instead of looping for each bit in xgpio_set_multiple
> function, now we can check each channel at a time and save cycles.

> +	const unsigned long state_size = BITS_PER_TYPE(*state);

This '*state' is unneeded complication, use BITS_PER_U32.

> +#define TOTAL_BITS BITS_PER_TYPE(chip->gpio_state)

This macro makes code uglier, besides the fact of absence of #undef.
And also see above.

> +	DECLARE_BITMAP(old, TOTAL_BITS);
> +	DECLARE_BITMAP(new, TOTAL_BITS);
> +	DECLARE_BITMAP(changed, TOTAL_BITS);

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
