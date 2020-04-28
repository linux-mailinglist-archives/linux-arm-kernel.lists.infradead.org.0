Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 168951BBE24
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 14:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=872a3kicz62ROblAJhScexF3luul6TOoT/d3gmNURsw=; b=MHKRmQSQ7+Gf2b
	j28SXDPhkMb045aiJK75saG3bSqGkt2eeaLxwEdqJFtuTsps8dLwZD67Oo1WryvoqerQbWAibtWmo
	yQTEUQqbWk1dmV1zwEYiXD7lyDNVLQRUnNOyWwyV4dk5RwJEr0jiLVaoWrWD4pr3VIz+8sib0+UOe
	N+xwJ7SOs8ct4YDn5UuRyNfCkUdlcATaEpof8hi23LG9Rhwcrksyf1FicxyrTWH4DSvLYe6R/BF9v
	w3vA+60VFjJSshPZAFlKfaExOTzbVf8liKlP4xewoKlxTX9l5S5PP9YxtUFzbf5YFzrWa0BWjxRY5
	TVG80bX/KlaXBVjLNpMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTPfC-0000df-4h; Tue, 28 Apr 2020 12:48:38 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTPf3-0000co-M4
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 12:48:30 +0000
IronPort-SDR: Y1t713FM18oY1+RlzN1WU7wNVCfLKpZQYJCPMnQWN1wqRgYM85HIAXp2VbdgKSp5Lu9vm+si6C
 9I7fsGkiRzCw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 05:48:28 -0700
IronPort-SDR: Z6HWDOLjjHowLabIxkbwfY0Q9JgW7Nm7J2HaRF6lvI3Cx2TF1ufN6CXUvV7fWs7gyUl5moZXMA
 76qS05kQmiAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,327,1583222400"; d="scan'208";a="257603079"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga003.jf.intel.com with ESMTP; 28 Apr 2020 05:48:23 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jTPez-003YmH-Dr; Tue, 28 Apr 2020 15:48:25 +0300
Date: Tue, 28 Apr 2020 15:48:25 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v3 04/16] dt-bindings: mfd: Add bindings for sl28cpld
Message-ID: <20200428124825.GT185537@smile.fi.intel.com>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-5-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423174543.17161-5-michael@walle.cc>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_054829_729387_6D95D974 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
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

On Thu, Apr 23, 2020 at 07:45:31PM +0200, Michael Walle wrote:
> This adds device tree bindings for the board management controller found
> on the Kontron SMARC-sAL28 board.

I think it should be independent patches (same way as you do for drivers).

>  .../bindings/gpio/kontron,sl28cpld-gpio.yaml  |  51 ++++++
>  .../hwmon/kontron,sl28cpld-hwmon.yaml         |  27 +++
>  .../bindings/mfd/kontron,sl28cpld.yaml        | 162 ++++++++++++++++++
>  .../bindings/pwm/kontron,sl28cpld-pwm.yaml    |  35 ++++
>  .../watchdog/kontron,sl28cpld-wdt.yaml        |  35 ++++

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
