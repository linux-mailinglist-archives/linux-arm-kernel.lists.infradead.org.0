Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5954435C18
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 13:54:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pUZt2klQNNjPVYvh2g3LKrcJytelKa+ZBl03MX/d/hM=; b=GuNLpBZx8GYd+FnjibC7F1W6sF
	KrUCGRaivcX6v+RV5xATqX/vjKsu92w0oAiBNxwVWLEBBegw+/xLGfR8GbWd+Hsh/0nP7KCfiULnq
	9B5h8VZj5lSyWqZN+oytytJyd8WRE31Qe6CwJ9rGZrfhtey/j9DXRZSJPZ/9mz364wLSlRQ6WZYdJ
	/mapjYJ2OrvihyDPuXJ3PHEmzzlxvHNWN/JKr2pRO2Ws22Ut/3h4+OqQjt19osZX9PhsNOep7v/Wc
	UKuZVDuEzEQSbtfQ0nsbFrSgeVl/PSk6lWhF7gEm6txdBDHxTc0ZnJdKRsD1wsDauan5J+ZGjf1cP
	wSCz77Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUVA-0004Pu-H8; Wed, 05 Jun 2019 11:54:44 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUK2-0003R4-73
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 11:43:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id f9so4394707wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 04:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iMMvAXzGLsQwSezHyS9OpS4cWeW7/Qz0qZkMusu5eaE=;
 b=h1XpztGh1rk0rXLuD5MYwxVtzH3N1UDyjLBbtS4ducBzmGyojPxxM46YpojmUM/HcP
 fZlj39bH9NMaebJeM2+PDKOB+UxyOiu7NlbQQOLE86sB1KWTTjfHtVXHSaClP/Dducy1
 GYmC8SxDEVJG2TzwQ8TQEo+dyav4g7IgCZOhJ3m/v4MHD3tseeRGB9MV5xgYCLVlEArf
 y5Ce9Tdy2eEX3QhWkKEJ64J9xhoGdHd/oDZMCVUaUF8nqMOp+TMQYB4t3kMRk99mZn56
 pJ82sAPO+u0UiS3m3OYph7wc7b9RzDQze7m4+3Y5v2zHeRb4/c7E+Pp3M3r/qMQgPoDv
 lWOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iMMvAXzGLsQwSezHyS9OpS4cWeW7/Qz0qZkMusu5eaE=;
 b=uN8lZDCbt+/L40g92Qr/EFlN9Cc2FL1K6WkvMHqHZGJUt/G4QFtrBhI0zSYmcx5fE5
 Nz/+CRnnwFxTZTxU1c67blHyru8AZZokIA1CSGzBcMtDLUrg9d/7Zln6hiEKWRw38QrO
 w3MBhbTFSuaHI8Tw40xiidLwLJu8ZY/3gwrlP/GlO3Rio4mv/wmj/SDDfdHCxi+h1Rra
 PEBL2AmJw5yBqe1jaqvIfjxh0vKzONBoInh48RZ1GKVpG5iR1+ZbixR0jzlOQecwOCXR
 +0U78r/nzEStm5y0KkGbZyfy3IkEeW62Iv/aVVRO3Ak8J063QaeBUI66+rEK9NjmQf61
 7h4g==
X-Gm-Message-State: APjAAAXHoffgj3+SobHtKBldhP0blEMdizjCpKAOR7fNMJcJFu8sT98i
 hCqo4kjMwLvTgyLCuPGS95NUBP++8Jo=
X-Google-Smtp-Source: APXvYqzJN957k614VmbaR1feKSNlMhTSqVciMfkQKeWc6w9du/yl/bgu8f5E0NZBYsRP68Mz99AI0Q==
X-Received: by 2002:a5d:4909:: with SMTP id x9mr4610546wrq.226.1559734992754; 
 Wed, 05 Jun 2019 04:43:12 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id 34sm27718740wre.32.2019.06.05.04.43.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 04:43:12 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, andy.gross@linaro.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 linus.walleij@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH 6/8] usb: dwc3: qcom: Add support for booting with ACPI
