Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C0934EF4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 19:34:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6brCVm1c8xSJmy1J/s0O0B+AbOQ7rKWkAhtHC1954cM=; b=YzuvbT5WEgNxby
	K4N6WNRl5vodNq2HPRwxCajhI+5Ey6QjW/802EN09W8mcj6wYDd9QhvhEdLRYoZPX5ndr04x7WY1n
	T13mEDy9vaHOJ0R2dygbs/XPCqkAwV4pqVp0tt2VvJugkNvK4T+BW/+vxNivSITZwppjljhTn3ZJU
	6wDsSavmanOPgn6100SGDECkBnKugXVSjCddabqBt9Pc1YsH3OTQ2IWYBeF6we2NKN+vIBO6o91lN
	PoKW6SaRt7N4Zt6H2EmRu+u4jlscwhc7QYbpBS2SmGq3QMId+6uyJtOx5bxMyCQ4EAIpixgpcNNtS
	4QiPMadiXf0J+nek/ZBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYDJq-0001ir-S9; Tue, 04 Jun 2019 17:33:54 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYDJj-0001TE-GZ; Tue, 04 Jun 2019 17:33:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id F3163AE05;
 Tue,  4 Jun 2019 17:33:42 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: stefan.wahren@i2se.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Subject: [PATCH 0/4] cpufreq support for the Raspberry Pi
Date: Tue,  4 Jun 2019 19:32:18 +0200
Message-Id: <20190604173223.4229-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_103347_698519_87D42FD8 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: f.fainelli@gmail.com, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, mturquette@baylibre.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,
this series aims at adding cpufreq support to the Raspberry Pi family of
boards.

The previous revision can be found at: https://lkml.org/lkml/2019/5/20/431

The series first factors out 'pllb' from clk-bcm2385 and creates a new
clk driver that operates it over RPi's firmware interface[1]. We are
forced to do so as the firmware 'owns' the pll and we're not allowed to
change through the register interface directly as we might race with the
over-temperature and under-voltage protections provided by the firmware.

Next it creates a minimal cpufreq driver that populates the CPU's opp
table, and registers cpufreq-dt. Which is needed as the firmware
controls the max and min frequencies available.

This was tested on a RPi3b+ and RPI2b which are the boards I have access
to. Until this is tested broadly the cpufreq driver takes care of
filtering out the rest of boards.

That's all,
kind regards,
Nicolas

[1] https://github.com/raspberrypi/firmware/wiki/Mailbox-property-interface

---

Changes since RFC:
  - Addressed Viresh's comments in cpufreq driver
  - Addressed Stefan's comments in both cpufreq & clk drivers
  - Moved all firmware clk operations into it's own driver

Nicolas Saenz Julienne (4):
  clk: bcm2835: remove pllb
  clk: bcm283x: add driver interfacing with Raspberry Pi's firmware
  clk: bcm2835: register Raspberry Pi's firmware clk device
  cpufreq: add driver for Raspbery Pi

 drivers/clk/bcm/Makefile              |   1 +
 drivers/clk/bcm/clk-bcm2835.c         |  40 ++--
 drivers/clk/bcm/clk-raspberrypi.c     | 316 ++++++++++++++++++++++++++
 drivers/cpufreq/Kconfig.arm           |   8 +
 drivers/cpufreq/Makefile              |   1 +
 drivers/cpufreq/raspberrypi-cpufreq.c |  84 +++++++
 6 files changed, 423 insertions(+), 27 deletions(-)
 create mode 100644 drivers/clk/bcm/clk-raspberrypi.c
 create mode 100644 drivers/cpufreq/raspberrypi-cpufreq.c

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
