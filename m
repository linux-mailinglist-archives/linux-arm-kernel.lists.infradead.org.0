Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA8B1E6936
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 20:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Fc2Y98/Ha2NX1kYLRM8a1aNgOg2R1vFcqKnum1dJjgs=; b=U7sqnBcHWv6zL/LgGUP/3VnFuK
	Zuk96u+9v6HkimiWXtEByweAys+P3Y4+C7MXhlxu3buqcM/vu0eCbhutKfsDucVenItf9kaJF7f89
	V81zl1D89RbWjQ3LD/rIEeDgxTePPeowoVFeH4RsSB/hDngTqclEdIMrVCEhOcozs1JD7JlhvTEku
	Vr26vbYOYy+BPqtoR2QYoB3kO30O9NoKY8d4aXQ6qkjeXJIkl6HXUYXYUxahi+mTUgwRCdyR7BM0v
	5BWKtwTbNSSKDxWxB61T8gFJSw69UM0R0dty6cW9yI/cjlULLgN42hzTdlUU8f9HePkYz+eZCOQOk
	Li2Gn0uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeN98-00050Y-JN; Thu, 28 May 2020 18:20:50 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeN8i-0004sn-4r
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 18:20:26 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 67F1730D922;
 Thu, 28 May 2020 11:20:22 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 67F1730D922
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1590690022;
 bh=xTLN0Ne8/Unwvxj7vRuoFM8k4HSoC2gvxWr7h+2Ueic=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CE98I9F+YpFVK5YhkoZsPrHDWVftEaJJvhZrl8D8zUkEmwKeBjEyTaat+gultQOOA
 vfDwwRUcIdQ7Q9J5Q2yMHxtHH2DRTt03GpitZRG+UmzbmFo8JZB13wQaaUdMOKMTyZ
 pMFG8jLc/dUk80lQ83Edj3h/xEJDNggoLNUN652E=
Received: from lbrmn-mmayer.ric.broadcom.net (lbrmn-mmayer.ric.broadcom.net
 [10.136.28.150])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id F2492140069;
 Thu, 28 May 2020 11:20:21 -0700 (PDT)
From: Markus Mayer <markus.mayer@broadcom.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH 2/3] cpufreq: brcmstb-avs-cpufreq: Support polling AVS firmware
Date: Thu, 28 May 2020 11:20:13 -0700
Message-Id: <20200528182014.20021-2-mmayer@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528182014.20021-1-mmayer@broadcom.com>
References: <20200528182014.20021-1-mmayer@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_112024_339992_069BDF57 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Markus Mayer <markus.mayer@broadcom.com>,
 Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Linux Power Management List <linux-pm@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Florian Fainelli <f.fainelli@gmail.com>

In case the interrupt towards the host is never raised, yet the AVS
firmware responds correctly within the alloted time, allow supporting a
polling mode.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 drivers/cpufreq/brcmstb-avs-cpufreq.c | 47 +++++++++++++++++++--------
 1 file changed, 34 insertions(+), 13 deletions(-)

diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
index c8b754694a5e..79a0538a531a 100644
--- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
+++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
@@ -42,6 +42,7 @@
  */
 
 #include <linux/cpufreq.h>
+#include <linux/delay.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/module.h>
@@ -178,6 +179,7 @@ struct private_data {
 	struct completion done;
 	struct semaphore sem;
 	struct pmap pmap;
+	int host_irq;
 };
 
 static void __iomem *__map_region(const char *name)
@@ -195,12 +197,36 @@ static void __iomem *__map_region(const char *name)
 	return ptr;
 }
 
+static unsigned long wait_for_avs_command(struct private_data *priv,
+					  unsigned long timeout)
+{
+	unsigned long time_left = 0;
+	u32 val;
+
+	/* Event driven, wait for the command interrupt */
+	if (priv->host_irq >= 0)
+		return wait_for_completion_timeout(&priv->done,
+						   msecs_to_jiffies(timeout));
+
+	/* Polling for command completion */
+	do {
+		time_left = timeout;
+		val = readl(priv->base + AVS_MBOX_STATUS);
+		if (val)
+			break;
+
+		usleep_range(1000, 2000);
+	} while (--timeout);
+
+	return time_left;
+}
+
 static int __issue_avs_command(struct private_data *priv, unsigned int cmd,
 			       unsigned int num_in, unsigned int num_out,
 			       u32 args[])
 {
-	unsigned long time_left = msecs_to_jiffies(AVS_TIMEOUT);
 	void __iomem *base = priv->base;
+	unsigned long time_left;
 	unsigned int i;
 	int ret;
 	u32 val;
@@ -238,7 +264,7 @@ static int __issue_avs_command(struct private_data *priv, unsigned int cmd,
 	writel(AVS_CPU_L2_INT_MASK, priv->avs_intr_base + AVS_CPU_L2_SET0);
 
 	/* Wait for AVS co-processor to finish processing the command. */
-	time_left = wait_for_completion_timeout(&priv->done, time_left);
+	time_left = wait_for_avs_command(priv, AVS_TIMEOUT);
 
 	/*
 	 * If the AVS status is not in the expected range, it means AVS didn't
@@ -509,7 +535,7 @@ static int brcm_avs_prepare_init(struct platform_device *pdev)
 {
 	struct private_data *priv;
 	struct device *dev;
-	int host_irq, ret;
+	int ret;
 
 	dev = &pdev->dev;
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
@@ -536,19 +562,14 @@ static int brcm_avs_prepare_init(struct platform_device *pdev)
 		goto unmap_base;
 	}
 
-	host_irq = platform_get_irq_byname(pdev, BRCM_AVS_HOST_INTR);
-	if (host_irq < 0) {
-		dev_err(dev, "Couldn't find interrupt %s -- %d\n",
-			BRCM_AVS_HOST_INTR, host_irq);
-		ret = host_irq;
-		goto unmap_intr_base;
-	}
+	priv->host_irq = platform_get_irq_byname(pdev, BRCM_AVS_HOST_INTR);
 
-	ret = devm_request_irq(dev, host_irq, irq_handler, IRQF_TRIGGER_RISING,
+	ret = devm_request_irq(dev, priv->host_irq, irq_handler,
+			       IRQF_TRIGGER_RISING,
 			       BRCM_AVS_HOST_INTR, priv);
-	if (ret) {
+	if (ret && priv->host_irq >= 0) {
 		dev_err(dev, "IRQ request failed: %s (%d) -- %d\n",
-			BRCM_AVS_HOST_INTR, host_irq, ret);
+			BRCM_AVS_HOST_INTR, priv->host_irq, ret);
 		goto unmap_intr_base;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
