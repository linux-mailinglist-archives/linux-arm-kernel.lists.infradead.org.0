Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01F2130339
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 16:25:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DNs7lAT26GUk/E9r6I3Kvtg6KQ6yR3ZbRth9+Fah2vc=; b=IycNS5lavlAa2lFgw/V0RpDg+i
	E3QArm99VlLTid8QGefiHiK1ISWpo/+2lAxcAi7QsP3Rs7xzEMwxyLfUArG+6YHnqwkYuStmvkMXo
	ScpcNRzpmG6H1Qe+WPWgMB5Udze6XRNeRpZHhdRWuVp1/YEBIUIkTzORKWNFtPPFTFlg7gfwG/Td1
	X+cKFBaUZrZm+DMf25dsISR5gi0jb5DsEdwUND8xqwHYk6sPhVAgtbF1oUJZm5XdLeCL3rWqTq7tH
	TLtnCOYO6DGaA+yN6JZGyVbPuECOeqZSBGcqQtAM6nVdYQ9gKgtLwjs3uTn4SUOn97/ltRYb0ExPQ
	GBzloQ/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inlIW-0003gM-Oh; Sat, 04 Jan 2020 15:25:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inlGG-0001lc-Hh
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 15:22:46 +0000
Received: from localhost.localdomain (unknown [194.230.155.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D89D224670;
 Sat,  4 Jan 2020 15:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578151363;
 bh=/tnEtZ/TQAfcjo0cVjVkZvyHZiO0bR42EkUMFvapC2Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uCjQ1su6dl11XuyF3/k0rBXB/c+9gCY1BmI2mHLizi5V4D9v0RMEnC3etCR/ylhu5
 fm4SxxKKoAqRMBCR9+Gkcpmd9ZqdoA+WjRVLfUqZOxye4OUINKx6ZIOLRA96wMzM9r
 E6YWHu43tywYMyUGyqR/e80eGb8X9kt3BEcdJxWU=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 13/20] devfreq: exynos: Rename Exynos to lowercase
Date: Sat,  4 Jan 2020 16:21:00 +0100
Message-Id: <20200104152107.11407-14-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200104152107.11407-1-krzk@kernel.org>
References: <20200104152107.11407-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_072244_657384_53E42D82 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix up inconsistent usage of upper and lowercase letters in "Exynos"
name.

"EXYNOS" is not an abbreviation but a regular trademarked name.
Therefore it should be written with lowercase letters starting with
capital letter.

The lowercase "Exynos" name is promoted by its manufacturer Samsung
Electronics Co., Ltd., in advertisement materials and on website.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/devfreq/Kconfig             | 2 +-
 drivers/devfreq/event/Kconfig       | 4 ++--
 drivers/devfreq/event/exynos-nocp.c | 2 +-
 drivers/devfreq/event/exynos-nocp.h | 2 +-
 drivers/devfreq/event/exynos-ppmu.c | 2 +-
 drivers/devfreq/event/exynos-ppmu.h | 2 +-
 6 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
index 1526f758daeb..0b1df12e0f21 100644
--- a/drivers/devfreq/Kconfig
+++ b/drivers/devfreq/Kconfig
@@ -77,7 +77,7 @@ config DEVFREQ_GOV_PASSIVE
 comment "DEVFREQ Drivers"
 
 config ARM_EXYNOS_BUS_DEVFREQ
-	tristate "ARM EXYNOS Generic Memory Bus DEVFREQ Driver"
+	tristate "ARM Exynos Generic Memory Bus DEVFREQ Driver"
 	depends on ARCH_EXYNOS || COMPILE_TEST
 	select DEVFREQ_GOV_SIMPLE_ONDEMAND
 	select DEVFREQ_GOV_PASSIVE
diff --git a/drivers/devfreq/event/Kconfig b/drivers/devfreq/event/Kconfig
index a53e0a6ffdfe..878825372f6f 100644
--- a/drivers/devfreq/event/Kconfig
+++ b/drivers/devfreq/event/Kconfig
@@ -15,7 +15,7 @@ menuconfig PM_DEVFREQ_EVENT
 if PM_DEVFREQ_EVENT
 
 config DEVFREQ_EVENT_EXYNOS_NOCP
-	tristate "EXYNOS NoC (Network On Chip) Probe DEVFREQ event Driver"
+	tristate "Exynos NoC (Network On Chip) Probe DEVFREQ event Driver"
 	depends on ARCH_EXYNOS || COMPILE_TEST
 	select PM_OPP
 	select REGMAP_MMIO
@@ -24,7 +24,7 @@ config DEVFREQ_EVENT_EXYNOS_NOCP
 	  (Network on Chip) Probe counters to measure the bandwidth of AXI bus.
 
 config DEVFREQ_EVENT_EXYNOS_PPMU
-	tristate "EXYNOS PPMU (Platform Performance Monitoring Unit) DEVFREQ event Driver"
+	tristate "Exynos PPMU (Platform Performance Monitoring Unit) DEVFREQ event Driver"
 	depends on ARCH_EXYNOS || COMPILE_TEST
 	select PM_OPP
 	help
diff --git a/drivers/devfreq/event/exynos-nocp.c b/drivers/devfreq/event/exynos-nocp.c
index 1c565926db9f..ccc531ee6938 100644
--- a/drivers/devfreq/event/exynos-nocp.c
+++ b/drivers/devfreq/event/exynos-nocp.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * exynos-nocp.c - EXYNOS NoC (Network On Chip) Probe support
+ * exynos-nocp.c - Exynos NoC (Network On Chip) Probe support
  *
  * Copyright (c) 2016 Samsung Electronics Co., Ltd.
  * Author : Chanwoo Choi <cw00.choi@samsung.com>
diff --git a/drivers/devfreq/event/exynos-nocp.h b/drivers/devfreq/event/exynos-nocp.h
index 55cc96284a36..2d6f08cfd0c5 100644
--- a/drivers/devfreq/event/exynos-nocp.h
+++ b/drivers/devfreq/event/exynos-nocp.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * exynos-nocp.h - EXYNOS NoC (Network on Chip) Probe header file
+ * exynos-nocp.h - Exynos NoC (Network on Chip) Probe header file
  *
  * Copyright (c) 2016 Samsung Electronics Co., Ltd.
  * Author : Chanwoo Choi <cw00.choi@samsung.com>
diff --git a/drivers/devfreq/event/exynos-ppmu.c b/drivers/devfreq/event/exynos-ppmu.c
index 055deea42c37..17ed980d9099 100644
--- a/drivers/devfreq/event/exynos-ppmu.c
+++ b/drivers/devfreq/event/exynos-ppmu.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * exynos_ppmu.c - EXYNOS PPMU (Platform Performance Monitoring Unit) support
+ * exynos_ppmu.c - Exynos PPMU (Platform Performance Monitoring Unit) support
  *
  * Copyright (c) 2014-2015 Samsung Electronics Co., Ltd.
  * Author : Chanwoo Choi <cw00.choi@samsung.com>
diff --git a/drivers/devfreq/event/exynos-ppmu.h b/drivers/devfreq/event/exynos-ppmu.h
index 284420047455..97f667d0cbdd 100644
--- a/drivers/devfreq/event/exynos-ppmu.h
+++ b/drivers/devfreq/event/exynos-ppmu.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * exynos_ppmu.h - EXYNOS PPMU header file
+ * exynos_ppmu.h - Exynos PPMU header file
  *
  * Copyright (c) 2015 Samsung Electronics Co., Ltd.
  * Author : Chanwoo Choi <cw00.choi@samsung.com>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
