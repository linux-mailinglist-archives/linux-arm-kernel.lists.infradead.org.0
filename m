Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EB0699CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 19:31:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wywXEOKqwWeZ6HlpbgfvydtLsJCem7SIM0a0i10WEOc=; b=V0rMD4e1AVT0H7
	YavON8q4JGspiBw+JQEeokg+wZN8xaSLwHE/uytF7aAu8m7rbM8bXMjhe5MkksoKTC2CocXppU91a
	3tLcLEZRqx2lnKyMXWAuhqDeFQKP6gFBzarBra0CbyDP6cCJPJBYZZCfnqA6HSs+YdK9adHQPjfp9
	LoH9q6w8ATwy648hKiv8PnwwzNHha3CfOiZ+c6vwqWr8RPoKK0LCmbbikltHt73Wlml0PnAUZhxju
	jHp3iVTd2WwIxXeejVwvb5soDRRArpRzwuGRmgw6EmdznK6QbJgRtWrbm7EkbDCZoUwjdy8k+21OL
	hx5zZt9roxjc8XFaDv4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4pN-0002KM-S4; Mon, 15 Jul 2019 17:31:53 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4nO-0008ER-Vd
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 17:29:52 +0000
Received: by mail-lj1-x242.google.com with SMTP id i21so17101405ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 10:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RWP8nyImS39zSZSpsquwa+7h83m45I0RXPq4864glDw=;
 b=RWQpIYdoamyKmsukWr13hJKtqCnneWSq7yu7efc2V+0BLViyoxGqimT0vQG+N9f+0O
 zHpnUDGzaMXjKc4DP/e9FLmXS3frE8y/S15vaw54SFmIjEboEsRt2E9s98CFEiCIPaJD
 w8LM4N2C+okvLbnYWxVma0ZF6mQhd9bJKugJ6sklqJ/kIcN4h5vlgNWl/ai9bQUffWom
 LXZYl7QqJrZ7COD1pQyzYwM49UB/3RLsw7Tz2EYh8EgTiPmhnnsqdnyQANEFAIOCE2+5
 pgizxgEs77aCxJMBfvsbsxskUMc6z+9NR1G0MghmRGnyBPUcYtckCXkV2kMFGr6INU5O
 PbMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RWP8nyImS39zSZSpsquwa+7h83m45I0RXPq4864glDw=;
 b=eiBkvTCC9tqe1+A2j3DTT9Gcv6VnK3FPuL4F2rpj2EDNw+9fwngF8zEurG+gqx9z6S
 1iQtlDVRptuJKCkTj0h3xxFNvCCBGfYzgbdNFsvLkdPcwGltGNmDGdYI2xqxnYWWfjsF
 gh6kiZZQFVZAzjco/H23Aw3lvX8rhljkuxQOsxRGfFKLgMz+YjJ1v2ROdtg4W7zaR/ki
 uN+LjL8cD7BLyJEpkAujll+9Yoe33cnlBSEZEjibnqQuap4aivJ3tsxRW3G3PheWCdKI
 ulZ1Ut77R4i7MvgxDYAbjLrYRVt4FbCLNnpnp2IVpAd6n9YkkB6xI+kilfVuqhJV1iMO
 iVHw==
X-Gm-Message-State: APjAAAWREldhiqVDvHasoA77DPJy8zwZVozUvRm13ZItdB0w/KiTHhEu
 1cRSNAQ+sLSXCnRI0X/xvXs=
X-Google-Smtp-Source: APXvYqw8bOGPiSnN9XxJlrOgVc0nqpbRzNvMF09KebTKnS4GmvoNRJ9SePz7z9OknQhgOqy29kWAvg==
X-Received: by 2002:a2e:a415:: with SMTP id p21mr14666214ljn.111.1563211789666; 
 Mon, 15 Jul 2019 10:29:49 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.gmail.com with ESMTPSA id b17sm3248765ljf.34.2019.07.15.10.29.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 10:29:49 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v3 05/13] ARM: tegra: Expose PM functions required for new
 cpuidle driver
Date: Mon, 15 Jul 2019 20:26:21 +0300
Message-Id: <20190715172629.4437-6-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190715172629.4437-1-digetx@gmail.com>
References: <20190715172629.4437-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_102951_035299_A3F5B331 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
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
Cc: linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The upcoming unified CPUIDLE driver will be added to the drivers/cpuidle/
directory and it will require all these exposed Tegra PM-core functions.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/mach-tegra/irq.c   |  2 ++
 arch/arm/mach-tegra/pm.h    |  3 ---
 arch/arm/mach-tegra/sleep.h |  1 -
 include/soc/tegra/irq.h     | 13 +++++++++++++
 include/soc/tegra/pm.h      | 25 +++++++++++++++++++++++++
 5 files changed, 40 insertions(+), 4 deletions(-)
 create mode 100644 include/soc/tegra/irq.h

