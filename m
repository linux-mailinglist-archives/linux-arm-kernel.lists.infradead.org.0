Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C62271B8B49
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 04:29:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqXul3Tna4EeruzZkJLn8i4eIeL1XU1f4Vy9MZxfULo=; b=twZkvIJrWFax8N
	p7KFO120YW3OJ0lYCJ6hgRyq7KyogfL/bAzIjeKtE9MQFqxM1AvyzHNhIbP8hRtdrvcRGOjUr0VrP
	2m6SAHP8RMPmQQOzczilJsIcPyPg0gIsC2E2e8TewVXybEOAxf+E/qrokVA4bX4cs2Tyo9mxM9Ro7
	Z2NY4Xmf7dbjuMz9X+WsibuqdB+MXRQiQdLy20mGWzD8nz4d8TebrdO4YJLve26FctgbQxuP4s1d6
	+LQp/KZt1V8JFPEmi1UtVapqkxC1GLBnbfGY/o1OBFG80BqGsyalw/xJykat2uQiC96G+L5o6TXLj
	X9mFUIDzzItL9Ykk21rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSX38-0005L8-Fy; Sun, 26 Apr 2020 02:29:42 +0000
Received: from mail-dm6nam11olkn2103.outbound.protection.outlook.com
 ([40.92.19.103] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSX18-0003oI-2n
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 02:27:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=axeoXTnJqCBEo4TmUfkEhwKdgec5U1MRwAlFt21Oh6u5Hns5T6W6cV2/xQ2ik2Z9o7L1RO7WDmMzeavta+lCZ/ikmIWpAU6rGqEcIYhJ69WRCLxvtAk37ilCVrxtYQADuap/UyYRocMYvGaJ+L/B4SbwGBEXaLgswefJ+qwcA1O0K36C0WYBwy+koiUVjkCWdsBqUi86sYP8zOwMErzJW0cwb5HWbtmtxm/dUX9gTsPnv28thOxg01b+XwQ2QwMFvpSwhYuHImxJrUGgMu7rp7IQvYcqU9rwr7p8trkCFKyUHxVjYh+tJl9pCnJ6hK/rgOvOVSvvIuKZS0YkUKtFPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OWrUgCZ/HEFpv6SpAV0Wh+fxnUYTb8+u4Kdk3p6nBbs=;
 b=D6EdOYrY7Asscp3pcCwk7AQCoEQW94pWCM1L1zQxwJ7NcqDunDk3Aw5VN51z2fgKy2fcOi9TnVWO73zgj2GYjefpAcXSyj/qOhQ9gBabSjyUtISPoqYkv5+EEGCguckmeh00HvsEfjG2A259Ieiae2wWgfxPUwFxS+G5XKAtvccxWFh59h7VtbihJKjz9DstY0DEAWmB2KTvP9RFc6SqjiR2ekNq9FyPMuOHkstrNij1oheg0dIGW2xUjmYxH5pBo5Re4I6MTceO9uFl7esGh2R24b9My9MNGHv4xh/S4EzP/WRcsYuM6FC0EmWEopKeP01NjqSEIi+6uy0gCY02RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM11FT041.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::51) by
 DM6NAM11HT151.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::256)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 02:27:36 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc4d::4a) by DM6NAM11FT041.mail.protection.outlook.com
 (2a01:111:e400:fc4d::98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 02:27:36 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:77AAC2A11B984BCCA2B45863852769CF87DBC6623CDA8F98340850970B9ECFF2;
 UpperCasedChecksum:184ACF76DD85EF8AF484AABF6F748EB1BDB5080FAEEBF62DD1D087B8891CE458;
 SizeAsReceived:7875; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 02:27:36 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kyungmin.park@samsung.com, s.nawrocki@samsung.com, mchehab@kernel.org,
 kgene@kernel.org, krzk@kernel.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 07/11] media: exynos4-is: Add support for multiple sensors on
 one port
