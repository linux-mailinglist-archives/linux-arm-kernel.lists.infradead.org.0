Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97561162BDD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:14:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oN0g+6PPG4e8Zh1wFEDMp8VX98XuKrutJXjZGv4VFww=; b=QtcwK4AgK56ckP
	GOkQNLiY3XkwOM+AeOChzGVWO4anUhsgyXf4ZsFRNAHOS80V2MMRRsnT4ddQAovtesBI+tM0G6sQh
	9YySlLwucqIhnNu1/xJRB94kJt6xVkYE49Tp6TG8MJrj7Nm91NCdzok0Bp4cKtr+o58jn7S8uKaiD
	I8JLvLSRx8ykrGgW7N4ppsCTBoLtMIqWRGxx440Mbq1JDprvuu6F3Z5Qz+9sboOvteL8wTM3bI3qr
	Mlb1uQbPBgml8dGczymU0pJGk8LVgzooXSJWmiNrUSOdQqQYDqiTI+6QXsH4eD2Ydlo1rJR3qsPWd
	EAf/3Q7o0IubHFJ6ztWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46S0-0002Ut-Fh; Tue, 18 Feb 2020 17:14:24 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46R8-0001sr-DP
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:13:32 +0000
Received: by mail-ot1-f65.google.com with SMTP id j20so20267959otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 09:13:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W1u4wUo3NLYAMgXHhQ1JWTN6DImeyb7sdgcLty9LTVA=;
 b=qn71eB9gWE/BkXT5bQcdV2rUrdCMx+PFLCZOpzCPwHrX2c3YS7YNXLywbuHvACfqjv
 YzAgVcH+FkvwYGme/0z6RyYcgPRjFPm0tB29pvgsXnMLZkDzcvOEM2EMFcLJD72iMrRd
 Jj8JQAkq9uhFTN6hi5Wp4G3F49NL/3lbfmJllUdpB85tzc9y0Gw3JzHBmzCaubcEofEV
 liOvISPHIiNDWEfa4Ca5RgIICjf5rTl6e0UsoWA0POlKaW1Vse1zC0E8tEXZ4x1Wr3nY
 1vM13oGN/ATpzG1ZiVjCA7nJsJKF3hjgW5h2oBOokFPqiDngg5wqlQxBCoOHk54Tqeiz
 5/+g==
X-Gm-Message-State: APjAAAXKrmTIQAyD0DUGPlI0PttKtnujGrUyk7MGB8/LHdSlrr8Gig7s
 pYVQD8+optsY0XOS1k951kzZbD4=
X-Google-Smtp-Source: APXvYqz9vN5O196Hv3RX5j5QhodRWeWR1h2DBkM3xAqkcK92U7nZEFBLzVra3Zyy0nvATVFM6CGklA==
X-Received: by 2002:a9d:7a89:: with SMTP id l9mr15588431otn.228.1582046008709; 
 Tue, 18 Feb 2020 09:13:28 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id y25sm1545755oto.27.2020.02.18.09.13.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 09:13:28 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 soc@kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Robert Richter <rrichter@marvell.com>, Jon Loeliger <jdl@jdl.com>,
 Alexander Graf <graf@amazon.com>, Matthias Brugger <mbrugger@suse.com>,
 Mark Langsdorf <mlangsdo@redhat.com>
Subject: [RFC PATCH 03/11] cpuidle: Remove Calxeda driver
Date: Tue, 18 Feb 2020 11:13:13 -0600
Message-Id: <20200218171321.30990-4-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200218171321.30990-1-robh@kernel.org>
References: <20200218171321.30990-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_091330_489098_64FB27F0 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: kvm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 linux-ide@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-edac@vger.kernel.org,
 Jens Axboe <axboe@kernel.dk>, Tony Luck <tony.luck@intel.com>,
 Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org,
 Cornelia Huck <cohuck@redhat.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 iommu@lists.linux-foundation.org, James Morse <james.morse@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: linux-pm@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
Do not apply yet.

 drivers/cpuidle/Kconfig.arm       |  7 ---
 drivers/cpuidle/Makefile          |  1 -
 drivers/cpuidle/cpuidle-calxeda.c | 72 -------------------------------
 3 files changed, 80 deletions(-)
 delete mode 100644 drivers/cpuidle/cpuidle-calxeda.c

diff --git a/drivers/cpuidle/Kconfig.arm b/drivers/cpuidle/Kconfig.arm
index 62272ecfa771..c2830d2ed44a 100644
--- a/drivers/cpuidle/Kconfig.arm
+++ b/drivers/cpuidle/Kconfig.arm
@@ -42,13 +42,6 @@ config ARM_CLPS711X_CPUIDLE
 	help
 	  Select this to enable cpuidle on Cirrus Logic CLPS711X SOCs.

