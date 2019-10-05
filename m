Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D96CCD22
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 00:41:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KpIdiwmF7ebJw4Rsv3csbXdFHvoQ4lQznLSWDZGpkuY=; b=UYaBIMEUOHck6+
	fYjXz/HKKQJ9xewEGoP8UmZ+zrEYO88WqGxAZqFohjtHbFwGG0MyMm03XP0Dr2F/bF8ZweWu1NsNZ
	xlwE8u2iJnkSfpujL0WsExcwMC9XQx8W8/bo444DYj+9Ii6gtXTC7wnzvQ3Kzbuegg9bVKKW49Wt5
	2E4Oo+bfET3uEXnyVtkDd1mOhSq689ZnD3JMmSB23rpmTT4dOG14WHU/RUClPFKCygaRKRy/5AcLs
	kOPZLKsq5TCDZggdGg+aSgeOVIZj9oBFdn7GHnxAbUsQwCo0JJdLWjgGzzPkk4VVc+hwLWwjAX2yT
	ozM/4V1QDan9vjqBebPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGsjw-0007L9-95; Sat, 05 Oct 2019 22:41:28 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGsjo-0007Ki-Cr
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 22:41:22 +0000
Received: by mail-lj1-x243.google.com with SMTP id q64so9932229ljb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 15:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=bDJ3kWr0YfhxU7F7kTZgolzUOHCoYxjKPCVzPLU/enY=;
 b=T9n7xSRfvcMEUdVDArQluHs0IFoHdChw2a4xbDOCJOzZvcbeGZgIx+T71p77IJVg2Z
 Jvad6RUTgT0ML1vXm9LHZX6q+mGdFIAjY35iI9vxJeHDn1F8tRvQDKT2BeaRDowlELHY
 2OgvjvC75fhqHRtZsNLc5IhgIVMJo3p3MUwp/eK6yv81B1/dlUoQpIO0NZVmZua82eCF
 qV9olqO+KN1c02DQFgDEsrVELCS9n9Sd5hF7U7teC5/b0gwFpPsWm+yiQcnIkMvzsulR
 B5LALYnXf47Tz+S/puExygWb/4SsWGQQBEK+qw5Jsp2wYi7uoKgNIPs3EFkuO95KmWKu
 YyUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=bDJ3kWr0YfhxU7F7kTZgolzUOHCoYxjKPCVzPLU/enY=;
 b=arjcSNsKZ6bmJlyMUbUPvDXUOUKC5wuLv//qYC1QIxjdh5FQW06vPRs3aBY9z4sYU1
 /hBVfGJjMWX4cq46U08J4veJQj0ZUjy6hGehio4GGzTwF5GFBPfE0ibXwR4pBRE73bnS
 KYLen5TkZmItCtFHG+O6CpbI4Mdy3qYUSX8zkViyjWz+IVc7CQObbx7sp01UCWoPLBtY
 sL5fggzXgGbXg8NJ5zWp9Cg6Rg8sFcusS+M5yPRg5f6/pw/MpumK2/KO/szPEf5YUht3
 BRhhwM5vIOpcEHqjhc4s4IUhEFSFlATxf5f5OWvenQA6UsGrBm+VKWcTELXk0WOD5yem
 eebw==
X-Gm-Message-State: APjAAAVfMfDQBCC0TCK/P49PtOny25Cp29tUeEBgppMWbHKg1qTqzh6D
 jV3shuJBDc67vb8BgRwrk524XQ==
X-Google-Smtp-Source: APXvYqxWxxPS9LA0EVWo9mgl3HLcgkvSNVDDrkJG4ReOnIeoPDnhUd0P8w5XpDAj904AN0SaWtKfEQ==
X-Received: by 2002:a2e:b607:: with SMTP id r7mr13883217ljn.100.1570315276513; 
 Sat, 05 Oct 2019 15:41:16 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id g3sm2117902ljj.59.2019.10.05.15.41.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 05 Oct 2019 15:41:14 -0700 (PDT)
Date: Sat, 5 Oct 2019 15:41:04 -0700
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] ARM: SoC fixes
Message-ID: <20191005224104.qptaeg72tt2gzdyl@localhost>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_154120_576602_EDA17900 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: olof@lixom.net, soc@kernel.org, arm@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

for you to fetch changes up to 60c1b3e25728e0485f08e72e61c3cad5331925a3:

  ARM: multi_v7_defconfig: Fix SPI_STM32_QSPI support (2019-10-04 10:18:55 -0700)

----------------------------------------------------------------
ARM: SoC fixes

A few fixes this time around:

 - Fixup of some clock specifications for DRA7 (device-tree fix)
 - Removal of some dead/legacy CPU OPP/PM code for OMAP that throws
   warnings at boot
 - A few more minor fixups for OMAPs, most around display
 - Enable STM32 QSPI as =y since their rootfs sometimes comes from
   there
 - Switch CONFIG_REMOTEPROC to =y since it went from tristate to bool
 - Fix of thermal zone definition for ux500 (5.4 regression)

----------------------------------------------------------------
Adam Ford (1):
      ARM: omap2plus_defconfig: Enable DRM_TI_TFP410

H. Nikolaus Schaller (1):
      DTS: ARM: gta04: introduce legacy spi-cs-high to make display work again

Keerthy (1):
      arm64/ARM: configs: Change CONFIG_REMOTEPROC from m to y

Linus Walleij (1):
      ARM: dts: ux500: Fix up the CPU thermal zone

Olof Johansson (1):
      Merge tag 'omap-for-v5.4/fixes-rc1-signed' of git://git.kernel.org/.../tmlind/linux-omap into arm/fixes

Patrice Chotard (1):
      ARM: multi_v7_defconfig: Fix SPI_STM32_QSPI support

Peter Ujfalusi (1):
      ARM: dts: am4372: Set memory bandwidth limit for DISPC

Tony Lindgren (8):
      clk: ti: dra7: Fix mcasp8 clock bits
      ARM: dts: Fix wrong clocks for dra7 mcasp
      Merge branch 'fixes-merge-window-pt2' into fixes
      ARM: omap2plus_defconfig: Enable more droid4 devices as loadable modules
      ARM: dts: Fix gpio0 flags for am335x-icev2
      ARM: OMAP2+: Fix missing reset done flag for am3 and am43
      ARM: OMAP2+: Add missing LCDC midlemode for am335x
      ARM: OMAP2+: Fix warnings with broken omap2_set_init_voltage()

 arch/arm/boot/dts/am335x-icev2.dts                 |   2 +-
 arch/arm/boot/dts/am33xx-l4.dtsi                   |   6 +-
 arch/arm/boot/dts/am4372.dtsi                      |   2 +
 arch/arm/boot/dts/dra7-l4.dtsi                     |  48 +++++-----
 arch/arm/boot/dts/omap3-gta04.dtsi                 |   1 +
 arch/arm/boot/dts/ste-dbx5x0.dtsi                  |  11 ++-
 arch/arm/configs/davinci_all_defconfig             |   2 +-
 arch/arm/configs/multi_v7_defconfig                |   4 +-
 arch/arm/configs/omap2plus_defconfig               |   5 +-
 .../mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c |   3 +-
 arch/arm/mach-omap2/omap_hwmod_33xx_data.c         |   5 +-
 arch/arm/mach-omap2/pm.c                           | 100 ---------------------
 arch/arm64/configs/defconfig                       |   2 +-
 drivers/clk/ti/clk-7xx.c                           |   6 +-
 14 files changed, 53 insertions(+), 144 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
