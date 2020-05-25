Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8041E0F71
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 15:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3aR9Yulys7CpAJ8HyHxuRXN/09k48mkgnZidMU0OyA4=; b=ahQEPkwzKQvr4w
	iXljJ/QWQt/TV3TrvZ7119Fo1IX/UZlfLjdigpR/Eb4hCtDzkKFiN90TXn0nfuK918RSslFo6+oI8
	WTFJPPAzOfUNgKUZgPCeyWivfLp/X0GSzDkhDP1RA5Vn64tUsqADsQXFjeYWRyFDDahC9gOznnflM
	HRT0c4GF3n/P5InzCVdZS+Ll0vdUQdr0GwvVf4T5JaS6y6bNI8woiTSPAiBetjdNZJ/OSOvMGNzUi
	3PY9+ts4PmIHJyvO/XEx6WkVG9gn1zOT2RGK2zOjvQDZjE1M77eS2E+MD2O6Qtmc0gnyJkmqfNMJ8
	+h7BklEBwGJ1V+W7yyDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdD6q-0007Aa-DQ; Mon, 25 May 2020 13:25:40 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdD6b-00079l-SH
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 13:25:27 +0000
IronPort-SDR: aU47rHsruEsxdOdyvX7Q9evTErIz2vJpiplw2bSTKdZwwmaLoXRsXEtVNHjK7DPANAN9tgxGPE
 Kda+QeUPR9Jw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 06:25:25 -0700
IronPort-SDR: 2+jbuk/O7v+ofuIpI3sxz4UMMXRzsN+jsUGJhAsU1ZG1GsQPSA1cVKS5b9oU+XZSwuMIBZqQtN
 c4lQR60f+phA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,433,1583222400"; d="scan'208";a="441730138"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga005.jf.intel.com with ESMTP; 25 May 2020 06:25:19 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jdD6X-008nCW-92; Mon, 25 May 2020 16:25:21 +0300
Date: Mon, 25 May 2020 16:25:21 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Pierre-louis Bossart <pierre-louis.bossart@intel.com>
Subject: Re: [PATCH v3 10/16] gpio: add a reusable generic gpio_chip using
 regmap
Message-ID: <20200525132521.GZ1634618@smile.fi.intel.com>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-11-michael@walle.cc>
 <CAMpxmJV3XTOxuoKeV-z2d75qWqHkgvV9419tfe3idDeKwoeoLA@mail.gmail.com>
 <75bff2917be1badd36af9f980cf59d2c@walle.cc>
 <CAMpxmJXctc5cbrjSeJxa7DfmjiVsbyhqAbEKt-gtayKhQj0Cnw@mail.gmail.com>
 <951244aab2ff553a463f7431ba09bf27@walle.cc>
 <CACRpkdZYEZk7o+Y2-AqnHGsY8N7KGGmPGSuSS=H7YY8VLZ3jZw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdZYEZk7o+Y2-AqnHGsY8N7KGGmPGSuSS=H7YY8VLZ3jZw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_062525_954487_69280E44 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: linux-pwm@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 02:59:36PM +0200, Linus Walleij wrote:
> On Mon, May 25, 2020 at 12:20 PM Michael Walle <michael@walle.cc> wrote:
> 
> > If you like I could submit this patch on its own. But then there
> > wouldn't be a user for it.
> 
> I'm pretty much fine with that, we do merge code that has no
> users if we anticipate they will be around the corner.

I remember we discussed with Pierre to use it for his ASoC work.
Pierre, does it sound useful for you?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
