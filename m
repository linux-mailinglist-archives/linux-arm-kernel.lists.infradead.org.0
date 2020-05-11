Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 681551CDA9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 15:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SEx6jazzETuKFdeGdlp2os0b9m3p94MMtmlYlEF3n28=; b=qmVJLR/rxytPpr
	5GB43Y3MjE8Bs9cgL/gSZTpmAeVGdYshvtEbCW5L7D1iwH8+CDyHepC78E5w1bdYb4MwUi5PMYVzo
	TGWgpGtq7EfGGiIHdC1MGajKDbJ15TiYgBdipMMpeZfVryS2+OK1ZXrGH1zTmuwxnzEw5Ys8ZYLi6
	JPyGv1HFsunHStIz8CQAQN3RgVBru6Fcz0ZZDGDiOm15DWbq7hByL2lpzBwbLbk6G6VgVOl5EfOXT
	ahEaHJRrnmilwU83aa15DJSu0n6mA7fbYUkvFxpHciP0avvYMr23QpMvKkrtheCyiVsmyzB9mwdK0
	MyPsmnvdMyoXp1XXC87A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY831-0004NB-JO; Mon, 11 May 2020 13:00:43 +0000
Received: from mail-eopbgr80053.outbound.protection.outlook.com ([40.107.8.53]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY82h-0004DF-QH
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 13:00:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ht95Yg2XQLCJfXZQ8yegonIQCg/HEtEfmvk0ap00GxSOAfWWYva8mdz+704Oobc9HlDpMUfpx+JHXkVyJJI9WBrFxcU6zHohacJq21eSgcOcKrzpPg565/fT+P9KwzMT6GBE3gTFkxvvCa5nPAknljO5Ll5W6RCAOrkYm1tQZQgjgKmsYdrZ42GBLCHvT6d7qM1id9xjP77HIqQAMu3GHInKDAHZF6L8lxOPpxQfzRG6JOpH5XK9tsSZ7AL/lSADuc9hE9wuufTyo9LZx1MhJ4AAsPyV1QnI4vCF9L79Hf0oz7VZWiWj2OWDChNTaMcMPqtB8jflizIvd5rjgSHvAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vCqygfnts3sgK1yFFo/egzjFycWxa+hOkNcZaf/i1oo=;
 b=lD//IYxxmnpJUTs2hhiXJe8tgr+Wh5bhfAeX7hmt14vh9y6YdW06zGpnofIZjnlW5Vs/w29zPHZqmtw8sdxmGsRF6hVU27pgc62PTTNu4WQyKB+NIv24Dt5LUgkv9GQrXxYaQzcvQmnolnCAhej4yOMnQiVDyShT59GvLmbK9OE3IdnIkJSp2/NkZ9byXz3KB4+RmbH6Z/lMtd8A2nWsa6Z0e9Z+j4CFI+Qe7q0dKvLs1pON/8pA/LY2y3ipqyzvEL3Ac28Su4gvfsSQt7Nx/wgDgfwgqKvREYau1CBGdRufUZ5uh14VBRLE6w9E+X9/5HMFQmWvLrehJosK4arfaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vCqygfnts3sgK1yFFo/egzjFycWxa+hOkNcZaf/i1oo=;
 b=dFS8mShjxdUF22dawTk08YFHd129i8LqxE5rb0G5KdJjew72TNa5RcYTT+yYpNiWAC1dGP7Mvb8WR24BVH/vDabTBFcmP8qlrT3buMoAKlUkD4hILJdt0aia73deJzOqcqBvZysC+9NJSaW0oz9RK9BK7LBef3CIags1KVbX9yc=
Authentication-Results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB6491.eurprd04.prod.outlook.com (2603:10a6:10:10f::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.30; Mon, 11 May
 2020 13:00:20 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%6]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 13:00:20 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: john.garry@huawei.com,
	will@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH V1 1/3] perf/imx_ddr: Add system PMU identifier for userspace
