Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD60C1CE59D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 22:33:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZJkRFeLE+m3XPWf0C//CNRt1zdrAqZbXoQHsaT5HikE=; b=JpTTAKWfgppf35
	6esM8IqTwIBduZSnXirdWifloS57om3tTN8GbZgdj6nNAJvRCPZlJhvh0hQi1mIdud783bTDK2xfV
	PsqVsmia3msXLxHSfFAHgxGddH4/G0nwpyMZVZkwMgxun87tcMJSCRfOMG7ywOkQGd5t1J0kgFOsw
	7cCaNGOOHJMO+N+jqakH17YU66KONG+fFE+zseK0MN+BRO996luCoosn/Z84BYT2HezqqFpjlsi5j
	c4pO4Giyn0xdfCetxHFSd9W4c2PZJ0BraN8i9hUA5RHyqOlVmqbJoijYJU/ojCwVjVB0lQUh3pEPv
	PwAWrrc1VVy/5uBMfZvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYF6v-0004ME-Ac; Mon, 11 May 2020 20:33:13 +0000
Received: from mail-mw2nam12on2090.outbound.protection.outlook.com
 ([40.107.244.90] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYF6m-0004LJ-Ii
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 20:33:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JNOC2mg3UjMN0y+8UXbo2RPv6xZFS/4pCLIdhBwldH5tp1iSdjmemeIFUWEgj0Bd/0U5pCPMF0rMyaXerty8s48MmwdKKdZOOUYwAXuHxZ3KkTSQBOwHqrsMQvO+oooHV4dsFPygNgDMWbw3cHMgkfuw/Lgt7gOdR6ID5bQvcvCWUHbx3WRGFp9sh4m/q361pWNwAzlCS0PxUQLKDYgCoE9WB9zSZVsn/B46FWc9JkcZ98D9Iji2oUaCdxas13c6iVdnL0RTsfL6k0LFXZNLWADTxnTT78MMg+ORDhbnt5uvsyQKIGt1U2hvmOdm3fAES5UQg/pPdIM1yoXPqyTzkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UEOZexBqQe7wkq6C760pOvBnmfScgEkjAY+7waV2JIo=;
 b=Zk0jAMtLNRug/vrFN2uBZEHslg4BwXOf590F2OiC77+H/jm5wug3A5JD+57pwFd0H+nNj6nRt3Ov6RvPjf3HVJQ/bsBzwn7R2lN9QNnLX+czb6/0TwEeEzXZiJ8et77PwjWO0f1JEvcqb+szLlg2l/+QDC405xLTmoVV77O9UbCmac/MD6cPQjr+xhyP/3QlTVhzozyqZc1joBZJsxtrUMYV4yTzDTr2zM1GSHtfHrjY61L1SnjV6M5d2zDwi4r2pavFme7wHaRDsTnH0uNUeacZFWelpUXDLzvdcvtb+WYkGVDxJdaDXtLR3OFUHdOTF/c4ovM0E2jkR5zCnJGaHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UEOZexBqQe7wkq6C760pOvBnmfScgEkjAY+7waV2JIo=;
 b=JsgKYwjfNSXfPUljsQzui0Iic6mlPqPrsk4XxrL9kfEoeAMQjcWw+990Q8/JWQr+tWcrPAmGsqwGw9Wv/1aigJ7cwAJqeyICVdfpp+hByOPlv4qDXGvhXQdK9EYiVr3IYd528oLd+YQ8to+qE8itzoqMV3YZVJFXAhVsgce/dhg=
Authentication-Results: amperecomputing.com; dkim=none (message not signed)
 header.d=none;amperecomputing.com; dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from BYAPR01MB4598.prod.exchangelabs.com (2603:10b6:a03:8a::18) by
 BYAPR01MB4981.prod.exchangelabs.com (2603:10b6:a03:1d::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.35; Mon, 11 May 2020 20:33:00 +0000
Received: from BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c]) by BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c%5]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 20:32:58 +0000
From: Tuan Phan <tuanphan@os.amperecomputing.com>
To: 
Subject: [PATCH v2] perf: arm_dsu: Support DSU ACPI devices.
Date: Mon, 11 May 2020 13:32:40 -0700
Message-Id: <1589229160-18558-1-git-send-email-tuanphan@os.amperecomputing.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: BYAPR05CA0056.namprd05.prod.outlook.com
 (2603:10b6:a03:74::33) To BYAPR01MB4598.prod.exchangelabs.com
 (2603:10b6:a03:8a::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from aptiov-dev-Latitude-E7470.amperecomputing.com (4.28.12.214) by
 BYAPR05CA0056.namprd05.prod.outlook.com (2603:10b6:a03:74::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3000.11 via Frontend Transport; Mon, 11 May 2020 20:32:58 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [4.28.12.214]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 827201bf-5b43-434d-e5f1-08d7f5ea7df5
X-MS-TrafficTypeDiagnostic: BYAPR01MB4981:|BYAPR01MB4981:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR01MB498188B557743BBF2E5A4249E0A10@BYAPR01MB4981.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1332;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MwaKkY0gJGOH3UArFDo//Pf1o3RDRQdJuYhz6YuUeLj4aHBfBemWIJbwg602Bc0kHZZS+F9xGJ2r2k9FXJ7jMJ2y0gnomsndhfzK4QHRVfH0ITxaPdHKvfd7e2iVskS8lCJ2V4QcEx7UnajQqpX5pP17xiMQyGSxte718WZ1P+qO5muT7bKV8I6fitMcHZzQu2NYh+TyosMhbtgbCWvPNEc4JjQtrqj1/qpoaPdfMG0nHWSZHX54TqH45RP6KvVPg5DpqjNbBuGQrZAlNgD5hBmUcNtWFYZTw3BjwCTWUW5YZVA0BPEkOnhMxdT7p+AcULpiT++somOlri7pViqMU7nPwV3pFRqpddYFFuJJ4jYMgUYpA7z+qpyoed5qtBMxlgJj06nHv+O9jtytcbC3jZyLosvpPciCWlanyyUNFpOCZdmJDQRxBBcLuM8KmAW+ba46/01iSkbirWM2H5li1t9855TywHeNj5p5tG9AmQBK+grxgWlDGrTZcsMIQss7JQNlACURYx1G9JZ+9faqKp4ziGIVoA6cJlProQ/LFEU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR01MB4598.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(346002)(376002)(136003)(39840400004)(396003)(33430700001)(6666004)(66476007)(2906002)(66556008)(16526019)(186003)(66946007)(26005)(86362001)(8936002)(8676002)(109986005)(5660300002)(4326008)(6486002)(6506007)(956004)(2616005)(52116002)(54906003)(33440700001)(316002)(6512007)(478600001)(266003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: 8jD0pEwSrokQLrsu4FbQDlUgyGAVge7M5W1x4I2/XfJysOVb/fj/RGmb+L+daxgy1RcSnNIekB9fambCd5E83hlmRd1U/9QZdVVOSLMCgpD3tD2YLF0CtcewXWMwAL3Oe/VJ6eghmsxW1zUevebzrKhlaSlNkYKvPBumYoP8foEmiFcAqZu+6gpU06cPYaC7n2DQexMPMwvH1cf2V4o89YiGSxG36Lk1Qfpp+iojSQs3/lDOO7/on2CBa23I2hi9TR7X9BJdB+Y5uitl8BLbXgknqvzV2EKTPhvqomV1OB2UcWnwf9D9VH4GGEk/HP2oqeL3ROUDbLwAjYXgimSeaoxWiPndzG+rhdf4YMmcii33VYzUceAZZGtvKdGTXr7OufRW5RGNr8y5NJCr9OMpAxuD3uhvoYmxHfSZADIjCP0w7vEnjskFoFO7+2gbrtegMpGSh3ns/tZqw7RnaM7RtCQSITv0v8llEghqM46yvbQ=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 827201bf-5b43-434d-e5f1-08d7f5ea7df5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 20:32:58.3294 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jIpNrE+sdzPV0monBQcn9ench0MpCgB2ucrUtgD9Mbl1sXRd6/Za0d6uEY4PwpagIPFI+5Oqv7cT9zymziwfBFTBct68Ok4rZj5dU6b29rx91hYbqNhbGEhv93XAYab6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB4981
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_133304_623971_45908589 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.90 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.90 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Add ACPI node probing device support. Each DSU ACPI node
defines a "cpus" package with a per cpu MPIDR element.

Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
---
Changes in v2:
- Removed IRQF_SHARED.
- Fixed ACPI runtime detection.

The ACPI binding spec for DSU ACPI node is under beta and located
in ARM server group under project "ACPI on ARM".

 drivers/perf/arm_dsu_pmu.c | 71 ++++++++++++++++++++++++++++++++++++++++------
 1 file changed, 63 insertions(+), 8 deletions(-)

diff --git a/drivers/perf/arm_dsu_pmu.c b/drivers/perf/arm_dsu_pmu.c
index 70968c8..784d177 100644
--- a/drivers/perf/arm_dsu_pmu.c
+++ b/drivers/perf/arm_dsu_pmu.c
@@ -11,6 +11,7 @@
 #define DRVNAME		PMUNAME "_pmu"
 #define pr_fmt(fmt)	DRVNAME ": " fmt
 
+#include <linux/acpi.h>
 #include <linux/bitmap.h>
 #include <linux/bitops.h>
 #include <linux/bug.h>
@@ -603,18 +604,21 @@ static struct dsu_pmu *dsu_pmu_alloc(struct platform_device *pdev)
 }
 
 /**
- * dsu_pmu_dt_get_cpus: Get the list of CPUs in the cluster.
+ * dsu_pmu_dt_get_cpus: Get the list of CPUs in the cluster
+ * from device tree.
  */
-static int dsu_pmu_dt_get_cpus(struct device_node *dev, cpumask_t *mask)
+static int dsu_pmu_dt_get_cpus(struct platform_device *pdev)
 {
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
@@ -626,11 +630,54 @@ static int dsu_pmu_dt_get_cpus(struct device_node *dev, cpumask_t *mask)
 		 */
 		if (cpu < 0)
 			continue;
-		cpumask_set_cpu(cpu, mask);
+		cpumask_set_cpu(cpu, &dsu_pmu->associated_cpus);
 	}
 	return 0;
 }
 
