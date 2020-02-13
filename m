Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5960915B777
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 04:00:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqAFnZJOAvzqqslBCxpjFJxYxt8nQUInhpU9mU0M8sI=; b=Z/2xe1MLPEIATG
	+rQDGlDEJywenGLNe1DAkhvRRSbA++8bihtwAB56Us8Y0F9nUoh1yjgRkM3vQSjJ9wCrTaCFzta0Z
	uu5tGRj7T/FglRhD0Rz8MOVW264K5+5RNWcicORp6v4eC3g8HqQLcAYv+rSzYQtsfLUYRjhiQbau2
	RXRWcTdWMFB9NRtZLgE0lZ7DecOa9mmjuGWYQIcR4re7xcijlSYjkmmMgU99/PeacGpdTbXiLutav
	R/8rpsAMaIfkPKflrDUb/BLAS4OWscxhRvOuIOqW2Aq4QgwVezk5Lc93nxwt59OhLceYhReqJL6oE
	rJC0cxQ3XsmMqWE9z07Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j24k4-00040V-3I; Thu, 13 Feb 2020 03:00:40 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j24jI-0002No-Ew
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 02:59:54 +0000
Received: by mail-pg1-x543.google.com with SMTP id z12so2277470pgl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 18:59:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8BL8vP5NMTytKwhGPCvc8BMjPI7WOjnt3iXA7k4tMW0=;
 b=AYDo7SGzZo1jCJpr+m7BD1pY3VP53RipV5laq/W2ASp6gfmJ3iAqMdM9Bi4euhNhfm
 92pi4BlyDTC/S5maH98qaD96PimUhXZCY/2hp5iMNsQr6QKAGMbrpj4sEb9Nsst41+0a
 SkPVA4PtURhsqCZpqoeENGYJpBcOdXD6Ybkr0zgtEwmN5Kd7PuVXJi+4ErI/NCt/diO7
 5kzpq9sZ4kT/LcUqEn2mqgVM0UwJkt5ygGVi5s+IWWOLvHRC65zFVr3iHRXMmPgKaSBL
 cTzOT0u3p6Q87UX/MevuG1pJ3Q/FRXSGy+g0XMevZDEAYbssYiOe0o0kDNX3Q/SXzuuo
 vqDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8BL8vP5NMTytKwhGPCvc8BMjPI7WOjnt3iXA7k4tMW0=;
 b=opD8Twd8WmJDniWCNd7ArS9ozEjOp+LDuKb4FTqaUbaFKhjpX3qzh9SbYxt9DMvWHh
 0RAOnbyxNrmJAz9BStw9N/7p+GQco5jT/4Ob8eLH5lFjO7Vxi5buhIes78zPGPXICY52
 +IEzmkumFoWN5qmuCTr1j3+4ULNco6CQ+2XQU4T/JJM7vLC8CIM7+QiqRkbz3CJqeRfa
 +NL1Ds9BEbCiHtT+FCkawQDf6KehJREbvu2rVUDpoGmp2HgvEFVpvU8uFJgbgP9JOWZK
 r44nVuDhMchuNgoU/ois8k5T7rKarBB7N0O6aEJTWPDMFly10d/BZLIBZNoAYA0NA+VG
 uZtQ==
X-Gm-Message-State: APjAAAU1x1Uo66REJ6sicwwr/iI4qFPhuy80oKkJcjUVTSWK1OlKdq9X
 CcILDpV4msgRu6YEtm08Bao=
X-Google-Smtp-Source: APXvYqwK+4zKLSl6S5rlqW83Vct22r2bYLt3O1CMcbxDrjJ6dMSoXBvT82hT9HnOw5OQvRnaOzcPUA==
X-Received: by 2002:aa7:979a:: with SMTP id o26mr11705841pfp.257.1581562791654; 
 Wed, 12 Feb 2020 18:59:51 -0800 (PST)
Received: from localhost.localdomain ([125.130.116.2])
 by smtp.gmail.com with ESMTPSA id 64sm602643pfd.48.2020.02.12.18.59.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Feb 2020 18:59:51 -0800 (PST)
From: Jaedon Shin <jaedon.shin@gmail.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 2/3] PCI: brcmstb: Add regulator support
Date: Thu, 13 Feb 2020 11:59:29 +0900
Message-Id: <20200213025930.27943-3-jaedon.shin@gmail.com>
X-Mailer: git-send-email 2.21.0 (Apple Git-122)
In-Reply-To: <20200213025930.27943-1-jaedon.shin@gmail.com>
References: <20200213025930.27943-1-jaedon.shin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_185952_535710_E8D30AA0 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jaedon.shin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-gpio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Jaedon Shin <jaedon.shin@gmail.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARM-based Broadcom STB SoCs have GPIO-based voltage regulator for PCIe
turning off/on power supplies.

