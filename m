Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F90114688
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 19:06:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZgHEFix3Y7gLcGJ4pnSWZAEXONOtnE0mDZ05pr55ydk=; b=c0sGU/v+2c0l3j
	H4X9/YzysZFLkrFqsUktCcrNOmzd9IzDeF5Lg1Ay2HhyJN/pYwkh8bOtDL9zFoZ6/zYgtipXjBI44
	03u74IXCJE4wnURl2ISM9CVJkJrAxKxGkkcAPU8ak8l6oE3/rkU267IQq+53CJf47gufBUaoZkFmS
	7gikPNjV5xPZE15x9fggbfprBVJ4K8AsSDOuaetO80lIonlzSrGmZdvkdV4o8lOERXBdscM3XAqkv
	C8SxN35v/pnU6ImoDa+9QxkRgpR42u1xZIUCOKOY3+LnpMUj1TfhvqCe3mN1z8XI1FfMyelct23LL
	3BqdvKvxcPGAU0P3gKqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icvVw-0002fP-GQ; Thu, 05 Dec 2019 18:06:08 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icvV7-0000z2-7y
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 18:05:19 +0000
Received: by mail-pg1-x52c.google.com with SMTP id z124so1936935pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 10:05:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4VfcySzacf9Mk4uPexIJL7qLBciOB9N9FiYTKJsLj+c=;
 b=QVRdaMgiO3BViNe0tsyF0qgnhAHOEg4eF9dh1TmzLTMNyAuV3i3zIUiIFmlGAeP2q3
 M3c6uvCF5e6cIQ7MmscE8N5GBJRcVsII6yMmBI7aohIbz9RJ7l+9AaiOoj2GGmhb5z93
 5IT50W9a/3uh7+NQ/jNy4icQuiC557QJiZhGDMBDd5hufjiUhNv2/tE1+9b3mm08rJUe
 MOSZuVHKKGLgTR2Ie/KMQF73O0OHfwAF8IfRL0ey1szFBSQY4zsvGIQWialzDIa1qf5S
 7hMRCgI2D7IP4lL8N9wKI+VP9O9Zj+HSiXFX7Ezjwj/79VIj3NJtWyarRG7ElUdrNKzL
 O8nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4VfcySzacf9Mk4uPexIJL7qLBciOB9N9FiYTKJsLj+c=;
 b=nOAifdaD88ijDXu5FgvWVE7Oynhq20EsOI64lOA6xa/WQOoykgQ6kTgeKGNnbQ2lEn
 j5Gr3GkqTyDkMBTnlshyLvz5V+iZqYnlZaIIqEr9bfRka417XqjUpwUYyJoqgyi7mmVr
 JIpKYvqbVBZ9d6qnYXEieATpkskTZ/mCLN2RjPMNHXWkH657KAiUYzrNFM4D9VQHLdPz
 7/Ue5l3UnTWl3ni70iwetYUDAuw0imAVBSZ2wACPiFMAqMDcEE8GMgBIUH3Ywws8O9E1
 7vzUSGxT+G19ZlWmrdA7PrdwFkYs2pYWx64FGhderWv5TFrUsd6hxBJDHxXHWrIJC6Kw
 SJcA==
X-Gm-Message-State: APjAAAVNdNC5LqfQVLfXvSzyHn5BtkxsaS/yNEy/FbskJixBMWBAlZOX
 b3jxvEH3iE9BUvvT1EWNk+e4Sw==
X-Google-Smtp-Source: APXvYqw0USXf88dB3EAi4gOUu2U6f56QPN/w1SKWlAb5nvhpOcANg+fGkfUbMsiA6cH++g9/WTcAMA==
X-Received: by 2002:a62:2ccf:: with SMTP id s198mr10278665pfs.42.1575569116250; 
 Thu, 05 Dec 2019 10:05:16 -0800 (PST)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id s22sm386918pjr.5.2019.12.05.10.05.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Dec 2019 10:05:14 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL 4/4] ARM: SoC defconfig updates
Date: Thu,  5 Dec 2019 10:04:53 -0800
Message-Id: <20191205180453.14056-4-olof@lixom.net>
X-Mailer: git-send-email 2.22.GIT
In-Reply-To: <20191205180453.14056-1-olof@lixom.net>
References: <20191205180453.14056-1-olof@lixom.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_100517_352090_DFBF82AE 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
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
Cc: Olof Johansson <olof@lixom.net>, soc@kernel.org, arm@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We keep this in a separate branch to avoid cross-branch conflicts, but
most of the material here is fairly boring -- some new drivers turned on
for hardware since they were merged, and some refreshed files due to
time having moved a lot of entries around.


Conflicts: None

----------------------------------------------------------------

The following changes since commit 77dde8ce535d53cab7ff0655db6e00735e52b41c:

  Merge branch 'arm/dt' into HEAD

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-defconfig

for you to fetch changes up to a235f803dbc878d1db83cbaabf6963ca9ef3a1a2:

  Merge tag 'aspeed-5.5-defconfig' of git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed into arm/defconfig

----------------------------------------------------------------

Adam Ford (4):
      ARM: omap2plus_defconfig: Update for removed items
      ARM: omap2plus_defconfig: Update for moved item
      ARM: omap2plus_defconfig: Enable HW Crypto engine modules
      configs: omap2plus: Enable VIDEO_MT9P031 module

Alexandre Belloni (1):
      ARM: configs: at91: unselect PIT

Anson Huang (2):
      ARM: imx_v6_v7_defconfig: Enable CONFIG_IMX7ULP_WDT by default
      arm64: defconfig: Enable CONFIG_KEYBOARD_IMX_SC_KEY as module

Biju Das (1):
      arm64: defconfig: Enable R8A774B1 SoC

