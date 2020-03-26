Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8DB1945FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 19:01:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IKSDcbXUiF4shG6XsH7FgaYDy/VqqWfy2Ey6yyycoZE=; b=t7FFYQb4TBoSQM
	ZIffJBsdMZMiKe2j0rnjJ+tAD0FpqgGKqQHfsehvqdHao0ObVoYMLQorn09xxOlVOrAWLWcg5vhzS
	iX9lxBb3N1/EXYxQ9VW6QyxMTl0Z4GyOZJw2XA1Xb3WqHvi9hzaLHB+wZakGBdCp5anbJsqBWZG07
	z9gcEqUEOSqQXmoMQw9zrj1OhVBxOmkyDTPmnoOp/hc900gyx0Ph988zZbUO6/202mGIc+5RED5BY
	zllbnpZj+QTEohC31DNIBD3WKfcGQzl7sI+6SmexCTdGHbjEeLQEuju4d7Nt0ARx1YJgnPWznT/vs
	0BzNdpnQYo9yGnTZOITw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHWov-0004VE-Bq; Thu, 26 Mar 2020 18:01:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHWok-0004TI-36
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 18:01:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 018CF7FA;
 Thu, 26 Mar 2020 11:01:19 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 787D53F71E;
 Thu, 26 Mar 2020 11:01:18 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Liam Girdwood <lgirdwood@gmail.com>
Subject: [PATCH] ASoC: pxa: Enable AC'97 bus support for PXA machines
Date: Thu, 26 Mar 2020 18:01:16 +0000
Message-Id: <20200326180116.21375-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_110122_175461_08576B6C 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alsa-devel@alsa-project.org, Mark Brown <broonie@kernel.org>,
 KernelCI <bot@kernelci.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AC'97 based PXA machines currently don't build reliably as they don't
ensure that an AC'97 bus is built, causing at least eseries_pxa_defconfig
to fail to build. Add selects to fix this.

Reported-by: KernelCI <bot@kernelci.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/pxa/Kconfig | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/sound/soc/pxa/Kconfig b/sound/soc/pxa/Kconfig
index 1f0c08b06c1d..d4c0f580a565 100644
--- a/sound/soc/pxa/Kconfig
+++ b/sound/soc/pxa/Kconfig
@@ -82,6 +82,8 @@ config SND_PXA2XX_SOC_TOSA
 	depends on MFD_TC6393XB
 	depends on AC97_BUS=n
 	select REGMAP
+	select AC97_BUS_NEW
+	select AC97_BUS_COMPAT
 	select SND_PXA2XX_SOC_AC97
 	select SND_SOC_WM9712
 	help
@@ -93,6 +95,8 @@ config SND_PXA2XX_SOC_E740
 	depends on SND_PXA2XX_SOC && MACH_E740
 	depends on AC97_BUS=n
 	select REGMAP
+	select AC97_BUS_NEW
+	select AC97_BUS_COMPAT
 	select SND_SOC_WM9705
 	select SND_PXA2XX_SOC_AC97
 	help
@@ -116,6 +120,8 @@ config SND_PXA2XX_SOC_E800
 	depends on AC97_BUS=n
 	select REGMAP
 	select SND_SOC_WM9712
+	select AC97_BUS_NEW
+	select AC97_BUS_COMPAT
 	select SND_PXA2XX_SOC_AC97
 	help
 	  Say Y if you want to add support for SoC audio on the
@@ -127,6 +133,8 @@ config SND_PXA2XX_SOC_EM_X270
 			MACH_CM_X300)
 	depends on AC97_BUS=n
 	select REGMAP
+	select AC97_BUS_NEW
+	select AC97_BUS_COMPAT
 	select SND_PXA2XX_SOC_AC97
 	select SND_SOC_WM9712
 	help
@@ -139,6 +147,8 @@ config SND_PXA2XX_SOC_PALM27X
 			MACH_PALMT5 || MACH_PALMTE2)
 	depends on AC97_BUS=n
 	select REGMAP
+	select AC97_BUS_NEW
+	select AC97_BUS_COMPAT
 	select SND_PXA2XX_SOC_AC97
 	select SND_SOC_WM9712
 	help
@@ -169,6 +179,8 @@ config SND_SOC_ZYLONITE
 	tristate "SoC Audio support for Marvell Zylonite"
 	depends on SND_PXA2XX_SOC && MACH_ZYLONITE
 	depends on AC97_BUS=n
+	select AC97_BUS_NEW
+	select AC97_BUS_COMPAT
 	select SND_PXA2XX_SOC_AC97
 	select REGMAP
 	select SND_PXA_SOC_SSP
@@ -201,6 +213,8 @@ config SND_PXA2XX_SOC_MIOA701
 	depends on SND_PXA2XX_SOC && MACH_MIOA701
 	depends on AC97_BUS=n
 	select REGMAP
+	select AC97_BUS_NEW
+	select AC97_BUS_COMPAT
 	select SND_PXA2XX_SOC_AC97
 	select SND_SOC_WM9713
 	help
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
