Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8DC1892E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 01:29:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M+sb6wUoZbfsAs4Lh5PX0QdiAUdExW6W4M7LRdo+M9g=; b=SaL+LE9btGL237
	AwC7LKxf2b/6IE6cqp5ChWE/GqtH32B4fytT3+eXENlTl+XdsLHb1LThEryvC8ynn0aGhzCCd8Upo
	d0sokAUOaHXE0Mt1j6O7+H0rTPfhQyOCiWovrAs2Iqsrv0Z8jCL1se+zB0jd7D7A31fO/y22cYu8V
	0GECdpblXsGvU1MnncEuVNtvFdpsyJRIva8ERzA7PES4/6i0xquMOnDSOpTEXs2LJKQb+3utyFWv0
	fQiTshfXLLcrbbvM7ZXMDToQZWw+pO0NJN71k1+BCk4uiroheiT8qHo+XISdbaOsMm7lV3jxjwuxV
	K+sv4M3ZZYprkDmmg8UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEMa6-0008Oj-Tt; Wed, 18 Mar 2020 00:29:10 +0000
Received: from mail-eopbgr770129.outbound.protection.outlook.com
 ([40.107.77.129] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEMZw-0008OC-Df
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 00:29:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UAEjW2S175PDc8rQhxJXmmdI0GccGbHTbTYfk7oCrI0eEohTUk9BL4jJ1a680sza9DAIZq6IPqlBVNS4jDDtqVAl7dqzCBdivkMWfWREiSpLyQZnUvVFLa4NKlr8vayjoBixmGx/asgiyV5BrSb4dj457GCNizD4EmLv/hfP/2P658rbREvtyaSmoLQZoDYijWqHvhESgStdIrWUOhUrUNn/grGBkNEEp/o8/zByGQPkp0ejqcCMOFsGkpGAIddZp1rvMnt3DEQ7Jbh1bdsBIrHbk3/SEqTclO2JmG/CjQMbMliwJx6NvXISVV2J5m2rf85EWqbTuA0eXHpIlVHquQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i3PHiX55SDw/xi6e63/jB5GoM8ng1mVF8ZxftZ6OK6s=;
 b=nx9WUTbJvkz03eJdtfT89kkiAcNA95y4NlGc5MnF2+LwRi9a8+BH+wUAoY8qspuYPXJ0xNKZ7vE7C+KlKPOZBTWtXehhBeOfpADlFgCEErL/git2kxWguKCXw23Ix1vYHXLbmNVSkkiTqBpmCN7lrE+ncfC+yuIJ3PF/Dsc9AtVHNfzs0KFSQrVMbfda060crX8LmIUPMa9rDYk36In7LhjNEEpDV7Hotz3TmJotLuHgMORwwSjp3rIZGDwyyAgsTrN6nEDIfgMNM8rk+QwDW+VdwWUfeTj1CmgvB7ZChuUJeMB2tVpGmz4uKdr0+h2yUW4jQ/fjRX8DTVgHkaP1Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i3PHiX55SDw/xi6e63/jB5GoM8ng1mVF8ZxftZ6OK6s=;
 b=GbpMWSgsbX4brWvL6EHD3xMeS5bK9PEW5ne8aSTPu5055NJyHSM6EIluDQmHUmtr3axXabVY9JggE677+PccBaQOzDudka2wKeT3R1lJz0P1TKqO1FEeTusK4qfZu4VRzHfcZuqgoTnK3BY1yleyFgI/94D2LPqrApLfYCCUodA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=tuanphan@os.amperecomputing.com; 
Received: from MWHPR01MB2317.prod.exchangelabs.com (2603:10b6:300:28::16) by
 MWHPR01MB3232.prod.exchangelabs.com (2603:10b6:300:fc::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Wed, 18 Mar 2020 00:28:56 +0000
Received: from MWHPR01MB2317.prod.exchangelabs.com
 ([fe80::5151:bb2b:8ed2:b53c]) by MWHPR01MB2317.prod.exchangelabs.com
 ([fe80::5151:bb2b:8ed2:b53c%12]) with mapi id 15.20.2814.021; Wed, 18 Mar
 2020 00:28:56 +0000
From: Tuan Phan <tuanphan@os.amperecomputing.com>
To: 
Subject: [PATCH 2/2] perf: arm_dsu: Support DSU ACPI devices.
Date: Tue, 17 Mar 2020 17:28:43 -0700
Message-Id: <1584491323-31436-1-git-send-email-tuanphan@os.amperecomputing.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: BYAPR05CA0064.namprd05.prod.outlook.com
 (2603:10b6:a03:74::41) To MWHPR01MB2317.prod.exchangelabs.com
 (2603:10b6:300:28::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from aptiov-dev-Latitude-E7470.amperecomputing.com (4.28.12.214) by
 BYAPR05CA0064.namprd05.prod.outlook.com (2603:10b6:a03:74::41) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2835.12 via Frontend Transport; Wed, 18 Mar 2020 00:28:55 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [4.28.12.214]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 70aa99f7-4718-4d00-b60a-08d7cad357e1
X-MS-TrafficTypeDiagnostic: MWHPR01MB3232:|MWHPR01MB3232:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR01MB32323765337C76DD55129610E0F70@MWHPR01MB3232.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:901;
X-Forefront-PRVS: 03468CBA43
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(136003)(39840400004)(366004)(396003)(199004)(2616005)(6486002)(86362001)(66556008)(66476007)(66946007)(5660300002)(2906002)(109986005)(4326008)(6512007)(956004)(52116002)(478600001)(8936002)(316002)(16526019)(81156014)(6666004)(186003)(54906003)(26005)(6506007)(81166006)(8676002)(266003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR01MB3232;
 H:MWHPR01MB2317.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; 
Received-SPF: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NqG/2l3dKYXL9StjTL0InLPujXj7Pw2gDnAre+3/1OKuhrhUpA5h6p7Q/HjL7cYOQe2vVxu/GQHWGpjL1MyaO3dLr/FfscQbfpaCE2xBSWlJlAJNlmDrBP8Y3tJOMAWDUJL0xrnskJWt+sZMObtQ3ekjo+ID76zUerQoTZLGeYG+VvusfjlkUF3oFlFb+D1rb+oPhqDhJm+MNK/RHo6qZAmVlodMRiMXSx9qzZy1daaYFO3ddrbwdQ6AAg6necpua72VURSqKrrwbm6ww0IUUnYRMFx9R50fCDTkxuGgmpxZHFGVTP123M++grSV18eO5bB1Cb94JWbtd+x7dyO6GP0UHWm4W5zHB/s8vZ9wwlovj1Ozi8uFGr8mrIEOe+pXrwn4iKPsfuNOgnITHxsx6jV4s6Znlxo4DSwLv8ItOAThsmEo1choHWqZF/uUT0AzCV/A1qZvNjO2STn9FsfQgUTMp3O/IGDuu3X3JGtOxf0=
X-MS-Exchange-AntiSpam-MessageData: V16gagId8587rALLpx38zCAVcaPmb9Ji8aCm2xU7adt1YP/Rm6Q93ainoXhWwXTSZmCcXT31hQnY4OOv+Z2AlxMwK9ij+jyVyG7Hs329jzEKC4EzTMXBaPZ10/Vudcz4zgmzDUecSY65O9JDQe5u6g==
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70aa99f7-4718-4d00-b60a-08d7cad357e1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2020 00:28:56.0613 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aXhIJbh/iTNDDOkZc4B0CTkHNU0T3E292lierkmgDIkpwLkcgqelWu4uUzuEBojhptHAKky9PP+LIFTls06tspQRw78H6qUmNMcZwL6G669hrK9oAb/PV09ogRe9rPwx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB3232
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_172900_464865_48B45310 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Mark Rutland <mark.rutland@arm.com>, patches@amperecomputing.com,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for probing device from ACPI node.
Each DSU ACPI node defines "cpus" package which
each element is the MPIDR of associated cpu.

Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
---
 drivers/perf/arm_dsu_pmu.c | 53 +++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 45 insertions(+), 8 deletions(-)

diff --git a/drivers/perf/arm_dsu_pmu.c b/drivers/perf/arm_dsu_pmu.c
index 2622900..6ef762c 100644
--- a/drivers/perf/arm_dsu_pmu.c
+++ b/drivers/perf/arm_dsu_pmu.c
@@ -11,6 +11,7 @@
 #define DRVNAME		PMUNAME "_pmu"
 #define pr_fmt(fmt)	DRVNAME ": " fmt
 
+#include <linux/acpi.h>
 #include <linux/bitmap.h>
 #include <linux/bitops.h>
 #include <linux/bug.h>
@@ -603,18 +604,22 @@ static struct dsu_pmu *dsu_pmu_alloc(struct platform_device *pdev)
 }
 
 /**
- * dsu_pmu_dt_get_cpus: Get the list of CPUs in the cluster.
+ * dsu_pmu_get_cpus: Get the list of CPUs in the cluster.
  */
-static int dsu_pmu_dt_get_cpus(struct device_node *dev, cpumask_t *mask)
+static int dsu_pmu_get_cpus(struct platform_device *pdev)
 {
+#ifndef CONFIG_ACPI
+	/* Get the list of CPUs from device tree */
 	int i = 0, n, cpu;
 	struct device_node *cpu_node;
+	struct dsu_pmu *dsu_pmu =
+		(struct dsu_pmu *) platform_get_drvdata(pdev);
 
-	n = of_count_phandle_with_args(dev, "cpus", NULL);
+	n = of_count_phandle_with_args(pdev->dev.of_node, "cpus", NULL);
 	if (n <= 0)
 		return -ENODEV;
 	for (; i < n; i++) {
-		cpu_node = of_parse_phandle(dev, "cpus", i);
+		cpu_node = of_parse_phandle(pdev->dev.of_node, "cpus", i);
 		if (!cpu_node)
 			break;
 		cpu = of_cpu_node_to_id(cpu_node);
@@ -626,9 +631,33 @@ static int dsu_pmu_dt_get_cpus(struct device_node *dev, cpumask_t *mask)
 		 */
 		if (cpu < 0)
 			continue;
-		cpumask_set_cpu(cpu, mask);
+		cpumask_set_cpu(cpu, &dsu_pmu->associated_cpus);
 	}
 	return 0;
+#else /* CONFIG_ACPI */
+	int i, cpu, ret;
+	const union acpi_object *obj;
+	struct acpi_device *adev = ACPI_COMPANION(&pdev->dev);
+	struct dsu_pmu *dsu_pmu =
+		(struct dsu_pmu *) platform_get_drvdata(pdev);
+
+	ret = acpi_dev_get_property(adev, "cpus", ACPI_TYPE_ANY, &obj);
+	if (ret < 0)
+		return -EINVAL;
+
+	if (obj->type != ACPI_TYPE_PACKAGE)
+		return -EINVAL;
+
+	for (i = 0; i < obj->package.count; i++) {
+		/* Each element is the MPIDR of associated cpu */
+		for_each_possible_cpu(cpu) {
+			if (cpu_physical_id(cpu) ==
+				obj->package.elements[i].integer.value)
+				cpumask_set_cpu(cpu, &dsu_pmu->associated_cpus);
+		}
+	}
+	return 0;
+#endif
 }
 
 /*
@@ -683,7 +712,9 @@ static int dsu_pmu_device_probe(struct platform_device *pdev)
 	if (IS_ERR(dsu_pmu))
 		return PTR_ERR(dsu_pmu);
 
-	rc = dsu_pmu_dt_get_cpus(pdev->dev.of_node, &dsu_pmu->associated_cpus);
+	platform_set_drvdata(pdev, dsu_pmu);
+
+	rc = dsu_pmu_get_cpus(pdev);
 	if (rc) {
 		dev_warn(&pdev->dev, "Failed to parse the CPUs\n");
 		return rc;
@@ -707,7 +738,6 @@ static int dsu_pmu_device_probe(struct platform_device *pdev)
 	}
 
 	dsu_pmu->irq = irq;
-	platform_set_drvdata(pdev, dsu_pmu);
 	rc = cpuhp_state_add_instance(dsu_pmu_cpuhp_state,
 						&dsu_pmu->cpuhp_node);
 	if (rc)
@@ -754,11 +784,19 @@ static const struct of_device_id dsu_pmu_of_match[] = {
 	{ .compatible = "arm,dsu-pmu", },
 	{},
 };
+MODULE_DEVICE_TABLE(of, dsu_pmu_of_match);
+
+static const struct acpi_device_id dsu_pmu_acpi_match[] = {
+	{ "ARMHD500", 0},
+	{},
+};
+MODULE_DEVICE_TABLE(acpi, dsu_pmu_acpi_match);
 
 static struct platform_driver dsu_pmu_driver = {
 	.driver = {
 		.name	= DRVNAME,
 		.of_match_table = of_match_ptr(dsu_pmu_of_match),
+		.acpi_match_table = ACPI_PTR(dsu_pmu_acpi_match),
 	},
 	.probe = dsu_pmu_device_probe,
 	.remove = dsu_pmu_device_remove,
@@ -827,7 +865,6 @@ static void __exit dsu_pmu_exit(void)
 module_init(dsu_pmu_init);
 module_exit(dsu_pmu_exit);
 
-MODULE_DEVICE_TABLE(of, dsu_pmu_of_match);
 MODULE_DESCRIPTION("Perf driver for ARM DynamIQ Shared Unit");
 MODULE_AUTHOR("Suzuki K Poulose <suzuki.poulose@arm.com>");
 MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
