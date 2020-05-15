Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3AB1D52A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9I0X/jxUq/xn87/6PE4OS+ANNmzixoNliWbWYVg15rE=; b=fuvKXgaXHRcacR
	fow9En1RhxF0UNz78C+222D9lmFeDltVWQ0cTWgwKdK2MCSAxqFv8XHbbpMpqRihDutSlaqvhSkMq
	MPOAgBiWR8Bzw3JhyOS9+5t/sgsZx/x+8Z/tFu2Nk0vb9Heq+7dYiVY4atOv+Q/neiqp1myiFmtb1
	smloB6nn9hNTBgOUD6Dxs6+G92S/qlyefqaHxAI06F31PmoxQMnoaI2WCL8+DrAq9VsjpEUMsYB8S
	irbI/+nULibbAJydfJn8mT+okcwNN2U3ctX7Ju99sFQ82T7dz2h3bPBrylBOh36PGGwc49CV9T7f3
	zWVClptDtvD8X+oXqAwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbkj-0005GX-8L; Fri, 15 May 2020 14:55:57 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbiN-00011F-6x
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:53:34 +0000
Received: by mail-wm1-x342.google.com with SMTP id z4so1448331wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 07:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OPQXfC8VLeh7yB0C+9OJNGpPQZauVK3Msd52CBY6WNE=;
 b=oJYvt3WWSmWwnFRSq3ns2pb6ONzvcCkHiiyrWwSVPxvhaX5uq7xzNJmA6fjyCGSk9R
 KqkcnQYZcy7233IZ6OtXuhTwUiK+MyYM2DRUjxpp+nYIYJUt2P4sq55DZoIZoBrYfUKu
 6o2QpGN/SxfZreYsa8Aw1CuhF23mCg7bVEHSyJFyvIobQ6yImPkrjs3cO7B85GrlyyNB
 ssXoQ52yC8GbB7zYkHljMpxmpQiSsJrqTM7VOm5R27YmcL8E1z0pL11j3UczwqSyI0jo
 MQ5lHrk2UhqSqpZdAZlrpUscTF+2cnelD/SFceJ8Te7VncgJCDwCFfzmSkr4TKmmBryE
 eNnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OPQXfC8VLeh7yB0C+9OJNGpPQZauVK3Msd52CBY6WNE=;
 b=Tw1dDCr2cXkrDEXC3LMUuya6mgtULzfi+wyvRiAgf0tbNyNYofuiX4CNy6aEI4rCl6
 57KNTNbMUJ9MLxgB5ryIqagBVDDmJQEWNW+fkMxVE2XkhXB/3S0ftsRhzSZDUmV/a3dg
 EpOJKBdqYGK4QjYzg39dbg8dzWFHtnitZIkqkd6fLqZbXeRtXWOLLKSNK9EWdwmlb8kt
 gnftxydv3bOosKueRJdTr0WpxIIC01xcqNcQPfTDfr/YFTSc7g7II0wH1lARY4iCvsyd
 ob0lED61Z883V6JxWby2LKUeg0axveZ01xWPCnc+Xyp3fCqX6ARvGKFOlmdqAtQEqcUN
 OcjA==
X-Gm-Message-State: AOAM5339ESE6YkQYQsxpqG84DhTa6kuSVyAy6nvVIY8zo5Si98IBFrsp
 2Fumnaicw6PRDBe3uXZqLcw=
X-Google-Smtp-Source: ABdhPJzmOjglOXh3jng6KG92iiQM5k8LyruLeNxAvCHY0/wDqVS09vViAXRoZgguHbPJs3R3KytWYw==
X-Received: by 2002:a05:600c:d6:: with SMTP id
 u22mr4204078wmm.45.1589554409202; 
 Fri, 15 May 2020 07:53:29 -0700 (PDT)
Received: from localhost (pD9E51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id r2sm4022439wrg.84.2020.05.15.07.53.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 07:53:28 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 07/11] memory: tegra: Changes for v5.8-rc1
Date: Fri, 15 May 2020 16:53:07 +0200
Message-Id: <20200515145311.1580134-8-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200515145311.1580134-1-thierry.reding@gmail.com>
References: <20200515145311.1580134-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_075331_339190_22FB5129 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.8-memory

for you to fetch changes up to b7d4cab0360484786b2a53b1bb603b564218112f:

  memory: tegra: Delete some dead code (2020-05-12 22:52:00 +0200)

Thanks,
Thierry

----------------------------------------------------------------
memory: tegra: Changes for v5.8-rc1

Contains a few cleanup patches and an implementation to scale the EMC
frequency on Tegra210 systems.

----------------------------------------------------------------
Arnd Bergmann (1):
      memory: tegra: Avoid unused function warnings

Christophe JAILLET (1):
      memory: tegra: Fix an error handling path in tegra186_emc_probe()

Dan Carpenter (1):
      memory: tegra: Delete some dead code

Dmitry Osipenko (9):
      dt-bindings: cpufreq: Add binding for NVIDIA Tegra20/30
      clk: tegra: Add custom CCLK implementation
      clk: tegra: pll: Add pre/post rate-change hooks
      clk: tegra: cclk: Add helpers for handling PLLX rate changes
      clk: tegra20: Use custom CCLK implementation
      clk: tegra30: Use custom CCLK implementation
      memory: tegra: Make debugfs permissions human-readable
      memory: tegra20-emc: Poll EMC-CaR handshake instead of waiting for interrupt
      memory: tegra30-emc: Poll EMC-CaR handshake instead of waiting for interrupt