+/**
+ * dsu_pmu_acpi_get_cpus: Get the list of CPUs in the cluster
+ * from ACPI.
+ */
+static int dsu_pmu_acpi_get_cpus(struct platform_device *pdev)
+{
+	int i, cpu, ret;
+	const union acpi_object *obj;
+	struct acpi_device *adev = ACPI_COMPANION(&pdev->dev);
+	struct dsu_pmu *dsu_pmu =
+		(struct dsu_pmu *) platform_get_drvdata(pdev);
+
+	ret = acpi_dev_get_property(adev, "cpus", ACPI_TYPE_PACKAGE, &obj);
+	if (ret < 0)
+		return ret;
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
+}
+
+static int dsu_pmu_platform_get_cpus(struct platform_device *pdev)
+{
+	int ret = -ENOENT;
+	struct fwnode_handle *fwnode = dev_fwnode(&pdev->dev);
+
+	if (IS_ERR_OR_NULL(fwnode))
+		return ret;
+
+	if (is_of_node(fwnode))
+		ret = dsu_pmu_dt_get_cpus(pdev);
+	else if (is_acpi_device_node(fwnode))
+		ret = dsu_pmu_acpi_get_cpus(pdev);
+
+	return ret;
+}
+
 /*
  * dsu_pmu_probe_pmu: Probe the PMU details on a CPU in the cluster.
  */
@@ -683,7 +730,9 @@ static int dsu_pmu_device_probe(struct platform_device *pdev)
 	if (IS_ERR(dsu_pmu))
 		return PTR_ERR(dsu_pmu);
 
-	rc = dsu_pmu_dt_get_cpus(pdev->dev.of_node, &dsu_pmu->associated_cpus);
+	platform_set_drvdata(pdev, dsu_pmu);
+
+	rc = dsu_pmu_platform_get_cpus(pdev);
 	if (rc) {
 		dev_warn(&pdev->dev, "Failed to parse the CPUs\n");
 		return rc;
@@ -707,7 +756,6 @@ static int dsu_pmu_device_probe(struct platform_device *pdev)
 	}
 
 	dsu_pmu->irq = irq;
-	platform_set_drvdata(pdev, dsu_pmu);
 	rc = cpuhp_state_add_instance(dsu_pmu_cpuhp_state,
 						&dsu_pmu->cpuhp_node);
 	if (rc)
@@ -754,11 +802,19 @@ static const struct of_device_id dsu_pmu_of_match[] = {
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
@@ -827,7 +883,6 @@ static void __exit dsu_pmu_exit(void)
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
