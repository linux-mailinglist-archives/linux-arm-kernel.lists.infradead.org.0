Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8095F4CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g5BGpV3Abtwf2Acy5p8Iq5Vf4YD+CJxWzGxCIPTfRgI=; b=I1kH/4R9yInpp8
	+VhpH71nj5Ky3uY+5JFVWhzi5s/QuxizG9j+tjoVK8686dr+Lm2fX0rIFwu/EzZFzEFHdWh/8t0lj
	ANVlvenpJPrdqzoFpiYuo0Puxz0LMWyu7hO5GyGb51mso/e2UAop3OtK3APL21eunAjlpqR1PYlXb
	banktsu7EHep7xx8lquBsvP9QjHrC8BjrEvarQaVJJC1Fw0sqdjy4FGmZa7/VAOhNoxlsLHInJWnw
	rg3FoDQdxjShdbPyt/s+lYNFJlMB/sYRNsYWcXB7QNBzfHI6JeR4e8AE77ZvLcCBcRVbkzKXT11RE
	rjFQAHIQiuKGuB9H8eyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixO8-0005bD-81; Thu, 04 Jul 2019 08:46:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hixNv-0005ab-1v
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:46:32 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE44B2189E;
 Thu,  4 Jul 2019 08:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562229990;
 bh=tC7+gI4m6/FmoXDFgw+iYQurMimFbVLSYsLJZsEwswo=;
 h=From:To:Cc:Subject:Date:From;
 b=k1z/iZmhkgL1+r5CK+JywKsx41uolSAz0o6l9oruBRWsCwsK3uP7NC8yhwHmkRfmT
 uYnpWBIafyLG3LbrauXyApoKrbN+r0LhrfsET7Ma07/BKj/2HPxh7h3pjP8QOCjSuk
 V1ZrAdjygpzHO7Js27pZu/f0TdYw+0Cvmc/N3ge8=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 00/11] Platform drivers,
 provide a way to add sysfs groups easily
Date: Thu,  4 Jul 2019 10:46:06 +0200
Message-Id: <20190704084617.3602-1-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_014631_135565_8826E312 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-fbdev@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, dri-devel@lists.freedesktop.org,
 platform-driver-x86@vger.kernel.org, Mans Rullgard <mans@mansr.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Romain Izard <romain.izard.pro@gmail.com>,
 Richard Gong <richard.gong@linux.intel.com>,
 Florian Fainelli <f.fainelli@gmail.com>, x86@kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Ingo Molnar <mingo@redhat.com>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, Darren Hart <dvhart@infradead.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-input@vger.kernel.org, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Tony Prisk <linux@prisktech.co.nz>, Sudeep Holla <sudeep.holla@arm.com>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If a platform driver wants to add a sysfs group, it has to do so in a
racy way, adding it after the driver is bound.  To resolve this issue,
have the platform driver core do this for the driver, making the
individual drivers logic smaller and simpler, and solving the race at
the same time.

All of these patches depend on the first patch.  I'll take the first one
through my driver-core tree, and any subsystem maintainer can either ack
their individul patch and I will be glad to also merge it, or they can
wait until after 5.3-rc1 when the core patch hits Linus's tree and then
take it, it's up to them.

Thank to Richard Gong for the idea and the testing of the platform
driver patch.

Greg Kroah-Hartman (11):
  Platform: add a dev_groups pointer to struct platform_driver
  uio: uio_fsl_elbc_gpcm: convert platform driver to use dev_groups
  serial: sh-sci: use driver core functions, not sysfs ones.
  firmware: arm_scpi: convert platform driver to use dev_groups
  olpc: x01: convert platform driver to use dev_groups
  platform: x86: hp-wmi: convert platform driver to use dev_groups
  video: fbdev: wm8505fb: convert platform driver to use dev_groups
  video: fbdev: w100fb: convert platform driver to use dev_groups
  video: fbdev: sm501fb: convert platform driver to use dev_groups
  input: keyboard: gpio_keys: convert platform driver to use dev_groups
  input: axp20x-pek: convert platform driver to use dev_groups

 arch/x86/platform/olpc/olpc-xo1-sci.c | 17 ++++------
 drivers/base/platform.c               | 40 +++++++++++++++--------
 drivers/firmware/arm_scpi.c           |  5 +--
 drivers/input/keyboard/gpio_keys.c    | 13 ++------
 drivers/input/misc/axp20x-pek.c       | 15 ++-------
 drivers/platform/x86/hp-wmi.c         | 47 +++++++--------------------
 drivers/tty/serial/sh-sci.c           | 22 +++++--------
 drivers/uio/uio_fsl_elbc_gpcm.c       | 23 +++++--------
 drivers/video/fbdev/sm501fb.c         | 37 +++++----------------
 drivers/video/fbdev/w100fb.c          | 23 ++++++-------
 drivers/video/fbdev/wm8505fb.c        | 13 ++++----
 include/linux/platform_device.h       |  1 +
 12 files changed, 94 insertions(+), 162 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
