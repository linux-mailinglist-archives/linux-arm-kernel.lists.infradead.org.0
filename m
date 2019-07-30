Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C74B7AF06
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l4w6sN9FmuohLfI3fXwy2BBHCF8r799iJ01F6koYgoo=; b=SPCU/0dt8iziQW
	aqOb07MQMhkhsNyHfu+lmSFMdocfuDFct1jsjIZqGLBGhmq3XTbA/FwmaRzEeIuQn4elFNw1J4/o0
	O7lkMPfhpMyb+WDJ07DKBuNBHZIQerHzcLOsWR9ildOuLH2kyAvwa7RbGzfh7g/iROjz3G4jviy7a
	hUq9pnEyWOE3Fex6F6LqWBmIbD8qI5LX/XxmS5H35jqr50FYwIdUmvh2AQxMm6Eyx2bPTyXafiLCh
	Roo1hjcUnIUTTrXfnQvSR1xrscVGiqOIFcE8/25vTA6JnZUDj9+dlZj5qL5l+v23D+MCADv9ufVsR
	oARcSfFX7HdlbLXpbHFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVdp-0003tW-LG; Tue, 30 Jul 2019 17:10:25 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVdX-0003KF-Ru
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:10:09 +0000
Received: by mail-wm1-x342.google.com with SMTP id a15so57880573wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 10:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QMMwBZ+wPi5N3A625ygkZR4cE1oderMpAJBhWBkLHY8=;
 b=ayoiR1m4FqC/qaZmeKnUgSERK11yKotMN1DqucKBCmYKq1eVtp/g+pdQ4eTFYgpUwt
 S3CuTM5K4/JE9uHD1Lu5hlnoj1E2DvByOiJnuJshAYaOgrloMoq+wjQT0Zb0QXFFTehp
 hk/rlBCArnc2oZqrKX2q42JL/8+N7//FOSYlW+B+cMGYd00EcX2hufpyvm1cW1vI3qhs
 zDagrw6LyROjyL8Anel8qSVXlvtFPO9SlGwvBwjCuxP2d+MaYT1WvD2o/SErvynoemcH
 LHxtalLkdbMcW3Xsx3dUa93J+4MRdhBKlGEBPnuTnFaTiTt4dBKf/6C/oGOVeMe1y1Ut
 o8AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QMMwBZ+wPi5N3A625ygkZR4cE1oderMpAJBhWBkLHY8=;
 b=Tb0GKWSLdljpe9+xmAh4qxOHl9UmDlVf0VpcYKoWQJDrqkzyY6oEHfvfyEruO3Ei15
 1XrUBDmjeHpw3r3ZuZU6JkbcrjgqsYgr2EB5uIWWJ3YgLKkLhue54HiU6KV0WvaIU+jF
 3aMMneBnyL2jOaKYj6Lm1d0FNj0zEpt9ER6kj8dc94tadmpzyBoYlza/G9iiI909lpLK
 AtGwpJbF6IgagwfuxuuFH+mjNJVqGTnpyPuGsSfTBaOFREB0XoFi4MRPv/NCuV7gHqJI
 rnX7PX245zXqXGIj7KylgisbCJBWSIEQ7Y2Xq2VlBQcblU06qlgJ9k9BphSAazrxexri
 p+EQ==
X-Gm-Message-State: APjAAAU8O838pm+JIs1r72IGHJui0CZkicBp0YCUhBAM5rSnaoDlZJ87
 MMRLouRot5GuFQ12hOBhzyE=
X-Google-Smtp-Source: APXvYqxbBF6HgmRbnge5qXYXW5fvDCB0OpYXesJYnFSB2oA6mzE7L6bvZhypunTpklAoBfu+F+mM+Q==
X-Received: by 2002:a1c:6c08:: with SMTP id h8mr16976384wmc.62.1564506605557; 
 Tue, 30 Jul 2019 10:10:05 -0700 (PDT)
Received: from localhost.localdomain (ppp91-78-220-99.pppoe.mtu-net.ru.
 [91.78.220.99])
 by smtp.gmail.com with ESMTPSA id i13sm58897736wrr.73.2019.07.30.10.10.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 10:10:04 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v4 00/13] Consolidate and improve NVIDIA Tegra CPUIDLE
 driver(s)
Date: Tue, 30 Jul 2019 20:09:42 +0300
Message-Id: <20190730170955.11987-1-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_101007_914712_DB4A4B20 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

I was spending quite some time recently trying to hunt down CPU-suspend
bug on Tegra30 SoC and in the end it was nailed. During that time I
realized that the CPU Idle drivers could get some polish and gain new
features, thus that's what this series does:

  1. Unifies Tegra20/30/114 drivers into a single driver and moves it out
     into common drivers/cpuidle/ directory.

  2. Enables CPU cluster power-down idling state on Tegra30.

In the end there is a quite nice clean up of the Tegra CPUIDLE driver(s)
and of the Tegra's arch code in general. Please review, thanks!

Changelog:

v4: - Fixed compilation with !CONFIG_CACHE_L2X0 (and tested that it still
      works).

    - Replaced ktime_compare() with ktime_before() in the new driver,
      for consistency.