Date: Sat, 25 Apr 2020 19:26:46 -0700
Message-ID: <BN6PR04MB0660CE60DA8585C5E1DA9EB9A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426022650.10355-1-xc-racer2@live.ca>
References: <20200426022650.10355-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0086.namprd17.prod.outlook.com
 (2603:10b6:300:c2::24) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426022650.10355-8-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 MWHPR17CA0086.namprd17.prod.outlook.com (2603:10b6:300:c2::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Sun, 26 Apr 2020 02:27:35 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426022650.10355-8-xc-racer2@live.ca>
X-TMN: [miH5yeqLlI+WRBIESIzFByZYcL/hSNyoM+wsqWc+8Y8rCl0PKUKgO8x4d5gvMT04]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 32777673-8530-483d-f3f9-08d7e9896235
X-MS-TrafficTypeDiagnostic: DM6NAM11HT151:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hTo1zXR/VH/vy1QJK9RAJT1ERdrFXDFNHzIyigAhdWSePF74W8BlfOHUhx94Xm4evv27jHI8HQ7pMXqB9jNVJ8ILpiuKpG+pUcb0Aj6I22EHGukJpA14Bh1BNYB76txAaKqTcUupG9d8lHHaPfCpeaU7hYFGV9TBWgeYfWAZfp/c3z2tZ/3ye7Ti1s+cHJYz7NhB14UhF6CaRDjMUdIPqg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: dG2g2LIxKVZa8/STSh2QO7LCoZfdwgASngEsAczxLbGnW9IIidMvxCTJY/ZqLtFTu5Y/15+JrDCiWn33DafTpnpSDDoREmydNtmTIxs947a2kYh004rdtJKSm0dgjnOz9MM2h4zGA3cO26ayRx85OZCW9dDeWZMByNuslOINeLsUFaTGZepSbzeN2yunZ3tGrlfr7g+o/SZ3zW9R7kwcpA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32777673-8530-483d-f3f9-08d7e9896235
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 02:27:36.7067 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_192738_144694_5A40CF2F 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.19.103 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.19.103 listed in wl.mailspike.net]
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
Cc: Jonathan Bakker <xc-racer2@live.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On some devices, there may be multiple camera sensors attached
to the same port.  Make sure we probe all of them, not just the
first one.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 drivers/media/platform/exynos4-is/media-dev.c | 32 ++++++++++++-------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/media/platform/exynos4-is/media-dev.c b/drivers/media/platform/exynos4-is/media-dev.c
index b38445219c72..a87ebd7913be 100644
--- a/drivers/media/platform/exynos4-is/media-dev.c
+++ b/drivers/media/platform/exynos4-is/media-dev.c
@@ -397,25 +397,28 @@ static void fimc_md_pipelines_free(struct fimc_md *fmd)
 /* Parse port node and register as a sub-device any sensor specified there. */
 static int fimc_md_parse_port_node(struct fimc_md *fmd,
 				   struct device_node *port,
-				   unsigned int index)
+				   unsigned int *index)
 {
-	struct fimc_source_info *pd = &fmd->sensor[index].pdata;
+	struct fimc_source_info *pd;
 	struct device_node *rem, *ep, *np;
-	struct v4l2_fwnode_endpoint endpoint = { .bus_type = 0 };
+	struct v4l2_fwnode_endpoint endpoint;
 	int ret;
 
-	/* Assume here a port node can have only one endpoint node. */
 	ep = of_get_next_child(port, NULL);
 	if (!ep)
 		return 0;
 
+parse_sensor:
+	pd = &fmd->sensor[*index].pdata;
+	endpoint.bus_type = 0;
+
 	ret = v4l2_fwnode_endpoint_parse(of_fwnode_handle(ep), &endpoint);
 	if (ret) {
 		of_node_put(ep);
 		return ret;
 	}
 
-	if (WARN_ON(endpoint.base.port == 0) || index >= FIMC_MAX_SENSORS) {
+	if (WARN_ON(endpoint.base.port == 0) || *index >= FIMC_MAX_SENSORS) {
 		of_node_put(ep);
 		return -EINVAL;
 	}
@@ -462,16 +465,16 @@ static int fimc_md_parse_port_node(struct fimc_md *fmd,
 		pd->fimc_bus_type = pd->sensor_bus_type;
 	of_node_put(np);
 
-	if (WARN_ON(index >= ARRAY_SIZE(fmd->sensor))) {
+	if (WARN_ON(*index >= ARRAY_SIZE(fmd->sensor))) {
 		of_node_put(rem);
 		return -EINVAL;
 	}
 
-	fmd->sensor[index].asd.match_type = V4L2_ASYNC_MATCH_FWNODE;
-	fmd->sensor[index].asd.match.fwnode = of_fwnode_handle(rem);
+	fmd->sensor[*index].asd.match_type = V4L2_ASYNC_MATCH_FWNODE;
+	fmd->sensor[*index].asd.match.fwnode = of_fwnode_handle(rem);
 
 	ret = v4l2_async_notifier_add_subdev(&fmd->subdev_notifier,
-					     &fmd->sensor[index].asd);
+					     &fmd->sensor[*index].asd);
 	if (ret) {
 		of_node_put(rem);
 		return ret;
@@ -479,6 +482,13 @@ static int fimc_md_parse_port_node(struct fimc_md *fmd,
 
 	fmd->num_sensors++;
 
+	/* Check for additional sensors on same port */
+	ep = of_get_next_child(port, ep);
+	if (ep) {
+		(*index)++;
+		goto parse_sensor;
+	}
+
 	return 0;
 }
 
@@ -515,7 +525,7 @@ static int fimc_md_register_sensor_entities(struct fimc_md *fmd)
 		if (!port)
 			continue;
 
-		ret = fimc_md_parse_port_node(fmd, port, index);
+		ret = fimc_md_parse_port_node(fmd, port, &index);
 		of_node_put(port);
 		if (ret < 0) {
 			of_node_put(node);
@@ -530,7 +540,7 @@ static int fimc_md_register_sensor_entities(struct fimc_md *fmd)
 		goto rpm_put;
 
 	for_each_child_of_node(ports, node) {
-		ret = fimc_md_parse_port_node(fmd, node, index);
+		ret = fimc_md_parse_port_node(fmd, node, &index);
 		if (ret < 0) {
 			of_node_put(node);
 			goto cleanup;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
