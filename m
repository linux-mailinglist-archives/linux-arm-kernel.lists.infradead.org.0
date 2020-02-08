Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D52D1567D9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 22:27:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1jUSuLYWKRfWsR0CRXAGpw0WMDJEjiMF6wkIOaY96ic=; b=YJWUn9SRf32Hjf
	OnwwQTEugYh4yblgyT+LdXfZw9c7iGSzZbddNItNaI2AByIql/easnrX4cVE1nFRwNMpgvl/LUTRM
	iJtnYwTFB6iVQHymp6wsqZNZKV8G2s3uO7uRd6GeOr++EA0ysyRxuca5qBWMHirdh2WEktkd6Qnel
	JwaGXXqTAFNtYul9wvVlVMBWDAn6f6+hhPTqisVNb0MEj24mHsEvX1tlmywNhkakZw36n7FfPWIxo
	BvHitDkJSKbX6QsQHFmVwPX1FoWTE+ko7JATHx7ObdEmTluKvW4WkIP0LRyYKKb5pTmJhM3mdeJ/F
	yVzzjFop3BCJFhdkR9KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Xd8-00043A-HA; Sat, 08 Feb 2020 21:27:10 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Xbo-0002pq-A5
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 21:25:51 +0000
Received: by mail-pl1-x643.google.com with SMTP id j7so1216838plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Feb 2020 13:25:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q9rGiKNqbXk3HaxSFA2diA4cQgh5i28qPpTMmO3QMZ0=;
 b=hq8OE18UXfWKxsT/m7DSNIZlvlNPcMPUMZXAlbCCOFPykaDOQkt+YapECDGDEvz4U+
 73JU5iUH7LNwDiUmHvuWrdUIxBTWmeuT9VXMBLqiI2W+X3+diDhMlsemE2lwsabDgrl+
 sUKTmI4pMUnmLGk+5ADSvB8jiowy7WPu9rCZW6MPP+5TXtU0zNCfEj3GO8LRaVFS/3L/
 t4K7n80TOhEzpu/Tl/KqpzMHwUA+SZq1yxIs0Dqe04OWhoZdO48V1uh/AXg/e6I/VOuR
 x+Yci5RdEdajbXNWUQy7XWecKutcPEAnHWLflv11+QSv2r9PXvmM9R5q3iL0ozBrqCy3
 MPSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q9rGiKNqbXk3HaxSFA2diA4cQgh5i28qPpTMmO3QMZ0=;
 b=D6z3VASW0TgHtRP3BDYTJxvsYKbESmsCcqAJ6s29PCwsM/1IFVvXkSOF/T0oI51Cca
 EFvtFSkgS1697Fuu+svdigH2LSyKtGYhgl3E55Ugr48XlYaVL6rsKx9sHO2Ny8veqQl1
 phUVf2FK/17y7MkoZts9cCkdR+uHycUMO/cxbUbAMTEeqQrZJCFq/amU+qxWnXUzqngx
 WEoEC9iRpz6f7LuYNiNm0R3GbHdrVaS2CswkV5cMWx7AqalA5eWFaMbjuRCbEARo93lO
 S3GKfNPIns21TBbpgI0jcrIWfRCpapRFI4toENZaGmCW7/X/tr7enkUYQKSk5OwzLUSq
 mPUg==
X-Gm-Message-State: APjAAAUr3kMp5pWgRnr4zmIQ6GKvXBFLdkEumK29RsMEIdxsU2jOLthJ
 /AhqqPO5GbjsbKhV9i+6OUqVHw==
X-Google-Smtp-Source: APXvYqyZLtGWZ4mVUaPT0p1RQaRYX2X49FyRlvtOmZInnaErWXYBHyINz5B1ZZiH/y8BitQSBKJx3Q==
X-Received: by 2002:a17:902:9f86:: with SMTP id
 g6mr5120840plq.299.1581197145958; 
 Sat, 08 Feb 2020 13:25:45 -0800 (PST)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id a21sm7126831pgd.12.2020.02.08.13.25.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Feb 2020 13:25:44 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL 4/5 v2] ARM: SoC defconfig updates
Date: Sat,  8 Feb 2020 13:25:32 -0800
Message-Id: <20200208212533.30744-5-olof@lixom.net>
X-Mailer: git-send-email 2.22.GIT
In-Reply-To: <20200208212533.30744-1-olof@lixom.net>
References: <20200208112018.29819-1-olof@lixom.net>
 <20200208212533.30744-1-olof@lixom.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_132548_405822_98B355D5 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

----------------------------------------------------------------

The following changes since commit a51020f9dd797d520285048180f91b0bcd15a338:

  Merge tag 'armsoc-drivers' into HEAD

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-defconfig

for you to fetch changes up to 1342a6aa4abf6a56e83ce24ce5e84243c365ab4d:

  Merge tag 'samsung-defconfig-5.6' of https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux into arm/defconfig

----------------------------------------------------------------

Adam Ford (2):
      ARM: imx_v6_v7_defconfig: Enable TOUCHSCREEN_ILI210X
      arm64: defconfig: Enable CRYPTO_DEV_FSL_CAAM

Amit Kucheria (1):
      arm64: defconfig: Enable QCOM PMIC thermal