Date: Mon, 11 May 2020 20:57:11 +0800
Message-Id: <20200511125713.13536-2-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511125713.13536-1-qiangqing.zhang@nxp.com>
References: <20200511125713.13536-1-qiangqing.zhang@nxp.com>
X-ClientProxiedBy: SGBP274CA0024.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::36)
 To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by
 SGBP274CA0024.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.28 via Frontend Transport; Mon, 11 May 2020 13:00:18 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: be1f9a3d-1a72-4fa9-b1ac-08d7f5ab425d
X-MS-TrafficTypeDiagnostic: DB8PR04MB6491:|DB8PR04MB6491:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB6491DD314674B910C7735A68E6A10@DB8PR04MB6491.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CBV416bLQp+rzFF4lk5EZzTgi9nG8YPLk/aOHZHtOkCmr86swqFiX3jfdAnwyygSIwWDb+KzxGjxNt8E+2nu90OeHbx4Lxip8g4jpZ9wrBZsAIDC0A9XMoEQ5zwvRK8uflzF4NLQcrDvG3tkAbd/kWyO719fHIUG0v2xZqz8MYRHCuX2hOS+5Sw8fvOFw9mW6wn86y429MtNoJEXcDKpSo+E4s5fd1ViHQLngEW85ZH4/FXSt0s5MKzbcgQseNJjV4S0xrfEn65QucBToUtc7m6yp9GOlTeY21zXpuonh/G8ygK3h8dNzFjjX1yjrpzuqHl9dw8Y0eE0zTKJZWRpJG4KtQ8MaTne2DQcEqwr1RYUXt7piwzIQjb05brxuFNDrpXri54QhGYjMTdGhOH8rwbdepNnHx9Kp0BPPKSQM2QJWZuhclx1xrTrASPvEKB7SF5s77MK4nsorOZPLiBxJeUwyCPgBxUkUL9apFBHMZ498k3hTqII0SQwz10sYYX2GpvqcWaf2AtjNJDRjj4Uls9olPVqzyKJXE/05a0W5xsI911LcfkHKIRh2Rzsp0VU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(396003)(346002)(366004)(376002)(39860400002)(33430700001)(66946007)(316002)(8676002)(6486002)(6506007)(86362001)(52116002)(4326008)(8936002)(69590400007)(66476007)(66556008)(6512007)(6666004)(33440700001)(2616005)(36756003)(1076003)(478600001)(16526019)(186003)(26005)(5660300002)(956004)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: J/dtNcR2BGc9JbDZvMloFj96k5mP38WgMM3ziW8v5qKtmHy9h5zQs9u6EmQDHlpVqTmTcqRewbgaRs4QmNLZybY+icm4RJk+aQ/IJplIIHjS8+Tc3D0m1ssIvlNyU4cAGhJCwqDN8XTC/GFllqOXdiKg4/5kbATniVIIvatV3r3LcJR8myBrXupeFqalTI8B5QmINZ6MoGACAmBroicqyVB/lrb1q2jsPDdG9c3l0c7U6acnZ1jNbPokvBPhkTsDGGqWobCyEF8eE2xR99L2Ie/KWB7BdyBVtW9juNzq0ZQ+8V/Y5xrh/pt0s0jocMLuOWmkVfXXqCJWCX3IrLsAEELyeLKkTusqqEDsTaJ2H5hss4OSTi6oKMyNakSUasYy7xJnd0aMSybKohs+sBeSMWni3FfbnqukX9CsYaeaUbCPkIEASFaiS3OjcH4ml5gPz3Y7ZXwmx8uaZ+dvl4UMfUE2EF9E5jyee9nRT1GUnes=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be1f9a3d-1a72-4fa9-b1ac-08d7f5ab425d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 13:00:20.0721 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6WlNv0KlU6676kdgJOF27KV7dX0rnMLte+zIg8HNxqRcPBCZn1YgsJ1dfGXw2CUdzxm/Pyn6vAdcwpKysLqJDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6491
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_060023_847880_9E57B806 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.53 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DDR Perf for i.MX8 is a system PMU whose axi id would different from
SoC to SoC. Need expose system PMU identifier for userspace which refer
to /sys/bus/event_source/devices/<PMU DEVICE>/identifier.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 45 +++++++++++++++++++++++++++++---
 1 file changed, 42 insertions(+), 3 deletions(-)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 95dca2cb5265..88addbffbbd0 100644
