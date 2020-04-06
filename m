Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FE419F7ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 16:28:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+I4DraNz3hycy/QiVGcEmJeBGR1Heqrkk4S7IJVzbs=; b=B65kj5Ly1U9rcM
	Q7bRX5CQ9PkRDCF12E813K5dssCPlqSM89q5Pv5OQVfy6tDUqQg9MfYNBsi3VfmioaZ/Ogdh/nebz
	tqRiX4nqKFy5LofTjA6hFj+RP7E5hToycp0XqvLiCdGmk6we31SRZ9vWOLAg/ZppQm9toLwJw9Eck
	ZdS/gcnl/V9vcMGRgKMDi/siZdKFif29MaHwXR2eYGv8A+faUZeZHByq+34I9TQpTeNJCfFL+1GAM
	d8/oSisG5sCu9fL1fs3GX62jMswAX++Eh4X+fTGesz5tJ7iGfcTgjEp1/Q1Q+f3Nr4qmZ9SD3ObgX
	OLLXHoZra/R/9IEZgBXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLSj9-00061s-7j; Mon, 06 Apr 2020 14:27:51 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLSil-0005rw-Nv
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 14:27:29 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1FDD91A0E5B;
 Mon,  6 Apr 2020 16:27:24 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 121FB1A02FE;
 Mon,  6 Apr 2020 16:27:24 +0200 (CEST)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 91109204E6;
 Mon,  6 Apr 2020 16:27:23 +0200 (CEST)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: anda-alexandra.dorneanu@nxp.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 "stuyoder@gmail.com" <stuyoder@gmail.com>, Leo Li <leoyang.li@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "bharatb.yadav@gmail.com" <bharatb.yadav@gmail.com>
Subject: [PATCH 01/10] bus/fsl-mc: Do no longer export the total number of
 irqs outside dprc_scan_objects
Date: Mon,  6 Apr 2020 17:27:04 +0300
Message-Id: <20200319154051.30609-2-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
Received: from AM6PR04MB4343.eurprd04.prod.outlook.com (2603:10a6:4:8f::12) by
 DB8PR04MB6665.eurprd04.prod.outlook.com with HTTPS via
 DB6PR0501CA0002.EURPRD05.PROD.OUTLOOK.COM; Thu, 19 Mar 2020 15:41:39 +0000
