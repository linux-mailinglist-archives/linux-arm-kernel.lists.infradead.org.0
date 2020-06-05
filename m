Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E591EF9FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 16:09:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfU/0PoNEfp/H44yXnSDGPtFO6HjOzSpF3Yjw33PFBA=; b=LFXO85o/EdsyRf
	iLBf6CluZYLcudeUD0zMghMGrbMD5oefmOdAyFCb+YhpfHS9XYWbzM43BIE+lgP1hLPT1SuVw/h9y
	+pwj0JiF7N32OROmJBmnsU6ZE72GExSK9xOk9wBlf1T9nFFugEdx4k6OmKXoOU64tcRvz7cQ+Ncs4
	msuWfqzTRogYVFgl22+PwWqRk3cPd8H4pm4zDGVo56/vOiNNUljGgJvjbgvhemNjj/ACb6SaCazxG
	1C8eonHpXwTGRHHPgMg5g0qW0WT9gRii/OXtZw6mgU3qKu69rN/g3acK4DXgGoNF162aMH1LvTLQV
	JncrcJvK/YK3KSesUAbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhD2A-0005Lf-Tw; Fri, 05 Jun 2020 14:09:22 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhD22-0005LJ-Qe
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 14:09:16 +0000
IronPort-SDR: +pcYmFaUw/9rx/4LHiE+CeDBn0CJmdrFWZqh+4Ez0okveQHFLsfFxfpOkTgaaILk90Tvx6zq9L
 CH4f4f5k3e4g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 07:09:14 -0700
IronPort-SDR: STm5cJBEx3cZwh5EDl1WI2zIniez547qsBBHLm0a+PZkJql6UaV6R0I9F6DqWusAPQO2MUnztk
 j822dzBvILJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,476,1583222400"; d="scan'208";a="471924635"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga005.fm.intel.com with ESMTP; 05 Jun 2020 07:09:09 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andy.shevchenko@gmail.com>)
 id 1jhD1z-00B2nb-Cy; Fri, 05 Jun 2020 17:09:11 +0300
Date: Fri, 5 Jun 2020 17:09:11 +0300
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v4 04/11] watchdog: add support for sl28cpld watchdog
Message-ID: <20200605140911.GO2428291@smile.fi.intel.com>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-5-michael@walle.cc>
 <CAHp75VdeD6zDc--R4NPHsiqQerzfNGwUikLN+WHMiZZVsQ8QSA@mail.gmail.com>
 <8f042c2442852c29519c381833f3d289@walle.cc>
 <CAHp75VfY0BD4CFu6Thx1wE-U0Zt1q8uTOLxkWTMdFk0MBuhYFQ@mail.gmail.com>
 <871a4990-5b94-3a17-01d4-74998375f08b@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871a4990-5b94-3a17-01d4-74998375f08b@roeck-us.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_070914_879474_DECDACE5 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -1.8 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-pwm@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Mark Brown <broonie@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 05, 2020 at 06:52:00AM -0700, Guenter Roeck wrote:
> On 6/5/20 3:50 AM, Andy Shevchenko wrote:
> > On Fri, Jun 5, 2020 at 1:24 PM Michael Walle <michael@walle.cc> wrote:
> >> Am 2020-06-05 10:14, schrieb Andy Shevchenko:
> >>> On Fri, Jun 5, 2020 at 12:14 AM Michael Walle <michael@walle.cc> wrote:

...

> >>>> +static bool nowayout = WATCHDOG_NOWAYOUT;
> >>>> +module_param(nowayout, bool, 0);
> >>>> +MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started
> >>>> (default="
> >>>> +                               __MODULE_STRING(WATCHDOG_NOWAYOUT)
> >>>> ")");
> >>>> +
> >>>> +static int timeout;
> >>>> +module_param(timeout, int, 0);
> >>>> +MODULE_PARM_DESC(timeout, "Initial watchdog timeout in seconds");
> >>>
> >>> Guenter ACKed this, but I'm wondering why we still need module
> >>> parameters...
> >>
> >> How would a user change the nowayout or the timeout? For the latter
> >> there is
> >> a device tree entry, but thats not easy changable by the user.
> > 
> > Yes, it's more question to VIm and Guenter than to you.
> > 
> 
> Has support for providing module parameters with the kernel command line
> been discontinued/deprecated, or did it run out of favor ? Sorry if I
> missed that.

Latter according to Greg KH. One of the (plenty) examples [1].

[1]: https://www.mail-archive.com/driverdev-devel@linuxdriverproject.org/msg96495.html

> nowayout has a configuration default. A module parameter is sometimes
> provided by drivers to be able to override it. The timeout provided
> via devicetree or on the command line is only the initial/default
> timeout, and the watchdog daemon can change it after opening the
> watchdog device as it sees fit.

Thanks for explanation.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