v3: - Addressed review comments that were made by Jon Hunter to v2 by
      splitting patches into smaller (and simpler) chunks, better
      documenting changes in the commit messages and using proper error
      codes in the code.

      Warnings are replaced with a useful error messages in the code of
      "Introduce unified driver for NVIDIA Tegra SoCs" patch.

      Secondary CPUs parking timeout increased to 100ms because I found
      that it actually may happen to take more than 1ms if CPU is running
      on a *very* low frequency.

      Added diagnostic messages that are reporting Flow Controller state
      when CPU parking fails.

      Further polished cpuidle driver's code.

      The coupled state entering is now aborted if there is a pending SGI
      (Software Generated Interrupt) because it will be lost after GIC's
      power-cycling. Like it was done by the old Tegra20 CPUIDLE driver.

v2: - Added patches to enable the new cpuidle driver in the defconfigs:

        ARM: multi_v7_defconfig: Enable Tegra cpuidle driver
        ARM: tegra: Enable Tegra cpuidle driver in tegra_defconfig

    - Dropped patches that removed CPUIDLE_FLAG_TIMER_STOP from the idling
      states because that flag actually doesn't have any negative effects,
      but still is correct for the case of a local CPU timer on older Tegra
      SoCs:

        cpuidle: tegra: Remove CPUIDLE_FLAG_TIMER_STOP from Tegra114/124 idle-state
        cpuidle: tegra: Remove CPUIDLE_FLAG_TIMER_STOP from all states

    - The "Add unified driver for NVIDIA Tegra SoCs" patch got more polish.
      Tegra30 and Terga114 states are now squashed into a single common C7
      state (following Parker TRM terminology, see 17.2.2.2 Power Management
      States), more comments added, etc minor changes.

Dmitry Osipenko (13):
  ARM: tegra: Remove cpuidle drivers to replace them with a new driver
  ARM: tegra: Change tegra_set_cpu_in_lp2() type to void
  ARM: tegra: Propagate error from tegra_idle_lp2_last()
  ARM: tegra: Compile sleep-tegra20/30.S unconditionally
  ARM: tegra: Expose PM functions required for new cpuidle driver
  ARM: tegra: Rename some of the newly exposed PM functions
  ARM: tegra: Add tegra_pm_park_secondary_cpu()
  clk: tegra: Add missing stubs for the case of !CONFIG_PM_SLEEP
  cpuidle: Introduce unified driver for NVIDIA Tegra SoCs
  cpuidle: tegra: Support CPU cluster power-down state on Tegra30
  ARM: tegra: Create simple platform device for cpuidle driver
  ARM: multi_v7_defconfig: Enable Tegra cpuidle driver
  ARM: tegra: Enable Tegra cpuidle driver in tegra_defconfig

 arch/arm/configs/multi_v7_defconfig           |   1 +
 arch/arm/configs/tegra_defconfig              |   1 +
 arch/arm/mach-tegra/Makefile                  |  23 +-
 arch/arm/mach-tegra/cpuidle-tegra114.c        |  89 -----
 arch/arm/mach-tegra/cpuidle-tegra20.c         | 212 -----------
 arch/arm/mach-tegra/cpuidle-tegra30.c         | 132 -------
 arch/arm/mach-tegra/cpuidle.c                 |  50 ---
 arch/arm/mach-tegra/cpuidle.h                 |  21 --
 arch/arm/mach-tegra/irq.c                     |   3 +-
 arch/arm/mach-tegra/pm.c                      |  50 +--
 arch/arm/mach-tegra/pm.h                      |   4 -
 arch/arm/mach-tegra/reset-handler.S           |  11 -
 arch/arm/mach-tegra/reset.h                   |   9 +-
 arch/arm/mach-tegra/sleep-tegra20.S           | 170 ---------
 arch/arm/mach-tegra/sleep-tegra30.S           |   6 +-
 arch/arm/mach-tegra/sleep.h                   |  15 -
 arch/arm/mach-tegra/tegra.c                   |   7 +-
 drivers/cpuidle/Kconfig.arm                   |   8 +
 drivers/cpuidle/Makefile                      |   1 +
 drivers/cpuidle/cpuidle-tegra.c               | 348 ++++++++++++++++++
 drivers/soc/tegra/Kconfig                     |   1 -
 include/linux/clk/tegra.h                     |  13 +
 include/soc/tegra/cpuidle.h                   |   2 +-
 .../mach-tegra => include/soc/tegra}/irq.h    |   8 +-
 include/soc/tegra/pm.h                        |  31 ++
 25 files changed, 452 insertions(+), 764 deletions(-)
 delete mode 100644 arch/arm/mach-tegra/cpuidle-tegra114.c
 delete mode 100644 arch/arm/mach-tegra/cpuidle-tegra20.c
 delete mode 100644 arch/arm/mach-tegra/cpuidle-tegra30.c
 delete mode 100644 arch/arm/mach-tegra/cpuidle.c
 delete mode 100644 arch/arm/mach-tegra/cpuidle.h
 create mode 100644 drivers/cpuidle/cpuidle-tegra.c
 rename {arch/arm/mach-tegra => include/soc/tegra}/irq.h (59%)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
