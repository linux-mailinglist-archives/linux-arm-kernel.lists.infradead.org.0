Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9294110F371
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 00:32:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=az7mOaM6pcNbKLJHkJu2MY+timoOICF+lC5ZaTEQx/4=; b=iYfPf/g4l/UJDKrU1OeVnpHDec
	+BdP7ff5RukcEa5SpErD2ih2W953lpYjTqv6/+h5S8gk/7/p5mjhjO0f0CU79dwC/KxFuce0ukUX4
	YNe80W5uH6bOB88Wp8Q38y6ca1hwi9/aGJq9o1at2Ira3LrjbzQ8aB+BBjMQD5XqACef32i50oypo
	i7sHpPwAAFG+5HXMSMCTZkS2aKz4XJhVrY2xdq6ZBqjO0gjfYuYVG4vlGITR8VJTCExPkFdhooG+X
	VjlXj8gHhpUrv2Tcydb7844UdowqUGarJdKpJ2z5lk7QLdBvKBpIUo74Eo9vcMtCefNx2QIEF3zp3
	CfZZwG3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibvB1-0003W7-Rk; Mon, 02 Dec 2019 23:32:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibvAe-0003HD-2F
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 23:32:02 +0000
Received: by mail-wr1-x442.google.com with SMTP id z7so1326430wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 15:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7bA0wr97LqwcBpFMQg40IolNNRZsB70r6ecQBvUWz1c=;
 b=aLnyZtqYf17pz8HbugUJpJa0L3D9VwE0nvQbaIz5ANGqMnOFLZxUHONLWYv/c0w/Dt
 2X3WKN30YICBbTmxYd8GUMyns/H5d0tCsEcHHP6vX9P3/qWfi6jbLyzPO8Ceo4bRNArL
 edLkMlyaB4kIoFXoZIagGYe1HcLnGTJf4PEsg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7bA0wr97LqwcBpFMQg40IolNNRZsB70r6ecQBvUWz1c=;
 b=NU94vaDmI0NfgUrosuuQj7T+RCNAM3OdKeqgSiAgOdfHpKXnlLWSG7BAvt2drYRsVn
 83DuzK9o5YNa5cYndbbObtQksHGNhxuXFIQiW+enxRFqa459ZrPo1PywH7a9rCl5ZrCR
 8BJ8tGycQPeOYI5m+Uai3FfcIdKZ1xgQsLWgO64iVJnYcLt/8EVN/qEFqZ30S2AtUzSd
 3u8MW6Wy4MgK3MePR7K/AikbxtxZtjusbZ5grCzdGpDEqek4e2h4B/UC6SX128Q8a369
 gR1goN7xEodhzKKpe8XE/QOknYRFf9vN+sQZzg7mJF6j/BO56JatpJ29laBzUPMMcaZa
 gzsQ==
X-Gm-Message-State: APjAAAVsSbBbEpdaBs3gfbaMgcsZWP5CR9qIHokklugE/WLLpa/+eOZ5
 f9zO0JX2r6yWazMYIFago18EAQ==
X-Google-Smtp-Source: APXvYqwxZlLuwGvV4wau3iD7S5xV/NUtSFw2dWxv3bETZRFb4MtmMDgHFz6WBI4pGq/5uT8CPO0WIg==
X-Received: by 2002:adf:ef4e:: with SMTP id c14mr1763245wrp.142.1575329518559; 
 Mon, 02 Dec 2019 15:31:58 -0800 (PST)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id c72sm1066197wmd.11.2019.12.02.15.31.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 15:31:57 -0800 (PST)