Received: from AM5P194CA0016.EURP194.PROD.OUTLOOK.COM (2603:10a6:203:8f::26)
 by AM6PR04MB4343.eurprd04.prod.outlook.com (2603:10a6:209:40::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.19; Thu, 19 Mar
 2020 15:41:38 +0000
Received: from VE1EUR01FT044.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:203:8f:cafe::16) by AM5P194CA0016.outlook.office365.com
 (2603:10a6:203:8f::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.19 via Frontend
 Transport; Thu, 19 Mar 2020 15:41:38 +0000
Received: from vger.kernel.org (209.132.180.67) by
 VE1EUR01FT044.mail.protection.outlook.com (10.152.3.137) with Microsoft SMTP
 Server id 15.20.2814.14 via Frontend Transport; Thu, 19 Mar 2020 15:41:37
 +0000
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
 id S1728140AbgCSPlM (ORCPT <rfc822;diana.craciun@oss.nxp.com>
 + 1 other); Thu, 19 Mar 2020 11:41:12 -0400
Received: from inva021.nxp.com ([92.121.34.21]:51784 "EHLO inva021.nxp.com"
 rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
 id S1727416AbgCSPlL (ORCPT <rfc822;linux-kernel@vger.kernel.org>);
 Thu, 19 Mar 2020 11:41:11 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 790FE2000E9;
 Thu, 19 Mar 2020 16:41:09 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 75C752000E6;
 Thu, 19 Mar 2020 16:41:09 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 27F41205C2;
 Thu, 19 Mar 2020 16:41:09 +0100 (CET)
Thread-Topic: [PATCH 01/10] bus/fsl-mc: Do no longer export the total number
 of irqs outside dprc_scan_objects
Thread-Index: AQHV/gThK5Q6GVxJk0i135bZtJaSQA==
X-MS-Exchange-MessageSentRepresentingType: 2
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
In-Reply-To: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
Content-Language: en-US
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Organization-AuthSource: VE1EUR01FT044.eop-EUR01.prod.protection.outlook.com
X-Auto-Response-Suppress: All
X-MS-Exchange-Organization-Network-Message-Id: 01865459-2955-4de6-7888-08d7cc1c02f9
X-MS-Exchange-Organization-RecordReviewCfmType: 0
received-spf: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
x-ms-publictraffictype: Email
authentication-results: spf=none (sender IP is 209.132.180.67)
 smtp.mailfrom=vger.kernel.org; oss.nxp.com; dkim=none (message not signed)
 header.d=none;oss.nxp.com; dmarc=fail action=none
 header.from=oss.nxp.com;compauth=fail reason=601
x-ms-traffictypediagnostic: AM6PR04MB4343:
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:1; auth:0; dest:J;
 ENG:(20160513016)(750127)(520011016)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?fx7gH4JnS2GgYDkZllRARf+/G1weXx/fEuizPexTnxnCzoljeaYydXrLkN?=
 =?iso-8859-1?Q?OxiPGRAtUst1294Ifxe4SrhUtiwguWFHf1xj+6C5d8GR2JUmV/UePmpHiM?=
 =?iso-8859-1?Q?bZFFLVThpkrj8yaj1wJ1ZWmbPB/SQsS0Eml0bIuS+odzyXYx0AtBwJGVdQ?=
 =?iso-8859-1?Q?qBv3FGWoEneK7HXC6tTdRdfo4UWpfYP1xjr12yTcavgbv9uHmnbKYA6Zo2?=
 =?iso-8859-1?Q?XC+BtVn6gpUGrrkvCX/ePe/nDpvV7C66hhld72OcmCNj+6vVYmzN42vGYy?=
 =?iso-8859-1?Q?CTf+kgMFqrCV6MQ6I4VtBbse6n53EVQG2NzZp2yrVHakSFsSm0n0/XWY5q?=
 =?iso-8859-1?Q?MRQiVetReoH2HpK4Iv8j0lQasam/P2deM6+06IV0Mc/p7GBeSEYOgrjMXD?=
 =?iso-8859-1?Q?kYh3SNTQlz3TbTJi6UqU/5FVsqiy/4KGzc6S3Btz2QdEBeYUUW5qMG87ZG?=
 =?iso-8859-1?Q?SAjSEYl779JK9unmWmK6ZMyhlFJER6P2kDwSBa7i/j8NoMwD+rOy3O0gLQ?=
 =?iso-8859-1?Q?cTFQ0QwyGcXMxnzwP+Q0flqiMn/4pYJzeQ8xlcwRjDE2QY/0BSfaxhA4H8?=
 =?iso-8859-1?Q?cvEfmffK6j6Tt1aZlrAlcM6U/zvuBULf1Zw0mADkgwXKQSb/bZQxkExrxU?=
 =?iso-8859-1?Q?9/Sg8J99IQiI+yEjB24DisTiS+3C6o4PMMadwbOz3PUByy+Rq9z6Jh9TD6?=
 =?iso-8859-1?Q?9RWC6wAu0Zsnteh
 6dEMzbfMCovi2jRI6/H4vLXb424+ZSYVhCI5/Do+00q?=
 =?iso-8859-1?Q?0TaGtEuA82vqmhmTxJzhgB3sG8ezAQX6gR2hgeQv6eb6fjT3+TUhkNsOam?=
 =?iso-8859-1?Q?7Lmr6p4xRSS1BBy6aHVu/igYgEd7ripoBaBOGNyN8NOsZ7lPY5hM0sxf1+?=
 =?iso-8859-1?Q?yjWIybQri6EWrpGJUPM+89Q4FlEZiJHg4ZEKTlRncb5k3t5LPn4NCIl6z1?=
 =?iso-8859-1?Q?H8xUUibBIouv1MwrIDWa4Jhq5eFd0/C9FwLWbQSqiwAhiZeHGKQT5pOn8D?=
 =?iso-8859-1?Q?TGyRV8fh+T02Zi2eOssRd0HtmT0Tm6Qk9YW4zVF6j0770ZsGO6LNSdOjg1?=
 =?iso-8859-1?Q?sEs/GCBJn4xHRaneGY69eli/n4bN7J8eq/ka0olCj8gvyMl1wZbj7HGBLi?=
 =?iso-8859-1?Q?bhh81NXetfJAEAx+mDNAVFeMaYOWIKSGyfMi9/DZBA2qN6oUrfM5B8NzI+?=
 =?iso-8859-1?Q?cBtvaSz/Xb/MSJ1TXBt/yGNnCmR8UFegF7+R2aIAKAmAlst33uo2RwrjVk?=
 =?iso-8859-1?Q?5ftbWetqc2Bas1xQienwBwENzJQfFJfr+RDV//v93E59+DlDZ8zcsE89vS?=
 =?iso-8859-1?Q?81sA3eWoUa92m2AzhwhJJRtxfUB9g4C8xZMexXJI9occa50NC5rI/XkUhC?=
 =?iso-8859-1?Q?2gizPWi1jGXwlShSwmT3JcMlK/NmzUD0oPiw8uV+MzgHQYxrara+pgqqz4?=
 =?iso-8859-1?Q?7dPJZoHhaKbegFjRhQPJ4wNR2ZfN6JuFieByNYOhF2fXwLGL+4/82joZrP?=
 =?iso-8859-1?Q?Lmg
 W5knWDjhPEUye+cUjySkY3gUNzpOJ+WCQkkygYteXW7EZhEUPpPJybe?=
 =?iso-8859-1?Q?CkzTIOJY+LsVKYTBQG63LbpK0HtnwJVanB0vdywvpFEgSUbTFl4EGrxX+/?=
 =?iso-8859-1?Q?JKR3U2BR8Mv5f5cvTmx61UUjJikJ+7+9xOVGtSf9s0ss4Qu1H4lEDVM41u?=
 =?iso-8859-1?Q?PZxsX0baxI1l7tW2xcobOjEKu1yvpelz5am5KILaJyIjGp9S1UR2KbPic2?=
 =?iso-8859-1?Q?1NYJHJOBhNdanMgr+x1Gxa/EjKHDfkhUxXuj5XX4mdm7woA8nD3DDPaS/8?=
 =?iso-8859-1?Q?V77fTOFkzRGvKF1IGzDxsxB6N/5LnNdzKLWirlqGzhpxpHbDBFRDxIabwv?=
 =?iso-8859-1?Q?bwxewMTFp/V35J3GxdUl584juvzi0Eaf5f7oxITzdItJUKm4eobmx9iOm/?=
 =?iso-8859-1?Q?bzDpXYSZX+EYSAuSwp5bzH2MwsS/Ot3r7GmCDNd2Ew8y5l5odeMNlzczXr?=
 =?iso-8859-1?Q?K0r4JzgErMsKE7DaxvAJaU10t1GqBJBV8cRLqAvlRbTZ1e2LwVSp+INmGW?=
 =?iso-8859-1?Q?WahB1AiDyFlb8WPTuBcJ91b624AKMO66cRLrna+mb7oSK+ff+4YiyI0TO0?=
 =?iso-8859-1?Q?hjIuPLdNUMwHCqt4mtZ1dJitz1Bz9NxmSrwA6IjHy/rqSchTWLgcz5+QYZ?=
 =?iso-8859-1?Q?20IojBLcsuN3fXtTuOmB+gGW?=
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_072728_059679_5B5FA237 
X-CRM114-Status: GOOD (  14.25  )
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

The total number of interrupts is only used for some checks
outside the dprc_scan_objects function. Furthermore, in some
situations the check is made twice. Move the bounds check inside
the function for all situations.

Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/dprc-driver.c | 30 ++++++++++--------------------
 1 file changed, 10 insertions(+), 20 deletions(-)

diff --git a/drivers/bus/fsl-mc/dprc-driver.c b/drivers/bus/fsl-mc/dprc-driver.c
index c8b1c3842c1a..035b220779d0 100644
--- a/drivers/bus/fsl-mc/dprc-driver.c
+++ b/drivers/bus/fsl-mc/dprc-driver.c
@@ -3,6 +3,7 @@
  * Freescale data path resource container (DPRC) driver
  *
  * Copyright (C) 2014-2016 Freescale Semiconductor, Inc.
+ * Copyright 2019-2020 NXP
  * Author: German Rivera <German.Rivera@freescale.com>
  *
  */
@@ -197,8 +198,6 @@ static void dprc_add_new_devices(struct fsl_mc_device *mc_bus_dev,
  * dprc_scan_objects - Discover objects in a DPRC
  *
  * @mc_bus_dev: pointer to the fsl-mc device that represents a DPRC object
- * @total_irq_count: If argument is provided the function populates the
- * total number of IRQs created by objects in the DPRC.
  *
  * Detects objects added and removed from a DPRC and synchronizes the
  * state of the Linux bus driver, MC by adding and removing
@@ -212,8 +211,7 @@ static void dprc_add_new_devices(struct fsl_mc_device *mc_bus_dev,
  * populated before they can get allocation requests from probe callbacks
  * of the device drivers for the non-allocatable devices.
  */
-static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev,
-			     unsigned int *total_irq_count)
+static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev)
 {
 	int num_child_objects;
 	int dprc_get_obj_failures;
@@ -294,22 +292,21 @@ static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev,
 	 * Allocate IRQ's before binding the scanned devices with their
 	 * respective drivers.
 	 */
-	if (dev_get_msi_domain(&mc_bus_dev->dev) && !mc_bus->irq_resources) {
+	if (dev_get_msi_domain(&mc_bus_dev->dev)) {
 		if (irq_count > FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS) {
 			dev_warn(&mc_bus_dev->dev,
 				 "IRQs needed (%u) exceed IRQs preallocated (%u)\n",
 				 irq_count, FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
 		}
 
-		error = fsl_mc_populate_irq_pool(mc_bus,
+		if (!mc_bus->irq_resources) {
+			error = fsl_mc_populate_irq_pool(mc_bus,
 				FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
-		if (error < 0)
-			return error;
+			if (error < 0)
+				return error;
+		}
 	}
 
-	if (total_irq_count)
-		*total_irq_count = irq_count;
-
 	dprc_remove_devices(mc_bus_dev, child_obj_desc_array,
 			    num_child_objects);
 
@@ -342,7 +339,7 @@ static int dprc_scan_container(struct fsl_mc_device *mc_bus_dev)
 	 * Discover objects in the DPRC:
 	 */
 	mutex_lock(&mc_bus->scan_mutex);
-	error = dprc_scan_objects(mc_bus_dev, NULL);
+	error = dprc_scan_objects(mc_bus_dev);
 	mutex_unlock(&mc_bus->scan_mutex);
 	if (error < 0) {
 		fsl_mc_cleanup_all_resource_pools(mc_bus_dev);
@@ -411,9 +408,8 @@ static irqreturn_t dprc_irq0_handler_thread(int irq_num, void *arg)
 		      DPRC_IRQ_EVENT_CONTAINER_DESTROYED |
 		      DPRC_IRQ_EVENT_OBJ_DESTROYED |
 		      DPRC_IRQ_EVENT_OBJ_CREATED)) {
-		unsigned int irq_count;
 
-		error = dprc_scan_objects(mc_dev, &irq_count);
+		error = dprc_scan_objects(mc_dev);
 		if (error < 0) {
 			/*
 			 * If the error is -ENXIO, we ignore it, as it indicates
@@ -428,12 +424,6 @@ static irqreturn_t dprc_irq0_handler_thread(int irq_num, void *arg)
 
 			goto out;
 		}
-
-		if (irq_count > FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS) {
-			dev_warn(dev,
-				 "IRQs needed (%u) exceed IRQs preallocated (%u)\n",
-				 irq_count, FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
-		}
 	}
 
 out:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
