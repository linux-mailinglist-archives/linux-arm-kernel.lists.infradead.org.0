Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF04B46458
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:37:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCYVz2GULsPbpkjjDqnfhbT0ZbtOt7peYoZJPJnVZNs=; b=ouIFwRZGy1JyUe
	soLIGMNazO95OhUf+YWIsrNi6NcWoxN8UWRPok5OoFgTVfbB3AoT7EvcXxIDnfEwqUYdi03GFmbBk
	f7t0wbykWgHsZWCBBMQadXxoA+LUPR3PqUm7DGvAIR0K1bDIYr4599eQ4JkQpl4k4pK8bBYXmkQCX
	keZy27u8cL4hc3GOm9nMWOOQYZuYvT109rAGcgZO/EF1ks5e2bKLGks3BXV5WEOl0mqQKnTP+40Ir
	9UMIEHLLv7L6iLT7EWnn9UnvuSa2ly8hj5ZlAV6MJBI/4m/Ixtx6W0+aGcAh6mUSNkw/bHZGtszvU
	3AsfM2zN7F5GhOuf+PRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpCU-0004DA-RG; Fri, 14 Jun 2019 16:37:14 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpCM-0004CX-JJ
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:37:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 141C928617E
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 10/10] arm/arm64: defconfig: Update configs to use the new
 CROS_EC options
Date: Fri, 14 Jun 2019 18:36:35 +0200
Message-Id: <20190614163635.22413-11-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614163635.22413-1-enric.balletbo@collabora.com>
References: <20190614163635.22413-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_093706_899611_72977010 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: gwendal@chromium.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Guenter Roeck <groeck@chromium.org>,
 kernel@collabora.com, dtor@chromium.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-samsung-soc@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Simon Horman <horms+renesas@verge.net.au>, Benson Leung <bleung@chromium.org>,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>,
 Dinh Nguyen <dinguyen@kernel.org>, Olof Johansson <olof@lixom.net>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Recently we refactored the CrOS EC drivers moving part of the code from
the MFD subsystem to the platform chrome subsystem. During this change
we needed to rename some config options, so, update the defconfigs
accordingly.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

Changes in v2: None

 arch/arm/configs/exynos_defconfig   | 4 +++-
 arch/arm/configs/multi_v7_defconfig | 6 ++++--
 arch/arm/configs/pxa_defconfig      | 4 +++-
 arch/arm64/configs/defconfig        | 6 ++++--
 4 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/arch/arm/configs/exynos_defconfig b/arch/arm/configs/exynos_defconfig
index c95c54284da2..03448fba569f 100644
--- a/arch/arm/configs/exynos_defconfig
+++ b/arch/arm/configs/exynos_defconfig
@@ -154,7 +154,9 @@ CONFIG_CPU_THERMAL=y
 CONFIG_THERMAL_EMULATION=y
 CONFIG_WATCHDOG=y
 CONFIG_S3C2410_WATCHDOG=y
-CONFIG_MFD_CROS_EC=y
+CONFIG_MFD_CROS_EC_DEV=y
+CONFIG_CHROME_PLATFORMS=y
+CONFIG_CROS_EC=y
 CONFIG_CROS_EC_I2C=y
 CONFIG_CROS_EC_SPI=y
 CONFIG_MFD_MAX14577=y
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 6b748f214eae..9fe783abf3c5 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -510,10 +510,12 @@ CONFIG_MFD_BCM590XX=y
 CONFIG_MFD_AC100=y
 CONFIG_MFD_AXP20X_I2C=y
 CONFIG_MFD_AXP20X_RSB=y
-CONFIG_MFD_CROS_EC=m
+CONFIG_MFD_CROS_EC_DEV=m
+CONFIG_CHROME_PLATFORMS=y
+CONFIG_CROS_EC=m
 CONFIG_CROS_EC_I2C=m
 CONFIG_CROS_EC_SPI=m
-CONFIG_MFD_CROS_EC_CHARDEV=m
+CONFIG_CROS_EC_CHARDEV=m
 CONFIG_MFD_DA9063=m
 CONFIG_MFD_MAX14577=y
 CONFIG_MFD_MAX77686=y
diff --git a/arch/arm/configs/pxa_defconfig b/arch/arm/configs/pxa_defconfig
index 07ebbdce3645..e335b986cf70 100644
--- a/arch/arm/configs/pxa_defconfig
+++ b/arch/arm/configs/pxa_defconfig
@@ -394,7 +394,9 @@ CONFIG_SA1100_WATCHDOG=m
 CONFIG_MFD_AS3711=y
 CONFIG_MFD_BCM590XX=m
 CONFIG_MFD_AXP20X=y
-CONFIG_MFD_CROS_EC=m
+CONFIG_MFD_CROS_EC_DEV=m
+CONFIG_CHROME_PLATFORMS=y
+CONFIG_CROS_EC=m
 CONFIG_CROS_EC_I2C=m
 CONFIG_CROS_EC_SPI=m
 CONFIG_MFD_ASIC3=y
diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4d583514258c..b5bba5f04082 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -430,8 +430,7 @@ CONFIG_MFD_ALTERA_SYSMGR=y
 CONFIG_MFD_BD9571MWV=y
 CONFIG_MFD_AXP20X_I2C=y
 CONFIG_MFD_AXP20X_RSB=y
-CONFIG_MFD_CROS_EC=y
-CONFIG_MFD_CROS_EC_CHARDEV=m
+CONFIG_MFD_CROS_EC_DEV=y
 CONFIG_MFD_EXYNOS_LPASS=m
 CONFIG_MFD_HI6421_PMIC=y
 CONFIG_MFD_HI655X_PMIC=y
@@ -631,8 +630,11 @@ CONFIG_VIRTIO_BALLOON=y
 CONFIG_VIRTIO_MMIO=y
 CONFIG_XEN_GNTDEV=y
 CONFIG_XEN_GRANT_DEV_ALLOC=y
+CONFIG_CHROME_PLATFORMS=y
+CONFIG_CROS_EC=y
 CONFIG_CROS_EC_I2C=y
 CONFIG_CROS_EC_SPI=y
+CONFIG_CROS_EC_CHARDEV=m
 CONFIG_COMMON_CLK_RK808=y
 CONFIG_COMMON_CLK_SCPI=y
 CONFIG_COMMON_CLK_CS2000_CP=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
