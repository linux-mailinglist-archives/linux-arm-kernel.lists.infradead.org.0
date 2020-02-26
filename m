Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C008516F89D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 08:38:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SEx6jazzETuKFdeGdlp2os0b9m3p94MMtmlYlEF3n28=; b=WqxTFedvLLp4G/
	G0UGQOI19/bx1h7AW76uuWwV0YFZjtRtJWTbS/wOQXHtDDRgilihcbRFhWOBT+OTEsOkxAO1CUIju
	HSE0VhtdazvzMR7TBg1JPtw3L6oHMzNRmlrfR6Zkzn0x5KZkK+9N6IHYTRP1gwa8csYHBq9jVxe9F
	anE34U3+PEkR/CaQViwhkqgXGMdKJeQ05Hel3KW7k3jGEI10u0qttjb0XFNXKl9P7yV/V2l5oGT9P
	hzCKDv8Sz0V9Fcc5mCulBBAYf02huqy4vh4Ez7DbL+Rj77m8P5gwZNVCHHvhBH5a+aup6DJB8hgXt
	S+xbuH1p/qBLJ0qGj+EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6rGc-0005iZ-D5; Wed, 26 Feb 2020 07:38:02 +0000
Received: from mail-eopbgr130052.outbound.protection.outlook.com
 ([40.107.13.52] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6rG9-0005Y1-Dn
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 07:37:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VIHJjfEaxWd1tom4AfKZnpRD/hYcIdD2kawBqHjitSQLmNMDj/thWXkW55zj4E4/EjA5MZ7sU7SGBQVbpvEkkw6ZUVha+i8eG6y3vCyEwYiz8pFhVwyNEJfeYwRALd9jkqkNxz5tCgZszvHE1AJy9MntAKmKoO+sgsSVJ6gBAJ1DsKILs8na7MtdnX63lBqefB/LRTeDqmU6ftX+yGFu1wvadf6M5Vd2S1SJxAu9Q5PO3pHWrQfVGm4PjNVGebLtdStsR91Wh3lgmOdCb5N8xRgxVoLl5SKl0WyxA7WZfMa9tH82uuivgAEahAD9uOiDgrXt/Y+8M2mS9Gl8tDQU7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vCqygfnts3sgK1yFFo/egzjFycWxa+hOkNcZaf/i1oo=;
 b=WGf8uEs3RhxsMl51pXJvOzjYPCTecg0d81Zw53xlPo+LBvSQKDjctjhILGb0wEYleZkuWiAr/9O/aj5B4L+yGfZdjv6UlYPylh2RtF5rixBynOjbcatZH788WSsaR9ERHYW0/ymbnaUCzMH0SdO4ih06culJ7Ife99/DNZ6MyHhOP0aL6XABIOzv7xG1jzcZ+cV//GysHRqb+kCF4jkEIq8WpEhC3QQF72bFQS+dyxj1dnmCRY89bm2MFfgSLRKssa9fAuLtyS1VHeuZui9FidXQwZ+PnjCTg+JKQibM2usZnFeu/yZRHjvwcbgUK9LXwBLlorKXdteOHMLOYbgn2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vCqygfnts3sgK1yFFo/egzjFycWxa+hOkNcZaf/i1oo=;
 b=qRKSziUuokVWUI145x0mo92jZpyCjjLRjnXGq7fmfe+hRIZnD5vutiqZdA2dBXSvqRIP1oz7hAnvDeJK3UnaX6Ba8aAWmRcmD9yLFKA2heIM45uMmMJT347m1ro5zizWV3eE+nCDlxd6AryK+vdu1AAZJeOR4BJkHJgoWGcmtvg=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4281.eurprd04.prod.outlook.com (52.135.128.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Wed, 26 Feb 2020 07:37:29 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca%7]) with mapi id 15.20.2750.021; Wed, 26 Feb 2020
 07:37:29 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: john.garry@huawei.com,
	will@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH RFC 1/3] perf/imx_ddr: Add system PMU identifier for userspace
Date: Wed, 26 Feb 2020 15:34:31 +0800
Message-Id: <20200226073433.5834-2-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226073433.5834-1-qiangqing.zhang@nxp.com>
References: <20200226073433.5834-1-qiangqing.zhang@nxp.com>
X-ClientProxiedBy: SG2PR06CA0133.apcprd06.prod.outlook.com
 (2603:1096:1:1f::11) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by
 SG2PR06CA0133.apcprd06.prod.outlook.com (2603:1096:1:1f::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14 via Frontend Transport; Wed, 26 Feb 2020 07:37:27 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 68682f5d-8dc9-41c4-c30f-08d7ba8ebb71
X-MS-TrafficTypeDiagnostic: DB7PR04MB4281:|DB7PR04MB4281:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB4281BAEA11C5AFEB79D8EA3EE6EA0@DB7PR04MB4281.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-Forefront-PRVS: 0325F6C77B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(376002)(366004)(346002)(189003)(199004)(186003)(66476007)(16526019)(956004)(86362001)(1076003)(6666004)(6512007)(8936002)(66946007)(4326008)(5660300002)(36756003)(66556008)(81166006)(6486002)(26005)(8676002)(316002)(52116002)(2906002)(81156014)(2616005)(6506007)(478600001)(69590400006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4281;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HG5VzL43gkz4iT1onN4rJEj93FtKn8QT/RrDOv1uNHOB98BGxmqEfdbtfqs705sNpFKKde/trydbgWaqS920hL49ytJvSsPX5RiLaVhu1a2SRrOF0gQ/klQad3vhH0w/81Out07Vfq9u9YNPC5xBSdV0vAzxR3np+aI70qigHxiYYJeDWioH9n2n92BtqYBMho72wwgxIfjrzyk53RJ1ULKChQTTgKaQYSwJiMfczApes1TlOHlJX+yEQrW4wxHqm2Cc46OEjcWbipORmILUQ4LhDY+xNut+2ViyRpvUfC6UyZZvNIVCEvBXcwhz4zFXhNpXWiW/uBXAggbGjTDV8YVjX2Ivg/kxOCN6eoHQWEvuVCn3n235PhRoaTWWECpC+VhUgZGA1tlpiQwoLmFps3LhVuShQ6IZxgMFhWV+bl4xejTopxLDOX0FhIuwaLfvFsvLuKUgkLbwITsoUiC7dbqnJLk++uy2VKDMDp5yPGx05Fnvlv1WqV41QXMtPG8rcYhS/q/cYoQT99C6Kbj4c0pttEl1Dh1A7tUnRJdGgSY=
X-MS-Exchange-AntiSpam-MessageData: KT91vDFigVZlTfttwv3V8ZFzn/0ll3hil8G2Ssn2/SHVS9/EXAnIvFPldx773e9GRFuls1zWTKiW8qCDarchi4dY2/ZJMkrDnMv/cqSeVJtUYDBx0zhkJh2rokE152b+P2minEHVUlj7MdZE1xyOng==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68682f5d-8dc9-41c4-c30f-08d7ba8ebb71
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 07:37:29.1050 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UgSgPP46wOajZ4j06UMJLh9Cl7W+r9YXLYZ7316IDQJKJfjfy2KRCGgd4Cg4cS1GFNAwWqDaWs61D+uBy9Y6Mg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4281
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_233733_463417_939DDBB2 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
