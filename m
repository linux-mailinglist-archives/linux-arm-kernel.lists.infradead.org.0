Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EDD4BFC7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MpzfYU/cIAMRtdX3uMNENFwu/NcXL0W8+cFkC/8WRIc=; b=NsZLsFQ+IVWiOu460GLWL0sVXV
	7mtygHPH0SEQeD0qLJAnOZiQAxX6WUwD/PiR/K7WeYhC2zzZCCKNvuCQRoIiP7ADOtbbdCoeqSVnN
	vY4YXV8WydGxnvWEdo2w305R14XAXFQ87TmqfWlKKx+cMC+P1Kw/M3SPBYpZx2CWIrsuXWIxcy7n1
	DtmfHGfMBKy8hj7wi8vo7eWd4agHjWbi7Xb7OaI7Y3nyZ64+liUxXWa/1HmuPpEfGqiAteOqPRH3X
	wFNXiW7ILPLmF+plMrLrnQGkKxEBUht15UvRDqTF9y0of4wJd+m7+kNXuTdOaTyR+p2Fy2KZJYBOZ
	56CF8ECw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeW1-0006Bv-Ej; Wed, 19 Jun 2019 17:36:57 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePW-00087X-M4
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:18 +0000
Received: by mail-pf1-x443.google.com with SMTP id x15so22022pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZsHMhd4UvtNqVCHiYk9E1/62IJNBdhITI8cjZrmiFqs=;
 b=IoesthkWNzTFdDnqz3GxWUz5KARPVHuXzxOLBy7aMQjBtvE5VcejJELdnAFy8Y5mfn
 TJohe4pEu8gc+HgUOrqoVHBBqREJHKV3P/oNim2OIeTOCJfVQ0qoKP2253ovoaLEAqnQ
 1zirHvFJwmoeL90w/uufjCLDZQJIJxH2f+lhXwSz54Bgo7dR+xkQ691UwYyIKfmym22k
 k1ikc/+UPrrC0sviN6EIwGMQTSBZM0d1WwI9U2MQTCnC6Qobt0IuCEQVAogp7hCZ+r/x
 Ol7MPHfrB1/p3e0RMjZoUK5XFZPtJAjQqtYIxA+ZUIZ01ejkjQZIm6r5PBlfDCuoWTom
 GyLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZsHMhd4UvtNqVCHiYk9E1/62IJNBdhITI8cjZrmiFqs=;
 b=n1yk9uy0UrnAKRiAc6FDXPfY+I9598f0j2bPGeiCrzfgcfOHQ4PfFItDV1qBL/ChGm
 aO54jCpldDofLH8kH6+fE136wxiMX+AhdcAT3zPVfPTPUf1+DnhvdpOf395w48K5FZ3P
 8eJtyVokXqokrZu1YgK8gvDzsx8RnTy1k16emPhjEzlzccSmhxIjYG04h3RH/vxN98aB
 YowfZqseHc9awXTGGy84eJDnGlx5CI89+QOGy2DiK3Ntil0st2Q+fyv91QWQj4JR+u+f
 Gfw3mhSWdNWfPoBFAaf4DJCoSj3P5Vwl0SlFlO8+snIgqFnIog9I9PmIDxt//lWhM7dA
 RopA==
X-Gm-Message-State: APjAAAXoGeo3vh000UfNlSnsWfKPRNWII8Wv7TgeFBtn/IY90IsrkCIK
 cP6/fYxYsXfQQbkTU09jhiSjVQ==
X-Google-Smtp-Source: APXvYqxXYuBOQATdjO0p16ejlyEXTfYrpaC6zQMIfyOQAy4TeoRABBLd/9H9Y3Zju+JwTLOE5CJSnQ==
X-Received: by 2002:a17:90a:1c17:: with SMTP id
 s23mr12408843pjs.108.1560965411862; 
 Wed, 19 Jun 2019 10:30:11 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:11 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 22/45] coresight: Make device to CPU mapping generic
Date: Wed, 19 Jun 2019 11:29:26 -0600
Message-Id: <20190619172949.4522-23-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103014_851168_A6AD7279 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