Geert Uytterhoeven (2):
      of: Make <linux/of_reserved_mem.h> self-contained
      memory: tegra: Drop <linux/clk-provider.h>

Joseph Lo (7):
      dt-bindings: memory: tegra: Add external memory controller binding for Tegra210
      clk: tegra: Add PLLP_UD and PLLMB_UD for Tegra210
      clk: tegra: Export functions for EMC clock scaling
      clk: tegra: Implement Tegra210 EMC clock
      clk: tegra: Remove the old emc_mux clock for Tegra210
      memory: tegra: Add EMC scaling support code for Tegra210
      memory: tegra: Add EMC scaling sequence code for Tegra210

Sowjanya Komatineni (4):
      dt-bindings: clock: tegra: Remove PMC clock IDs
      dt-bindings: clock: tegra: Add clock ID for CSI TPG clock
      dt-bindings: tegra: Add VI and CSI bindings
      clk: tegra: Add Tegra210 CSI TPG clock gate

Thierry Reding (9):
      of: reserved-memory: Support lookup of regions by name
      of: reserved-memory: Support multiple regions per device
      dt-bindings: i2c: tegra: Document Tegra210 VI I2C
      Merge branch 'for-5.8/dt-bindings' into for-5.8/clk
      clk: tegra: Rename Tegra124 EMC clock source file
      Merge branch 'for-5.8/dt-bindings' into for-5.8/memory
      Merge branch 'for-5.8/of' into for-5.8/memory
      Merge branch 'for-5.8/clk' into for-5.8/memory
      memory: tegra: Support derated timings on Tegra210

 .../bindings/cpufreq/nvidia,tegra20-cpufreq.txt    |   56 +
 .../display/tegra/nvidia,tegra20-host1x.txt        |   73 +-
 .../devicetree/bindings/i2c/nvidia,tegra20-i2c.txt |    6 +
 .../memory-controllers/nvidia,tegra210-emc.yaml    |   82 +
 drivers/clk/tegra/Kconfig                          |    4 -
 drivers/clk/tegra/Makefile                         |    4 +-
 drivers/clk/tegra/clk-pll.c                        |   12 +-
 drivers/clk/tegra/clk-tegra-super-cclk.c           |  212 ++
 .../clk/tegra/{clk-emc.c => clk-tegra124-emc.c}    |    0
 drivers/clk/tegra/clk-tegra20.c                    |    7 +-
 drivers/clk/tegra/clk-tegra210-emc.c               |  369 ++++
 drivers/clk/tegra/clk-tegra210.c                   |   94 +-
 drivers/clk/tegra/clk-tegra30.c                    |    6 +-
 drivers/clk/tegra/clk.h                            |   24 +-
 drivers/memory/tegra/Kconfig                       |   14 +
 drivers/memory/tegra/Makefile                      |    4 +
 drivers/memory/tegra/mc.h                          |    1 +
 drivers/memory/tegra/tegra124-emc.c                |    6 +-
 drivers/memory/tegra/tegra186-emc.c                |   21 +-
 drivers/memory/tegra/tegra186.c                    |    4 +-
 drivers/memory/tegra/tegra20-emc.c                 |   34 +-
 drivers/memory/tegra/tegra210-emc-cc-r21021.c      | 1775 +++++++++++++++++
 drivers/memory/tegra/tegra210-emc-core.c           | 2100 ++++++++++++++++++++
 drivers/memory/tegra/tegra210-emc-table.c          |   90 +
 drivers/memory/tegra/tegra210-emc.h                | 1016 ++++++++++
 drivers/memory/tegra/tegra210-mc.h                 |   50 +
 drivers/memory/tegra/tegra30-emc.c                 |  122 +-
 drivers/of/of_reserved_mem.c                       |   41 +-
 include/dt-bindings/clock/tegra114-car.h           |   14 +-
 include/dt-bindings/clock/tegra124-car-common.h    |   14 +-
 include/dt-bindings/clock/tegra20-car.h            |    2 +-
 include/dt-bindings/clock/tegra210-car.h           |   20 +-
 include/dt-bindings/clock/tegra30-car.h            |   14 +-
 include/linux/clk/tegra.h                          |   27 +
 include/linux/of_reserved_mem.h                    |   12 +
 35 files changed, 6131 insertions(+), 199 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/cpufreq/nvidia,tegra20-cpufreq.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.yaml
 create mode 100644 drivers/clk/tegra/clk-tegra-super-cclk.c
 rename drivers/clk/tegra/{clk-emc.c => clk-tegra124-emc.c} (100%)
 create mode 100644 drivers/clk/tegra/clk-tegra210-emc.c
 create mode 100644 drivers/memory/tegra/tegra210-emc-cc-r21021.c
 create mode 100644 drivers/memory/tegra/tegra210-emc-core.c
 create mode 100644 drivers/memory/tegra/tegra210-emc-table.c
 create mode 100644 drivers/memory/tegra/tegra210-emc.h
 create mode 100644 drivers/memory/tegra/tegra210-mc.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
