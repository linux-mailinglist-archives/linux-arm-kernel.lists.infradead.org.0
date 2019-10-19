Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1760DDA70
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 20:44:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=537euOOter0VAcIfkK713lGz6Km0IfSEHhrsWjUfCNY=; b=EsHN2Eaf0oIIG/
	qrE/x8gj5gIyWC8HgOKhGIH8mXvbBFMq+zkVppXhyGjCA2pOdnojGlfvjJE/8FWvfEhvY3AzXtHZG
	KIZU5NTCVxXEnTnbj9nL7cHJ1atqqK6n8e5L4x6B264tlb2Qu0TJ9z6d4rkhb9IFFIJdc1FO/uNeu
	0p2HgtrURZg/Di4h/Q1tC04gr1G57g6uri3SwKiGqNSVcpqdbICxdP17gS/loY+ZFvEsVYsO9A95X
	jixULr+K6C99Myrc9RYvu9nzHmid1pHnlHpzWvEe1cR5T7/MjENez7+w34/KkpAKM6RJCiB84l9F0
	m1DogYMp45E4kt8zuF1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLthe-0001rH-6I; Sat, 19 Oct 2019 18:43:50 +0000
Received: from mo6-p04-ob.smtp.rzone.de ([2a01:238:20a:202:5304::10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLtfb-00005o-SL
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 18:41:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1571510497;
 s=strato-dkim-0002; d=goldelico.com;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=D0xgXIH+YLg/8SxmoFPqkZd7PGd3EE7jBsoj68hDK9Q=;
 b=GGPivyeC+nrxTrA3L8yjVv5rVgRrXV8hMBAtbH1q72jMF783eJAN6/6cjBNF7vfWi+
 BsHiBlWZwRpPKXxdDDF2auMcfkZNAP24cjq+gLxrS3iffPiAK2pXIUYbgeBo8iMOlMZ7
 ELR8B8WqfikoBI3yvsqmYpM/6eTav6b+fzybIFC0uUPHE+Qfu898yrSeFq5E9HhvuO0E
 Ur+rEkjB6cUjjwpHu7/ujPLKGBecMUqF+urOJIgpBvZ9h61PHFu+SQXev4A7z4POBJaH
 XOKTezSXZtHAY062kQDCShMlQYcR3R7/a0+Yxi0qvThcfUQ+Rqm2itUY1Rs19nPFFO0P
 r6Ew==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o12DNOsPj0pAyXkHTz8="
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 44.28.1 DYNA|AUTH)
 with ESMTPSA id R0b2a8v9JIfYFMS
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Sat, 19 Oct 2019 20:41:34 +0200 (CEST)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Mike Rapoport <rppt@linux.ibm.com>, David Sterba <dsterba@suse.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Petr Mladek <pmladek@suse.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Kefeng Wang <wangkefeng.wang@huawei.com>,
 Yangtao Li <tiny.windzz@gmail.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 John Stultz <john.stultz@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v2 07/11] omap: remove old hsmmc.[ch] and in Makefile
Date: Sat, 19 Oct 2019 20:41:22 +0200
Message-Id: <9bd4c0bb0df26523d7f5265cdb06d86d63dafba8.1571510481.git.hns@goldelico.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1571510481.git.hns@goldelico.com>
References: <cover.1571510481.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_114144_528799_E051476D 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5304:0:0:10 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, letux-kernel@openphoenux.org,
 linux-mmc@vger.kernel.org, kernel@pyra-handheld.com,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a new one in drivers/mmc/host/omap_hsmmc.c
configured by CONFIG_MMC_OMAP_HS and the last user
was the pdata-quirks for pandora.

Suggested-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
---
 arch/arm/mach-omap2/Makefile       |   1 -
 arch/arm/mach-omap2/hsmmc.c        | 171 -----------------------------
 arch/arm/mach-omap2/hsmmc.h        |  32 ------
 arch/arm/mach-omap2/pdata-quirks.c |   1 -
 4 files changed, 205 deletions(-)
 delete mode 100644 arch/arm/mach-omap2/hsmmc.c
 delete mode 100644 arch/arm/mach-omap2/hsmmc.h

