Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B69642E8F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 20:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cyuIsJqgXPA2i822N+Hw/W9oX7jEiM4uTUTkmc+OR8U=; b=KkMv40saDsHmLa
	HXuDY9qpAzyV66kX5fHpgZexaChsd8ZVdkVbrdCD2iO0sgcLKrjmf4+2AyNvNAEw4LJVq6AmN5/SC
	IKmD1NkC8iis8DNwhcXHLXaIxhUQ9c5LTjHLdnpKSaWTNXfwGb8SWWpvRTrVMwdIklFvf4EdcTHyS
	kznR1vw+m9LW+xUfLCiYmaYe3TSg8tZaUZUwG9GR48gQIBx+gwRMOtd/1Wlk2T+F9PSqPa6qhoreV
	bEM//C8LdHGT0WzxINeSQHB5r6QSsNL6YHsUSUq5lkWunqQEl1SsF79p48cRedO6Gw40RjJ5TdADN
	AnC/x3bBhoWN27pZKHyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb7we-0008St-Nm; Wed, 12 Jun 2019 18:26:00 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb7vy-0008DJ-B9; Wed, 12 Jun 2019 18:25:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B9B2CAFFA;
 Wed, 12 Jun 2019 18:25:14 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: stefan.wahren@i2se.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/7] cpufreq support for Raspberry Pi
Date: Wed, 12 Jun 2019 20:24:52 +0200
Message-Id: <20190612182500.4097-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_112518_537060_6572F5EF 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 ptesarik@suse.com, sboyd@kernel.org, viresh.kumar@linaro.org,
 mturquette@baylibre.com, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,
this aims at adding cpufreq support to the Raspberry Pi family of
boards.

The series first factors out 'pllb' from clk-bcm2385 and creates a new
clk driver that operates it over RPi's firmware interface[1]. We are
forced to do so as the firmware 'owns' the pll and we're not allowed to
change through the register interface directly as we might race with the
over-temperature and under-voltage protections provided by the firmware.

Next it creates a minimal cpufreq driver that populates the CPU's opp
table, and registers cpufreq-dt. Which is needed as the firmware
controls the max and min frequencies available.

This was tested on a RPi3b+ and RPI2b, both using multi_v7_defconfig and
arm64's defconfig.

That's all,
kind regards,
Nicolas

[1] https://github.com/raspberrypi/firmware/wiki/Mailbox-property-interface

---

Changes since v3:
  - Fix sparse warnings in clk-raspberrypi.c
  - Minor cleanups

Changes since v2:
  - Fixed configs to match Stefan's comments
  - Round OPP frequencies
  - Rebase onto linux-next
  - Minor cleanups & checkpatch.pl

Changes since v1:
  - Enabled by default on the whole family of devices
  - Added/Fixed module support
  - clk device now registered by firmware driver
  - raspberrypi-cpufreq device now registered by clk driver
  - Reimplemented clk rounding unsing determine_rate()
  - Enabled in configs for arm and arm64

Changes since RFC:
  - Move firmware clk device into own driver

Nicolas Saenz Julienne (7):
  clk: bcm2835: remove pllb
  clk: bcm283x: add driver interfacing with Raspberry Pi's firmware
  firmware: raspberrypi: register clk device
  cpufreq: add driver for Raspberry Pi
  clk: raspberrypi: register platform device for raspberrypi-cpufreq
  ARM: defconfig: enable cpufreq driver for RPi
  arm64: defconfig: enable cpufreq support for RPi3

 arch/arm/configs/bcm2835_defconfig    |   9 +
 arch/arm/configs/multi_v7_defconfig   |   2 +
 arch/arm64/configs/defconfig          |   2 +
 drivers/clk/bcm/Kconfig               |   7 +
 drivers/clk/bcm/Makefile              |   1 +
 drivers/clk/bcm/clk-bcm2835.c         |  28 +--
 drivers/clk/bcm/clk-raspberrypi.c     | 315 ++++++++++++++++++++++++++
 drivers/cpufreq/Kconfig.arm           |   8 +
 drivers/cpufreq/Makefile              |   1 +
 drivers/cpufreq/raspberrypi-cpufreq.c |  97 ++++++++
 drivers/firmware/raspberrypi.c        |  10 +
 11 files changed, 456 insertions(+), 24 deletions(-)
 create mode 100644 drivers/clk/bcm/clk-raspberrypi.c
 create mode 100644 drivers/cpufreq/raspberrypi-cpufreq.c

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
