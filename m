Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C1A19F7F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 16:28:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGKMDM56IRWxDHKvHvEBg0jZOd9sdyYsXkHiv1Mn634=; b=uwEt5rDLkGuL8D
	RMblzrIer62gxU4Chb9qk5uB+GIQTothGKy5DYtRd8XvwXmrQQUlIhF6srYLn4yN+HBm3FAGyr0YA
	t9LtAE0MP2ltQHYnT3MiVSk0P5oNTPtCA/ax2eoxykYq23DfWWylkEQ0NAIbnDKt3cCcMqXUKB1o6
	pWJH0AhYr2xfsa9gBIGWENHgadP9yvobjVN6xl8zuWWKm/a7uLkbe7mEBl2LL+RxzcQIRaM4aAWTm
	puPY1lYLz6HU5JT6ESpyrsTs4OMS24eiKdjehMbsFF/DfZj4S3JmnfhAw0jdXLn5PqdoRvA023hkF
	R1p97EJvIVG0PVvGRUSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLSjg-0006UO-ND; Mon, 06 Apr 2020 14:28:24 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLSin-0005sJ-1m
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 14:27:31 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CDE311A0E69;
 Mon,  6 Apr 2020 16:27:27 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BDED71A0E68;
 Mon,  6 Apr 2020 16:27:27 +0200 (CEST)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 434B4204E6;
 Mon,  6 Apr 2020 16:27:27 +0200 (CEST)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: anda-alexandra.dorneanu@nxp.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 "stuyoder@gmail.com" <stuyoder@gmail.com>, Leo Li <leoyang.li@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "bharatb.yadav@gmail.com" <bharatb.yadav@gmail.com>
Subject: [PATCH 07/10] bus/fsl-mc: Export a dprc scan function to be used by
 multiple entities
Date: Mon,  6 Apr 2020 17:27:10 +0300
Message-Id: <20200319154051.30609-8-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319154051.30609-2-diana.craciun@oss.nxp.com>
References: <20200319154051.30609-2-diana.craciun@oss.nxp.com>
Received: from AM6PR04MB5655.eurprd04.prod.outlook.com (2603:10a6:10:130::38)
 by DB8PR04MB6665.eurprd04.prod.outlook.com with HTTPS via
 DB8P191CA0028.EURP191.PROD.OUTLOOK.COM; Thu, 19 Mar 2020 15:41:33 +0000