diff --git a/arch/arm/mach-omap2/Makefile b/arch/arm/mach-omap2/Makefile
index 8f208197988f..1b3062f32899 100644
--- a/arch/arm/mach-omap2/Makefile
+++ b/arch/arm/mach-omap2/Makefile
@@ -216,7 +216,6 @@ obj-$(CONFIG_MACH_NOKIA_N8X0)		+= board-n8x0.o
 
 # Platform specific device init code
 
-omap-hsmmc-$(CONFIG_MMC_OMAP_HS)	:= hsmmc.o
 obj-y					+= $(omap-hsmmc-m) $(omap-hsmmc-y)
 
 obj-y					+= omap_phy_internal.o
diff --git a/arch/arm/mach-omap2/hsmmc.c b/arch/arm/mach-omap2/hsmmc.c
deleted file mode 100644
index 63423ea6a240..000000000000
--- a/arch/arm/mach-omap2/hsmmc.c
+++ /dev/null
@@ -1,171 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * linux/arch/arm/mach-omap2/hsmmc.c
- *
- * Copyright (C) 2007-2008 Texas Instruments
- * Copyright (C) 2008 Nokia Corporation
- * Author: Texas Instruments
- */
-#include <linux/kernel.h>
-#include <linux/slab.h>
-#include <linux/string.h>
-#include <linux/delay.h>
-#include <linux/mmc/host.h>
-#include <linux/platform_data/hsmmc-omap.h>
-
-#include "soc.h"
-#include "omap_device.h"
-
-#include "hsmmc.h"
-#include "control.h"
-
-#if IS_ENABLED(CONFIG_MMC_OMAP_HS)
-
-static u16 control_pbias_offset;
-static u16 control_devconf1_offset;
-
-#define HSMMC_NAME_LEN	9
-
-static int __init omap_hsmmc_pdata_init(struct omap2_hsmmc_info *c,
-					struct omap_hsmmc_platform_data *mmc)
-{
-	char *hc_name;
-
-	hc_name = kzalloc(HSMMC_NAME_LEN + 1, GFP_KERNEL);
-	if (!hc_name)
-		return -ENOMEM;
-
-	snprintf(hc_name, (HSMMC_NAME_LEN + 1), "mmc%islot%i", c->mmc, 1);
-	mmc->name = hc_name;
-	mmc->caps = c->caps;
-	mmc->reg_offset = 0;
-
-	return 0;
-}
-
-static int omap_hsmmc_done;
-
-void omap_hsmmc_late_init(struct omap2_hsmmc_info *c)
-{
-	struct platform_device *pdev;
-	int res;
-
-	if (omap_hsmmc_done)
-		return;
-
-	omap_hsmmc_done = 1;
-
-	for (; c->mmc; c++) {
-		pdev = c->pdev;
-		if (!pdev)
-			continue;
-		res = omap_device_register(pdev);
-		if (res)
-			pr_err("Could not late init MMC\n");
-	}
-}
-
-#define MAX_OMAP_MMC_HWMOD_NAME_LEN		16
-
-static void __init omap_hsmmc_init_one(struct omap2_hsmmc_info *hsmmcinfo,
-					int ctrl_nr)
-{
-	struct omap_hwmod *oh;
-	struct omap_hwmod *ohs[1];
-	struct omap_device *od;
-	struct platform_device *pdev;
-	char oh_name[MAX_OMAP_MMC_HWMOD_NAME_LEN];
-	struct omap_hsmmc_platform_data *mmc_data;
-	struct omap_hsmmc_dev_attr *mmc_dev_attr;
-	char *name;
-	int res;
-
-	mmc_data = kzalloc(sizeof(*mmc_data), GFP_KERNEL);
-	if (!mmc_data)
-		return;
-
-	res = omap_hsmmc_pdata_init(hsmmcinfo, mmc_data);
-	if (res < 0)
-		goto free_mmc;
-
-	name = "omap_hsmmc";
-	res = snprintf(oh_name, MAX_OMAP_MMC_HWMOD_NAME_LEN,
-		     "mmc%d", ctrl_nr);
-	WARN(res >= MAX_OMAP_MMC_HWMOD_NAME_LEN,
-	     "String buffer overflow in MMC%d device setup\n", ctrl_nr);
-
-	oh = omap_hwmod_lookup(oh_name);
-	if (!oh) {
-		pr_err("Could not look up %s\n", oh_name);
-		goto free_name;
-	}
-	ohs[0] = oh;
-	if (oh->dev_attr != NULL) {
-		mmc_dev_attr = oh->dev_attr;
-		mmc_data->controller_flags = mmc_dev_attr->flags;
-	}
-
-	pdev = platform_device_alloc(name, ctrl_nr - 1);
-	if (!pdev) {
-		pr_err("Could not allocate pdev for %s\n", name);
-		goto free_name;
-	}
-	dev_set_name(&pdev->dev, "%s.%d", pdev->name, pdev->id);
-
-	od = omap_device_alloc(pdev, ohs, 1);
-	if (IS_ERR(od)) {
-		pr_err("Could not allocate od for %s\n", name);
-		goto put_pdev;
-	}
-
-	res = platform_device_add_data(pdev, mmc_data,
-			      sizeof(struct omap_hsmmc_platform_data));
-	if (res) {
-		pr_err("Could not add pdata for %s\n", name);
-		goto put_pdev;
-	}
-
-	hsmmcinfo->pdev = pdev;
-
-	res = omap_device_register(pdev);
-	if (res) {
-		pr_err("Could not register od for %s\n", name);
-		goto free_od;
-	}
-
-	goto free_mmc;
-
-free_od:
-	omap_device_delete(od);
-
-put_pdev:
-	platform_device_put(pdev);
-
-free_name:
-	kfree(mmc_data->name);
-
-free_mmc:
-	kfree(mmc_data);
-}
-
-void __init omap_hsmmc_init(struct omap2_hsmmc_info *controllers)
-{
-	if (omap_hsmmc_done)
-		return;
-
-	omap_hsmmc_done = 1;
-
-	if (cpu_is_omap2430()) {
-		control_pbias_offset = OMAP243X_CONTROL_PBIAS_LITE;
-		control_devconf1_offset = OMAP243X_CONTROL_DEVCONF1;
-	} else {
-		control_pbias_offset = OMAP343X_CONTROL_PBIAS_LITE;
-		control_devconf1_offset = OMAP343X_CONTROL_DEVCONF1;
-	}
-
-	for (; controllers->mmc; controllers++)
-		omap_hsmmc_init_one(controllers, controllers->mmc);
-
-}
-
-#endif
diff --git a/arch/arm/mach-omap2/hsmmc.h b/arch/arm/mach-omap2/hsmmc.h
deleted file mode 100644
index 76c5ed2afa72..000000000000
--- a/arch/arm/mach-omap2/hsmmc.h
+++ /dev/null
@@ -1,32 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * MMC definitions for OMAP2
- */
-
-struct mmc_card;
-
-struct omap2_hsmmc_info {
-	u8	mmc;		/* controller 1/2/3 */
-	u32	caps;		/* 4/8 wires and any additional host
-				 * capabilities OR'd (ref. linux/mmc/host.h) */
-	struct platform_device *pdev;	/* mmc controller instance */
-	/* init some special card */
-	void (*init_card)(struct mmc_card *card);
-};
-
-#if IS_ENABLED(CONFIG_MMC_OMAP_HS)
-
-void omap_hsmmc_init(struct omap2_hsmmc_info *);
-void omap_hsmmc_late_init(struct omap2_hsmmc_info *);
-
-#else
-
-static inline void omap_hsmmc_init(struct omap2_hsmmc_info *info)
-{
-}
-
-static inline void omap_hsmmc_late_init(struct omap2_hsmmc_info *info)
-{
-}
-
-#endif
diff --git a/arch/arm/mach-omap2/pdata-quirks.c b/arch/arm/mach-omap2/pdata-quirks.c
index ecc1ef632951..4ce05d408a67 100644
--- a/arch/arm/mach-omap2/pdata-quirks.c
+++ b/arch/arm/mach-omap2/pdata-quirks.c
@@ -32,7 +32,6 @@
 #include "omap_device.h"
 #include "omap-secure.h"
 #include "soc.h"
-#include "hsmmc.h"
 
 static struct omap_hsmmc_platform_data __maybe_unused mmc_pdata[2];
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
