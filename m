Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F407C209
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T+usUky7TxCP1CzH+UDJ8IvWBB3TWcne42JZ5b+zJXk=; b=Pe4RNMAA7iM0bs
	zNsYWoXvEut5xonbFBOqH8lRqvEN2d85CRT80lwC6UBQUponUpFkvwRJNXcaSpAyr68auF7SGrI5F
	/toyq/VQc+jp5yVsvlurOjGh5zF4xCQKIYhLpH4/QM4+aF1hMnS9Xkk9P7tXLjL4KtIWDo2HKuKvg
	G31h51lAq7zbgQX/M00kV6uFpVrCoevab4AArqTwiuLLME3LqjEOiQcyv0HazLgD4JIYwjtmUgwYJ
	pADtH5UO4OdojkLsIgFzv8TqQnfDilsgPJhKRMb/tZKbPcyOMqJKcdVQ7J+gkSsrwvrkv6zAJv6uI
	/0WMc9/CM7n2pelwEFyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnzE-0000RZ-IW; Wed, 31 Jul 2019 12:45:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnxU-0005qY-BP
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:43:58 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94935206B8;
 Wed, 31 Jul 2019 12:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564577035;
 bh=qdKt8xMkWx3WVKyGM6p4kgZa2A5bUHnif0uObDGpacs=;
 h=From:To:Cc:Subject:Date:From;
 b=2PNMPi2HyAUo2pq0bnVlLzISd0g9zVsRAilNinPTip5E5cYDt4EuxnIXHElkwTvJH
 dPcH2fxP7sNNLV5xbJKld4HmAQXtZsA0TJ9OOL2zD56aMvLQcivlBKx2iiQgNAw2U7
 SBbEoWYOMqoaclJc4+S40fQvW5IGe6rMUuYu8HzU=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org, Richard Gong <richard.gong@linux.intel.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: [PATCH v2 00/10] drivers, provide a way to add sysfs groups easily
Date: Wed, 31 Jul 2019 14:43:39 +0200
Message-Id: <20190731124349.4474-1-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_054356_445132_398BD118 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-input@vger.kernel.org, linux-fbdev@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sudeep Holla <sudeep.holla@arm.com>, x86@kernel.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 Tony Prisk <linux@prisktech.co.nz>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Darren Hart <dvhart@infradead.org>, Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch originally started out just as a way for platform drivers to
easily add a sysfs group in a race-free way, but thanks to Dmitry's
patch, this series now is for all drivers in the kernel (hey, a unified
driver model works!!!)

I've only converted a few platform drivers here in this series to show
how it works, but other busses can be converted after the first patch
goes into the tree.

Here's the original 00 message, for people to get an idea of what is
going on here:

If a platform driver wants to add a sysfs group, it has to do so in a
racy way, adding it after the driver is bound.  To resolve this issue,
have the platform driver core do this for the driver, making the
individual drivers logic smaller and simpler, and solving the race at
the same time.

All of these patches depend on the first patch.  I'll take the first one
through my driver-core tree, and any subsystem maintainer can either ack
their individul patch and I will be glad to also merge it, or they can
wait until after 5.4-rc1 when the core patch hits Linus's tree and then
take it, it's up to them.

Thank to Richard Gong for the idea and the testing of the platform
driver patch and to Dmitry Torokhov for rewriting the first patch to
work well for all busses.

-----

V2 - work for all busses and not just platform drivers.


Dmitry Torokhov (1):
  driver core: add dev_groups to all drivers

Greg Kroah-Hartman (9):
  uio: uio_fsl_elbc_gpcm: convert platform driver to use dev_groups
  input: keyboard: gpio_keys: convert platform driver to use dev_groups
  input: axp20x-pek: convert platform driver to use dev_groups
  firmware: arm_scpi: convert platform driver to use dev_groups
  olpc: x01: convert platform driver to use dev_groups
  platform: x86: hp-wmi: convert platform driver to use dev_groups
  video: fbdev: wm8505fb: convert platform driver to use dev_groups
  video: fbdev: w100fb: convert platform driver to use dev_groups
  video: fbdev: sm501fb: convert platform driver to use dev_groups

 arch/x86/platform/olpc/olpc-xo1-sci.c | 17 ++++------
 drivers/base/dd.c                     | 14 ++++++++
 drivers/firmware/arm_scpi.c           |  5 +--
 drivers/input/keyboard/gpio_keys.c    | 13 ++------
 drivers/input/misc/axp20x-pek.c       | 15 ++-------
 drivers/platform/x86/hp-wmi.c         | 47 +++++++--------------------
 drivers/uio/uio_fsl_elbc_gpcm.c       | 23 +++++--------
 drivers/video/fbdev/sm501fb.c         | 37 +++++----------------
 drivers/video/fbdev/w100fb.c          | 23 ++++++-------
 drivers/video/fbdev/wm8505fb.c        | 13 ++++----
 include/linux/device.h                |  3 ++
 11 files changed, 76 insertions(+), 134 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