Received: from DB6PR0802CA0025.eurprd08.prod.outlook.com (2603:10a6:4:a3::11)
 by AM6PR04MB5655.eurprd04.prod.outlook.com (2603:10a6:20b:ae::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.21; Thu, 19 Mar
 2020 15:41:32 +0000
Received: from DB5EUR01FT038.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:4:a3:cafe::e5) by DB6PR0802CA0025.outlook.office365.com
 (2603:10a6:4:a3::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.15 via Frontend
 Transport; Thu, 19 Mar 2020 15:41:32 +0000
Received: from vger.kernel.org (209.132.180.67) by
 DB5EUR01FT038.mail.protection.outlook.com (10.152.4.191) with Microsoft SMTP
 Server id 15.20.2814.14 via Frontend Transport; Thu, 19 Mar 2020 15:41:32
 +0000
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
 id S1728235AbgCSPlT (ORCPT <rfc822;diana.craciun@oss.nxp.com>
 + 1 other); Thu, 19 Mar 2020 11:41:19 -0400
Received: from inva021.nxp.com ([92.121.34.21]:51868 "EHLO inva021.nxp.com"
 rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
 id S1728133AbgCSPlO (ORCPT <rfc822;linux-kernel@vger.kernel.org>);
 Thu, 19 Mar 2020 11:41:14 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 336842000DB;
 Thu, 19 Mar 2020 16:41:12 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2666D2000C2;
 Thu, 19 Mar 2020 16:41:12 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id CCF60205C2;
 Thu, 19 Mar 2020 16:41:11 +0100 (CET)
Thread-Topic: [PATCH 07/10] bus/fsl-mc: Export a dprc scan function to be used
 by multiple entities
Thread-Index: AQHV/gTd0IBhguFiUUKXr/Iwkqstiw==
X-MS-Exchange-MessageSentRepresentingType: 2
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
In-Reply-To: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
Content-Language: en-US
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Organization-AuthSource: DB5EUR01FT038.eop-EUR01.prod.protection.outlook.com
X-Auto-Response-Suppress: All
X-MS-Exchange-Organization-Network-Message-Id: c47a5864-4756-43a7-b50f-08d7cc1bffcd
X-MS-Exchange-Organization-RecordReviewCfmType: 0
received-spf: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
x-ms-publictraffictype: Email
authentication-results: spf=none (sender IP is 209.132.180.67)
 smtp.mailfrom=vger.kernel.org; oss.nxp.com; dkim=none (message not signed)
 header.d=none;oss.nxp.com; dmarc=fail action=none
 header.from=oss.nxp.com;compauth=fail reason=601
x-ms-traffictypediagnostic: AM6PR04MB5655:
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:1; auth:0; dest:J;
 ENG:(20160513016)(750127)(520011016)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?NkYokCVMJlks/2FjVV2+RjTVggFBmHOFFrzTOM4Yvy2+cd4BNW/G42gF7s?=
 =?iso-8859-1?Q?hthB2zzr3sd9NHkYacuzGWWkWBnOEeR+iJoLEYQiUDvP2z9lTSnUS0XxiB?=
 =?iso-8859-1?Q?1QorYiQQS54SA2WqtHAbz1DrTyRYKoGI932GTXDeCKeFjGP7lwZjnmyzYh?=
 =?iso-8859-1?Q?UlphjqZEbgdk1ftQ6pmBXIxNBG4oYS9ki2Y4T7cBJX/0ZGMiPqj8D/Z+5w?=
 =?iso-8859-1?Q?hNQHvoTRA/Kj0zf9k9QWkeQirTwNAB1ULiyGGo1bHRzQjNWHln34gJLisg?=
 =?iso-8859-1?Q?vU8TrhGmzjLb0SURuCSdbmo3BfQJzVBP/1RjR6ObvQn9AUKl0cP2Rgl9Bt?=
 =?iso-8859-1?Q?ZJcNM0wufEYGjbgImdSvs1IZo/ZO1EOqHdLr86V0ice0u/5YJm8Z8MDwX1?=
 =?iso-8859-1?Q?TA8OWu+26LYvBB4UrDfcbks1EmyH6qhGOn58vt5dUpIaKoMfbh/4bBxI1N?=
 =?iso-8859-1?Q?oAgUOKQ8oIBgvPOPuT8F0SNrakqfAKSpMqxLiIgqq7NQip6g8MZwhyvq+V?=
 =?iso-8859-1?Q?j2boD5t99kZp2NfPXeTyulpUf52QpMmUb5k1ZsBcRF6Dfkcv5gyZZsmtj3?=
 =?iso-8859-1?Q?wsUcv2X8vB9R9K99KcUqCu+PfEDSXspujXNw2OEhbH/9bfPFfwUOUBG3UI?=
 =?iso-8859-1?Q?DfBJdN6qKtVlIxDQIQA65Jpd43NQx9gKwezAEkAWQN2JT7zILbIOLn/JCo?=
 =?iso-8859-1?Q?7AokHLecoKleuum
 VHG0fOSroAnHa7m9xRj3ySTtKvBv9hZsA1K4Y6oVulD?=
 =?iso-8859-1?Q?kNFR7VqOQT5xl8I7rr+kBudc5MlTMRaY4QVaUWWp9Mg3lPfcVu5d9iPph8?=
 =?iso-8859-1?Q?oBWZJGx5iqq2j6eZCVUoK3sy/A4QNaWjbuK7/E1IrzBnqf5Hv+YG5OqjG9?=
 =?iso-8859-1?Q?miVgbUmIf96thMMouk+Fe95zNyyru4AQC6jghOpPSfDB0iEkEjPNK81t/b?=
 =?iso-8859-1?Q?lgIc7ITetU0oHmRoUmo2tFYAnOUlHMVDI8nCFQYbsFG7l3xRSqzV9x8nHT?=
 =?iso-8859-1?Q?A3hl6+fTChRZMXBduZQa14BfA4jvo6FnX+kppvVdlDIukQBGrtKW2W3BU5?=
 =?iso-8859-1?Q?TJHLPIZY5oS4wPE9rHxJhJ3+WqGBdVjoQzKK07ioodAd7pvplLnsInq/g0?=
 =?iso-8859-1?Q?xH/uhys+KT3thpxGDNxpXYgF704WMLTvst3RGh47uDddWTUUE4BPY2/qEM?=
 =?iso-8859-1?Q?lXF/dXCp7QnOAhJs8e8VSnpF6V3ZR0B68O4ONva4nTKvM8biXzJNG91nF2?=
 =?iso-8859-1?Q?iLHzLHhrqA1WtWGXi/VXvAYOG/o8cPhV3jr/lOqInChw8GHqGFHW5pF8be?=
 =?iso-8859-1?Q?tU2skKZMLeRyv1wub7zPitksFUI9bTJNR5ddxg0E8uUvCpdMWdu3nhwv3F?=
 =?iso-8859-1?Q?62tNz65zzGe4LBPKsbbY20MAM/FRpGqQ1kn2tCBhM84ANKp3juH9J4E0TX?=
 =?iso-8859-1?Q?nVbh9RlmziQiqFFxsNsofUcr0TNL8aHnr+OoTN47fBEgW2emnG8AZFFLD9?=
 =?iso-8859-1?Q?hen
 tqro2+wz3hVUV87aWXaB7Q21UMke1f5FMBA1493CK6LDJMYww8lqkrA?=
 =?iso-8859-1?Q?U0OKovDo0X1bG7FNtTfQtTY99BY+RJcCBLyBRnbee0xZjjPXS9Zwztq6aX?=
 =?iso-8859-1?Q?khZ7CQpwsu/5otv8JHB5Dk8PILJMxdxqOStNQItQn+AKprozhw8Djg7PNv?=
 =?iso-8859-1?Q?XUY8OlIlRUVkH5YtWBZl3C9LcbRKgHoFK3oUm7YZqLi/HwyWmNKOsZ5OEm?=
 =?iso-8859-1?Q?lqRgumBBpghiWaOpmzXqkoGjkUwoAzSIPYeSQc9yqohiLDs7UfOfI/1z1U?=
 =?iso-8859-1?Q?pows8cADv7DQ14AUAnv5JtIdmypzg4+kRsHfacCYhS/Ah1Wj0ODnbts3Hj?=
 =?iso-8859-1?Q?VROKHhTfD3Dl7457bn8iCmbM1OWPpb/NWV7cIU0F+rYaZLjPS0Vbv7NURR?=
 =?iso-8859-1?Q?nIyoUj82LHjXh+kCokAQrIBk+inOxKKvwDfHKrLY6q5MrT/pOxnIFwOL6B?=
 =?iso-8859-1?Q?kJOXh4P3tTOtePUXdmGXpbsQicT6O7bRdtuWyZh7flhG4Fju9J+MsK5qQ9?=
 =?iso-8859-1?Q?qpESJgBFvnT2wzwKMcCCuAyHbvCR84QkSRv7VbjrT3PPZZlZknTXeDnCul?=
 =?iso-8859-1?Q?XvAgNC4FJYFsB5k+lr+15m3+Epge8f8hJXCwjIbPnAh7x1v0rJ6drS61am?=
 =?iso-8859-1?Q?m6DADqB/0ZZ8UoYWTe7R+TgF?=
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_072729_367619_BB5FFF96 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 BAD_ENC_HEADER         Message has bad MIME encoding in the header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the DPRC scan function is used only by the bus driver.
But the same functionality will be needed by the VFIO driver.
To support this, the dprc scan function was exported and a little
bit adjusted to fit both scenarios.

Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/dprc-driver.c | 15 ++++++---------
 drivers/bus/fsl-mc/fsl-mc-bus.c  |  2 ++
 include/linux/fsl/mc.h           |  4 ++++
 3 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/bus/fsl-mc/dprc-driver.c b/drivers/bus/fsl-mc/dprc-driver.c
index 7eaf78900dfc..789220f0372a 100644
--- a/drivers/bus/fsl-mc/dprc-driver.c
+++ b/drivers/bus/fsl-mc/dprc-driver.c
@@ -335,7 +335,9 @@ static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev,
  * bus driver with the actual state of the MC by adding and removing
  * devices as appropriate.
  */
-static int dprc_scan_container(struct fsl_mc_device *mc_bus_dev)
+int dprc_scan_container(struct fsl_mc_device *mc_bus_dev,
+		   const char *driver_override,
+		   bool alloc_interrupts)
 {
 	int error;
 	struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_bus_dev);
@@ -346,15 +348,12 @@ static int dprc_scan_container(struct fsl_mc_device *mc_bus_dev)
 	 * Discover objects in the DPRC:
 	 */
 	mutex_lock(&mc_bus->scan_mutex);
-	error = dprc_scan_objects(mc_bus_dev, NULL, true);
+	error = dprc_scan_objects(mc_bus_dev, driver_override, alloc_interrupts);
 	mutex_unlock(&mc_bus->scan_mutex);
-	if (error < 0) {
-		fsl_mc_cleanup_all_resource_pools(mc_bus_dev);
-		return error;
-	}
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(dprc_scan_container);
 
 /**
  * dprc_irq0_handler - Regular ISR for DPRC interrupt 0
@@ -679,12 +678,10 @@ static int dprc_probe(struct fsl_mc_device *mc_dev)
 		goto error_cleanup_open;
 	}
 
-	mutex_init(&mc_bus->scan_mutex);
-
 	/*
 	 * Discover MC objects in DPRC object:
 	 */
-	error = dprc_scan_container(mc_dev);
+	error = dprc_scan_container(mc_dev, NULL, true);
 	if (error < 0)
 		goto error_cleanup_open;
 
diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
index a99a0edef252..1865221bb12d 100644
--- a/drivers/bus/fsl-mc/fsl-mc-bus.c
+++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
@@ -635,7 +635,9 @@ int fsl_mc_device_add(struct fsl_mc_obj_desc *obj_desc,
 		if (!mc_bus)
 			return -ENOMEM;
 
+		mutex_init(&mc_bus->scan_mutex);
 		mc_dev = &mc_bus->mc_dev;
+
 	} else {
 		/*
 		 * Allocate a regular fsl_mc_device object:
diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
index b9d5e5955adb..2bdd96a482fb 100644
--- a/include/linux/fsl/mc.h
+++ b/include/linux/fsl/mc.h
@@ -476,6 +476,10 @@ int dprc_reset_container(struct fsl_mc_io *mc_io,
 			 u16 token,
 			 int child_container_id);
 
+int dprc_scan_container(struct fsl_mc_device *mc_bus_dev,
+		   const char *driver_override,
+		   bool alloc_interrupts);
+
 /*
  * Data Path Buffer Pool (DPBP) API
  * Contains initialization APIs and runtime control APIs for DPBP
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
