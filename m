Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF9C1B21AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ou1oVD6XX2nhxrG2+yJIU2sjxhG7QAJ0BAfFf+6F4lM=; b=GAp
	DAnjB/u5H/47ZDv/yUHR+/AydoShvCP9y1IUl3m6K8cTMlgdWTxxX3t1w7NFRCmVK2I+WBOiWg1na
	40INdDOEpnW7/REb4PxWOeRkNJ8VIH+Duym2hAUJJ724tt2Yhw4bwoHbwo9qcj/JfKFjMJJOBQCjD
	O56/YUx/wlaAq5GGYnG6d4Lg6o88B+Ec2/TC3Sv9yEFa4KgQwOXB6dOOGnEVESZKikHZS57VtLUL4
	yoHpGrrs8NDtNpZ5DQ8xD4K3GMv2+748CcAHzb6xpkjQeGCt/zBe7jHmDCe/cwa7LDX1LWyWPLFe+
	kdGZjVRPR8hRLH4F3XTpZsKkd5Sj4VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQoIt-0000Aw-PY; Tue, 21 Apr 2020 08:30:51 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQoIW-00005P-5a
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:30:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id BB346AD2C;
 Tue, 21 Apr 2020 08:30:23 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: linux-pm@vger.kernel.org, andy.tang@nxp.com, sboyd@kernel.org,
 linux-clk@vger.kernel.org, rjw@rjwysocki.net, shawnguo@kernel.org,
 leoyang.li@nxp.com
Subject: [PATCH v2 1/2] cpufreq: qoriq: convert to a platform driver
Date: Tue, 21 Apr 2020 10:29:59 +0200
Message-Id: <20200421083000.16740-1-ykaukab@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_013028_498230_2C877EFD 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mian Yousaf Kaukab <ykaukab@suse.de>, viresh.kumar@linaro.org,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver has to be manually loaded if it is built as a module. It
is neither exporting MODULE_DEVICE_TABLE nor MODULE_ALIAS. Moreover,
no platform-device is created (and thus no uevent is sent) for the
clockgen nodes it depends on.

Convert the module to a platform driver with its own alias. Moreover,
drop whitelisted SOCs. Platform device will be created only for the
compatible platforms.

Reviewed-by: Yuantian Tang <andy.tang@nxp.com>
Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
---
v2:
 +Rafael, Stephen, linux-clk
 Add Reviewed-by and Acked-by tags

 drivers/cpufreq/qoriq-cpufreq.c | 76 ++++++++++++++++-------------------------
 1 file changed, 29 insertions(+), 47 deletions(-)

diff --git a/drivers/cpufreq/qoriq-cpufreq.c b/drivers/cpufreq/qoriq-cpufreq.c
index 8e436dc75c8b..6b6b20da2bcf 100644
--- a/drivers/cpufreq/qoriq-cpufreq.c
+++ b/drivers/cpufreq/qoriq-cpufreq.c
@@ -18,6 +18,7 @@
 #include <linux/of.h>
 #include <linux/slab.h>
 #include <linux/smp.h>
+#include <linux/platform_device.h>
 
 /**
  * struct cpu_data
@@ -29,12 +30,6 @@ struct cpu_data {
 	struct cpufreq_frequency_table *table;
 };
 
-/*
- * Don't use cpufreq on this SoC -- used when the SoC would have otherwise
- * matched a more generic compatible.
- */
-#define SOC_BLACKLIST		1
-
 /**
  * struct soc_data - SoC specific data
  * @flags: SOC_xxx
@@ -264,64 +259,51 @@ static struct cpufreq_driver qoriq_cpufreq_driver = {
 	.attr		= cpufreq_generic_attr,
 };
 
-static const struct soc_data blacklist = {
-	.flags = SOC_BLACKLIST,
-};
-
-static const struct of_device_id node_matches[] __initconst = {
+static const struct of_device_id qoriq_cpufreq_blacklist[] = {
 	/* e6500 cannot use cpufreq due to erratum A-008083 */
-	{ .compatible = "fsl,b4420-clockgen", &blacklist },
-	{ .compatible = "fsl,b4860-clockgen", &blacklist },
-	{ .compatible = "fsl,t2080-clockgen", &blacklist },
-	{ .compatible = "fsl,t4240-clockgen", &blacklist },
-
-	{ .compatible = "fsl,ls1012a-clockgen", },
-	{ .compatible = "fsl,ls1021a-clockgen", },
-	{ .compatible = "fsl,ls1028a-clockgen", },
-	{ .compatible = "fsl,ls1043a-clockgen", },
-	{ .compatible = "fsl,ls1046a-clockgen", },
-	{ .compatible = "fsl,ls1088a-clockgen", },
-	{ .compatible = "fsl,ls2080a-clockgen", },
-	{ .compatible = "fsl,lx2160a-clockgen", },
-	{ .compatible = "fsl,p4080-clockgen", },
-	{ .compatible = "fsl,qoriq-clockgen-1.0", },
-	{ .compatible = "fsl,qoriq-clockgen-2.0", },
+	{ .compatible = "fsl,b4420-clockgen", },
+	{ .compatible = "fsl,b4860-clockgen", },
+	{ .compatible = "fsl,t2080-clockgen", },
+	{ .compatible = "fsl,t4240-clockgen", },
 	{}
 };
 
-static int __init qoriq_cpufreq_init(void)
+static int qoriq_cpufreq_probe(struct platform_device *pdev)
 {
 	int ret;
-	struct device_node  *np;
-	const struct of_device_id *match;
-	const struct soc_data *data;
-
-	np = of_find_matching_node(NULL, node_matches);
-	if (!np)
-		return -ENODEV;
-
-	match = of_match_node(node_matches, np);
-	data = match->data;
-
-	of_node_put(np);
+	struct device_node *np;
 
-	if (data && data->flags & SOC_BLACKLIST)
+	np = of_find_matching_node(NULL, qoriq_cpufreq_blacklist);
+	if (np) {
+		dev_info(&pdev->dev, "Disabling due to erratum A-008083");
 		return -ENODEV;
+	}
 
 	ret = cpufreq_register_driver(&qoriq_cpufreq_driver);
-	if (!ret)
-		pr_info("Freescale QorIQ CPU frequency scaling driver\n");
+	if (ret)
+		return ret;
 
-	return ret;
+	dev_info(&pdev->dev, "Freescale QorIQ CPU frequency scaling driver\n");
+	return 0;
 }
-module_init(qoriq_cpufreq_init);
 
-static void __exit qoriq_cpufreq_exit(void)
+static int qoriq_cpufreq_remove(struct platform_device *pdev)
 {
 	cpufreq_unregister_driver(&qoriq_cpufreq_driver);
+
+	return 0;
 }
-module_exit(qoriq_cpufreq_exit);
 
+static struct platform_driver qoriq_cpufreq_platform_driver = {
+	.driver = {
+		.name = "qoriq-cpufreq",
+	},
+	.probe = qoriq_cpufreq_probe,
+	.remove = qoriq_cpufreq_remove,
+};
+module_platform_driver(qoriq_cpufreq_platform_driver);
+
+MODULE_ALIAS("platform:qoriq-cpufreq");
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Tang Yuantian <Yuantian.Tang@freescale.com>");
 MODULE_DESCRIPTION("cpufreq driver for Freescale QorIQ series SoCs");
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