diff --git a/arch/arm/mach-tegra/irq.c b/arch/arm/mach-tegra/irq.c
index 4c065b54cbe7..4e1ee70b2a3f 100644
--- a/arch/arm/mach-tegra/irq.c
+++ b/arch/arm/mach-tegra/irq.c
@@ -18,6 +18,8 @@
 #include <linux/of.h>
 #include <linux/syscore_ops.h>
 
+#include <soc/tegra/irq.h>
+
 #include "board.h"
 #include "iomap.h"
 
diff --git a/arch/arm/mach-tegra/pm.h b/arch/arm/mach-tegra/pm.h
index ae68fc7db576..81525f5f4a44 100644
--- a/arch/arm/mach-tegra/pm.h
+++ b/arch/arm/mach-tegra/pm.h
@@ -23,9 +23,6 @@ void tegra20_sleep_core_init(void);
 void tegra30_lp1_iram_hook(void);
 void tegra30_sleep_core_init(void);
 
-void tegra_clear_cpu_in_lp2(void);
-void tegra_set_cpu_in_lp2(void);
-int tegra_idle_lp2_last(void);
 extern void (*tegra_tear_down_cpu)(void);
 
 #ifdef CONFIG_PM_SLEEP
diff --git a/arch/arm/mach-tegra/sleep.h b/arch/arm/mach-tegra/sleep.h
index 4978def9db46..4718a3cb45a1 100644
--- a/arch/arm/mach-tegra/sleep.h
+++ b/arch/arm/mach-tegra/sleep.h
@@ -122,7 +122,6 @@ void tegra20_hotplug_shutdown(void);
 void tegra30_hotplug_shutdown(void);
 
 void tegra20_tear_down_cpu(void);
-int tegra30_sleep_cpu_secondary_finish(unsigned long);
 void tegra30_tear_down_cpu(void);
 
 #endif
diff --git a/include/soc/tegra/irq.h b/include/soc/tegra/irq.h
new file mode 100644
index 000000000000..8eb11a7109e4
--- /dev/null
+++ b/include/soc/tegra/irq.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2012, NVIDIA Corporation. All rights reserved.
+ */
+
+#ifndef __SOC_TEGRA_IRQ_H
+#define __SOC_TEGRA_IRQ_H
+
+#if defined(CONFIG_ARM)
+bool tegra_pending_sgi(void);
+#endif
+
+#endif /* __SOC_TEGRA_IRQ_H */
diff --git a/include/soc/tegra/pm.h b/include/soc/tegra/pm.h
index 951fcd738d55..bc1abdf41d61 100644
--- a/include/soc/tegra/pm.h
+++ b/include/soc/tegra/pm.h
@@ -6,6 +6,8 @@
 #ifndef __SOC_TEGRA_PM_H__
 #define __SOC_TEGRA_PM_H__
 
+#include <linux/errno.h>
+
 enum tegra_suspend_mode {
 	TEGRA_SUSPEND_NONE = 0,
 	TEGRA_SUSPEND_LP2, /* CPU voltage off */
@@ -20,6 +22,11 @@ tegra_pm_validate_suspend_mode(enum tegra_suspend_mode mode);
 
 /* low-level resume entry point */
 void tegra_resume(void);
+
+int tegra30_sleep_cpu_secondary_finish(unsigned long arg);
+void tegra_clear_cpu_in_lp2(void);
+void tegra_set_cpu_in_lp2(void);
+int tegra_idle_lp2_last(void);
 #else
 static inline enum tegra_suspend_mode
 tegra_pm_validate_suspend_mode(enum tegra_suspend_mode mode)
@@ -30,6 +37,24 @@ tegra_pm_validate_suspend_mode(enum tegra_suspend_mode mode)
 static inline void tegra_resume(void)
 {
 }
+
+static inline int tegra30_sleep_cpu_secondary_finish(unsigned long arg)
+{
+	return -ENOTSUPP;
+}
+
+static inline void tegra_clear_cpu_in_lp2(void)
+{
+}
+
+static inline void tegra_set_cpu_in_lp2(void)
+{
+}
+
+static inline int tegra_idle_lp2_last(void)
+{
+	return -ENOTSUPP;
+}
 #endif /* CONFIG_PM_SLEEP */
 
 #endif /* __SOC_TEGRA_PM_H__ */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