Anson Huang (1):
      arm64: defconfig: Enable CONFIG_CLK_IMX8MP by default

Bjorn Andersson (7):
      arm64: defconfig: Enable Qualcomm remoteproc dependencies
      arm64: defconfig: Enable Qualcomm SPI and QSPI controller
      arm64: defconfig: Enable Qualcomm socinfo driver
      arm64: defconfig: Enable Qualcomm CPUfreq HW driver
      arm64: defconfig: Enable Qualcomm pseudo rng
      arm64: defconfig: Enable Qualcomm watchdog driver
      arm64: defconfig: Enable ATH10K_SNOC

Brian Masney (2):
      ARM: qcom_defconfig: add msm8974 interconnect support
      ARM: qcom_defconfig: add anx78xx HDMI bridge support

Claudiu Beznea (3):
      ARM: configs: at91: use savedefconfig
      ARM: configs: at91: enable config flags for sam9x60 SoC
      ARM: configs: at91: enable MMC_SDHCI_OF_AT91 and MICROCHIP_PIT64B

Fabio Estevam (1):
      ARM: imx_v6_v7_defconfig: Select the TFP410 driver

Fabrizio Castro (1):
      ARM: shmobile: defconfig: Enable support for panels from EDT

Jeffrey Hugo (2):
      arm64: defconfig: Enable QCA Bluetooth over UART
      arm64: defconfig: Enable SN65DSI86 display bridge

Jerome Brunet (1):
      arm64: defconfig: enable FUSB302 as module

Jorge Ramirez-Ortiz (1):
      arm64: defconfig: Enable HFPLL

Krzysztof Kozlowski (3):
      ARM: exynos_defconfig: Bring back explicitly wanted options
      ARM: exynos_defconfig: Enable NFS v4.1 and v4.2
      ARM: multi_v7_defconfig: Enable NFS v4.1 and v4.2

Lina Iyer (1):
      arm64: defconfig: enable PDC interrupt controller for Qualcomm SDM845

Linus Walleij (2):
      ARM: defconfig: u8500: activate cpufreq
      ARM: defconfig: gemini: Update defconfig

Manivannan Sadhasivam (1):
      arm64: defconfig: Enable Actions Semi specific drivers

Marek Szyprowski (2):
      ARM: exynos_defconfig: Enable devfreq thermal integration
      ARM: multi_v7_defconfig: Enable devfreq thermal integration

Nagarjuna Kristam (1):
      arm64: defconfig: Enable tegra XUDC support

Nicolas Saenz Julienne (2):
      arm64: defconfig: Enable Broadcom's STB PCIe controller
      arm64: defconfig: Enable Broadcom's GENET Ethernet controller

Niklas Cassel (2):
      arm64: defconfig: enable CONFIG_QCOM_CPR
      arm64: defconfig: enable CONFIG_ARM_QCOM_CPUFREQ_NVMEM

Olof Johansson (10):
      Merge tag 'renesas-arm-defconfig-for-v5.6-tag1' of git://git.kernel.org/.../geert/renesas-devel into arm/defconfig
      Merge tag 'amlogic-defconfig' of https://git.kernel.org/.../khilman/linux-amlogic into arm/defconfig
      Merge tag 'tegra-for-5.6-arm64-defconfig' of git://git.kernel.org/.../tegra/linux into arm/defconfig
      Merge tag 'imx-defconfig-5.6' of git://git.kernel.org/.../shawnguo/linux into arm/defconfig
      Merge tag 'at91-5.6-defconfig' of git://git.kernel.org/.../at91/linux into arm/defconfig
      Merge tag 'qcom-arm64-defconfig-for-5.6' of https://git.kernel.org/.../qcom/linux into arm/defconfig
      Merge tag 'qcom-defconfig-for-5.6' of https://git.kernel.org/.../qcom/linux into arm/defconfig
      Merge tag 'arm-soc/for-5.6/defconfig-arm64' of https://github.com/Broadcom/stblinux into arm/defconfig
      Merge tag 'at91-5.6-defconfig-2' of git://git.kernel.org/.../at91/linux into arm/defconfig
      Merge tag 'samsung-defconfig-5.6' of https://git.kernel.org/.../krzk/linux into arm/defconfig

Peter Chen (1):
      ARM: configs: imx_v6_v7_defconfig: enable USB ACM

Sascha Hauer (1):
      ARM: imx_v6_v7_defconfig: Enable NFS_V4_1 and NFS_V4_2 support


 arch/arm/configs/at91_dt_defconfig   | 59 ++++++++++++++++---------------
 arch/arm/configs/exynos_defconfig    |  9 +++++
 arch/arm/configs/gemini_defconfig    | 24 +++++++++----
 arch/arm/configs/imx_v6_v7_defconfig |  5 +++
 arch/arm/configs/multi_v7_defconfig  |  3 ++
 arch/arm/configs/qcom_defconfig      |  4 +++
 arch/arm/configs/shmobile_defconfig  |  3 ++
 arch/arm/configs/u8500_defconfig     |  4 ++-
 arch/arm64/configs/defconfig         | 38 ++++++++++++++++++++
 9 files changed, 113 insertions(+), 36 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
