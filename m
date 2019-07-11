Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C7E65087
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 05:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n6KBtkqXUlxDGkZlwmSDfBhPo0IOjAG4nbdeFGa/CHk=; b=VxskuRMpnVVtHb
	nMNKvl+9B8MrLg2c7/jUneTEB0uwTGdBIVFKObIf62z6G82zOD52Zsm8Qkkp7YaF85UfdNmy4nlFb
	50lRovYLYQtla25qaSMyLzvTKeUaLowRRd6jIsXY44dowCW/DdfnBgyj/TEZqT+j4wFyudXLszFlT
	p+1B4UHQMQNolaqK6LBrbj2GxzeRwBLADywaGbkOGMVTsKANnippzJvsNXMMp/4dfhgQTxfTyLpgn
	yQBC+lWGhTW1mDMNOYcdLRJAnFdjRridqj1G58Cpm72IGjRJMg1nsPWnn7kR6yLNhnbSmENa9yvK+
	nU8aK96HkGbHSiB9vRkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlPWv-0002AT-Bu; Thu, 11 Jul 2019 03:13:57 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlPWa-00029O-Fd
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 03:13:37 +0000
Received: by mail-lj1-x243.google.com with SMTP id m8so4172117lji.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 20:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mpCGft6h9dmrOGcCvZTli+kMxH4PBD8CMHoLHpaOawQ=;
 b=b1b7yPI39e8NdkiSn8/HrpWb3fVO7NhCuqCgRnHHBzfSP1chB3IS7oyzTzgRdDB2Af
 QKyAIYlE1yREJtRepgzZGnlh7h391lpAbPrbE6YMJwuSU5ZeZ0NWA66BdAzkbBq/4L1L
 CZqKJbAG+FYx+3nf53n2RnFulIb0DopDAeIENJhYa5ymZYKyk11yJ0NIHP8mjycnkfNH
 aa4O7sQEdRHr9nungA+sLQ1evJNf1P163iTTBbI8UhCqQCEi53wo5p0ZPDo7LunE9O8a
 UX/jf4AsKUwoGkOghBTyMeXFUaUGp+QXvvW7C7lrIlmqQDJ6gyzBSvLJrNgrffRRL4dc
 LgQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mpCGft6h9dmrOGcCvZTli+kMxH4PBD8CMHoLHpaOawQ=;
 b=T/XUehZqppLc2i3CHmselNZphVhGwMiKn6R3GY8Owktw3qs+6bcrK+fYOfKgeRvVDo
 056wfklozxDEcib/Sz0PiVHHfphryX+GXkvtTp1H53Gc1TFpWle7LG1zA2uDDT3FZ/KZ
 81JN/nvrAM04/MUROqflDh+XOo7DAIVLg7ulrRcK330zYrTxd3yuihyRBqLOibEkOmFM
 p1deDKAdHy51CCLJbkFYuaS5kXl1HyUC+TYe0c49KsQM8Xp8GQGt27TU+iQSBznMPRLY
 FwzWpa7v1vZ4+9Y0J7qwJ41ir3pmVupjC5xHWp/MtBsuxvoQhPAYi0f2QXqR4GJk5rPt
 VtmQ==
X-Gm-Message-State: APjAAAVs32PLBpFtl1onwq9A1KKRzrgjKgtrnI2vU15w5VHHhzSRSds5
 mD9ZtzHS/4U6Xpve5B3zxUs=
X-Google-Smtp-Source: APXvYqx7u63Q6EAdovMQgRC2frOh1N4eUtDlwEHKSYHNaZw/XN+/J+/c8jgY6NnH25y2BTp66FjmjA==
X-Received: by 2002:a2e:96d5:: with SMTP id d21mr906935ljj.170.1562814814590; 
 Wed, 10 Jul 2019 20:13:34 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.gmail.com with ESMTPSA id h84sm753915ljf.42.2019.07.10.20.13.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 20:13:33 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v2 0/6] Consolidate and improve NVIDIA Tegra CPUIDLE driver(s)
Date: Thu, 11 Jul 2019 06:13:06 +0300
Message-Id: <20190711031312.10038-1-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_201336_543850_36262F63 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

Dmitry Osipenko (6):
  ARM: tegra: Remove cpuidle drivers
  ARM: tegra: Expose functions required for cpuidle driver
  cpuidle: Add unified driver for NVIDIA Tegra SoCs
  cpuidle: tegra: Support CPU cluster power-down on Tegra30
  ARM: multi_v7_defconfig: Enable Tegra cpuidle driver
  ARM: tegra: Enable Tegra cpuidle driver in tegra_defconfig

 arch/arm/configs/multi_v7_defconfig    |   1 +
 arch/arm/configs/tegra_defconfig       |   1 +
 arch/arm/mach-tegra/Makefile           |  15 +-
 arch/arm/mach-tegra/cpuidle-tegra114.c |  89 --------
 arch/arm/mach-tegra/cpuidle-tegra20.c  | 212 -----------------
 arch/arm/mach-tegra/cpuidle-tegra30.c  | 132 -----------
 arch/arm/mach-tegra/cpuidle.c          |  50 ----
 arch/arm/mach-tegra/cpuidle.h          |  21 --
 arch/arm/mach-tegra/irq.c              |  18 --
 arch/arm/mach-tegra/irq.h              |  11 -
 arch/arm/mach-tegra/platsmp.c          |   2 -
 arch/arm/mach-tegra/pm.c               |  27 +--
 arch/arm/mach-tegra/pm.h               |   4 -
 arch/arm/mach-tegra/reset-handler.S    |  11 -
 arch/arm/mach-tegra/reset.h            |   9 +-
 arch/arm/mach-tegra/sleep-tegra20.S    | 190 +---------------
 arch/arm/mach-tegra/sleep.h            |  13 --
 arch/arm/mach-tegra/tegra.c            |   7 +-
 drivers/cpuidle/Kconfig.arm            |   8 +
 drivers/cpuidle/Makefile               |   1 +
 drivers/cpuidle/cpuidle-tegra.c        | 303 +++++++++++++++++++++++++
 drivers/soc/tegra/Kconfig              |   1 -
 include/linux/clk/tegra.h              |  13 ++
 include/soc/tegra/cpuidle.h            |   2 +-
 include/soc/tegra/pm.h                 |  28 +++
 25 files changed, 375 insertions(+), 794 deletions(-)
 delete mode 100644 arch/arm/mach-tegra/cpuidle-tegra114.c
 delete mode 100644 arch/arm/mach-tegra/cpuidle-tegra20.c
 delete mode 100644 arch/arm/mach-tegra/cpuidle-tegra30.c
 delete mode 100644 arch/arm/mach-tegra/cpuidle.c
 delete mode 100644 arch/arm/mach-tegra/cpuidle.h
 delete mode 100644 arch/arm/mach-tegra/irq.h
 create mode 100644 drivers/cpuidle/cpuidle-tegra.c

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