Date: Wed,  5 Jun 2019 12:43:00 +0100
Message-Id: <20190605114302.22509-6-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190605114302.22509-1-lee.jones@linaro.org>
References: <20190605114302.22509-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_044314_398603_0BD7FD4C 
X-CRM114-Status: GOOD (  21.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-i2c@vger.kernel.org, jlhugo@gmail.com, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In Linux, the DWC3 core exists as its own independent platform device.
Thus when describing relationships in Device Tree, the current default
boot configuration table option, the DWC3 core often resides as a child
of the platform specific node.  Both of which are given their own
address space descriptions and the drivers can be mostly agnostic to
each other.

However, other Operating Systems have taken a more monolithic approach,
which is evident in the configuration ACPI tables for the Qualcomm
Snapdragon SDM850, where all DWC3 (core and platform) components are
described under a single IO memory region.

To ensure successful booting using the supplied ACPI tables, we need to
devise a way to chop up the address regions provided and subsequently
register the DWC3 core with the resultant information, which is
precisely what this patch aims to achieve.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/usb/dwc3/Kconfig     |   2 +-
 drivers/usb/dwc3/dwc3-qcom.c | 206 ++++++++++++++++++++++++++++++-----
 2 files changed, 179 insertions(+), 29 deletions(-)

diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
index 2b1494460d0c..6dab3fd1e233 100644
--- a/drivers/usb/dwc3/Kconfig
+++ b/drivers/usb/dwc3/Kconfig
@@ -116,7 +116,7 @@ config USB_DWC3_ST
 config USB_DWC3_QCOM
 	tristate "Qualcomm Platform"
 	depends on EXTCON && (ARCH_QCOM || COMPILE_TEST)
-	depends on OF
+	depends on (OF || ACPI)
 	default USB_DWC3
 	help
 	  Some Qualcomm SoCs use DesignWare Core IP for USB2/3
diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
index 184df4daa590..1e1f12b7991d 100644
--- a/drivers/usb/dwc3/dwc3-qcom.c
+++ b/drivers/usb/dwc3/dwc3-qcom.c
@@ -4,6 +4,7 @@
  * Inspired by dwc3-of-simple.c
  */
 
+#include <linux/acpi.h>
 #include <linux/io.h>
 #include <linux/of.h>
 #include <linux/clk.h>
@@ -38,6 +39,20 @@
 #define PWR_EVNT_LPM_IN_L2_MASK			BIT(4)
 #define PWR_EVNT_LPM_OUT_L2_MASK		BIT(5)
 
+#define SDM845_QSCRATCH_BASE_OFFSET		0xf8800
+#define SDM845_QSCRATCH_SIZE			0x400
+#define SDM845_DWC3_CORE_SIZE			0xcd00
+
+struct dwc3_acpi_pdata {
+	u32			qscratch_base_offset;
+	u32			qscratch_base_size;
+	u32			dwc3_core_base_size;
+	int			hs_phy_irq_index;
+	int			dp_hs_phy_irq_index;
+	int			dm_hs_phy_irq_index;
+	int			ss_phy_irq_index;
+};
+
 struct dwc3_qcom {
 	struct device		*dev;
 	void __iomem		*qscratch_base;
@@ -56,6 +71,8 @@ struct dwc3_qcom {
 	struct notifier_block	vbus_nb;
 	struct notifier_block	host_nb;
 
+	const struct dwc3_acpi_pdata *acpi_pdata;
+
 	enum usb_dr_mode	mode;
 	bool			is_suspended;
 	bool			pm_suspended;
@@ -300,12 +317,27 @@ static void dwc3_qcom_select_utmi_clk(struct dwc3_qcom *qcom)
 			  PIPE_UTMI_CLK_DIS);
 }
 
+static int dwc3_qcom_get_irq(struct platform_device *pdev,
+			     const char *name, int num)
+{
+	struct device_node *np = pdev->dev.of_node;
+	int ret;
+
+	if (np)
+		ret = platform_get_irq_byname(pdev, name);
+	else
+		ret = platform_get_irq(pdev, num);
+
+	return ret;
+}
+
 static int dwc3_qcom_setup_irq(struct platform_device *pdev)
 {
 	struct dwc3_qcom *qcom = platform_get_drvdata(pdev);
+	const struct dwc3_acpi_pdata *pdata = qcom->acpi_pdata;
 	int irq, ret;
-
-	irq = platform_get_irq_byname(pdev, "hs_phy_irq");
+	irq = dwc3_qcom_get_irq(pdev, "hs_phy_irq",
+				pdata ? pdata->hs_phy_irq_index : -1);
 	if (irq > 0) {
 		/* Keep wakeup interrupts disabled until suspend */
 		irq_set_status_flags(irq, IRQ_NOAUTOEN);
@@ -320,7 +352,8 @@ static int dwc3_qcom_setup_irq(struct platform_device *pdev)
 		qcom->hs_phy_irq = irq;
 	}
 
-	irq = platform_get_irq_byname(pdev, "dp_hs_phy_irq");
+	irq = dwc3_qcom_get_irq(pdev, "dp_hs_phy_irq",
+				pdata ? pdata->dp_hs_phy_irq_index : -1);
 	if (irq > 0) {
 		irq_set_status_flags(irq, IRQ_NOAUTOEN);
 		ret = devm_request_threaded_irq(qcom->dev, irq, NULL,
@@ -334,7 +367,8 @@ static int dwc3_qcom_setup_irq(struct platform_device *pdev)
 		qcom->dp_hs_phy_irq = irq;
 	}
 
-	irq = platform_get_irq_byname(pdev, "dm_hs_phy_irq");
+	irq = dwc3_qcom_get_irq(pdev, "dm_hs_phy_irq",
+				pdata ? pdata->dm_hs_phy_irq_index : -1);
 	if (irq > 0) {
 		irq_set_status_flags(irq, IRQ_NOAUTOEN);
 		ret = devm_request_threaded_irq(qcom->dev, irq, NULL,
@@ -348,7 +382,8 @@ static int dwc3_qcom_setup_irq(struct platform_device *pdev)
 		qcom->dm_hs_phy_irq = irq;
 	}
 
-	irq = platform_get_irq_byname(pdev, "ss_phy_irq");
+	irq = dwc3_qcom_get_irq(pdev, "ss_phy_irq",
+				pdata ? pdata->ss_phy_irq_index : -1);
 	if (irq > 0) {
 		irq_set_status_flags(irq, IRQ_NOAUTOEN);
 		ret = devm_request_threaded_irq(qcom->dev, irq, NULL,
@@ -371,11 +406,11 @@ static int dwc3_qcom_clk_init(struct dwc3_qcom *qcom, int count)
 	struct device_node	*np = dev->of_node;
 	int			i;
 
-	qcom->num_clocks = count;
-
-	if (!count)
+	if (!np || !count)
 		return 0;
 
+	qcom->num_clocks = count;
+
 	qcom->clks = devm_kcalloc(dev, qcom->num_clocks,
 				  sizeof(struct clk *), GFP_KERNEL);
 	if (!qcom->clks)
@@ -409,12 +444,103 @@ static int dwc3_qcom_clk_init(struct dwc3_qcom *qcom, int count)
 	return 0;
 }
 
-static int dwc3_qcom_probe(struct platform_device *pdev)
+static int dwc3_qcom_acpi_register_core(struct platform_device *pdev)
 {
+	struct dwc3_qcom 	*qcom = platform_get_drvdata(pdev);
+	struct device		*dev = &pdev->dev;
+	struct resource		*res, *child_res = NULL;
+	int			irq;
+	int			ret;
+
+	qcom->dwc3 = platform_device_alloc("dwc3", PLATFORM_DEVID_AUTO);
+	if (!qcom->dwc3)
+		return -ENOMEM;
+
+	qcom->dwc3->dev.parent = dev;
+	qcom->dwc3->dev.type = dev->type;
+	qcom->dwc3->dev.dma_mask = dev->dma_mask;
+	qcom->dwc3->dev.dma_parms = dev->dma_parms;
+	qcom->dwc3->dev.coherent_dma_mask = dev->coherent_dma_mask;
+
+	child_res = kcalloc(2, sizeof(*child_res), GFP_KERNEL);
+	if (!child_res)
+		return -ENOMEM;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res) {
+		dev_err(&pdev->dev, "failed to get memory resource\n");
+		ret = -ENODEV;
+		goto out;
+	}
+
+	child_res[0].flags = res->flags;
+	child_res[0].start = res->start;
+	child_res[0].end = child_res[0].start +
+		qcom->acpi_pdata->dwc3_core_base_size;
+
+	irq = platform_get_irq(pdev, 0);
+	child_res[1].flags = IORESOURCE_IRQ;
+	child_res[1].start = child_res[1].end = irq;
+
+	ret = platform_device_add_resources(qcom->dwc3, child_res, 2);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to add resources\n");
+		goto out;
+	}
+
+	ret = platform_device_add(qcom->dwc3);
+	if (ret)
+		dev_err(&pdev->dev, "failed to add device\n");
+
+out:
+	kfree(child_res);
+	return ret;
+}
+
+static int dwc3_qcom_of_register_core(struct platform_device *pdev)
+{
+	struct dwc3_qcom 	*qcom = platform_get_drvdata(pdev);
 	struct device_node	*np = pdev->dev.of_node, *dwc3_np;
 	struct device		*dev = &pdev->dev;
+	int			ret;
+
+	dwc3_np = of_get_child_by_name(np, "dwc3");
+	if (!dwc3_np) {
+		dev_err(dev, "failed to find dwc3 core child\n");
+		return -ENODEV;
+	}
+
+	ret = of_platform_populate(np, NULL, NULL, dev);
+	if (ret) {
+		dev_err(dev, "failed to register dwc3 core - %d\n", ret);
+		return ret;
+	}
+
+	qcom->dwc3 = of_find_device_by_node(dwc3_np);
+	if (!qcom->dwc3) {
+		dev_err(dev, "failed to get dwc3 platform device\n");
+		return -ENODEV;
+	}
+
+	return 0;
+}
+
+static const struct dwc3_acpi_pdata sdm845_acpi_pdata = {
+	.qscratch_base_offset = SDM845_QSCRATCH_BASE_OFFSET,
+	.qscratch_base_size = SDM845_QSCRATCH_SIZE,
+	.dwc3_core_base_size = SDM845_DWC3_CORE_SIZE,
+	.hs_phy_irq_index = 1,
+	.dp_hs_phy_irq_index = 4,
+	.dm_hs_phy_irq_index = 3,
+	.ss_phy_irq_index = 2
+};
+
+static int dwc3_qcom_probe(struct platform_device *pdev)
+{
+	struct device_node	*np = pdev->dev.of_node;
+	struct device		*dev = &pdev->dev;
 	struct dwc3_qcom	*qcom;
-	struct resource		*res;
+	struct resource		*res, *parent_res = NULL;
 	int			ret, i;
 	bool			ignore_pipe_clk;
 
@@ -425,6 +551,14 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, qcom);
 	qcom->dev = &pdev->dev;
 
+	if (ACPI_HANDLE(dev)) {
+		qcom->acpi_pdata = acpi_device_get_match_data(dev);
+		if (!qcom->acpi_pdata) {
+			dev_err(&pdev->dev, "no supporting ACPI device data\n");
+			return -EINVAL;
+		}
+	}
+
 	qcom->resets = devm_reset_control_array_get_optional_exclusive(dev);
 	if (IS_ERR(qcom->resets)) {
 		ret = PTR_ERR(qcom->resets);
@@ -454,7 +588,21 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
 	}
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	qcom->qscratch_base = devm_ioremap_resource(dev, res);
+
+	if (np) {
+		parent_res = res;
+	} else {
+		parent_res = kmemdup(res, sizeof(struct resource), GFP_KERNEL);
+		if (!parent_res)
+			return -ENOMEM;
+
+		parent_res->start = res->start +
+			qcom->acpi_pdata->qscratch_base_offset;
+		parent_res->end = parent_res->start +
+			qcom->acpi_pdata->qscratch_base_size;
+	}
+
+	qcom->qscratch_base = devm_ioremap_resource(dev, parent_res);
 	if (IS_ERR(qcom->qscratch_base)) {
 		dev_err(dev, "failed to map qscratch, err=%d\n", ret);
 		ret = PTR_ERR(qcom->qscratch_base);
@@ -462,13 +610,8 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
 	}
 
 	ret = dwc3_qcom_setup_irq(pdev);
-	if (ret)
-		goto clk_disable;
-
-	dwc3_np = of_get_child_by_name(np, "dwc3");
-	if (!dwc3_np) {
-		dev_err(dev, "failed to find dwc3 core child\n");
-		ret = -ENODEV;
+	if (ret) {
+		dev_err(dev, "failed to setup IRQs, err=%d\n", ret);
 		goto clk_disable;
 	}
 
@@ -481,16 +624,13 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
 	if (ignore_pipe_clk)
 		dwc3_qcom_select_utmi_clk(qcom);
 
-	ret = of_platform_populate(np, NULL, NULL, dev);
-	if (ret) {
-		dev_err(dev, "failed to register dwc3 core - %d\n", ret);
-		goto clk_disable;
-	}
+	if (np)
+		ret = dwc3_qcom_of_register_core(pdev);
+	else
+		ret = dwc3_qcom_acpi_register_core(pdev);
 
-	qcom->dwc3 = of_find_device_by_node(dwc3_np);
-	if (!qcom->dwc3) {
-		dev_err(&pdev->dev, "failed to get dwc3 platform device\n");
-		ret = -ENODEV;
+	if (ret) {
+		dev_err(dev, "failed to register DWC3 Core, err=%d\n", ret);
 		goto depopulate;
 	}
 
@@ -514,7 +654,10 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
 	return 0;
 
 depopulate:
-	of_platform_depopulate(&pdev->dev);
+	if (np)
+		of_platform_depopulate(&pdev->dev);
+	else
+		platform_device_put(pdev);
 clk_disable:
 	for (i = qcom->num_clocks - 1; i >= 0; i--) {
 		clk_disable_unprepare(qcom->clks[i]);
@@ -601,6 +744,12 @@ static const struct of_device_id dwc3_qcom_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, dwc3_qcom_of_match);
 
+static const struct acpi_device_id dwc3_qcom_acpi_match[] = {
+	{ "QCOM2430", (unsigned long)&sdm845_acpi_pdata },
+	{ },
+};
+MODULE_DEVICE_TABLE(acpi, dwc3_qcom_acpi_match);
+
 static struct platform_driver dwc3_qcom_driver = {
 	.probe		= dwc3_qcom_probe,
 	.remove		= dwc3_qcom_remove,
@@ -608,6 +757,7 @@ static struct platform_driver dwc3_qcom_driver = {
 		.name	= "dwc3-qcom",
 		.pm	= &dwc3_qcom_dev_pm_ops,
 		.of_match_table	= dwc3_qcom_of_match,
+		.acpi_match_table = ACPI_PTR(dwc3_qcom_acpi_match),
 	},
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
