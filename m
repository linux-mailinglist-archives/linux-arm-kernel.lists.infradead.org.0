Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E29EC1BC202
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:54:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F1R73XWpYMO8FAGK+pz8MSrxvVjMY+Vs1adf0S6GYZQ=; b=BJtzT0xCmqQoUG
	rdUg6eNz/LEt47QwlnwBcrOetJzuZ+UIuu8Z/6TEMR41he7fF/1Ewsw+2lQR7acKiSp6SdMxwRAxb
	Ap8QVz/t3oMR6YcdV3aq/aUQmikdaUcxtgtxQKDx0tlJqzpyt7ST2dhf9aSEvYLr0fCe81J8OWE1/
	mAs+Urt4dWrB121TGo8jQzw65xYQuiyQrb+z9/7FhGICXAl4Y3f6qR7YqfFki5Ueol8MCcGYA47qB
	ON63X6k78qe+O/Ow0TXtH2XhFbpC+xnvMJ0VoDwokqs6avChONVvmGmDDGCI6NavECrs5fHBs5u4f
	r9uORpWgtpe2K3/Mb2EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRd6-0005i0-Ql; Tue, 28 Apr 2020 14:54:36 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRYj-00008M-1T
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:50:07 +0000
IronPort-SDR: mh6CNvx+xC/bl1UoB6qPm3cMSW9lt+L+VDxOpS71PMsWvKi28axvS9xjirA9KAe/r87Si+39W9
 CzUsyunQhxfQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 07:50:02 -0700
IronPort-SDR: TIm9BnP5eTWiaT9SoCeMc1+yPT6amVcHlv8tmFBZ2L8njNT66dS/UjZGIRiR3nyY1Lyov1WfuY
 QLWN1Mr2JzFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="292873815"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga002.fm.intel.com with ESMTP; 28 Apr 2020 07:49:56 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jTRYc-003Zjk-TU; Tue, 28 Apr 2020 17:49:58 +0300
Date: Tue, 28 Apr 2020 17:49:58 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v3 05/16] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200428144958.GZ185537@smile.fi.intel.com>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-6-michael@walle.cc>
 <20200428125049.GU185537@smile.fi.intel.com>
 <5e2d486077f9e2ce8bd9b171cf806fd9@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e2d486077f9e2ce8bd9b171cf806fd9@walle.cc>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_075005_162244_FA40A0B4 
X-CRM114-Status: GOOD (  14.24  )
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 04:43:24PM +0200, Michael Walle wrote:
> Am 2020-04-28 14:50, schrieb Andy Shevchenko:
> > On Thu, Apr 23, 2020 at 07:45:32PM +0200, Michael Walle wrote:
> > > This patch adds core support for the board management controller found
> > > on the SMARC-sAL28 board. It consists of the following functions:
> > >  - watchdog
> > >  - GPIO controller
> > >  - PWM controller
> > >  - fan sensor
> > >  - interrupt controller
> > 
> > ...
> > 
> > >  obj-$(CONFIG_MFD_STMFX) 	+= stmfx.o
> > > 
> > >  obj-$(CONFIG_SGI_MFD_IOC3)	+= ioc3.o
> > > +
> > > +obj-$(CONFIG_MFD_SL28CPLD)	+= sl28cpld.o
> > 
> > Perhaps keep an order?
> 
> I don't see any order in that makefile. Looked to me like every new
> file was added at the end.

Okay, just didn't note from above context.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
