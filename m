Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3D5699C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 19:30:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C2Npx5mGS5mvqg9IrXStNhY5wMEb7nxsyzbd+xB2uX4=; b=qbpuSmnwcJF/KA
	KXIsagblokNzWvJoS++Wf8J2l2PY6OYAxZ9cKFP7KtJDDZ2A+KBQSUZJ0Bvp83plzNNzY6ZKY6so9
	EKmIIpkbRUQ6zqP2jzJ8dzU25v/t1IhYUqzdzukBZ2t5Xb4yf3cAZMkkhnIs6vOXA1pp/dJF2NHEa
	AmAn1NW4rmx28aCUN6UnRL9VRwQUfb5WTj8uLDS2a+Mhxn5NjpGXZ8J6J0HquBrkIsld+N5d9w2Vx
	qZkU9WMzRr/sYgo6k7bdCoHJ5ZuetH3xGWhSsAhKi1ShoY+5OeRhxeDQX1CCE/po4/howrNGdI5gG
	qj2kJEWJUjAY/v6ih4fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4nm-0008Df-HQ; Mon, 15 Jul 2019 17:30:14 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4nK-0008Co-Nw
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 17:29:48 +0000
Received: by mail-lf1-x141.google.com with SMTP id q26so11590458lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 10:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=14LUvsDt1gvon+wQxuZkucZPfWNvGtdLSK5zNw+y+rA=;
 b=ixrxfkci5dK+hglsPn5hYVamBJtCPCa0nsBEWDUI0EpA8GFehnCmVFI9GCfedQbpUu
 FDTHVi3tV5sA67WmYGwasXnB3ivKrzwVNMy6/bWmDKs1XZOXtq1nTdETXmdcQPgyNfUk
 1MA2KKVN1yaehff8y0asY8lIZ/lmYp5WycT4JNS2YfiaxTGM6K72tIpyqEOMrvljCxL8
 23jzXHSLjHS0rfkSWtcqybyVS5dVDUVGziUOEgfy2SED+fBIQBxi4DSwau29FKuaqJSr
 OaiFWePa0lYtnFBJ398YLihSjmxlSfB8wloB8tY0h+58x8eLb2FxgA2/zAOgdlO3qHJU
 +Vxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=14LUvsDt1gvon+wQxuZkucZPfWNvGtdLSK5zNw+y+rA=;
 b=S0VC/aR/5UfsWJ70cpHOjCBOw/wCfTyBT5siE+/Y7tywkZwGDmI3v32Y14zE/X8Rfe
 4JN64fjuqpH9naHKaT8L3X9A2nWiuPsYPbkIz2WTMfM6SWGWOvX06+FhClvZl6z14R0R
 petyNLOgMb4xCD1Zfmblo12zjCtW9ERaVaED7HBUm6ZXn1ohYsKmHePwHyG2QTX0DYo/
 m7cwMcDhbeRZ89peXOYMhJW9qe5hHz+zQNWe0LYllHrr2LeOtaf8DhHxw4IraWf0tAuW
 IUdMBr4Xk+ncIF8GMocLbK0LFcxDH1j7Tqndombbft0l0/K1A+1LKUd+z+Sg/BkrHJiD
 UI6A==
X-Gm-Message-State: APjAAAU/NSoIelH7/6NVFp10xpTIaCKd0ydHSDlsaAMbRuhngr14CkG7
 s4ijg21Hb1d2QxCJyKRGPJ2CYBMh
X-Google-Smtp-Source: APXvYqz03+U5F5T79TCqUrDKPWa9pW7113bB7WL9Hu2ZaUcqUgWSXnsTbG6w0fLEJMAFg3WfQLZ3lQ==
X-Received: by 2002:ac2:5bc7:: with SMTP id u7mr12198271lfn.167.1563211784616; 
 Mon, 15 Jul 2019 10:29:44 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.gmail.com with ESMTPSA id b17sm3248765ljf.34.2019.07.15.10.29.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 10:29:43 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v3 00/13] Consolidate and improve NVIDIA Tegra CPUIDLE
 driver(s)
Date: Mon, 15 Jul 2019 20:26:16 +0300
Message-Id: <20190715172629.4437-1-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_102946_787412_8550A01F 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 arch/arm/mach-tegra/pm.c                      |  47 +--
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
 25 files changed, 450 insertions(+), 763 deletions(-)
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
