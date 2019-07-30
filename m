Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AB479EDE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 04:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g7+i8RuH7/RP9hTwLAZw0hNq7/H11uu/Lti0t5trMHg=; b=oFBaDgMWNcRUfQ
	5Vthsol+DME8L2s1ScYJ/hadMDqr9q6NfiiftTs7gse970pzP4zC74rZxVxpXamuC1HNZvrQ1nenl
	ojx18fJ5e5k2/9DQ6TRtKA5UVKRVTpy2BLCvKE9Cdqzk868wm/H/6ol3ecIrvO7XmCrYwaSQgxRrC
	aYHBruYbLu0lu4BuudRXnhFdJIX6w8kEyQLzvqPSb9cXqlyJphtcu1DIS+RWoViD6/kKaCuiEb4Nk
	uPWCoPMnCdMy88qPViMyzQ0g4peVFa9tthDblqCdRUM2rcC9ze1WXUwJWI1KUkzE8bB8y5iLPBP6o
	MtwjYaVz982Env4UpTFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsI87-0007fh-Jd; Tue, 30 Jul 2019 02:44:47 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsI7t-0007cq-8V
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 02:44:35 +0000
Received: by mail-pf1-x442.google.com with SMTP id r7so29012748pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 19:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gbduh9qXQG5zebANMhUSUtAHLLBB9b10oy7d6gIG3NA=;
 b=f7ELYVC8j5D0tLUUetiVmx3kCb2WF8cqBUcyXWAla4Jcq1yin/m1nzTqXb1Q91rMxr
 QT6CyW2EePoH/7DV4ifoNY1n8LXPrriS2w6kyJ7VCht7ET4KC4E1ETL0Igbz4u+nb50Z
 2uTcUNtLkt+GHZiilu59TiiGDr6xYjpdHvDCf9CxPh8uzk2Zciovl2NbQfpqvXXDyjo3
 Aa06I5GVlGixiZYS61iXIilAqwH0IjWCWv7sNAQ2W3PKSZp+BVM7fBqfraffkVPULAq2
 nuh5U2uICGuUvVXIDlMD3vms56ZYxJWMEue+3M+cPs+vAEEKYcZZ+zz0K/lmcjgF7Ue5
 7j1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gbduh9qXQG5zebANMhUSUtAHLLBB9b10oy7d6gIG3NA=;
 b=dNw28E7Q1FqfstjGjMREKjosEPn2EXQXBlQOZV8Y7OcV5e50u4TABBMGOsLNZvmqq0
 F0q42Mw+pUpYufKy3H2rKl8UhKnUR3K7GppeFO4JY7fnQ8a8SxyblHY/0aFkTNrNgVlz
 66HSax1iVnnu/0EtQx0u5i5dqO6y8+XjbzHsWuQScgHdTZ3zqjSE416dugrFsB3gmSPT
 8lomUsdToMIDdSQYhGuSk407y/x1bQNBDczPv2d8T/LMbMgC2ztmny12dyqRBTHLfHP3
 mL7B+5+8YcfZPvMvDVlMEfb7K9B1TyfPJ1n9YNXN53usYIyfxwXmbPT6910ndFBcz5Pq
 rPbQ==
X-Gm-Message-State: APjAAAX1UskxoLAmg0dpW+Jd8/DxQ7CQY6WpUUoa4f3gi63V8dc2T7zY
 +ftKv12r74K+soiNP0/uUvC2Yv/U8Bs=
X-Google-Smtp-Source: APXvYqwIT3cd6WWHAW1VAowcbvg3ZO9itoDM/gXawGxFbxbfwmo/faBnvmfWBvxyXUM0RwniBS4J9A==
X-Received: by 2002:a62:cdc3:: with SMTP id
 o186mr40016504pfg.168.1564454672683; 
 Mon, 29 Jul 2019 19:44:32 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id i123sm86096732pfe.147.2019.07.29.19.44.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 19:44:32 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] ARM: Replace strncmp with str_has_prefix
Date: Tue, 30 Jul 2019 10:44:26 +0800
Message-Id: <20190730024426.17262-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_194433_511946_FA8F3CC5 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-omap@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Kevin Hilman <khilman@kernel.org>,
 Tony Lindgren <tony@atomide.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Chuhong Yuan <hslester96@gmail.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Alexander Clouter <alex@digriz.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In commit b6b2735514bc
