Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EE019E067
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 23:37:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ik8Y6AFoKDlt80kOdbOq4jipfXhjDJ/N8nuozLAPjY=; b=qfz/pKQBiJY+PM
	U8DNblBTCj4ocGyJy2fxESyyYLHKX/pcPJ/MDHRW14JOXdV3tntUAlj/0E0HHg2J1AkzqpcpBlzlK
	S2JuIzV1BvLs9h56XXlobY7laTMIU9GZqhs3/M3DPqIPq4UvrR6DPYvN+5gzo9mXhzpRmaD+bydxd
	AlaaQ+/4O9wzT188rSKYWAABa4Qp5s/sbFNLDd+tTS2k3/GpovkprRcUIMH0U6S3JX4PLMIg2SFbN
	vOYpECTzUx2MdQKeGX0zo919KqtSoLObRxKrh84wj/yiLmaQgBy0Hpbm8fSkMpjGGtPrAxNpc1o2V
	VlgHqbSDbDwTIqNtYGgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKTzc-0000uf-GW; Fri, 03 Apr 2020 21:36:48 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKTzV-0000tb-BW
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 21:36:43 +0000
Received: from mail-qv1-f43.google.com ([209.85.219.43]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MYtoe-1jpKdz0tyC-00UvbD for <linux-arm-kernel@lists.infradead.org>; Fri,
 03 Apr 2020 23:36:39 +0200
Received: by mail-qv1-f43.google.com with SMTP id ef12so4372718qvb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 14:36:39 -0700 (PDT)
X-Gm-Message-State: AGi0Pubqld/hmpzJiYBdzCZPjzy/RlgqMZnlnXH446COiDU8CWtPv6Jg
 Ch7CYNYJk5GDtcP9cw9rOQ+yNIkGmJvO0Ud8o58=
X-Google-Smtp-Source: APiQypJEJiFIbTi8fSzKFamqwrtiYtCRm/bgKdSwRNs8rNj5LPKegO4X8kEdGXNllyWPyp+7ypgNrf68jhQ+n80NIxI=
X-Received: by 2002:a0c:a602:: with SMTP id s2mr10712987qva.222.1585949798093; 
 Fri, 03 Apr 2020 14:36:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a1aO+LUu6KsW+s8aZMNWt2yz7kqe=LARY=ifMKOqT9uNQ@mail.gmail.com>
In-Reply-To: <CAK8P3a1aO+LUu6KsW+s8aZMNWt2yz7kqe=LARY=ifMKOqT9uNQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 3 Apr 2020 23:36:22 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3OPgCzLxzd=7Ng=jregKB0HycLLrfA4xYd7-4Te-kHMA@mail.gmail.com>
Message-ID: <CAK8P3a3OPgCzLxzd=7Ng=jregKB0HycLLrfA4xYd7-4Te-kHMA@mail.gmail.com>
Subject: [GIT PULL 3/4] ARM: defconfig updates
To: Linus Torvalds <torvalds@linux-foundation.org>
X-Provags-ID: V03:K1:QURds0nu+RFTWFrVvLtEWIU3e8+jfhFz7AN9X56DKvxyc/UlLpK
 NWhu7Zgw2BOkKZNYyZD0RWqAYHeO1PM9rhTSyy64416K13nEbMU16MJX0A0LhcvIWt9RlmA
 hfTu32QwPEDIkoiBlr8D8AQJIYqU+8UZYsl09Y2QjZZhMpqBmZRixhxr7GLl579gYctpe1Y
 joLC2wLr29ajWGzGmDc2g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UQIa/fjMJQY=:eW8Cth30wh1PMeksHWTcDM
 /b5mwPiv9OBPgX1PVOcXl7YNQ+F/Qz/IHVhpXPp/Ml4qc55x21RoZTOf+ICuEybQrdH4CjPrt
 rlcmD5HgElMV8K2hPD32waCL1GCwekXBbnv3ZRF73ORYFfRBMMYVP/7+rxKkkZaZIcdwODyOc
 aV2cXPd/mXZzgzxV/rhBCACKOAxDZZXs1NVCuhRjughKB2A/u7p7JyucwtJnrus4MFyiBpNJm
 Ln+fPUZNIMQ2Mt1COixkaQniRd1PqAsYYgMK0bbK444xbVw4ns15wIGqz5a/64A2Y8Na3abIf
 4qOUKHC4ALcepfjmelkbCNCR32q+tBUYgU560HPioxQfKiGSiHsxH9WqcxjFrx9hgVfsL8CuG
 3889D7duXH2iwW89vY5HUqpvpz3tj9AGa9NQGe5I7gA0lbXWaEjRRqP8bnh/HU70ipBa2IbAK
 l8Le2WKaVVURdMlBOB7fnuXSHUhbOt2N5Xymfipuou9mpjfdSmUB6W/xp4cyzMZObnbCo5duj
 3ooZdaAg/kaeB7tySPa68lI29p2VzcKx2XHz3L0E+TJvyE0Nl/h6ZomLevc26qzClHa0rlNyb
 QJkDf5EAbXacRWHJwkzB4EEJFXxoH5zUDrImrkInUlote+I10Z2/TuZKiJpy5XmGfI9cLGlMc
 jKLqoPcQv9bGMIh2MmDPidlhctFIaaXNul9aPK9Z2Kcg8cqtf5ZEOHwXmMlcnrZX839BnjNbX
 DQp9KpJCQzL3QsXq7UZj1BQpI2Vpa1uIB9jW82IkB7kywF8kAQr/Z8Q+pkvPSyq2YwztpI2uV
 9OlRxzQFwRYrMc9GLek58U21/JDzAqdTUOgLQFq8TOTrRBFJM8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_143641_687255_A33AA9D0 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: SoC Team <soc@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 98d54f81e36ba3bf92172791eba5ca5bd813989b:

  Linux 5.6-rc4 (2020-03-01 16:38:46 -0600)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git
tags/arm-defconfig-5.7

for you to fetch changes up to a0705d3c042ad39fb9c5609612bb39ef4bedd284:

  Merge tag 'at91-5.7-defconfig' of
git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux into
arm/config (2020-03-25 17:22:53 +0100)

----------------------------------------------------------------
ARM: defconfig updates

As usual, tons of new drivers and other options got merged and
are now enabled in the defconfig files, usually as loadable modules.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>

----------------------------------------------------------------
Anson Huang (3):
      arm64: defconfig: Select CONFIG_PINCTRL_IMX8MP by default
      arm64: defconfig: add i.MX system controller thermal support
      arm64: defconfig: Enable CONFIG_IMX8MM_THERMAL as module

Arnd Bergmann (10):
      Merge tag 'renesas-arm64-defconfig-for-v5.7-tag1' of
git://git.kernel.org/.../geert/renesas-devel into arm/config
      Merge tag 'hisi-arm64-defconfig-for-5.7' of
git://github.com/hisilicon/linux-hisi into arm/config
      Merge tag 'arm-soc/for-5.7/defconfig' of
https://github.com/Broadcom/stblinux into arm/config
      Merge tag 'tegra-for-5.7-arm-defconfig' of
git://git.kernel.org/.../tegra/linux into arm/config
      Merge tag 'samsung-defconfig-5.7' of
git://git.kernel.org/.../krzk/linux into arm/config
      Merge tag 'qcom-arm64-defconfig-for-5.7' of
git://git.kernel.org/.../qcom/linux into arm/config
      Merge tag 'qcom-defconfig-for-5.7' of
git://git.kernel.org/.../qcom/linux into arm/config
      Merge tag 'imx-defconfig-5.7' of
git://git.kernel.org/.../shawnguo/linux into arm/config
      Merge tag 'omap-for-v5.7/defconfig-signed' of
git://git.kernel.org/.../tmlind/linux-omap into arm/config
      Merge tag 'at91-5.7-defconfig' of
git://git.kernel.org/.../at91/linux into arm/config

Bjorn Andersson (3):
      arm64: defconfig: Enable Qualcomm SDM845 display and gpu clocks
      arm64: defconfig: Enable Truly NT35597 WQXGA panel
      arm64: defconfig: Enable Qualcomm SDM845 audio configs

Brian Masney (1):
      ARM: qcom_defconfig: add Broadcom bluetooth options

Christian Gmeiner (1):
      ARM: multi_v7_defconfig: enable drm imx support

Dmitry Osipenko (2):
      ARM: multi_v7_defconfig: Enable Tegra cpuidle driver
      ARM: tegra: Enable Tegra cpuidle driver in tegra_defconfig

Eugen Hristev (1):
      ARM: configs: at91: enable sama5d4 compatible watchdog

Florian Fainelli (1):
      Merge tag 'tags/bcm2835-defconfig-next-2020-03-09' into defconfig/next

Geert Uytterhoeven (1):
      arm64: defconfig: Enable additional support for Renesas platforms

Hou Zhiqiang (1):
      arm64: defconfig: Enable CONFIG_PCIE_LAYERSCAPE_GEN4

John Garry (1):
      arm64: defconfig: Enable MEGARAID_SAS

Li Yang (15):
      arm64: defconfig: run through savedefconfig for ordering
      arm64: defconfig: Enable NXP flexcan driver
      arm64: defconfig: Enable QorIQ DPAA1 drivers
      arm64: defconfig: Enable QorIQ DPAA2 drivers
      arm64: defconfig: Enable ENETC Ethernet controller and FELIX switch
      arm64: defconfig: Enable NXP/FSL SPI controller drivers
      arm64: defconfig: Enable QorIQ cpufreq driver
      arm64: defconfig: Enable ARM SBSA watchdog driver
      arm64: defconfig: Enable QorIQ IFC NAND controller driver
      arm64: defconfig: Enable QorIQ GPIO driver
      arm64: defconfig: Enable ARM Mali display driver
      arm64: defconfig: Enable flash device drivers for QorIQ boards
      arm64: defconfig: Enable RTC devices for QorIQ boards
      arm64: defconfig: Enable PHY devices used on QorIQ boards
      arm64: defconfig: Enable e1000 device

Luca Weiss (1):
      ARM: qcom_defconfig: Enable QRTR

Lukasz Luba (1):
      ARM: exynos_defconfig: Enable SCHED_MC and ENERGY_MODEL

Marek Szyprowski (3):
      ARM: exynos_defconfig: Enable SquashFS and increase RAM block device size
      ARM: exynos_defconfig: Add more drivers for GalaxyS3/Trats2
      ARM: bcm2835_defconfig: add support for Raspberry Pi4

Oleksandr Suvorov (2):
      ARM: imx_v6_v7_defconfig: Enable TOUCHSCREEN_ATMEL_MXT
      ARM: imx_v6_v7_defconfig: Enable TOUCHSCREEN_AD7879

Sricharan R (1):
      arm64: defconfig: Enable qcom ipq6018 clock and pinctrl

Stephan Gerhold (1):
      arm64: defconfig: Enable Qualcomm PM8XXX vibrator support

Tony Lindgren (7):
      ARM: omap2plus_defconfig: Enable ext4 security for setcap
      ARM: omap2plus_defconfig: Enable simple-pm-bus
      ARM: omap2plus_defconfig: Enable zram as loadable modules
      ARM: omap2plus_defconfig: Enable more droid4 devices as loadable modules
      ARM: omap2plus_defconfig: Enable McPDM optional PMIC clock as modules
      ARM: omap2plus_defconfig: Enable ina2xx_adc as a loadable module
      ARM: omap2plus_defconfig: Update for moved and dropped options

 arch/arm/configs/at91_dt_defconfig   |   1 +
 arch/arm/configs/bcm2835_defconfig   |   5 ++
 arch/arm/configs/exynos_defconfig    |  11 +++-
 arch/arm/configs/imx_v6_v7_defconfig |   3 ++
 arch/arm/configs/multi_v7_defconfig  |   7 +++
 arch/arm/configs/omap2plus_defconfig |  18 +++++--
 arch/arm/configs/qcom_defconfig      |   6 +++
 arch/arm/configs/tegra_defconfig     |   1 +
 arch/arm64/configs/defconfig         | 100 +++++++++++++++++++++++++++++++----
 9 files changed, 136 insertions(+), 16 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