Signed-off-by: Jaedon Shin <jaedon.shin@gmail.com>
---
 drivers/gpio/gpio-brcmstb.c           | 13 ++++-
 drivers/pci/controller/pcie-brcmstb.c | 76 +++++++++++++++++++++++++++
 2 files changed, 88 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-brcmstb.c b/drivers/gpio/gpio-brcmstb.c
index 05e3f99ae59c..0cee5fcd2782 100644
--- a/drivers/gpio/gpio-brcmstb.c
+++ b/drivers/gpio/gpio-brcmstb.c
@@ -777,7 +777,18 @@ static struct platform_driver brcmstb_gpio_driver = {
 	.remove = brcmstb_gpio_remove,
 	.shutdown = brcmstb_gpio_shutdown,
 };
-module_platform_driver(brcmstb_gpio_driver);
+
+static int __init brcmstb_gpio_init(void)
+{
+	return platform_driver_register(&brcmstb_gpio_driver);
+}
+subsys_initcall(brcmstb_gpio_init);
+
+static void __exit brcmstb_gpio_exit(void)
+{
+	platform_driver_unregister(&brcmstb_gpio_driver);
+}
+module_exit(brcmstb_gpio_exit);
 
 MODULE_AUTHOR("Gregory Fong");
 MODULE_DESCRIPTION("Driver for Broadcom BRCMSTB SoC UPG GPIO");
diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 34581a6a7313..0e0ca39a680b 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -23,6 +23,7 @@
 #include <linux/of_platform.h>
 #include <linux/pci.h>
 #include <linux/printk.h>
+#include <linux/regulator/consumer.h>
 #include <linux/sizes.h>
 #include <linux/slab.h>
 #include <linux/string.h>
@@ -173,8 +174,79 @@ struct brcm_pcie {
 	int			gen;
 	u64			msi_target_addr;
 	struct brcm_msi		*msi;
+#ifdef CONFIG_REGULATOR
+	int			num_regs;
+	struct regulator	**regs;
+#endif
 };
 
+#ifdef CONFIG_REGULATOR
+static void brcm_pcie_regulator_enable(struct brcm_pcie *pcie)
+{
+	int i, ret;
+
+	for (i = 0; i < pcie->num_regs; i++) {
+		if (!pcie->regs[i])
+			continue;
+
+		ret = regulator_enable(pcie->regs[i]);
+		if (ret)
+			dev_err(pcie->dev, "Failed to enable regulator\n");
+	}
+}
+
+static void brcm_pcie_regulator_disable(struct brcm_pcie *pcie)
+{
+	int i, ret;
+
+	for (i = 0; i < pcie->num_regs; i++) {
+		if (!pcie->regs[i])
+			continue;
+
+		ret = regulator_disable(pcie->regs[i]);
+		if (ret)
+			dev_err(pcie->dev, "Failed to disable regulator\n");
+	}
+}
+
+static void brcm_pcie_regulator_init(struct brcm_pcie *pcie)
+{
+	struct device_node *np = pcie->dev->of_node;
+	struct device *dev = pcie->dev;
+	const char *name;
+	struct regulator *reg;
+	int i;
+
+	pcie->num_regs = of_property_count_strings(np, "supply-names");
+	if (pcie->num_regs <= 0) {
+		pcie->num_regs = 0;
+		return;
+	}
+
+	pcie->regs = devm_kcalloc(dev, pcie->num_regs, sizeof(pcie->regs[0]),
+				  GFP_KERNEL);
+	if (!pcie->regs) {
+		pcie->num_regs = 0;
+		return;
+	}
+
+	for (i = 0; i < pcie->num_regs; i++) {
+		if (of_property_read_string_index(np, "supply-names", i, &name))
+			continue;
+
+		reg = devm_regulator_get_optional(dev, name);
+		if (IS_ERR(reg))
+			continue;
+
+		pcie->regs[i] = reg;
+	}
+}
+#else
+static inline void brcm_pcie_regulator_enable(struct brcm_pcie *pcie) { }
+static inline void brcm_pcie_regulator_disable(struct brcm_pcie *pcie) { }
+static inline void brcm_pcie_regulator_init(struct brcm_pcie *pcie) { }
+#endif
+
 /*
  * This is to convert the size of the inbound "BAR" region to the
  * non-linear values of PCIE_X_MISC_RC_BAR[123]_CONFIG_LO.SIZE
@@ -898,6 +970,7 @@ static void __brcm_pcie_remove(struct brcm_pcie *pcie)
 {
 	brcm_msi_remove(pcie);
 	brcm_pcie_turn_off(pcie);
+	brcm_pcie_regulator_disable(pcie);
 	clk_disable_unprepare(pcie->clk);
 	clk_put(pcie->clk);
 }
@@ -955,6 +1028,9 @@ static int brcm_pcie_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	brcm_pcie_regulator_init(pcie);
+	brcm_pcie_regulator_enable(pcie);
+
 	ret = brcm_pcie_setup(pcie);
 	if (ret)
 		goto fail;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
