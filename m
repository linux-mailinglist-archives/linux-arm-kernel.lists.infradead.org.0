Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A35A31A4289
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 08:35:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=x8Zo6P4zOi03ndHBK19EXE7cTY4YUbL6MgoXsYWW4GE=; b=XY+
	ecNjGKY+mkSETmZvkH2eFTJSfwtkauSfnnNVYwAyFoGcFUMPqm+N6FbOlWsup2HBLR2soJSgFKvVc
	N8HywcsZr85JsgYDYDjsv8Z8Xzv9T7jU6QVKTpXN986btKln70nCWTZdkwBEMxEMLMAsPttZuAbHx
	HK59iTGxAvpZJ2aSAHaWpyJA5iRTphPYwxy6rzmL8kGWguTYQxJn5zM0ccNxKWghHDTjqZmpgRQYv
	5KhDcXTG3q4RcdYzK3wawCrKgwBs+DyxxCI+nLAF6PZjYIk4dH/r4+w6BGg2cgYwTdCmiyT/aYPzq
	jaE7GpMC2wzaSZ+/C1jgwVq+sawdEIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMnG4-0006KN-9s; Fri, 10 Apr 2020 06:35:20 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMnFY-0006CL-CD
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 06:34:50 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4A2442007B2;
 Fri, 10 Apr 2020 08:34:43 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 50C282007A2;
 Fri, 10 Apr 2020 08:34:39 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E884C402AE;
 Fri, 10 Apr 2020 14:34:33 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: catalin.marinas@arm.com, will@kernel.org, daniel.lezcano@linaro.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] clocksource: Add support for i.MX TPM driver with ARM64
Date: Fri, 10 Apr 2020 14:26:47 +0800
Message-Id: <1586500008-4418-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_233448_555131_74A17F4C 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allows building and compile-testing the i.MX TPM driver for ARM64.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clocksource/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index f2142e6..e9e7fe1 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -617,7 +617,7 @@ config CLKSRC_IMX_GPT
 
 config CLKSRC_IMX_TPM
 	bool "Clocksource using i.MX TPM" if COMPILE_TEST
-	depends on ARM && CLKDEV_LOOKUP
+	depends on (ARM || ARM64) && CLKDEV_LOOKUP
 	select CLKSRC_MMIO
 	help
 	  Enable this option to use IMX Timer/PWM Module (TPM) timer as
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