The CoreSight components ETM and CPU-Debug are always associated
with CPUs. Replace the of_coresight_get_cpu() with a platform
agnostic helper, in preparation to add ACPI support.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../hwtracing/coresight/coresight-cpu-debug.c  |  3 +--
 .../hwtracing/coresight/coresight-platform.c   | 18 +++++++++++++-----
 include/linux/coresight.h                      |  7 +------
 3 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c b/drivers/hwtracing/coresight/coresight-cpu-debug.c
index e8819d750938..07a1367c733f 100644
--- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
+++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
@@ -572,14 +572,13 @@ static int debug_probe(struct amba_device *adev, const struct amba_id *id)
 	struct device *dev = &adev->dev;
 	struct debug_drvdata *drvdata;
 	struct resource *res = &adev->res;
-	struct device_node *np = adev->dev.of_node;
 	int ret;
 
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata)
 		return -ENOMEM;
 
-	drvdata->cpu = np ? of_coresight_get_cpu(np) : 0;
+	drvdata->cpu = coresight_get_cpu(dev);
 	if (per_cpu(debug_drvdata, drvdata->cpu)) {
 		dev_err(dev, "CPU%d drvdata has already been initialized\n",
 			drvdata->cpu);
diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 5d78f4fbd97d..ba8c14635c6b 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -151,12 +151,14 @@ static void of_coresight_get_ports(const struct device_node *node,
 	}
 }
 
-int of_coresight_get_cpu(const struct device_node *node)
+static int of_coresight_get_cpu(struct device *dev)
 {
 	int cpu;
 	struct device_node *dn;
 
-	dn = of_parse_phandle(node, "cpu", 0);
+	if (!dev->of_node)
+		return 0;
+	dn = of_parse_phandle(dev->of_node, "cpu", 0);
 	/* Affinity defaults to CPU0 */
 	if (!dn)
 		return 0;
@@ -166,7 +168,6 @@ int of_coresight_get_cpu(const struct device_node *node)
 	/* Affinity to CPU0 if no cpu nodes are found */
 	return (cpu < 0) ? 0 : cpu;
 }
-EXPORT_SYMBOL_GPL(of_coresight_get_cpu);
 
 /*
  * of_coresight_parse_endpoint : Parse the given output endpoint @ep
@@ -240,8 +241,6 @@ static int of_get_coresight_platform_data(struct device *dev,
 	bool legacy_binding = false;
 	struct device_node *node = dev->of_node;
 
-	pdata->cpu = of_coresight_get_cpu(node);
-
 	/* Get the number of input and output port for this component */
 	of_coresight_get_ports(node, &pdata->nr_inport, &pdata->nr_outport);
 
@@ -300,6 +299,14 @@ of_get_coresight_platform_data(struct device *dev,
 }
 #endif
 
+int coresight_get_cpu(struct device *dev)
+{
+	if (is_of_node(dev->fwnode))
+		return of_coresight_get_cpu(dev);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(coresight_get_cpu);
+
 struct coresight_platform_data *
 coresight_get_platform_data(struct device *dev)
 {
@@ -318,6 +325,7 @@ coresight_get_platform_data(struct device *dev)
 
 	/* Use device name as sysfs handle */
 	pdata->name = dev_name(dev);
+	pdata->cpu = coresight_get_cpu(dev);
 
 	if (is_of_node(fwnode))
 		ret = of_get_coresight_platform_data(dev, pdata);
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index e2b95e05e0be..98a4440dea3e 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -292,12 +292,7 @@ static inline void coresight_disclaim_device_unlocked(void __iomem *base) {}
 
 #endif
 
-#ifdef CONFIG_OF
-extern int of_coresight_get_cpu(const struct device_node *node);
-#else
-static inline int of_coresight_get_cpu(const struct device_node *node)
-{ return 0; }
-#endif
+extern int coresight_get_cpu(struct device *dev);
 
 struct coresight_platform_data *coresight_get_platform_data(struct device *dev);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
