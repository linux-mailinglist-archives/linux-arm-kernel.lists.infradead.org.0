Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E59F79D34B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RsbGnA26HUagEv6/UNx6mVnG70+26kaERtbFdYB4Gtk=; b=om8Rn/KmjyS6gw
	2xUE2gbMte2sg9YTAQjvKNtMqHsHJuzUSrnKm9/8oipGIYc7lImKnbJYRY1i+eF8qJ/4K8VK2Wivr
	kSBQ6xzLZ5TOZPFxfSK4IR7LrVsgZpYNrJZEgDwNpuaA7rE5i0xoz9rzl2j1Fm1cbbJuej0mHtzEh
	SxxTtK/PedJ1q6Vn2/ZPj2B5jC6BvpPAeyFlqTYUP6sWkFcdrbWVR3TD99Yw4FyFWTPVgGWAFiYMb
	Mt39RG8gIyW1iu5qz7PhWzMl4G7w9nJb+U3VM0PSQTkzOw4EgV0KFvpNSulRvH+OAG47+e2DuwGp7
	Yu6moEww6rGOO7414GiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2HAY-00087G-Fp; Mon, 26 Aug 2019 15:44:35 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2H5c-0003N2-PU
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:39:31 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7QFPxf4018386; Mon, 26 Aug 2019 17:39:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=jU9f5j6ZxSufRp0l6yClPcW1jUXM3GEpOLQlLRS9pBU=;
 b=To1PgnC5V2IkRIl04X2kCQ4oVzbXRNf5P5lzE3ePlDgyC556SLdSpOi1X84Fd05OhJ1w
 6WFgqhhx5nX1gKmrSRgQmw8akYzlR4e6i+XSLcllZN/jD16WXKTLv3vAiS2ZJwmIhTCf
 nNjp4LSdVgz2RhkXzSkXRBQW2HSGRdG7rcyv4u5yEzBQBZ53PWw+6cFP49237RInq0KJ
 nHf/mgBEOfUFoy89GfXdGrpiuifa6b/AqQmdVru9pKYWYfcSGYtNXNvC93+aSawavht1
 Ws2+y6m06TOminI/hfJwLkBwpSZjkkvFMZU/eqy7s7OEZfxBYzhH27PO/wiuIAV9cze7 VA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2uju0vmgkf-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 26 Aug 2019 17:39:23 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 166B7238;
 Mon, 26 Aug 2019 15:39:07 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C05532BC1DD;
 Mon, 26 Aug 2019 17:38:53 +0200 (CEST)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 26 Aug
 2019 17:38:53 +0200
Received: from localhost (10.201.23.25) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 26 Aug 2019 17:38:53
 +0200
From: Fabien Dessenne <fabien.dessenne@st.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, <devicetree@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-remoteproc@vger.kernel.org>
Subject: [PATCH 2/2] remoteproc: stm32: wakeup the system by wdg irq
Date: Mon, 26 Aug 2019 17:38:43 +0200
Message-ID: <1566833923-16718-3-git-send-email-fabien.dessenne@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566833923-16718-1-git-send-email-fabien.dessenne@st.com>
References: <1566833923-16718-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.25]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-26_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_083929_136139_8A33BA80 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Loic Pallardy <loic.pallardy@st.com>, Fabien Dessenne <fabien.dessenne@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If the device node defines the 'wakeup-source' property, use the WDG
exti IRQ as a wakeup source of the system.

Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
---
 drivers/remoteproc/stm32_rproc.c | 47 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 2cf4b29..7ed8895 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -15,6 +15,7 @@
 #include <linux/of_address.h>
 #include <linux/of_device.h>
 #include <linux/of_reserved_mem.h>
+#include <linux/pm_wakeirq.h>
 #include <linux/regmap.h>
 #include <linux/remoteproc.h>
 #include <linux/reset.h>
@@ -65,6 +66,7 @@ struct stm32_rproc {
 	struct reset_control *rst;
 	struct stm32_syscon hold_boot;
 	struct stm32_syscon pdds;
+	int wdg_irq;
 	u32 nb_rmems;
 	struct stm32_rproc_mem *rmems;
 	struct stm32_mbox mb[MBOX_NB_MBX];
@@ -528,6 +530,13 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev)
 			return err;
 		}
 
+		ddata->wdg_irq = irq;
+
+		if (of_property_read_bool(np, "wakeup-source")) {
+			device_init_wakeup(dev, true);
+			dev_pm_set_wake_irq(dev, irq);
+		}
+
 		dev_info(dev, "wdg irq registered\n");
 	}
 
@@ -607,6 +616,10 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 free_mb:
 	stm32_rproc_free_mbox(rproc);
 free_rproc:
+	if (device_may_wakeup(dev)) {
+		dev_pm_clear_wake_irq(dev);
+		device_init_wakeup(dev, false);
+	}
 	rproc_free(rproc);
 	return ret;
 }
@@ -614,22 +627,56 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 static int stm32_rproc_remove(struct platform_device *pdev)
 {
 	struct rproc *rproc = platform_get_drvdata(pdev);
+	struct device *dev = &pdev->dev;
 
 	if (atomic_read(&rproc->power) > 0)
 		rproc_shutdown(rproc);
 
 	rproc_del(rproc);
 	stm32_rproc_free_mbox(rproc);
+
+	if (device_may_wakeup(dev)) {
+		dev_pm_clear_wake_irq(dev);
+		device_init_wakeup(dev, false);
+	}
 	rproc_free(rproc);
 
 	return 0;
 }
 
+#ifdef CONFIG_PM_SLEEP
+static int stm32_rproc_suspend(struct device *dev)
+{
+	struct rproc *rproc = dev_get_drvdata(dev);
+	struct stm32_rproc *ddata = rproc->priv;
+
+	if (device_may_wakeup(dev))
+		return enable_irq_wake(ddata->wdg_irq);
+
+	return 0;
+}
+
+static int stm32_rproc_resume(struct device *dev)
+{
+	struct rproc *rproc = dev_get_drvdata(dev);
+	struct stm32_rproc *ddata = rproc->priv;
+
+	if (device_may_wakeup(dev))
+		return disable_irq_wake(ddata->wdg_irq);
+
+	return 0;
+}
+#endif
+
+static SIMPLE_DEV_PM_OPS(stm32_rproc_pm_ops,
+			 stm32_rproc_suspend, stm32_rproc_resume);
+
 static struct platform_driver stm32_rproc_driver = {
 	.probe = stm32_rproc_probe,
 	.remove = stm32_rproc_remove,
 	.driver = {
 		.name = "stm32-rproc",
+		.pm = &stm32_rproc_pm_ops,
 		.of_match_table = of_match_ptr(stm32_rproc_match),
 	},
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