-config ARM_HIGHBANK_CPUIDLE
-	bool "CPU Idle Driver for Calxeda processors"
-	depends on ARM_PSCI && !ARM64
-	select ARM_CPU_SUSPEND
-	help
-	  Select this to enable cpuidle on Calxeda processors.
-
 config ARM_KIRKWOOD_CPUIDLE
 	bool "CPU Idle Driver for Marvell Kirkwood SoCs"
 	depends on (MACH_KIRKWOOD || COMPILE_TEST) && !ARM64
diff --git a/drivers/cpuidle/Makefile b/drivers/cpuidle/Makefile
index cc8c769d7fa9..eee5f276edf7 100644
--- a/drivers/cpuidle/Makefile
+++ b/drivers/cpuidle/Makefile
@@ -14,7 +14,6 @@ obj-$(CONFIG_HALTPOLL_CPUIDLE)		  += cpuidle-haltpoll.o
 obj-$(CONFIG_ARM_MVEBU_V7_CPUIDLE) += cpuidle-mvebu-v7.o
 obj-$(CONFIG_ARM_BIG_LITTLE_CPUIDLE)	+= cpuidle-big_little.o
 obj-$(CONFIG_ARM_CLPS711X_CPUIDLE)	+= cpuidle-clps711x.o
-obj-$(CONFIG_ARM_HIGHBANK_CPUIDLE)	+= cpuidle-calxeda.o
 obj-$(CONFIG_ARM_KIRKWOOD_CPUIDLE)	+= cpuidle-kirkwood.o
 obj-$(CONFIG_ARM_ZYNQ_CPUIDLE)		+= cpuidle-zynq.o
 obj-$(CONFIG_ARM_U8500_CPUIDLE)         += cpuidle-ux500.o
diff --git a/drivers/cpuidle/cpuidle-calxeda.c b/drivers/cpuidle/cpuidle-calxeda.c
deleted file mode 100644
index b17d9a8418b0..000000000000
--- a/drivers/cpuidle/cpuidle-calxeda.c
+++ /dev/null
@@ -1,72 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright 2012 Calxeda, Inc.
- *
- * Based on arch/arm/plat-mxc/cpuidle.c: #v3.7
- * Copyright 2012 Freescale Semiconductor, Inc.
- * Copyright 2012 Linaro Ltd.
- *
- * Maintainer: Rob Herring <rob.herring@calxeda.com>
- */
-
-#include <linux/cpuidle.h>
-#include <linux/cpu_pm.h>
-#include <linux/init.h>
-#include <linux/mm.h>
-#include <linux/platform_device.h>
-#include <linux/psci.h>
-
-#include <asm/cpuidle.h>
-#include <asm/suspend.h>
-
-#include <uapi/linux/psci.h>
-
-#define CALXEDA_IDLE_PARAM \
-	((0 << PSCI_0_2_POWER_STATE_ID_SHIFT) | \
-	 (0 << PSCI_0_2_POWER_STATE_AFFL_SHIFT) | \
-	 (PSCI_POWER_STATE_TYPE_POWER_DOWN << PSCI_0_2_POWER_STATE_TYPE_SHIFT))
-
-static int calxeda_idle_finish(unsigned long val)
-{
-	return psci_ops.cpu_suspend(CALXEDA_IDLE_PARAM, __pa(cpu_resume));
-}
-
-static int calxeda_pwrdown_idle(struct cpuidle_device *dev,
-				struct cpuidle_driver *drv,
-				int index)
-{
-	cpu_pm_enter();
-	cpu_suspend(0, calxeda_idle_finish);
-	cpu_pm_exit();
-
-	return index;
-}
-
-static struct cpuidle_driver calxeda_idle_driver = {
-	.name = "calxeda_idle",
-	.states = {
-		ARM_CPUIDLE_WFI_STATE,
-		{
-			.name = "PG",
-			.desc = "Power Gate",
-			.exit_latency = 30,
-			.power_usage = 50,
-			.target_residency = 200,
-			.enter = calxeda_pwrdown_idle,
-		},
-	},
-	.state_count = 2,
-};
-
-static int calxeda_cpuidle_probe(struct platform_device *pdev)
-{
-	return cpuidle_register(&calxeda_idle_driver, NULL);
-}
-
-static struct platform_driver calxeda_cpuidle_plat_driver = {
-        .driver = {
-                .name = "cpuidle-calxeda",
-        },
-        .probe = calxeda_cpuidle_probe,
-};
-builtin_platform_driver(calxeda_cpuidle_plat_driver);
--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