From: Ray Jui <ray.jui@broadcom.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/2] soc: bcm: iproc: Add Broadcom iProc IDM driver
Date: Mon,  2 Dec 2019 15:31:27 -0800
Message-Id: <20191202233127.31160-3-ray.jui@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191202233127.31160-1-ray.jui@broadcom.com>
References: <20191202233127.31160-1-ray.jui@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_153200_373266_AB620ACE 
X-CRM114-Status: GOOD (  21.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Ray Jui <ray.jui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add Broadcom iProc IDM driver that controls that IDM devices available
on various iProc based SoCs for bus transaction timeout monitoring and
error logging.

Signed-off-by: Ray Jui <ray.jui@broadcom.com>
Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
---
 drivers/soc/bcm/Kconfig           |  10 +
 drivers/soc/bcm/Makefile          |   1 +
 drivers/soc/bcm/iproc/Kconfig     |   6 +
 drivers/soc/bcm/iproc/Makefile    |   1 +
 drivers/soc/bcm/iproc/iproc-idm.c | 390 ++++++++++++++++++++++++++++++
 5 files changed, 408 insertions(+)
 create mode 100644 drivers/soc/bcm/iproc/Kconfig
 create mode 100644 drivers/soc/bcm/iproc/Makefile
 create mode 100644 drivers/soc/bcm/iproc/iproc-idm.c

diff --git a/drivers/soc/bcm/Kconfig b/drivers/soc/bcm/Kconfig
index 648e32693b7e..30cf0c390c4e 100644
--- a/drivers/soc/bcm/Kconfig
+++ b/drivers/soc/bcm/Kconfig
@@ -33,6 +33,16 @@ config SOC_BRCMSTB
 
 	  If unsure, say N.
 
+config SOC_BRCM_IPROC
+	bool "Broadcom iProc SoC drivers"
+	depends on ARCH_BCM_IPROC || COMPILE_TEST
+	default ARCH_BCM_IPROC
+	help
+	  Enable SoC drivers for Broadcom iProc based chipsets
+
+	  If unsure, say N.
+
 source "drivers/soc/bcm/brcmstb/Kconfig"
+source "drivers/soc/bcm/iproc/Kconfig"
 
 endmenu
diff --git a/drivers/soc/bcm/Makefile b/drivers/soc/bcm/Makefile
index d92268a829a9..9db23ab5dacc 100644
--- a/drivers/soc/bcm/Makefile
+++ b/drivers/soc/bcm/Makefile
@@ -2,3 +2,4 @@
 obj-$(CONFIG_BCM2835_POWER)	+= bcm2835-power.o
 obj-$(CONFIG_RASPBERRYPI_POWER)	+= raspberrypi-power.o
 obj-$(CONFIG_SOC_BRCMSTB)	+= brcmstb/
+obj-$(CONFIG_SOC_BRCM_IPROC)	+= iproc/
diff --git a/drivers/soc/bcm/iproc/Kconfig b/drivers/soc/bcm/iproc/Kconfig
new file mode 100644
index 000000000000..205e0ebbf99c
--- /dev/null
+++ b/drivers/soc/bcm/iproc/Kconfig
@@ -0,0 +1,6 @@
+config IPROC_IDM
+	bool "Broadcom iProc IDM driver"
+	depends on (ARCH_BCM_IPROC || COMPILE_TEST) && OF
+	default ARCH_BCM_IPROC
+	help
+	  Enables support for iProc Interconnect and Device Management (IDM) control and monitoring
diff --git a/drivers/soc/bcm/iproc/Makefile b/drivers/soc/bcm/iproc/Makefile
new file mode 100644
index 000000000000..de54aef66097
--- /dev/null
+++ b/drivers/soc/bcm/iproc/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_IPROC_IDM)	+= iproc-idm.o
diff --git a/drivers/soc/bcm/iproc/iproc-idm.c b/drivers/soc/bcm/iproc/iproc-idm.c
new file mode 100644
index 000000000000..5f3b04dbe80a
--- /dev/null
+++ b/drivers/soc/bcm/iproc/iproc-idm.c
@@ -0,0 +1,390 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Broadcom
+ */
+
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <linux/types.h>
+
+#define IDM_CTRL_OFFSET              0x000
+#define IDM_CTRL_TIMEOUT_ENABLE      BIT(9)
+#define IDM_CTRL_TIMEOUT_EXP_SHIFT   4
+#define IDM_CTRL_TIMEOUT_EXP_MASK    (0x1f << 4)
+#define IDM_CTRL_TIMEOUT_IRQ         BIT(3)
+#define IDM_CTRL_TIMEOUT_RESET       BIT(2)
+#define IDM_CTRL_BUS_ERR_IRQ         BIT(1)
+#define IDM_CTRL_BUS_ERR_RESET       BIT(0)
+
+#define IDM_COMP_OFFSET              0x004
+#define IDM_COMP_OVERFLOW            BIT(1)
+#define IDM_COMP_ERR                 BIT(0)
+
+#define IDM_STATUS_OFFSET            0x008
+#define IDM_STATUS_OVERFLOW          BIT(2)
+#define IDM_STATUS_CAUSE_MASK        0x03
+
+#define IDM_ADDR_LSB_OFFSET          0x00c
+#define IDM_ADDR_MSB_OFFSET          0x010
+#define IDM_ID_OFFSET                0x014
+#define IDM_FLAGS_OFFSET             0x01c
+
+#define IDM_ISR_STATUS_OFFSET        0x100
+#define IDM_ISR_STATUS_TIMEOUT       BIT(1)
+#define IDM_ISR_STATUS_ERR_LOG       BIT(0)
+
+#define ELOG_SIG_OFFSET              0x00
+#define ELOG_SIG_VAL                 0x49444d45
+
+#define ELOG_CUR_OFFSET              0x04
+#define ELOG_LEN_OFFSET              0x08
+#define ELOG_HEADER_LEN              12
+#define ELOG_EVENT_LEN               64
+
+#define ELOG_IDM_NAME_OFFSET         0x00
+#define ELOG_IDM_ADDR_LSB_OFFSET     0x10
+#define ELOG_IDM_ADDR_MSB_OFFSET     0x14
+#define ELOG_IDM_ID_OFFSET           0x18
+#define ELOG_IDM_CAUSE_OFFSET        0x20
+#define ELOG_IDM_FLAG_OFFSET         0x28
+
+#define ELOG_IDM_MAX_NAME_LEN        16
+
+#define ELOG_IDM_COMPAT_STR          "brcm,iproc-idm-elog"
+
+struct iproc_idm_elog {
+	struct device *dev;
+	void __iomem *buf;
+	u32 len;
+	spinlock_t lock;
+
+	int (*idm_event_log)(struct iproc_idm_elog *elog, const char *name,
+			     u32 cause, u32 addr_lsb, u32 addr_msb, u32 id,
+			     u32 flag);
+};
+
+struct iproc_idm {
+	struct device *dev;
+	struct iproc_idm_elog *elog;
+	void __iomem *base;
+	const char *name;
+	bool no_panic;
+};
+
+static ssize_t no_panic_store(struct device *dev, struct device_attribute *attr,
+			      const char *buf, size_t count)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct iproc_idm *idm = platform_get_drvdata(pdev);
+	unsigned int no_panic;
+	int ret;
+
+	ret = kstrtouint(buf, 0, &no_panic);
+	if (ret)
+		return ret;
+
+	idm->no_panic = no_panic ? true : false;
+
+	return count;
+}
+
+static ssize_t no_panic_show(struct device *dev, struct device_attribute *attr,
+			     char *buf)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct iproc_idm *idm = platform_get_drvdata(pdev);
+
+	return sprintf(buf, "%u\n", idm->no_panic ? 1 : 0);
+}
+
+static DEVICE_ATTR_RW(no_panic);
+
+static int iproc_idm_event_log(struct iproc_idm_elog *elog, const char *name,
+			       u32 cause, u32 addr_lsb, u32 addr_msb, u32 id,
+			       u32 flag)
+{
+	u32 val, cur, len;
+	void *event;
+	unsigned long flags;
+
+	spin_lock_irqsave(&elog->lock, flags);
+
+	/*
+	 * Check if signature is already there. If not, clear and restart
+	 * everything
+	 */
+	val = readl(elog->buf + ELOG_SIG_OFFSET);
+	if (val != ELOG_SIG_VAL) {
+		memset_io(elog->buf, 0, elog->len);
+		writel(ELOG_SIG_VAL, elog->buf + ELOG_SIG_OFFSET);
+		writel(ELOG_HEADER_LEN, elog->buf + ELOG_CUR_OFFSET);
+		writel(0, elog->buf + ELOG_LEN_OFFSET);
+	}
+
+	/* determine offset and length */
+	cur = readl(elog->buf + ELOG_CUR_OFFSET);
+	len = readl(elog->buf + ELOG_LEN_OFFSET);
+
+	/*
+	 * Based on the design and how kernel panic is triggered after an IDM
+	 * event, it's practically impossible for the storage to be full. In
+	 * case if it does happen, we can simply bail out since it's likely
+	 * the same category of events that have already been logged
+	 */
+	if (cur + ELOG_EVENT_LEN > elog->len) {
+		dev_warn(elog->dev, "IDM ELOG buffer is now full\n");
+		spin_unlock_irqrestore(&elog->lock, flags);
+		return -ENOMEM;
+	}
+
+	/* now log the IDM event */
+	event = elog->buf + cur;
+	memcpy_toio(event + ELOG_IDM_NAME_OFFSET, name, ELOG_IDM_MAX_NAME_LEN);
+	writel(addr_lsb, event + ELOG_IDM_ADDR_LSB_OFFSET);
+	writel(addr_msb, event + ELOG_IDM_ADDR_MSB_OFFSET);
+	writel(id, event + ELOG_IDM_ID_OFFSET);
+	writel(cause, event + ELOG_IDM_CAUSE_OFFSET);
+	writel(flag, event + ELOG_IDM_FLAG_OFFSET);
+
+	cur += ELOG_EVENT_LEN;
+	len += ELOG_EVENT_LEN;
+
+	/* update offset and length */
+	writel(cur, elog->buf + ELOG_CUR_OFFSET);
+	writel(len, elog->buf + ELOG_LEN_OFFSET);
+
+	spin_unlock_irqrestore(&elog->lock, flags);
+
+	return 0;
+}
+
+static irqreturn_t iproc_idm_irq_handler(int irq, void *data)
+{
+	struct iproc_idm *idm = data;
+	struct device *dev = idm->dev;
+	const char *name = idm->name;
+	u32 isr_status, log_status, lsb, msb, id, flag;
+	struct iproc_idm_elog *elog = idm->elog;
+
+	isr_status = readl(idm->base + IDM_ISR_STATUS_OFFSET);
+	log_status = readl(idm->base + IDM_STATUS_OFFSET);
+
+	/* quit if the interrupt is not for IDM */
+	if (!isr_status)
+		return IRQ_NONE;
+
+	/* ACK the interrupt */
+	if (log_status & IDM_STATUS_OVERFLOW)
+		writel(IDM_COMP_OVERFLOW, idm->base + IDM_COMP_OFFSET);
+
+	if (log_status & IDM_STATUS_CAUSE_MASK)
+		writel(IDM_COMP_ERR, idm->base + IDM_COMP_OFFSET);
+
+	/* dump critical IDM information */
+	if (isr_status & IDM_ISR_STATUS_TIMEOUT)
+		dev_err(dev, "[%s] IDM timeout\n", name);
+
+	if (isr_status & IDM_ISR_STATUS_ERR_LOG)
+		dev_err(dev, "[%s] IDM error log\n", name);
+
+	lsb = readl(idm->base + IDM_ADDR_LSB_OFFSET);
+	msb = readl(idm->base + IDM_ADDR_MSB_OFFSET);
+	id = readl(idm->base + IDM_ID_OFFSET);
+	flag = readl(idm->base + IDM_FLAGS_OFFSET);
+
+	dev_err(dev, "Cause: 0x%08x; Address LSB: 0x%08x; Address MSB: 0x%08x; Master ID: 0x%08x; Flag: 0x%08x\n",
+		log_status, lsb, msb, id, flag);
+
+	/* if elog service is available, log the event */
+	if (elog) {
+		elog->idm_event_log(elog, name, log_status, lsb, msb, id, flag);
+		dev_err(dev, "IDM event logged\n\n");
+	}
+
+	/* IDM timeout is fatal and non-recoverable. Panic the kernel */
+	if (!idm->no_panic)
+		panic("Fatal bus error detected by IDM");
+
+	return IRQ_HANDLED;
+}
+
+static int iproc_idm_dev_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct platform_device *elog_pdev;
+	struct device_node *elog_np;
+	struct iproc_idm *idm;
+	const char *name;
+	int ret;
+	u32 val;
+
+	idm = devm_kzalloc(dev, sizeof(*idm), GFP_KERNEL);
+	if (!idm)
+		return -ENOMEM;
+
+	ret = of_property_read_string(np, "brcm,iproc-idm-bus", &name);
+	if (ret) {
+		dev_err(dev, "Unable to parse IDM bus name\n");
+		return ret;
+	}
+	idm->name = name;
+
+	platform_set_drvdata(pdev, idm);
+	idm->dev = dev;
+
+	idm->base = of_iomap(np, 0);
+	if (!idm->base) {
+		dev_err(dev, "Unable to map I/O\n");
+		ret = -ENOMEM;
+		goto err_exit;
+	}
+
+	ret = of_irq_get(np, 0);
+	if (ret <= 0) {
+		dev_err(dev, "Unable to find IRQ number. ret=%d\n", ret);
+		goto err_iounmap;
+	}
+
+	ret = devm_request_irq(dev, ret, iproc_idm_irq_handler, IRQF_SHARED,
+			       idm->name, idm);
+	if (ret < 0) {
+		dev_err(dev, "Unable to request irq. ret=%d\n", ret);
+		goto err_iounmap;
+	}
+
+	/*
+	 * ELOG phandle is optional. If ELOG phandle is specified, it indicates
+	 * ELOG logging needs to be enabled
+	 */
+	elog_np = of_parse_phandle(dev->of_node, ELOG_IDM_COMPAT_STR, 0);
+	if (elog_np) {
+		elog_pdev = of_find_device_by_node(elog_np);
+		if (!elog_pdev) {
+			dev_err(dev, "Unable to find IDM ELOG device\n");
+			ret = -ENODEV;
+			goto err_iounmap;
+		}
+
+		idm->elog = platform_get_drvdata(elog_pdev);
+		if (!idm->elog) {
+			dev_err(dev, "Unable to get IDM ELOG driver data\n");
+			ret = -EINVAL;
+			goto err_iounmap;
+		}
+	}
+
+	/* enable IDM timeout and its interrupt */
+	val = readl(idm->base + IDM_CTRL_OFFSET);
+	val |= IDM_CTRL_TIMEOUT_EXP_MASK | IDM_CTRL_TIMEOUT_ENABLE |
+	       IDM_CTRL_TIMEOUT_IRQ;
+	writel(val, idm->base + IDM_CTRL_OFFSET);
+
+	ret = device_create_file(dev, &dev_attr_no_panic);
+	if (ret < 0)
+		goto err_iounmap;
+
+	of_node_put(np);
+
+	pr_info("iProc IDM device %s registered\n", idm->name);
+
+	return 0;
+
+err_iounmap:
+	iounmap(idm->base);
+
+err_exit:
+	of_node_put(np);
+	return ret;
+}
+
+static int iproc_idm_elog_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct iproc_idm_elog *elog;
+	struct resource *res;
+	u32 val;
+
+	elog = devm_kzalloc(dev, sizeof(*elog), GFP_KERNEL);
+	if (!elog)
+		return -ENOMEM;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	elog->buf = (void __iomem *)devm_memremap(dev, res->start,
+						  resource_size(res),
+						  MEMREMAP_WB);
+	if (IS_ERR(elog->buf)) {
+		dev_err(dev, "Unable to map ELOG buffer\n");
+		return PTR_ERR(elog->buf);
+	}
+
+	elog->dev = dev;
+	elog->len = resource_size(res);
+	elog->idm_event_log = iproc_idm_event_log;
+
+	/*
+	 * Check if signature is already there. Only clear memory if there's
+	 * no signature detected
+	 */
+	val = readl(elog->buf + ELOG_SIG_OFFSET);
+	if (val != ELOG_SIG_VAL)
+		memset_io(elog->buf, 0, elog->len);
+
+	spin_lock_init(&elog->lock);
+	platform_set_drvdata(pdev, elog);
+
+	dev_info(dev, "iProc IDM ELOG registered\n");
+
+	return 0;
+}
+
+static int iproc_idm_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	int ret;
+
+	if (of_device_is_compatible(np, ELOG_IDM_COMPAT_STR))
+		ret = iproc_idm_elog_probe(pdev);
+	else
+		ret = iproc_idm_dev_probe(pdev);
+
+	return ret;
+}
+
+static const struct of_device_id iproc_idm_of_match[] = {
+	{ .compatible = "brcm,iproc-idm", },
+	{ .compatible = ELOG_IDM_COMPAT_STR, },
+	{ }
+};
+
+static struct platform_driver iproc_idm_driver = {
+	.probe = iproc_idm_probe,
+	.driver = {
+		.name = "iproc-idm",
+		.of_match_table = of_match_ptr(iproc_idm_of_match),
+	},
+};
+
+static int __init iproc_idm_init(void)
+{
+	return platform_driver_register(&iproc_idm_driver);
+}
+arch_initcall(iproc_idm_init);
+
+static void __exit iproc_idm_exit(void)
+{
+	platform_driver_unregister(&iproc_idm_driver);
+}
+module_exit(iproc_idm_exit);
+
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Broadcom");
+MODULE_DESCRIPTION("iProc IDM driver");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
