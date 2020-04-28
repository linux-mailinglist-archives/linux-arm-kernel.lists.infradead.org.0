Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 739591BC1B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BV/oNZuxgaGXNRtO5Djhq9zeOhDg6UlkfcEKCBZSKUg=; b=ozwfW0N7N/wezx
	4tCaK3YKtnmvpFLy+rM6VdEf6pFfNJWJmTCMdvSx0IT/7qHWdG9cr6DhZijxndPoEdP+KlrW44S+N
	TlDA0u/p78IY4Xi+EZutdJblCRnCq6eiVmnYO8X4ZlFe3bsShAK3GjPtAhuoCfdS8IxXQRNc7ncxD
	WO+6lPiA8X0eVx0kNtqmgPA+F7UJ6sofMg9vrI7zE8ZAqz6oR6IrS4QujWKoYOHlxaQmyz80CHaNx
	4iicO2Y6RlkTmHPskRApHka/9g4OUWprpyrxFIxOYBSG4+rk8fU1M1R3v5S5NQ3KMEAYsG319uFLZ
	yw3emGbnNhPQyIHMvj8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRYD-0007zF-DF; Tue, 28 Apr 2020 14:49:33 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRY4-0007yA-Rk
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:49:26 +0000
IronPort-SDR: xw6TO1gS/URXA1Aqvhk+oWr7ZgCXK1nnsAw2xMgUZ8VEbfmYc+xrBw6Kvdsfcalow5dfodyNRf
 /mo38iBAZJ6Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 07:49:23 -0700
IronPort-SDR: M7Q2JOL2/2WVi2KG81PKTMYYXt/g2OLOYqwoQAXN4maj5NEy50tqiPlW0IWJuQk3HXmy2PCj+g
 JaFrFUEwuzTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="404712385"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga004.jf.intel.com with ESMTP; 28 Apr 2020 07:49:17 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jTRXz-003ZjC-A2; Tue, 28 Apr 2020 17:49:19 +0300
Date: Tue, 28 Apr 2020 17:49:19 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v3 04/16] dt-bindings: mfd: Add bindings for sl28cpld
Message-ID: <20200428144919.GY185537@smile.fi.intel.com>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-5-michael@walle.cc>
 <20200428124825.GT185537@smile.fi.intel.com>
 <8cc4a2bd3fcaf836d7f393ce2425c872@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8cc4a2bd3fcaf836d7f393ce2425c872@walle.cc>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_074924_945580_901E797D 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Tue, Apr 28, 2020 at 04:39:44PM +0200, Michael Walle wrote:
> Am 2020-04-28 14:48, schrieb Andy Shevchenko:
> > On Thu, Apr 23, 2020 at 07:45:31PM +0200, Michael Walle wrote:
> > > This adds device tree bindings for the board management controller
> > > found
> > > on the Kontron SMARC-sAL28 board.
> > 
> > I think it should be independent patches (same way as you do for
> > drivers).
> 
> It used to be several patches but Rob suggested to put it into one:
> https://lore.kernel.org/linux-devicetree/20200330223535.GA31402@bogus/

Ah, okay.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
