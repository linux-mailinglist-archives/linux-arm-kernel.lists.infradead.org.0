Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE4311F34C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 18:58:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cZDsUgFvdd92f9Ws9JL/JwZJvV+Ov8ZzOk4LI9eFs/k=; b=YlJMwt75fnSxe4FBdOKfWdI4Gh
	38FxvY8jZBFh2xRtYR/97z6KJQAy1coc+Y0BJA+wBrmziotwyrkoMAqiA+50qoP2Lbprd3irAN3Ty
	Q/jSZoHvj4f6Ec8Mhb1wS5J9UTyyjHmnbaJq2EVA07yzQeRil33kFdMwrXNCNU9Rn+zuzK//t1Q7n
	o+VGm4i9tl5IgQbHaejmp1iwEGOFBEAGU5fWwL2v2DceK1E6eeM+JpNtcan1GhzW8g5r2rMP+FQYg
	mbuXq+zRt9LDMVvI6FrgHJLJYfgLa2DC2HNkUcsNt7dd4FklOsoxUbxQZ+9HpTDT1c1Ld4NzKG3h+
	6FAU20pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igBgY-0007ff-7o; Sat, 14 Dec 2019 17:58:34 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igBdS-0004zV-CE; Sat, 14 Dec 2019 17:55:26 +0000
Received: by mail-pj1-x1043.google.com with SMTP id g4so1117261pjs.10;
 Sat, 14 Dec 2019 09:55:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0jvWF9XYSISO584h2vYKYUoEcRiyVQ8hH7Hs2IoWF50=;
 b=g2VIPeNv78fikjdmQp4F6HcLSJJlLRztzWIRg4z5MKw5ARx+QWeColI55a3kl7qx9i
 cAFoFIbdKa4WMEDblx60nLEzaAGgygsrCa1OzawGh83RhPR4M+Pgz4cTiUuwtJ3+zLTR
 rKSvgNvCdwzPqUvKrTPhWjfhJpfOInRRaTsdN4a2TkIHWk4Z3bZ0nLnwQonYk5wzWncg
 vwCJdky9D1Os9HirkeURSPIS0re0yh8o0nUnCCSeya6qhWZv+FZ4VkTqLzURQWZQmAtq
 IeuzYN5SfasSV/p6E2PnjMm3gp9rYSRVHGTAGwQgQAZsRDt5dp5Bj7folhkKi/e7xXRr
 jVuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0jvWF9XYSISO584h2vYKYUoEcRiyVQ8hH7Hs2IoWF50=;
 b=PpwW0nLzkQf5s5PAOMYdNYyrUnNY+ti8CJ9GJTJDZnoWjw4SEP8gp+Fsm3c/C4QuoM
 H9YwVuRZdKbrhcVg8ELQnERkXDZrKk7PP3XVkhhMMci34R+QaRk3UnXOjKKnnuyn+8JD
 3FGeVZdP1tFFcj0tLn9lgaHPuAu2Nxo82tyPVLFO0KonG3NrT5CA5VjQXn0jlpJ0luzq
 QEIIyoc/DzSxJ/nJIIWIi3Mlnxf+q7HpgzCaoJeTrxN7JjpWUvUsd37lXfrGuIXsBffV
 PVMxxbl+0Ow3cQ6rtYP4rg1OVdzzI/Pw55n9d61jPXOVW6iH58NWffp2FY5jf03SOCPZ
 6c3A==
X-Gm-Message-State: APjAAAW9gNvOaQff8/AR9e1kvaH7gfLbTgWeM8qFB8qBh29UqElvFSHJ
 VNXgW5m4cQidrsNEePDKyOmpnZclomA=
X-Google-Smtp-Source: APXvYqyqtm2BCTkQ1WB9nU9hiA5GJsGTHwnwitKhC/pdbIodt1usGKIoQH8Uv4CdMMinxB6/xHe66A==
X-Received: by 2002:a17:90a:8685:: with SMTP id
 p5mr7039962pjn.92.1576346121104; 
 Sat, 14 Dec 2019 09:55:21 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id l22sm14347112pjc.0.2019.12.14.09.55.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 14 Dec 2019 09:55:20 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: khilman@baylibre.com, leoyang.li@nxp.com, khalasa@piap.pl,
 john@phrozen.org, matthias.bgg@gmail.com, agross@kernel.org,
 bjorn.andersson@linaro.org, kgene@kernel.org, krzk@kernel.org,
 mripard@kernel.org, wens@csie.org, ssantosh@kernel.org, jun.nie@linaro.org,
 shawnguo@kernel.org
