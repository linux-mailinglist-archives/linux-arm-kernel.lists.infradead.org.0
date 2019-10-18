Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4F9DC033
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 10:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tiPlrHWrVP7nsmxtOcvYjmRvFdGVmt287jSTsRCIAzo=; b=aPlM6A7um2VcqO
	Xig7Twu5o5mSz5aNO7E+24zbPX2G5Y706X4NV2/CF0NdHq2KypbLUTODMWUgymAY11rLzgUIbe08P
	XKgoBTz2uhMGC7Nb0pea1Cv8d4+oaQ5L4X2OKj4FRxvPaPbC8kmeVd35316prUFZhZSqM1ISN7SoC
	rnTQAWoN9t5yC5BJDFZyui16Qu9dGZ9NiTZ4FtsygeU90DSNkZ1gFR46Gf22k7gX1b2iKJG8juhZJ
	3UwBmBwwP7DKM1+GwcNMVme1s/k9r2nAG+L6XOHodGVBaIYNLqq97qQQ46kjA+BVgCI/SaZl3mAfu
	TpWEIMQffdofArUctSBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLNrz-0005a0-Vv; Fri, 18 Oct 2019 08:44:23 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLNrq-0005ZW-SR
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 08:44:16 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 01:44:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,311,1566889200"; d="scan'208";a="397870720"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga006.fm.intel.com with ESMTP; 18 Oct 2019 01:44:05 -0700
Received: from andy by smile with local (Exim 4.92.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1iLNrf-0008LD-3B; Fri, 18 Oct 2019 11:44:03 +0300
Date: Fri, 18 Oct 2019 11:44:03 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH 00/22] Stop using input_polled_dev in polling drivers
Message-ID: <20191018084403.GR32742@smile.fi.intel.com>
References: <20191017204217.106453-1-dmitry.torokhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017204217.106453-1-dmitry.torokhov@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_014414_960146_75C3E60E 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sven Van Asbroeck <TheSven73@gmail.com>, Jacky Bai <ping.bai@nxp.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Jonathan Bakker <xc-racer2@live.ca>, Marco Felsch <m.felsch@pengutronix.de>,
 Stefan Agner <stefan@agner.ch>, Eric Anholt <eric@anholt.net>,
 Jilayne Lovejoy <opensource@jilayne.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Miloslav Trmac <mitr@volny.cz>, Anders Roxell <anders.roxell@linaro.org>,
 Alexander Shiyan <shc_work@mail.ru>, YueHaibing <yuehaibing@huawei.com>,
 Luca Weiss <luca@z3ntu.xyz>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org,
 Jeff LaBundy <jeff@labundy.com>, Mukesh Ojha <mojha@codeaurora.org>,
 Brian Masney <masneyb@onstation.org>, Pavel Machek <pavel@ucw.cz>,
 Alexios Zavras <alexios.zavras@intel.com>, Steve Winslow <swinslow@gmail.com>,
 Ronald =?iso-8859-1?Q?Tschal=E4r?= <ronald@innovation.ch>,
 Martin Kepplinger <martink@posteo.de>, Allison Randal <allison@lohutok.net>,
 Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Richard Fontana <rfontana@redhat.com>,
 Maximilian Luz <luzmaximilian@gmail.com>, linux-kernel@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 =?utf-8?B?UGF3ZcWC?= Chmiel <pawel.mikolaj.chmiel@gmail.com>,
 Enrico Weigelt <info@metux.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 01:41:54PM -0700, Dmitry Torokhov wrote:
> Input devices now support polling mode natively (via input_setup_polling
> API), and input_polled_dev implementation is going away. This series
> switches drivers found in drivers/input to the new scheme.
> 

For all I have been Cc'ed
Acked-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

> 
> Dmitry Torokhov (21):
>   Input: raspberrypi-ts - switch to using polled mode of input devices
>   Input: sur40 - switch to using polled mode of input devices
>   Input: ts4800-ts - switch to using polled mode of input devices
>   Input: tsc6507x-ts - switch to using polled mode of input devices
>   Input: adc-keys - switch to using polled mode of input devices
>   Input: clps711x-keypad - switch to using polled mode of input devices
>   Input: jornada680_kbd - switch to using polled mode of input devices
>   Input: gpio_keys_polled - switch to using polled mode of input devices
>   Input: apanel - switch to using polled mode of input devices
>   Input: wistron_btns - switch to using polled mode of input devices
>   Input: cobalt_btns - convert to use managed resources
>   Input: cobalt_btns - switch to using polled mode of input devices
>   Input: sgi_btns - switch to using managed resources
>   Input: sgi_btns - switch to using polled mode of input devices
>   Input: rb532_button - switch to using managed resources
>   Input: rb532_button - switch to using polled mode of input devices
>   Input: gpio_decoder - switch to using polled mode of input devices
>   Input: mma8450 - switch to using polled mode of input devices
>   Input: bma150 - switch to using polled mode of input devices
>   Input: kxtj9 - switch to using managed resources
>   Input: kxtj9 - switch to using polled mode of input devices
> 
> Jonathan Bakker (1):
>   Input: bma150 - use managed resources helpers
> 
>  drivers/input/keyboard/Kconfig             |   4 -
>  drivers/input/keyboard/adc-keys.c          |  36 ++--
>  drivers/input/keyboard/clps711x-keypad.c   |  70 +++----
>  drivers/input/keyboard/gpio_keys_polled.c  |  65 +++---
>  drivers/input/keyboard/jornada680_kbd.c    |  37 ++--
>  drivers/input/misc/Kconfig                 |  15 --
>  drivers/input/misc/apanel.c                | 153 ++++++--------
>  drivers/input/misc/bma150.c                | 190 +++++------------
>  drivers/input/misc/cobalt_btns.c           |  73 +++----
>  drivers/input/misc/gpio_decoder.c          |  42 ++--
>  drivers/input/misc/kxtj9.c                 | 224 ++++++---------------
>  drivers/input/misc/mma8450.c               | 101 +++++-----
>  drivers/input/misc/rb532_button.c          |  48 ++---
>  drivers/input/misc/sgi_btns.c              |  54 ++---
>  drivers/input/misc/wistron_btns.c          |  51 ++---
>  drivers/input/touchscreen/Kconfig          |   4 -
>  drivers/input/touchscreen/raspberrypi-ts.c |  38 ++--
>  drivers/input/touchscreen/sur40.c          |  92 +++++----
>  drivers/input/touchscreen/tps6507x-ts.c    |  36 ++--
>  drivers/input/touchscreen/ts4800-ts.c      |  68 ++++---
>  20 files changed, 557 insertions(+), 844 deletions(-)
> 
> -- 
> 2.23.0.866.gb869b98d4c-goog
> 

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
