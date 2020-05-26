Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D50051E2665
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 18:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y5lTpJKCa8ioiDwQo38N86WXecFi/OU8b3ReCrzfckE=; b=kvwUXMqmicIUYQ
	WVOC95EBux49jIFKa6fFt8Yz/oVTry9YZb/F69eIEmSgaqiToh41RqqtDLkAcpR20pFj3UBw/8fow
	kCda8USOqvkwB9O9BR1pf3vQGvDTHz57JWyP/OVdkrzSAX/Z+QgIiYpT2n1PByPWwVC+d+EXDofDK
	ce8YDtiNXaR4tYa/lE1Espd+e7CzB4V/8T3xnhVGRU0jcCvEvQlB5LmLNDopTedSH4NFL/6vqG5C2
	GgPYAFQQp8V2Ws0/sFq1xBYe9yw28jGym/mF1VoUbLlwgEHX3k0qzOiHnj+Wyr85gDXI0OxaV3E1+
	s2JAzu6l6zrNrCS0HK8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdc4B-0005yy-LO; Tue, 26 May 2020 16:04:35 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdc3M-0005Tk-2g
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 16:03:46 +0000
IronPort-SDR: 28BdmM9xMA5fXAvaGqrGJV6pt9fuvFz2ZPNqoYbEYTjLT9gM6mfOb2va8/P5pMHc56FMOHUNsz
 ClG4ZCPFZ4Mw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 09:03:42 -0700
IronPort-SDR: 2xWlNCFO2LxbbSXeaNDSvwyvAro0gZEgkG/jybusID3x9qZ0i5pNXqeWg4zF5nMHdyMUhCGsL6
 GmBbwzkspemg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="255452739"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga007.jf.intel.com with ESMTP; 26 May 2020 09:03:34 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jdc3E-0091nj-Af; Tue, 26 May 2020 19:03:36 +0300
Date: Tue, 26 May 2020 19:03:36 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v3 03/16] mfd: mfd-core: match device tree node against
 reg property
Message-ID: <20200526160336.GV1634618@smile.fi.intel.com>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-4-michael@walle.cc>
 <67e90dafd67c285158c2c6f67f92edb7@walle.cc>
 <20200515102848.GH271301@dell>
 <159e68b4ce53630ef906b2fcbca925bd@walle.cc>
 <20200526072427.GC3628@dell>
 <f5704ce5a3e280f63c81fe35efb08234@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f5704ce5a3e280f63c81fe35efb08234@walle.cc>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_090344_128877_3A48E7F1 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
 linux-watchdog@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Jason Cooper <jason@lakedaemon.net>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Mark Brown <broonie@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 05:54:38PM +0200, Michael Walle wrote:
> Am 2020-05-26 09:24, schrieb Lee Jones:

...

> Like I said, in the long term I would like to have support for
> different versions of the board management controller

> without having to change the device tree and have device tree bindings for the
> subdevices at the same time.

But isn't device tree to describe *very specific platform* rather than *class
of platforms*?

> But it seems, that this is not possible
> and I guess I have to bite the bullet and may need to provide another
> device tree if the controller might be updated.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