Subject: [PATCH 10/10] soc: qcom: convert to devm_platform_ioremap_resource
Date: Sat, 14 Dec 2019 17:54:47 +0000
Message-Id: <20191214175447.25482-10-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191214175447.25482-1-tiny.windzz@gmail.com>
References: <20191214175447.25482-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_095522_497715_5776ADD0 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/soc/qcom/llcc-qcom.c    | 7 +------
 drivers/soc/qcom/qcom-geni-se.c | 4 +---
 drivers/soc/qcom/qcom_aoss.c    | 4 +---
 drivers/soc/qcom/qcom_gsbi.c    | 5 +----
 drivers/soc/qcom/spm.c          | 4 +---
 5 files changed, 5 insertions(+), 19 deletions(-)

diff --git a/drivers/soc/qcom/llcc-qcom.c b/drivers/soc/qcom/llcc-qcom.c
index 429b5a60a1ba..99e19df76889 100644
--- a/drivers/soc/qcom/llcc-qcom.c
+++ b/drivers/soc/qcom/llcc-qcom.c
@@ -387,7 +387,6 @@ static int qcom_llcc_remove(struct platform_device *pdev)
 static struct regmap *qcom_llcc_init_mmio(struct platform_device *pdev,
 		const char *name)
 {
-	struct resource *res;
 	void __iomem *base;
 	struct regmap_config llcc_regmap_config = {
 		.reg_bits = 32,
@@ -396,11 +395,7 @@ static struct regmap *qcom_llcc_init_mmio(struct platform_device *pdev,
 		.fast_io = true,
 	};
 
-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, name);
-	if (!res)
-		return ERR_PTR(-ENODEV);
-
-	base = devm_ioremap_resource(&pdev->dev, res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return ERR_CAST(base);
 
diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
index 7d622ea1274e..9c2c429b4b3f 100644
--- a/drivers/soc/qcom/qcom-geni-se.c
+++ b/drivers/soc/qcom/qcom-geni-se.c
@@ -723,7 +723,6 @@ EXPORT_SYMBOL(geni_se_rx_dma_unprep);
 static int geni_se_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct resource *res;
 	struct geni_wrapper *wrapper;
 	int ret;
 
@@ -732,8 +731,7 @@ static int geni_se_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	wrapper->dev = dev;
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	wrapper->base = devm_ioremap_resource(dev, res);
+	wrapper->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(wrapper->base))
 		return PTR_ERR(wrapper->base);
 
diff --git a/drivers/soc/qcom/qcom_aoss.c b/drivers/soc/qcom/qcom_aoss.c
index 006ac40c526a..fcfba9f1aaa1 100644
--- a/drivers/soc/qcom/qcom_aoss.c
+++ b/drivers/soc/qcom/qcom_aoss.c
@@ -513,7 +513,6 @@ static void qmp_cooling_devices_remove(struct qmp *qmp)
 
 static int qmp_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	struct qmp *qmp;
 	int irq;
 	int ret;
@@ -526,8 +525,7 @@ static int qmp_probe(struct platform_device *pdev)
 	init_waitqueue_head(&qmp->event);
 	mutex_init(&qmp->tx_lock);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	qmp->msgram = devm_ioremap_resource(&pdev->dev, res);
+	qmp->msgram = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(qmp->msgram))
 		return PTR_ERR(qmp->msgram);
 
diff --git a/drivers/soc/qcom/qcom_gsbi.c b/drivers/soc/qcom/qcom_gsbi.c
index 304afc223a58..202ff31cf54f 100644
--- a/drivers/soc/qcom/qcom_gsbi.c
+++ b/drivers/soc/qcom/qcom_gsbi.c
@@ -127,7 +127,6 @@ static int gsbi_probe(struct platform_device *pdev)
 	struct device_node *node = pdev->dev.of_node;
 	struct device_node *tcsr_node;
 	const struct of_device_id *match;
-	struct resource *res;
 	void __iomem *base;
 	struct gsbi_info *gsbi;
 	int i, ret;
@@ -135,12 +134,10 @@ static int gsbi_probe(struct platform_device *pdev)
 	const struct crci_config *config = NULL;
 
 	gsbi = devm_kzalloc(&pdev->dev, sizeof(*gsbi), GFP_KERNEL);
-
 	if (!gsbi)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(&pdev->dev, res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
diff --git a/drivers/soc/qcom/spm.c b/drivers/soc/qcom/spm.c
index 8e10e02c6aa5..b6131ab07879 100644
--- a/drivers/soc/qcom/spm.c
+++ b/drivers/soc/qcom/spm.c
@@ -320,7 +320,6 @@ static const struct of_device_id spm_match_table[] = {
 static int spm_dev_probe(struct platform_device *pdev)
 {
 	struct spm_driver_data *drv;
-	struct resource *res;
 	const struct of_device_id *match_id;
 	void __iomem *addr;
 	int cpu;
@@ -329,8 +328,7 @@ static int spm_dev_probe(struct platform_device *pdev)
 	if (!drv)
 		return -EINVAL;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	drv->reg_base = devm_ioremap_resource(&pdev->dev, res);
+	drv->reg_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(drv->reg_base))
 		return PTR_ERR(drv->reg_base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
