Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 268931AFC9F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 19:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlXVMFDw3EfC/AhIpkle0N7NLGGnDLxmeN1GZntnoYY=; b=j51O0p3Qn/ctbw
	FZe0INV/kniePKpWd1XXNtR73kSM7U5pZGTxcD6vhKyxJ3QJzbFE1FAnQB7zztorAYKyL2pPn3cah
	uswe89FS+6SUwIh2EH6ZNlDJnb088ELqy3qFisRDWQi3YcqwBg4l8kJpe3k9zN/cmoi1eSLTqTAPJ
	QXuUzgPuqGrUjCpeuwle0G2MSC3fdH6VuRXmt3rwM8v4mWEV94r5xxj1NyLhEX8x1X1+4/Oss5agp
	+Y7cWyza3mVFXUk188AaYwyaRC7s+Ka93qAkv0EiEVPD62lQDFvBLplwCmidjoRDb2Pj/8Aj48qAi
	HBvg5dEvbZkIHAzSISrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDVf-0008EL-2N; Sun, 19 Apr 2020 17:13:35 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDQo-0001wD-7y
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 17:08:36 +0000
Received: by mail-ot1-f68.google.com with SMTP id m13so5960908otf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 10:08:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+cM/b65rtjeKyTmogfwhiHXUftLjv62lN3bT8OJ3Ce0=;
 b=NgDYbqgbrrgVd2LxidYre+++ArtguZRK9/7LdYoy0XeN9oF+4bExAF4vmMv/sLgZLi
 30A+S0sEhPsyhOSBLgdD9Fm3FnPgcb2+Bbu7uiL3XUhJY2vgmWH1VDQI+vJs5dEkU5/S
 4KmD/hlCsxY9P4HBHR0y+a4i4AJ4bRfb+1ZcalkL/EtiQdIEN0A1VrdASZjtW19v8WKd
 qtPeNCv5V5gcH0WdZXXfwcqYW/nYFA0dWfsCKxAnihMfkLYSBBZ7HaKVkBSObeE5ksON
 Q0n7nAeIn3ofF8ty+vhlPpfhXDEFBfhvjox0ncdfLYFlMq2HzRB9Sk4/uEa5i1sYTIlB
 KVjg==
X-Gm-Message-State: AGi0PuaUy4i+VWiEPAStSlGYYawyZHHjWL3vcMFK26ZymHc0vXaxSO2d
 4l4/vgT0uYc1az66MZE4CA==
X-Google-Smtp-Source: APiQypJ/DjvcatWrwEm/6IPNwh+ISFDJPdeQJhuYT6YbJyt335a7TOpxUQKLngc/mptPSkp4wzuW+A==
X-Received: by 2002:a9d:7e92:: with SMTP id m18mr6258749otp.269.1587316113317; 
 Sun, 19 Apr 2020 10:08:33 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u205sm9661938oia.37.2020.04.19.10.08.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 10:08:32 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH 15/17] vexpress: Move site master init to vexpress-config bus
Date: Sun, 19 Apr 2020 12:08:08 -0500
Message-Id: <20200419170810.5738-16-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419170810.5738-1-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_100834_483322_AD75E2CE 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's only a single caller of vexpress_config_set_master() from
vexpress-sysreg.c. Let's just make the registers needed available to
vexpress-config and move all the code there. The registers needed aren't
used anywhere else either. With this, we can get rid of the private API
between these 2 drivers.

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee.jones@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/bus/vexpress-config.c | 37 +++++++++++++++++++++++++++++++----
 drivers/mfd/vexpress-sysreg.c | 25 +----------------------
 include/linux/vexpress.h      |  9 ---------
 3 files changed, 34 insertions(+), 37 deletions(-)

diff --git a/drivers/bus/vexpress-config.c b/drivers/bus/vexpress-config.c
index 43deb4df140b..caa35a4cb34d 100644
--- a/drivers/bus/vexpress-config.c
+++ b/drivers/bus/vexpress-config.c
@@ -14,9 +14,17 @@
 #include <linux/slab.h>
 #include <linux/vexpress.h>
 
-#define SYS_CFGDATA		0x0
+#define SYS_MISC		0x0
+#define SYS_MISC_MASTERSITE	(1 << 14)
 
-#define SYS_CFGCTRL		0x4
+#define SYS_PROCID0		0x24
+#define SYS_PROCID1		0x28
+#define SYS_HBI_MASK		0xfff
+#define SYS_PROCIDx_HBI_SHIFT	0
+
+#define SYS_CFGDATA		0x40
+
+#define SYS_CFGCTRL		0x44
 #define SYS_CFGCTRL_START	(1 << 31)
 #define SYS_CFGCTRL_WRITE	(1 << 30)
 #define SYS_CFGCTRL_DCC(n)	(((n) & 0xf) << 26)
@@ -25,10 +33,14 @@
 #define SYS_CFGCTRL_POSITION(n)	(((n) & 0xf) << 12)
 #define SYS_CFGCTRL_DEVICE(n)	(((n) & 0xfff) << 0)
 
-#define SYS_CFGSTAT		0x8
+#define SYS_CFGSTAT		0x48
 #define SYS_CFGSTAT_ERR		(1 << 1)
 #define SYS_CFGSTAT_COMPLETE	(1 << 0)
 
