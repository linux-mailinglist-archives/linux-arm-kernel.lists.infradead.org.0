Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F461ADD01
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 14:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6EQwotFYRCJwEZylSgmlYjImqugD2hRWZvoklZiXjX4=; b=lSV9Y2f8BzwxT8
	gn/KRuKuCGrr907FiH9cXLnTgjeGVgqZlANmlduVXhd46zqbxZ+KUgTK/Tv65EUov9nxNUek6N5oA
	4fDl01MOZ1/Rx3flAy36f3yPet98XkoOzCM3cGymvS/phrASRLO/RZDWPg9lJ6ICaJQHul6x73jpv
	iJdyZ3muRiyGRgoV4NxeiDZdemcoVbeFyGN9ADmqlzlhj+605q7xkVH28XKYCYvbtY+xxC1nxgiG8
	2win+chotVlfLQrhTUa/KfgwC87Nt2oQ4P4cMnlQ5N6iQo7gmWXyRnVGxd3CquPkkIOQdRtuDyKcf
	MNZ2rxaOywysIwKKWeeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPPrm-00036g-IO; Fri, 17 Apr 2020 12:13:06 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPPre-00036J-NN
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 12:13:00 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03HCBtKT019906; Fri, 17 Apr 2020 14:12:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Zi4SisZc6FbWXefWeIc3r0RkxSLPr1E5Mixl1wY/6PA=;
 b=xiQKSdOlH+AjgjhNE8ySveLSrC8OELwZvMSkj1mW7S2RXGnb1m7Yh5fFWcNDvZcKmAow
 zf55Y7nPpJGSQVhz7zbcJW3In8I0gZm+qrc1f7DZoR7CJCYbfPDt/GBj2yCdZbEcX1AT
 muse+PaOtVzAl9eJyMbzfz4kOg8Vu5VwIcxY6qvoaZrislI8j/TqDYJXvWHzeY6uHIbi
 SRDqgKYm5/ra17f4L3K8TqkvmTCthlDEy+fu6G3ofz4t7nQcnyRng45skGrVs9HOlbia
 Ijfl5DD13Rj8atERPO6TXmDmXDOOIQ2RK5MV9XMYKILVS3uvOyXk+bAFNzuaGv5B1xfo Fg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30dn761cja-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 17 Apr 2020 14:12:54 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B27BB10002A;
 Fri, 17 Apr 2020 14:12:53 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A45532B0FC9;
 Fri, 17 Apr 2020 14:12:53 +0200 (CEST)
Received: from localhost (10.75.127.49) by SFHDAG6NODE3.st.com (10.75.127.18)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 17 Apr 2020 14:12:52 +0200
From: <patrice.chotard@st.com>
To: Mark Brown <broonie@kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>
Subject: spi: stm32-qspi: Add pm_runtime support
Date: Fri, 17 Apr 2020 14:12:41 +0200
Message-ID: <20200417121241.6473-1-patrice.chotard@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG4NODE3.st.com (10.75.127.12) To SFHDAG6NODE3.st.com
 (10.75.127.18)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-17_03:2020-04-17,
 2020-04-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_051259_108743_A54785BB 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christophe Kerello <christophe.kerello@st.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-kernel@vger.kernel.org,
 Patrice Chotard <patrice.chotard@st.com>, mcoquelin.stm32@gmail.com,
 linux-spi@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Patrice Chotard <patrice.chotard@st.com>

By default, STM32_AUTOSUSPEND_DELAY is set to -1 which has for
effect to prevent runtime suspends.
Runtime suspends can be activated by setting autosuspend_delay_ms using
sysfs entry :
echo {delay_in_ms} > /sys/devices/platform/soc/58003000.spi/power/autosusp
end_delay_ms)

Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 drivers/spi/spi-stm32-qspi.c | 57 +++++++++++++++++++++++++++++++++---
 1 file changed, 53 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-stm32-qspi.c b/drivers/spi/spi-stm32-qspi.c
index d066f5144c3e..2f2ea2c42d6e 100644
--- a/drivers/spi/spi-stm32-qspi.c
+++ b/drivers/spi/spi-stm32-qspi.c
@@ -16,6 +16,7 @@
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/pinctrl/consumer.h>
+#include <linux/pm_runtime.h>
 #include <linux/platform_device.h>
 #include <linux/reset.h>
 #include <linux/sizes.h>
@@ -87,6 +88,7 @@
 #define STM32_BUSY_TIMEOUT_US 100000
 #define STM32_ABT_TIMEOUT_US 100000
 #define STM32_COMP_TIMEOUT_MS 1000