Brian Masney (1):
      ARM: qcom_defconfig: add ocmem support

Corentin Labbe (2):
      ARM: configs: sunxi: add new Allwinner crypto options
      arm64: defconfig: add new Allwinner crypto options

Dinh Nguyen (2):
      arm64: defconfig: enable the Cadence QSPI controller
      arm64: defconfig: enable Altera GPIO controller

Dmitry Osipenko (1):
      ARM: tegra: Enable Tegra VDE driver in tegra_defconfig

Fabio Estevam (1):
      ARM: imx_v6_v7_defconfig: Enable CONFIG_TOUCHSCREEN_DA9052

Geert Uytterhoeven (2):
      arm64: defconfig: Enable R8A77961 SoC
      ARM: shmobile: defconfig: Refresh for v5.4-rc1

Joel Stanley (5):
      ARM: config: aspeed-g5: Enable 8250_DW quirks
      ARM: config: aspeed-g5: Add SGPIO and FSI drivers
      ARM: config: aspeed-g4: Add MMC, and cleanup
      ARM: configs: multi_v7: ASPEED network, gpio, FSI
      ARM: config: multi_v5: ASPEED SDHCI, SGPIO

Krzysztof Kozlowski (2):
      ARM: multi_v7_defconfig: Enable options for boards with Exynos SoC
      ARM: multi_v7_defconfig: Enable Exynos bus and memory frequency scaling (devfreq)

Leonard Crestez (1):
      ARM: imx_v6_v7_defconfig: Build USB_CONFIGFS into kernel

Lubomir Rintel (1):
      ARM: multi_v7_defconfig: enable MMP platforms

Lukasz Luba (1):
      ARM: exynos_defconfig: Enable DMC driver

Manivannan Sadhasivam (1):
      arm64: configs: Enable Actions Semi platform in defconfig

Mihaela Martinas (1):
      arm64: defconfig: Enable configs for S32V234

Olivier Moysan (1):
      ARM: multi_v7_defconfig: Enable audio support for stm32mp157

Olof Johansson (15):
      Merge tag 'renesas-arm64-defconfig-for-v5.5-tag1' of git://git.kernel.org/.../geert/renesas-devel into arm/defconfig
      Merge tag 'samsung-defconfig-5.5' of https://git.kernel.org/.../krzk/linux into arm/defconfig
      Merge tag 'omap-for-v5.4/fixes-rc3-signed' of git://git.kernel.org/.../tmlind/linux-omap into arm/fixes
      Merge tag 'omap-for-v5.5/defconfig-signed' of git://git.kernel.org/.../tmlind/linux-omap into arm/defconfig
      Merge tag 'arm64_defconfig_for_v5.5' of git://git.kernel.org/.../dinguyen/linux into arm/defconfig
      Merge tag 'hisi-arm64-defconfig-for-5.5' of git://github.com/hisilicon/linux-hisi into arm/defconfig
      Merge tag 'renesas-arm-defconfig-for-v5.5-tag1' of git://git.kernel.org/.../geert/renesas-devel into arm/defconfig
      Merge tag 'renesas-arm64-defconfig-for-v5.5-tag2' of git://git.kernel.org/.../geert/renesas-devel into arm/defconfig
      Merge tag 'sunxi-config-for-5.5-2' of https://git.kernel.org/.../sunxi/linux into arm/defconfig
      Merge tag 'sunxi-config64-for-5.5-1' of https://git.kernel.org/.../sunxi/linux into arm/defconfig
      Merge tag 'tegra-for-5.5-arm-defconfig' of git://git.kernel.org/.../tegra/linux into arm/defconfig
      Merge tag 'imx-defconfig-5.5' of git://git.kernel.org/.../shawnguo/linux into arm/defconfig
      Merge tag 'qcom-defconfig-for-5.5' of git://git.kernel.org/.../qcom/linux into arm/defconfig
      Merge tag 'at91-5.5-defconfig' of git://git.kernel.org/.../at91/linux into arm/defconfig
      Merge tag 'aspeed-5.5-defconfig' of git://git.kernel.org/.../joel/aspeed into arm/defconfig

Peng Fan (1):
      arm64: defconfig: Change CONFIG_AT803X_PHY from m to y

Priit Laes (1):
      ARM: configs: sunxi: Enable MICREL_PHY

Richard Gong (1):
      arm64: defconfig: enable rsu driver

Sylwester Nawrocki (1):
      ARM: exynos_defconfig: Enable Arndale audio driver

Zhou Wang (2):
      arm64: defconfig: Enable HiSilicon ZIP controller
      arm64: defconfig: Enable SMMU v3 PMCG


 arch/arm/configs/aspeed_g4_defconfig | 18 ++++++++-----
 arch/arm/configs/aspeed_g5_defconfig |  4 +++
 arch/arm/configs/at91_dt_defconfig   |  1 +
 arch/arm/configs/exynos_defconfig    |  2 ++
 arch/arm/configs/imx_v6_v7_defconfig |  4 ++-
 arch/arm/configs/multi_v5_defconfig  |  4 +++
 arch/arm/configs/multi_v7_defconfig  | 45 ++++++++++++++++++++++++++++++-
 arch/arm/configs/omap2plus_defconfig | 10 ++++---
 arch/arm/configs/qcom_defconfig      |  1 +
 arch/arm/configs/sama5_defconfig     |  1 +
 arch/arm/configs/shmobile_defconfig  |  3 ---
 arch/arm/configs/sunxi_defconfig     |  3 +++
 arch/arm/configs/tegra_defconfig     |  2 ++
 arch/arm64/configs/defconfig         | 16 ++++++++++-
 14 files changed, 98 insertions(+), 16 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