("tracing: Use str_has_prefix() instead of using fixed sizes")
the newly introduced str_has_prefix() was used
to replace error-prone strncmp(str, const, len).
Here fix codes with the same pattern.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 arch/arm/kernel/module-plts.c        | 2 +-
 arch/arm/mach-omap2/omap_device.c    | 4 ++--
 arch/arm/mach-omap2/pm-debug.c       | 8 ++++----
 arch/arm/mach-omap2/pm.c             | 2 +-
 arch/arm/mach-omap2/pm44xx.c         | 2 +-
 arch/arm/mach-omap2/sr_device.c      | 8 ++++----
 arch/arm/mach-orion5x/ts78xx-setup.c | 4 ++--
 7 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm/kernel/module-plts.c b/arch/arm/kernel/module-plts.c
index b647741c0ab0..92485a90fb63 100644
--- a/arch/arm/kernel/module-plts.c
+++ b/arch/arm/kernel/module-plts.c
@@ -230,7 +230,7 @@ int module_frob_arch_sections(Elf_Ehdr *ehdr, Elf_Shdr *sechdrs,
 		/* sort by type and symbol index */
 		sort(rels, numrels, sizeof(Elf32_Rel), cmp_rel, NULL);
 
-		if (strncmp(secstrings + dstsec->sh_name, ".init", 5) != 0)
+		if (!str_has_prefix(secstrings + dstsec->sh_name, ".init"))
 			core_plts += count_plts(syms, dstsec->sh_addr, rels,
 						numrels, s->sh_info);
 		else
diff --git a/arch/arm/mach-omap2/omap_device.c b/arch/arm/mach-omap2/omap_device.c
index 3acb4192918d..8ef38529f0a7 100644
--- a/arch/arm/mach-omap2/omap_device.c
+++ b/arch/arm/mach-omap2/omap_device.c
@@ -492,8 +492,8 @@ struct platform_device __init *omap_device_build(const char *pdev_name,
 	if (!pdata && pdata_len > 0)
 		return ERR_PTR(-EINVAL);
 
-	if (strncmp(oh->name, "smartreflex", 11) &&
-	    strncmp(oh->name, "dma", 3)) {
+	if (!str_has_prefix(oh->name, "smartreflex") &&
+	    !str_has_prefix(oh->name, "dma")) {
 		pr_warn("%s need to update %s to probe with dt\na",
 			__func__, pdev_name);
 		ret = -ENODEV;
diff --git a/arch/arm/mach-omap2/pm-debug.c b/arch/arm/mach-omap2/pm-debug.c
index fceb1e525d26..5aeac364c3de 100644
--- a/arch/arm/mach-omap2/pm-debug.c
+++ b/arch/arm/mach-omap2/pm-debug.c
@@ -72,7 +72,7 @@ static int clkdm_dbg_show_counter(struct clockdomain *clkdm, void *user)
 
 	if (strcmp(clkdm->name, "emu_clkdm") == 0 ||
 		strcmp(clkdm->name, "wkup_clkdm") == 0 ||
-		strncmp(clkdm->name, "dpll", 4) == 0)
+		str_has_prefix(clkdm->name, "dpll"))
 		return 0;
 
 	seq_printf(s, "%s->%s (%d)\n", clkdm->name, clkdm->pwrdm.ptr->name,
@@ -88,7 +88,7 @@ static int pwrdm_dbg_show_counter(struct powerdomain *pwrdm, void *user)
 
 	if (strcmp(pwrdm->name, "emu_pwrdm") == 0 ||
 		strcmp(pwrdm->name, "wkup_pwrdm") == 0 ||
-		strncmp(pwrdm->name, "dpll", 4) == 0)
+		str_has_prefix(pwrdm->name, "dpll"))
 		return 0;
 
 	if (pwrdm->state != pwrdm_read_pwrst(pwrdm))
@@ -117,7 +117,7 @@ static int pwrdm_dbg_show_timer(struct powerdomain *pwrdm, void *user)
 
 	if (strcmp(pwrdm->name, "emu_pwrdm") == 0 ||
 		strcmp(pwrdm->name, "wkup_pwrdm") == 0 ||
-		strncmp(pwrdm->name, "dpll", 4) == 0)
+		str_has_prefix(pwrdm->name, "dpll"))
 		return 0;
 
 	pwrdm_state_switch(pwrdm);
@@ -186,7 +186,7 @@ static int __init pwrdms_setup(struct powerdomain *pwrdm, void *dir)
 
 	pwrdm->timer = t;
 
-	if (strncmp(pwrdm->name, "dpll", 4) == 0)
+	if (str_has_prefix(pwrdm->name, "dpll"))
 		return 0;
 
 	d = debugfs_create_dir(pwrdm->name, (struct dentry *)dir);
diff --git a/arch/arm/mach-omap2/pm.c b/arch/arm/mach-omap2/pm.c
index 1fde1bf53fb6..d3287ec5d8da 100644
--- a/arch/arm/mach-omap2/pm.c
+++ b/arch/arm/mach-omap2/pm.c
@@ -96,7 +96,7 @@ static int __init omap2_set_init_voltage(char *vdd_name, char *clk_name,
 		goto exit;
 	}
 
-	if (!strncmp(oh_name, "mpu", 3))
+	if (str_has_prefix(oh_name, "mpu"))
 		/* 
 		 * All current OMAPs share voltage rail and clock
 		 * source, so CPU0 is used to represent the MPU-SS.
diff --git a/arch/arm/mach-omap2/pm44xx.c b/arch/arm/mach-omap2/pm44xx.c
index 485550af2506..4ba30e690b5a 100644
--- a/arch/arm/mach-omap2/pm44xx.c
+++ b/arch/arm/mach-omap2/pm44xx.c
@@ -122,7 +122,7 @@ static int __init pwrdms_setup(struct powerdomain *pwrdm, void *unused)
 	 * through hotplug path and CPU0 explicitly programmed
 	 * further down in the code path
 	 */
-	if (!strncmp(pwrdm->name, "cpu", 3)) {
+	if (str_has_prefix(pwrdm->name, "cpu")) {
 		if (IS_PM44XX_ERRATUM(PM_OMAP4_CPU_OSWR_DISABLE))
 			cpu_suspend_state = PWRDM_POWER_RET;
 		return 0;
diff --git a/arch/arm/mach-omap2/sr_device.c b/arch/arm/mach-omap2/sr_device.c
index 62df666c2bd0..885c75e26a2f 100644
--- a/arch/arm/mach-omap2/sr_device.c
+++ b/arch/arm/mach-omap2/sr_device.c
@@ -95,12 +95,12 @@ static int __init sr_dev_init(struct omap_hwmod *oh, void *user)
 	struct omap_smartreflex_dev_attr *sr_dev_attr;
 	static int i;
 
-	if (!strncmp(oh->name, "smartreflex_mpu_iva", 20) ||
-	    !strncmp(oh->name, "smartreflex_mpu", 16))
+	if (str_has_prefix(oh->name, "smartreflex_mpu_iva") ||
+	    str_has_prefix(oh->name, "smartreflex_mpu"))
 		sr_data = &omap_sr_pdata[OMAP_SR_MPU];
-	else if (!strncmp(oh->name, "smartreflex_core", 17))
+	else if (str_has_prefix(oh->name, "smartreflex_core"))
 		sr_data = &omap_sr_pdata[OMAP_SR_CORE];
-	else if (!strncmp(oh->name, "smartreflex_iva", 16))
+	else if (str_has_prefix(oh->name, "smartreflex_iva"))
 		sr_data = &omap_sr_pdata[OMAP_SR_IVA];
 
 	if (!sr_data) {
diff --git a/arch/arm/mach-orion5x/ts78xx-setup.c b/arch/arm/mach-orion5x/ts78xx-setup.c
index fda9b75c3a33..d83791f0e2da 100644
--- a/arch/arm/mach-orion5x/ts78xx-setup.c
+++ b/arch/arm/mach-orion5x/ts78xx-setup.c
@@ -477,9 +477,9 @@ static ssize_t ts78xx_fpga_store(struct kobject *kobj,
 		return -EBUSY;
 	}
 
-	if (strncmp(buf, "online", sizeof("online") - 1) == 0)
+	if (str_has_prefix(buf, "online"))
 		value = 1;
-	else if (strncmp(buf, "offline", sizeof("offline") - 1) == 0)
+	else if (str_has_prefix(buf, "offline"))
 		value = 0;
 	else
 		return -EINVAL;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
