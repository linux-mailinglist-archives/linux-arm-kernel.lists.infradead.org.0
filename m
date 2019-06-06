Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E19137673
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 16:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=riH6MmE0gq+8e4Q3U8rNDumhpaf166UV6bmuELOv4x0=; b=QMmgThfzfiBwrq
	yUvKg125Choz1UY2Mg8qT1ToVbGzyWR6Xp68IO5ulH2WRZPdlqZ5CUBhRI/GmuASWQkEsJhBrr+Kk
	6Lo+Fg+HrziQ60GIG7I+bgfWj/Wt+lnkoM5qEuKVnosjwqf6snvyShHWyHfsz4r8rWkftjIWCYOG8
	ss0vy9tyDDYvT79XetnTbnqRWIg8gd1j1JzUMooQaYJUrQ/M8s/w+lp27+sjXla//q4eMnFgjrqVi
	tgVP2HyVmwd/rYEOqgjQNob+acomN+nXxIc34j09KCjro43jtj4CB/DpZmR7jryVDmdPTu+sZpfTR
	5+zJ1PVVNFJizd0G6n7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYtIZ-0003XB-2t; Thu, 06 Jun 2019 14:23:23 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYtIR-0003WO-Oh; Thu, 06 Jun 2019 14:23:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DB236AFD6;
 Thu,  6 Jun 2019 14:23:13 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: stefan.wahren@i2se.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/7] cpufreq support for Raspberry Pi
Date: Thu,  6 Jun 2019 16:22:47 +0200
Message-Id: <20190606142255.29454-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_072315_949293_8DC4E56E 
X-CRM114-Status: GOOD (  13.13  )
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
X-Mailman-Version: 2.1.21
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

@Eric: Even though some things change, namely to properly support being
       built as a module, I still added your Acked-by as it didn't
       change the overall design. I hope it's OK.

That's all,
kind regards,
Nicolas

[1] https://github.com/raspberrypi/firmware/wiki/Mailbox-property-interface

---

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
  cpufreq: add driver for Raspbery Pi
  clk: raspberrypi: register platform device for raspberrypi-cpufreq
  ARM: defconfig: enable cpufreq driver for RPi
  arm64: defconfig: enable cpufreq support for RPi3

 arch/arm/configs/bcm2835_defconfig    |   9 +
 arch/arm/configs/multi_v7_defconfig   |   2 +
 arch/arm64/configs/defconfig          |   2 +
 drivers/clk/bcm/Kconfig               |   7 +
 drivers/clk/bcm/Makefile              |   1 +
 drivers/clk/bcm/clk-bcm2835.c         |  28 +--
 drivers/clk/bcm/clk-raspberrypi.c     | 316 ++++++++++++++++++++++++++
 drivers/cpufreq/Kconfig.arm           |   8 +
 drivers/cpufreq/Makefile              |   1 +
 drivers/cpufreq/raspberrypi-cpufreq.c | 100 ++++++++
 drivers/firmware/raspberrypi.c        |  10 +
 11 files changed, 460 insertions(+), 24 deletions(-)
 create mode 100644 drivers/clk/bcm/clk-raspberrypi.c
 create mode 100644 drivers/cpufreq/raspberrypi-cpufreq.c

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
