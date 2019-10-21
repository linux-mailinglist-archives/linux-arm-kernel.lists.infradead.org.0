Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B876DE5E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 10:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFCgAN03OH+Q8X5Puh7glw7da4rZqVfmcPX7inHS80Y=; b=cxgzMsO0sVBdqL
	vPAMsFhuW6nDZziuo1vxlRjUIiqG+NwrDGYRxVJrbtWkFS0eEqppdm050zfmUt/k5mX5Tzvy/YM7f
	TMRSvTc0PCSO8V/rZaeiQBwg+tcHiuyZycuE/xjZ0WjEUKpHBntyIaMn2F8PmVlt/bsQGdUwf3aGB
	1hpEHYqgmCjyQdPB6eUd+Rye8yThHPW8CR4H/9HIounFzHSspyHHhaix/Q/uFfIa9yBtFdIBoMbrC
	i3cRhkCPtSLgR/SsBLT88B6Xk+YdpdnGdnJllif+iPO2SGq0YsEWo+NTSSke8vNQIH9hnOZ9MrYgP
	kBCVOUMAQs13ny8GclKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMSh8-0003KS-KI; Mon, 21 Oct 2019 08:05:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMSgx-0003JX-Fv
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 08:05:29 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iMSfM-000875-Se; Mon, 21 Oct 2019 10:03:48 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iMSfC-00081S-2X; Mon, 21 Oct 2019 10:03:38 +0200
Date: Mon, 21 Oct 2019 10:03:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH 00/22] Stop using input_polled_dev in polling drivers
Message-ID: <20191021080338.prrraz5h7sykxz6e@pengutronix.de>
References: <20191017204217.106453-1-dmitry.torokhov@gmail.com>
 <20191018084403.GR32742@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018084403.GR32742@smile.fi.intel.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:02:38 up 156 days, 14:20, 97 users,  load average: 0.14, 0.13,
 0.10
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_010527_540063_8B439492 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Jonathan Bakker <xc-racer2@live.ca>, Stefan Agner <stefan@agner.ch>,
 Eric Anholt <eric@anholt.net>, Jilayne Lovejoy <opensource@jilayne.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Miloslav Trmac <mitr@volny.cz>, Anders Roxell <anders.roxell@linaro.org>,
 Anson Huang <Anson.Huang@nxp.com>, YueHaibing <yuehaibing@huawei.com>,
 Luca Weiss <luca@z3ntu.xyz>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org,
 Jeff LaBundy <jeff@labundy.com>, Mukesh Ojha <mojha@codeaurora.org>,
 Brian Masney <masneyb@onstation.org>, Pavel Machek <pavel@ucw.cz>,
 Alexios Zavras <alexios.zavras@intel.com>, Steve Winslow <swinslow@gmail.com>,
 Ronald =?iso-8859-1?Q?Tschal=E4r?= <ronald@innovation.ch>,
 Martin Kepplinger <martink@posteo.de>, Allison Randal <allison@lohutok.net>,
 Dong Aisheng <aisheng.dong@nxp.com>, Alexander Shiyan <shc_work@mail.ru>,
 Richard Fontana <rfontana@redhat.com>,
 Maximilian Luz <luzmaximilian@gmail.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 =?utf-8?B?UGF3ZcWC?= Chmiel <pawel.mikolaj.chmiel@gmail.com>,
 Enrico Weigelt <info@metux.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-10-18 11:44, Andy Shevchenko wrote:
> On Thu, Oct 17, 2019 at 01:41:54PM -0700, Dmitry Torokhov wrote:
> > Input devices now support polling mode natively (via input_setup_polling
> > API), and input_polled_dev implementation is going away. This series
> > switches drivers found in drivers/input to the new scheme.
> > 
> 
> For all I have been Cc'ed
> Acked-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Same for me
Acked-by: Marco Felsch <m.felsch@pengutronix.de> 

> > 
> > Dmitry Torokhov (21):
> >   Input: raspberrypi-ts - switch to using polled mode of input devices
> >   Input: sur40 - switch to using polled mode of input devices
> >   Input: ts4800-ts - switch to using polled mode of input devices
> >   Input: tsc6507x-ts - switch to using polled mode of input devices
> >   Input: adc-keys - switch to using polled mode of input devices
> >   Input: clps711x-keypad - switch to using polled mode of input devices
> >   Input: jornada680_kbd - switch to using polled mode of input devices
> >   Input: gpio_keys_polled - switch to using polled mode of input devices
> >   Input: apanel - switch to using polled mode of input devices
> >   Input: wistron_btns - switch to using polled mode of input devices
> >   Input: cobalt_btns - convert to use managed resources
> >   Input: cobalt_btns - switch to using polled mode of input devices
> >   Input: sgi_btns - switch to using managed resources
> >   Input: sgi_btns - switch to using polled mode of input devices
> >   Input: rb532_button - switch to using managed resources
> >   Input: rb532_button - switch to using polled mode of input devices
> >   Input: gpio_decoder - switch to using polled mode of input devices
> >   Input: mma8450 - switch to using polled mode of input devices
> >   Input: bma150 - switch to using polled mode of input devices
> >   Input: kxtj9 - switch to using managed resources
> >   Input: kxtj9 - switch to using polled mode of input devices
> > 
> > Jonathan Bakker (1):
> >   Input: bma150 - use managed resources helpers
> > 
> >  drivers/input/keyboard/Kconfig             |   4 -
> >  drivers/input/keyboard/adc-keys.c          |  36 ++--
> >  drivers/input/keyboard/clps711x-keypad.c   |  70 +++----
> >  drivers/input/keyboard/gpio_keys_polled.c  |  65 +++---
> >  drivers/input/keyboard/jornada680_kbd.c    |  37 ++--
> >  drivers/input/misc/Kconfig                 |  15 --
> >  drivers/input/misc/apanel.c                | 153 ++++++--------
> >  drivers/input/misc/bma150.c                | 190 +++++------------
> >  drivers/input/misc/cobalt_btns.c           |  73 +++----
> >  drivers/input/misc/gpio_decoder.c          |  42 ++--
> >  drivers/input/misc/kxtj9.c                 | 224 ++++++---------------
> >  drivers/input/misc/mma8450.c               | 101 +++++-----
> >  drivers/input/misc/rb532_button.c          |  48 ++---
> >  drivers/input/misc/sgi_btns.c              |  54 ++---
> >  drivers/input/misc/wistron_btns.c          |  51 ++---
> >  drivers/input/touchscreen/Kconfig          |   4 -
> >  drivers/input/touchscreen/raspberrypi-ts.c |  38 ++--
> >  drivers/input/touchscreen/sur40.c          |  92 +++++----
> >  drivers/input/touchscreen/tps6507x-ts.c    |  36 ++--
> >  drivers/input/touchscreen/ts4800-ts.c      |  68 ++++---
> >  20 files changed, 557 insertions(+), 844 deletions(-)
> > 
> > -- 
> > 2.23.0.866.gb869b98d4c-goog
> > 
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