--- a/drivers/perf/fsl_imx8_ddr_perf.c
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -50,21 +50,38 @@ static DEFINE_IDA(ddr_ida);
 
 struct fsl_ddr_devtype_data {
 	unsigned int quirks;    /* quirks needed for different DDR Perf core */
+	const char *identifier;	/* system PMU identifier for userspace */
 };
 
-static const struct fsl_ddr_devtype_data imx8_devtype_data;
+static const struct fsl_ddr_devtype_data imx8_devtype_data = {
+	.identifier = "i.MX8",
+};
+
+static const struct fsl_ddr_devtype_data imx8mq_devtype_data = {
+	.quirks = DDR_CAP_AXI_ID_FILTER,
+	.identifier = "i.MX8MQ",
+};
+
+static const struct fsl_ddr_devtype_data imx8mm_devtype_data = {
+	.quirks = DDR_CAP_AXI_ID_FILTER,
+	.identifier = "i.MX8MM",
+};
 
-static const struct fsl_ddr_devtype_data imx8m_devtype_data = {
+static const struct fsl_ddr_devtype_data imx8mn_devtype_data = {
 	.quirks = DDR_CAP_AXI_ID_FILTER,
+	.identifier = "i.MX8MN",
 };
 
 static const struct fsl_ddr_devtype_data imx8mp_devtype_data = {
 	.quirks = DDR_CAP_AXI_ID_FILTER_ENHANCED,
+	.identifier = "i.MX8MP",
 };
 
 static const struct of_device_id imx_ddr_pmu_dt_ids[] = {
 	{ .compatible = "fsl,imx8-ddr-pmu", .data = &imx8_devtype_data},
-	{ .compatible = "fsl,imx8m-ddr-pmu", .data = &imx8m_devtype_data},
+	{ .compatible = "fsl,imx8mq-ddr-pmu", .data = &imx8mq_devtype_data},
+	{ .compatible = "fsl,imx8mm-ddr-pmu", .data = &imx8mm_devtype_data},
+	{ .compatible = "fsl,imx8mn-ddr-pmu", .data = &imx8mn_devtype_data},
 	{ .compatible = "fsl,imx8mp-ddr-pmu", .data = &imx8mp_devtype_data},
 	{ /* sentinel */ }
 };
@@ -84,6 +101,27 @@ struct ddr_pmu {
 	int id;
 };
 
+static ssize_t ddr_perf_identifier_show(struct device *dev,
+					struct device_attribute *attr,
+					char *page)
+{
+	struct ddr_pmu *pmu = dev_get_drvdata(dev);
+
+	return sprintf(page, "%s\n", pmu->devtype_data->identifier);
+}
+
+static struct device_attribute ddr_perf_identifier_attr =
+	__ATTR(identifier, 0444, ddr_perf_identifier_show, NULL);
+
+static struct attribute *ddr_perf_identifier_attrs[] = {
+	&ddr_perf_identifier_attr.attr,
+	NULL,
+};
+
+static struct attribute_group ddr_perf_identifier_attr_group = {
+	.attrs = ddr_perf_identifier_attrs,
+};
+
 enum ddr_perf_filter_capabilities {
 	PERF_CAP_AXI_ID_FILTER = 0,
 	PERF_CAP_AXI_ID_FILTER_ENHANCED,
@@ -237,6 +275,7 @@ static const struct attribute_group *attr_groups[] = {
 	&ddr_perf_format_attr_group,
 	&ddr_perf_cpumask_attr_group,
 	&ddr_perf_filter_cap_attr_group,
+	&ddr_perf_identifier_attr_group,
 	NULL,
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
