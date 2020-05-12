Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2D41CEE36
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 09:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7sGs/qA06PUy4JzGM9qm0q1lRex8YgNUrqj+XkFAAY=; b=R11nYwq31e2p/Z
	9fNge2jNeJwQjpmtpJQijEqfPR6juJvtXvr475pxdDkiutJoV6PdaMcKFK1GP4LihB0kP7/aBhcx2
	m9af/++ZxJYGWJv43WfNUTx0PB52haxnD8F+sYOBkeU5CRACsP3AaCiuHjI2WT9C6qqKncW+SBGX7
	IsxQEc6v7xq4L6U1sSCD9JXlzkEuqm7+679LBhNxTQnfOCFoX9Xna2MkVljdYHY9wrKNk6EV5WDUZ
	KadaFYNN72lt9EybnNzoXO2EKJWUqDmmFETXOA8084n+je6w9c9IavcAEDbsDTEFPcHW545Dp4444
	ZGz66T8EQy6rS4VprqIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYPSD-0000hS-7v; Tue, 12 May 2020 07:35:53 +0000
Received: from mail-eopbgr60071.outbound.protection.outlook.com ([40.107.6.71]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPR0-0005bi-0z
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 07:34:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mszTq3E29/3pNGAnmkoLpuXyfzPSs4OgLNK6PEiMFGmQEmHTvx2YtOnwSn6FiaQtBhaD/Hf57Rd6f51mUXqsvQrGjAp4che4SLuaYLuIs8tIvBvdO0HASotgyt1IuxVp5Hnj+b/sdUlVaTtjDevND8gHiXfPVXs3D0ZtzcPsFJ2mqI7ekYmlXAwweCJVf4OTJxiv9LHSOwCeA+fYAFnEQVUhwesysXRlwCjsVOwNmI2YJ2WsyWClFMLugFtTMGshX+b5BxkAxPn1OemrVi8k/NE7FybSt0kZH958atvDAkcuClpjgpM2GyFoRnB0U9qAsZq5xAFAYmjYtpwzZr7/jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=44Oo81Knbm15i+C/H7U5LenIqnpYDiODtbQVZRNXUPc=;
 b=aBHehRVt2F80fZ5LEU5bcjx+a2fUESeqXtc2pxeulnP51eCLsxkkI226MmKo8BA9IgzHtHhnwduGuJVT8hj7q/e52VPu9Cfsgv65BDpSDjvI1KiNmI5Q1nXKFiOQIdepyGNvo5V/P5ySKm3565pIeN+OJfVyth9zChEh0ntfSgM25xbjk6GI4zkI+55YMy3V86+SXFNqMIIuoVjlYeUWDtG6CdPAI+Mnc2k88Kw6thff9HR5SUXU+o0CdR5cQYZYYYE0M18xPXjeZBHh1u5X0qLW6zH+xV3cLCkg1HEeP6YLwzw5FhhzL90+FbB3zR08QYl9guiQuIaROCcmr9cp4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=44Oo81Knbm15i+C/H7U5LenIqnpYDiODtbQVZRNXUPc=;
 b=Jy5RVRx/1trALVNodLDJyhZAtiCRMs7rgH8/0JGNzKYUkSBGFqY6IhIecOt/Ur21ARL1a/W/agc2awb9aZtcwjcAl0i2zdbsmJvT/9S1CANHjaEJUJvWLda+Kh8VVPNg/s2Ifc2BLVf16kpIBGWSNdvamq3sUFEtRGDv1FMxLSc=
Authentication-Results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB5882.eurprd04.prod.outlook.com (2603:10a6:10:ae::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Tue, 12 May
 2020 07:34:36 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%6]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 07:34:36 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: john.garry@huawei.com, will@kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, shawnguo@kernel.org
Subject: [PATCH V1 RESEND 1/3] perf/imx_ddr: Add system PMU identifier for
 userspace
Date: Tue, 12 May 2020 15:31:13 +0800
Message-Id: <20200512073115.14177-2-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512073115.14177-1-qiangqing.zhang@nxp.com>
References: <20200512073115.14177-1-qiangqing.zhang@nxp.com>
X-ClientProxiedBy: SG2PR0401CA0006.apcprd04.prod.outlook.com
 (2603:1096:3:1::16) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by
 SG2PR0401CA0006.apcprd04.prod.outlook.com (2603:1096:3:1::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.27 via Frontend Transport; Tue, 12 May 2020 07:34:32 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 41e6c064-8749-4b2d-6e5e-08d7f646eb58
X-MS-TrafficTypeDiagnostic: DB8PR04MB5882:|DB8PR04MB5882:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB5882036B36DA7F49F1DEC3F6E6BE0@DB8PR04MB5882.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-Forefront-PRVS: 0401647B7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: V7j2e3ToSKLgoDYJH0ew0h06BGs6+783hwkeWxIbL9JZhJtl/J7om9vU+SDTYlC3ln1aKXzfnmnXkYsegb8c7lfPl3YG83cYbWyBdamdm2m/Ag6E6lQ60yzzzzVmNBlELccc4ZZ3IqQqARMcakid9uMfNbY5hdMmZ2YvC0nbE78EOFHaC3mGm1t0jqGGm1sQ7Qy0eJM3ZZrsSFwO7UTJsjm6DzB2jlYnpdXKf7zSP/bE77Mnsh3KIXACVrJpmswGcGJAmHgG5e+xJC5T9JmYxiomuuG2noW/NcHlb2WFaz4gITTmRHDHFMQCd82uPY/JAT3bihTv4Gu5j2ypQDdCfCTPReiN/oj5cnTrkQ6QDajuBTrtqhKDQGyB9VtesLaRb+DDzAnhqJBufJe0giTDIS6BRqgtSPMAFhVv+qcexcGdJXS8trc2d9DNoHk4nMqg6voPYJF0XRgC886G3nTlGsaf/VqEnFbLv3uZf25qbZGC/k1YoSKGgbdVKpiPYZhobYeC1+gusg8WgGKFzb8LcGPi/an2Ck8UI0cbp33g0slbbKK9rgtEovSHYmVL/JN3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(136003)(39860400002)(346002)(376002)(366004)(33430700001)(8676002)(69590400007)(33440700001)(5660300002)(66476007)(36756003)(66946007)(1076003)(8936002)(66556008)(186003)(4326008)(86362001)(16526019)(6666004)(26005)(956004)(316002)(478600001)(2616005)(6512007)(6506007)(2906002)(52116002)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: VWlXaO5dcmc97vzzgRLwKJMqKuEd0a2BNdl7av+byX57CKs1gsix3vOJnAdekw3pPv6GpMeJfP0g0dGmLGDH2Wtc0QLoPaByCKdpTDeV5rPDKQf7lOAbE2bAM5gB/4iWyII15sFV5Ps37sESHYKdGWJxsEfYMyoz7xGALE/lX86NBF3nZ0s+PK/HPm5YeYRWJP59lixZK+1FHYnQdmHXeSli4ePn20YSZ5EjoHY4S6EK9wT6TZmmCLx1kOANVzom0E5M3f+I3IBULq58XBrUi0L6KXEoERZ25HLbUg9WPfs6qPZuFL6gHsuUX2cB0I6deVMy0mOWZ68uQOiPdEkBEURDTQEwiEHIEnQU0GWtA2g1sL89Z4V6uwE61k3JzBXRIvz3a7D5a2e5a2uqM9HHDJMw+8QpFOC+DWgPmF79VQnQtT2b1Lcr97Cg3z2VxH2kAHKkdz1vDn4OO1pj+HONVYaT9jx04Qn0TrP+aj8I3Bs=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41e6c064-8749-4b2d-6e5e-08d7f646eb58
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2020 07:34:36.4159 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K5h+bCJSreKyvhbEvzimvc3CSYaZ8M2ClSqCWkT3669mU9GKo4hb8t2FX9+al+u+CblINKQT5D8yxgTyxQW2Wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5882
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_003438_097076_AF0BBEDA 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.71 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.71 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DDR Perf for i.MX8 is a system PMU whose axi id would different from
SoC to SoC. Need expose system PMU identifier for userspace which refer
to /sys/bus/event_source/devices/<PMU DEVICE>/identifier.

Reviewed-by: John Garry <john.garry@huawei.com>
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