+#define STM32_AUTOSUSPEND_DELAY -1
 
 struct stm32_qspi_flash {
 	struct stm32_qspi *qspi;
@@ -431,10 +433,17 @@ static int stm32_qspi_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
 	struct stm32_qspi *qspi = spi_controller_get_devdata(mem->spi->master);
 	int ret;
 
+	ret = pm_runtime_get_sync(qspi->dev);
+	if (ret < 0)
+		return ret;
+
 	mutex_lock(&qspi->lock);
 	ret = stm32_qspi_send(mem, op);
 	mutex_unlock(&qspi->lock);
 
+	pm_runtime_mark_last_busy(qspi->dev);
+	pm_runtime_put_autosuspend(qspi->dev);
+
 	return ret;
 }
 
@@ -444,6 +453,7 @@ static int stm32_qspi_setup(struct spi_device *spi)
 	struct stm32_qspi *qspi = spi_controller_get_devdata(ctrl);
 	struct stm32_qspi_flash *flash;
 	u32 presc;
+	int ret;
 
 	if (ctrl->busy)
 		return -EBUSY;
@@ -451,6 +461,10 @@ static int stm32_qspi_setup(struct spi_device *spi)
 	if (!spi->max_speed_hz)
 		return -EINVAL;
 
+	ret = pm_runtime_get_sync(qspi->dev);
+	if (ret < 0)
+		return ret;
+
 	presc = DIV_ROUND_UP(qspi->clk_rate, spi->max_speed_hz) - 1;
 
 	flash = &qspi->flash[spi->chip_select];
@@ -467,6 +481,9 @@ static int stm32_qspi_setup(struct spi_device *spi)
 	writel_relaxed(qspi->dcr_reg, qspi->io_base + QSPI_DCR);
 	mutex_unlock(&qspi->lock);
 
+	pm_runtime_mark_last_busy(qspi->dev);
+	pm_runtime_put_autosuspend(qspi->dev);
+
 	return 0;
 }
 
@@ -643,9 +660,20 @@ static int stm32_qspi_probe(struct platform_device *pdev)
 	ctrl->num_chipselect = STM32_QSPI_MAX_NORCHIP;
 	ctrl->dev.of_node = dev->of_node;
 
+	pm_runtime_set_autosuspend_delay(dev, STM32_AUTOSUSPEND_DELAY);
+	pm_runtime_use_autosuspend(dev);
+	pm_runtime_set_active(dev);
+	pm_runtime_enable(dev);
+	pm_runtime_get_noresume(dev);
+
 	ret = devm_spi_register_master(dev, ctrl);
-	if (!ret)
-		return 0;
+	if (ret)
+		goto err_qspi_release;
+
+	pm_runtime_mark_last_busy(dev);
+	pm_runtime_put_autosuspend(dev);
+
+	return 0;
 
 err_qspi_release:
 	stm32_qspi_release(qspi);
@@ -660,14 +688,28 @@ static int stm32_qspi_remove(struct platform_device *pdev)
 	struct stm32_qspi *qspi = platform_get_drvdata(pdev);
 
 	stm32_qspi_release(qspi);
+
 	return 0;
 }
 
-static int __maybe_unused stm32_qspi_suspend(struct device *dev)
+static int __maybe_unused stm32_qspi_runtime_suspend(struct device *dev)
 {
 	struct stm32_qspi *qspi = dev_get_drvdata(dev);
 
 	clk_disable_unprepare(qspi->clk);
+
+	return 0;
+}
+
+static int __maybe_unused stm32_qspi_runtime_resume(struct device *dev)
+{
+	struct stm32_qspi *qspi = dev_get_drvdata(dev);
+
+	return clk_prepare_enable(qspi->clk);
+}
+
+static int __maybe_unused stm32_qspi_suspend(struct device *dev)
+{
 	pinctrl_pm_select_sleep_state(dev);
 
 	return 0;
@@ -683,10 +725,17 @@ static int __maybe_unused stm32_qspi_resume(struct device *dev)
 	writel_relaxed(qspi->cr_reg, qspi->io_base + QSPI_CR);
 	writel_relaxed(qspi->dcr_reg, qspi->io_base + QSPI_DCR);
 
+	pm_runtime_mark_last_busy(qspi->dev);
+	pm_runtime_put_autosuspend(qspi->dev);
+
 	return 0;
 }
 
-static SIMPLE_DEV_PM_OPS(stm32_qspi_pm_ops, stm32_qspi_suspend, stm32_qspi_resume);
+static const struct dev_pm_ops stm32_qspi_pm_ops = {
+	SET_RUNTIME_PM_OPS(stm32_qspi_runtime_suspend,
+			   stm32_qspi_runtime_resume, NULL)
+	SET_SYSTEM_SLEEP_PM_OPS(stm32_qspi_suspend, stm32_qspi_resume)
+};
 
 static const struct of_device_id stm32_qspi_match[] = {
 	{.compatible = "st,stm32f469-qspi"},
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