+#define VEXPRESS_SITE_MB		0
+#define VEXPRESS_SITE_DB1		1
+#define VEXPRESS_SITE_DB2		2
+#define VEXPRESS_SITE_MASTER		0xf
 
 struct vexpress_syscfg {
 	struct device *dev;
@@ -59,7 +71,7 @@ static DEFINE_MUTEX(vexpress_config_mutex);
 static u32 vexpress_config_site_master = VEXPRESS_SITE_MASTER;
 
 
-void vexpress_config_set_master(u32 site)
+static void vexpress_config_set_master(u32 site)
 {
 	vexpress_config_site_master = site;
 }
@@ -340,6 +352,8 @@ static int vexpress_syscfg_probe(struct platform_device *pdev)
 	struct resource *res;
 	struct vexpress_config_bridge *bridge;
 	struct device_node *node;
+	int master;
+	u32 dt_hbi;
 
 	syscfg = devm_kzalloc(&pdev->dev, sizeof(*syscfg), GFP_KERNEL);
 	if (!syscfg)
@@ -361,6 +375,21 @@ static int vexpress_syscfg_probe(struct platform_device *pdev)
 
 	dev_set_drvdata(&pdev->dev, bridge);
 
+	master = readl(syscfg->base + SYS_MISC) & SYS_MISC_MASTERSITE ?
+			VEXPRESS_SITE_DB2 : VEXPRESS_SITE_DB1;
+	vexpress_config_set_master(master);
+
+	/* Confirm board type against DT property, if available */
+	if (of_property_read_u32(of_root, "arm,hbi", &dt_hbi) == 0) {
+		u32 id = readl(syscfg->base + (master == VEXPRESS_SITE_DB1 ?
+				 SYS_PROCID0 : SYS_PROCID1));
+		u32 hbi = (id >> SYS_PROCIDx_HBI_SHIFT) & SYS_HBI_MASK;
+
+		if (WARN_ON(dt_hbi != hbi))
+			dev_warn(&pdev->dev, "DT HBI (%x) is not matching hardware (%x)!\n",
+					dt_hbi, hbi);
+	}
+
 	for_each_compatible_node(node, NULL, "arm,vexpress,config-bus") {
 		struct device_node *bridge_np;
 
diff --git a/drivers/mfd/vexpress-sysreg.c b/drivers/mfd/vexpress-sysreg.c
index eeeeb1d26d5d..aaf24af287dd 100644
--- a/drivers/mfd/vexpress-sysreg.c
+++ b/drivers/mfd/vexpress-sysreg.c
@@ -14,7 +14,6 @@
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <linux/stat.h>
-#include <linux/vexpress.h>
 
 #define SYS_ID			0x000
 #define SYS_SW			0x004
@@ -37,11 +36,6 @@
 #define SYS_CFGCTRL		0x0a4
 #define SYS_CFGSTAT		0x0a8
 
-#define SYS_HBI_MASK		0xfff
-#define SYS_PROCIDx_HBI_SHIFT	0
-
-#define SYS_MISC_MASTERSITE	(1 << 14)
-
 /* The sysreg block is just a random collection of various functions... */
 
 static struct bgpio_pdata vexpress_sysreg_sys_led_pdata = {
@@ -94,7 +88,7 @@ static struct mfd_cell vexpress_sysreg_cells[] = {
 		.name = "vexpress-syscfg",
 		.num_resources = 1,
 		.resources = (struct resource []) {
-			DEFINE_RES_MEM(SYS_CFGDATA, 0xc),
+			DEFINE_RES_MEM(SYS_MISC, 0x4c),
 		},
 	}
 };
@@ -104,8 +98,6 @@ static int vexpress_sysreg_probe(struct platform_device *pdev)
 	struct resource *mem;
 	void __iomem *base;
 	struct gpio_chip *mmc_gpio_chip;
-	int master;
-	u32 dt_hbi;
 
 	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	if (!mem)
@@ -115,21 +107,6 @@ static int vexpress_sysreg_probe(struct platform_device *pdev)
 	if (!base)
 		return -ENOMEM;
 
-	master = readl(base + SYS_MISC) & SYS_MISC_MASTERSITE ?
-			VEXPRESS_SITE_DB2 : VEXPRESS_SITE_DB1;
-	vexpress_config_set_master(master);
-
-	/* Confirm board type against DT property, if available */
-	if (of_property_read_u32(of_root, "arm,hbi", &dt_hbi) == 0) {
-		u32 id = readl(base + (master == VEXPRESS_SITE_DB1 ?
-				 SYS_PROCID0 : SYS_PROCID1));
-		u32 hbi = (id >> SYS_PROCIDx_HBI_SHIFT) & SYS_HBI_MASK;
-
-		if (WARN_ON(dt_hbi != hbi))
-			dev_warn(&pdev->dev, "DT HBI (%x) is not matching hardware (%x)!\n",
-					dt_hbi, hbi);
-	}
-
 	/*
 	 * Duplicated SYS_MCI pseudo-GPIO controller for compatibility with
 	 * older trees using sysreg node for MMC control lines.
diff --git a/include/linux/vexpress.h b/include/linux/vexpress.h
index 65096c792d57..2f9dd072f11f 100644
--- a/include/linux/vexpress.h
+++ b/include/linux/vexpress.h
@@ -10,15 +10,6 @@
 #include <linux/device.h>
 #include <linux/regmap.h>
 
-#define VEXPRESS_SITE_MB		0
-#define VEXPRESS_SITE_DB1		1
-#define VEXPRESS_SITE_DB2		2
-#define VEXPRESS_SITE_MASTER		0xf
-
-/* Config infrastructure */
-
-void vexpress_config_set_master(u32 site);
-
 /* Config regmap API */
 
 struct regmap *devm_regmap_init_vexpress_config(struct device *dev);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
