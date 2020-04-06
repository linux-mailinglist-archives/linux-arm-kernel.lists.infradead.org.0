Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D11BE19F7EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 16:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Bcl1jLTV3WR7EXqCBLZ9BM3iFK7/SgSPPLRT+cXqbg=; b=BvUYJuthdrIWT3
	gkVLMRF2EfjZFtoHXQY5bbYghTPyd+v0p/rarWU6C9BwFukAmZNgWRkAwGSHNAq5FVK4LnvN2VXb9
	JEFInjxnHEposeeuU8KQStBM0SIety6QCVAL3+3ToH/Zu8pollRISgk0HOnzYSpJM2936q9WR90dv
	/HjUM9xss5kGDPHFY1XypsNKLK44zK2z/TzOcsvVcKANi6CQLzmPYkyRN5R5OUrh/oXsRllAUE3Ns
	PmlWhHFs6Kyviem2myjAT9+4qtMu8gBMD/Cl44zWpUqf1A4Tn62Kda3LCM9ghonZFFAYsm5vL2Zfm
	XyqwdPt3YQvP87t2kN0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLSjL-0006H5-Cf; Mon, 06 Apr 2020 14:28:03 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLSim-0005ry-Fx
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 14:27:31 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 52553200DA5;
 Mon,  6 Apr 2020 16:27:25 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 457B6200D87;
 Mon,  6 Apr 2020 16:27:25 +0200 (CEST)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id C3E83204E6;
 Mon,  6 Apr 2020 16:27:24 +0200 (CEST)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: anda-alexandra.dorneanu@nxp.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 "stuyoder@gmail.com" <stuyoder@gmail.com>, Leo Li <leoyang.li@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "bharatb.yadav@gmail.com" <bharatb.yadav@gmail.com>
Subject: [PATCH 03/10] bus/fsl-mc: add support for 'driver_override' in the
 mc-bus
Date: Mon,  6 Apr 2020 17:27:06 +0300
Message-Id: <20200319154051.30609-4-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319154051.30609-2-diana.craciun@oss.nxp.com>
References: <20200319154051.30609-2-diana.craciun@oss.nxp.com>
Received: from AM0PR04MB4450.eurprd04.prod.outlook.com (2603:10a6:6:43::11) by
 DB8PR04MB6665.eurprd04.prod.outlook.com with HTTPS via
 DB6PR07CA0157.EURPRD07.PROD.OUTLOOK.COM; Thu, 19 Mar 2020 15:41:42 +0000
Received: from AM5P194CA0002.EURP194.PROD.OUTLOOK.COM (2603:10a6:203:8f::12)
 by AM0PR04MB4450.eurprd04.prod.outlook.com (2603:10a6:208:70::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14; Thu, 19 Mar
 2020 15:41:39 +0000
Received: from VE1EUR01FT044.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:203:8f:cafe::13) by AM5P194CA0002.outlook.office365.com
 (2603:10a6:203:8f::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.19 via Frontend
 Transport; Thu, 19 Mar 2020 15:41:39 +0000
Received: from vger.kernel.org (209.132.180.67) by
 VE1EUR01FT044.mail.protection.outlook.com (10.152.3.137) with Microsoft SMTP
 Server id 15.20.2814.14 via Frontend Transport; Thu, 19 Mar 2020 15:41:38
 +0000
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
 id S1728329AbgCSPlf (ORCPT <rfc822;diana.craciun@oss.nxp.com>
 + 1 other); Thu, 19 Mar 2020 11:41:35 -0400
Received: from inva020.nxp.com ([92.121.34.13]:41424 "EHLO inva020.nxp.com"
 rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
 id S1728047AbgCSPlM (ORCPT <rfc822;linux-kernel@vger.kernel.org>);
 Thu, 19 Mar 2020 11:41:12 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 50FB81A00E0;
 Thu, 19 Mar 2020 16:41:10 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 425061A00C6;
 Thu, 19 Mar 2020 16:41:10 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id E0DD3205C2;
 Thu, 19 Mar 2020 16:41:09 +0100 (CET)
Thread-Topic: [PATCH 03/10] bus/fsl-mc: add support for 'driver_override' in
 the mc-bus
Thread-Index: AQHV/gTjV+Cx0KNFDkahPIQSJb5smg==
X-MS-Exchange-MessageSentRepresentingType: 2
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
In-Reply-To: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
Content-Language: en-US
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Organization-AuthSource: VE1EUR01FT044.eop-EUR01.prod.protection.outlook.com
X-Auto-Response-Suppress: All
X-MS-Exchange-Organization-Network-Message-Id: d6fa9e33-6f62-44c1-b948-08d7cc1c03af
X-MS-Exchange-Organization-RecordReviewCfmType: 0
received-spf: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
x-ms-publictraffictype: Email
authentication-results: spf=none (sender IP is 209.132.180.67)
 smtp.mailfrom=vger.kernel.org; oss.nxp.com; dkim=none (message not signed)
 header.d=none;oss.nxp.com; dmarc=fail action=none
 header.from=oss.nxp.com;compauth=fail reason=601
x-ms-traffictypediagnostic: AM0PR04MB4450:
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:1; auth:0; dest:J;
 ENG:(20160513016)(750127)(520011016)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?xvgd0XKrlvmubxhLxGU/Vr/59LPtaFkrpNHESE6yfQM8iROdAQkaXP5VVi?=
 =?iso-8859-1?Q?KRYoOADmo/Z4WmJavLxbfpqb/JtgFHRaq/u9OKO1L6m3nQDkBmQF79djb0?=
 =?iso-8859-1?Q?nslcOSrHNrwfv3YQJV2sS74UJBlImTdmQ68O0aAAYYUs8hxZAhKfhSnaCy?=
 =?iso-8859-1?Q?zxncVy9XsCQFvud8007m7+W+AwKVKsHCV3I/S9izTOSOn+IT3I1kwYKQpw?=
 =?iso-8859-1?Q?iNMgui3vcAmwPEpkRAf7gYKY1zpPso9d1/4X5qtaROdntiHKcDQgg6drhQ?=
 =?iso-8859-1?Q?nSHsgm7KqDm4g2ERM99rMOO6Nfgp6ai0k4o5hBISaG3lmUNqVYJNni8gZt?=
 =?iso-8859-1?Q?k9VVws1ys0CVWdx+OHJDWb3M5+zhz52JmNlimyArb+yUaQPbHyHhrBsQfp?=
 =?iso-8859-1?Q?wG04S+AMLgp0D09IS/N67wZXb4ZggKBn0Z4OZ/Y9fMoApUXERz8dUyP3pr?=
 =?iso-8859-1?Q?AaQazMPQIpapqAhLAYkISWNBb29EcsoHGM7YqpdRCtYD3sqVfTaVV82jbQ?=
 =?iso-8859-1?Q?QAcIJfQqeGvboy1SM+M/kdw123RppOIn5yargNZebvL3lbvXmpRV3Hr07D?=
 =?iso-8859-1?Q?WtZLIljr93J4TSH5hyrQCOxGWPbu1/JNMnqcpRWrI+Gz1wD2ZswZ5hxPO+?=
 =?iso-8859-1?Q?CvE0VLgVJt0kQfuZPvwzLPqT3nJIEfuCA1Ne7nwoCrxN466G7+aW6B8VWh?=
 =?iso-8859-1?Q?mpmpqUnqJEPqrRB
 4S+nzcSBHEckHziuufiwfho8NPyCAuZ7W/ptytg0pjL?=
 =?iso-8859-1?Q?N9U/eDyToGI249t1s2p0sGcGZ7XdInr8myiZF26IX+JYMpYnI4PqeFyYz7?=
 =?iso-8859-1?Q?j0ie2f+1KMfXiYBJqqBN9GueLBaTUGGT8gPPFLjGbJO0yD69ugyogurPcH?=
 =?iso-8859-1?Q?krRxcKehM908Vb9ap41dlymzhGDWHTnQ5Q9FAYN5b8a4DNe1XPJXFv326G?=
 =?iso-8859-1?Q?glObeJMgRLlGqKOD76iJwg2tl2iopfQLGBM999ixc8MSis06exnm7FqwsO?=
 =?iso-8859-1?Q?Vg7n/Z+NdrmrkKoY4OXKJdaj8RcF0qvMuJmTtJabdJ+Rn534CtORiCPUoy?=
 =?iso-8859-1?Q?3+x71s1jyLqmmE26Y0hw8SIBchQtoXcwqf6d1FfP3FesFv83jpyr/kW8Cd?=
 =?iso-8859-1?Q?16dUpfp9Ov7i+1OzfN7lm38sUbQ0BfdnAFK8q12GTTLLonVdeM6A0Clka6?=
 =?iso-8859-1?Q?qWhA3PC8N9d/F4aetydM/z3Deh4EnzF6iKTfp7RtnQ84SOgzKVWIxD/Gps?=
 =?iso-8859-1?Q?PmfLPtHyIs/ZWN1cXGSTFXtXQH/XAvSSvkdPLqH6Fw+rDsRHlwmbHM+lD1?=
 =?iso-8859-1?Q?5OQ6p1euMHO0xe2OpeDwGCvbbYJXZ1oU7Ghq41e1VWq1uZ8JeS8YrfH1V1?=
 =?iso-8859-1?Q?fGDKIOPAavcYd4boUZb4wgp784HKabtVvovozZo2scmGqRHjA3OsXSJCob?=
 =?iso-8859-1?Q?wVrAt8R3YE0L0MNDCVGbVRxeK2fDw95Eb4891nJSbjZkDDpHUSr74bjrVd?=
 =?iso-8859-1?Q?Ok2
 nHouPEd//N2uiAFFBZ7b+6bJQGFkVDmdKS8N7y3x6WdULy5aUTEAwsk?=
 =?iso-8859-1?Q?TfYAmyAU47kqDP/fUkI+cr4W37sCc6kz7fL/YV4ryaprSO7JQnJYr4TvCX?=
 =?iso-8859-1?Q?40kXicM8M/tJ6AnMu2F5vcCZyvubiFpaV6pw17/mGP6qQ/t5XfvmwngWnZ?=
 =?iso-8859-1?Q?nMSvzNpYBbHXNcyu6i+xmwtwWjQ7LfwDDU2xhi6VRndtm7qx/q0XppaBYe?=
 =?iso-8859-1?Q?6osSwyEqOQiJo+av6OpzYl5+YybtknmokOy+7VIVqWQ6MspAy4WMSjZENW?=
 =?iso-8859-1?Q?jE5nMtIoOuDZ85F3TpBi/Yb22PdAe+WOuHDhuNJleudqdBpd51Q7pWhRfc?=
 =?iso-8859-1?Q?obTW2VD/LWHYgeNQ7xYxW9OmK9y0+KINRiO0fbyWtZLOFoUOBJRXv7fiWh?=
 =?iso-8859-1?Q?7npKcFp/LB35OY3MBQVkQ3P4J3WkRpP4IcnBFCzIvxz80pEpDEnZrTZJnB?=
 =?iso-8859-1?Q?oVbP26rHSUbt3JDplH+2F8qnPcLoqc9RmrUmTsjngxQ4TOHBCZUpfgdKeQ?=
 =?iso-8859-1?Q?+I13sRXapnhy1IVKkl9ja3eP55cct63fttoRADp0bDl28T8kEJHVV20qVD?=
 =?iso-8859-1?Q?1ew9Hr8R8OrEuMgp9Ehon1lFT1PtYG34Al1OdGggm4jmPkCgYAssTF8aER?=
 =?iso-8859-1?Q?iRVlCa/3ETRbeuMrwxYh5L+d?=
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_072728_806710_7786B05F 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

From: Bharat Bhushan <Bharat.Bhushan@nxp.com>

This patch is required for vfio-fsl-mc meta driver to successfully bind
layerscape container devices for device passthrough. This patch adds
a mechanism to allow a layerscape device to specify a driver rather than
a layerscape driver provide a device match.

Example to allow a device (dprc.1) to specifically bind
with driver (vfio-fsl-mc):-
 - echo vfio-fsl-mc > /sys/bus/fsl-mc/devices/dprc.1/driver_override
 - echo dprc.1 > /sys/bus/fsl-mc/drivers/fsl_mc_dprc/unbind
 - echo dprc.1 > /sys/bus/fsl-mc/drivers/vfio-fsl-mc/bind

Signed-off-by: Bharat Bhushan <Bharat.Bhushan@nxp.com>
Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/fsl-mc-bus.c | 54 +++++++++++++++++++++++++++++++++
 include/linux/fsl/mc.h          |  1 +
 2 files changed, 55 insertions(+)

diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
index c78d10ea641f..baf8259262a9 100644
--- a/drivers/bus/fsl-mc/fsl-mc-bus.c
+++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
@@ -3,6 +3,7 @@
  * Freescale Management Complex (MC) bus driver
  *
  * Copyright (C) 2014-2016 Freescale Semiconductor, Inc.
+ * Copyright 2019-2020 NXP
  * Author: German Rivera <German.Rivera@freescale.com>
  *
  */
@@ -83,6 +84,12 @@ static int fsl_mc_bus_match(struct device *dev, struct device_driver *drv)
 	struct fsl_mc_driver *mc_drv = to_fsl_mc_driver(drv);
 	bool found = false;
 
+	/* When driver_override is set, only bind to the matching driver */
+	if (mc_dev->driver_override) {
+		found = !strcmp(mc_dev->driver_override, mc_drv->driver.name);
+		goto out;
+	}
+
 	if (!mc_drv->match_id_table)
 		goto out;
 
@@ -147,8 +154,52 @@ static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
 }
 static DEVICE_ATTR_RO(modalias);
 
+static ssize_t driver_override_store(struct device *dev,
+				     struct device_attribute *attr,
+				     const char *buf, size_t count)
+{
+	struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
+	const char *driver_override, *old = mc_dev->driver_override;
+	char *cp;
+
+	if (WARN_ON(dev->bus != &fsl_mc_bus_type))
+		return -EINVAL;
+
+	if (count >= (PAGE_SIZE - 1))
+		return -EINVAL;
+
+	driver_override = kstrndup(buf, count, GFP_KERNEL);
+	if (!driver_override)
+		return -ENOMEM;
+
+	cp = strchr(driver_override, '\n');
+	if (cp)
+		*cp = '\0';
+
+	if (strlen(driver_override)) {
+		mc_dev->driver_override = driver_override;
+	} else {
+		kfree(driver_override);
+		mc_dev->driver_override = NULL;
+	}
+
+	kfree(old);
+
+	return count;
+}
+
+static ssize_t driver_override_show(struct device *dev,
+				    struct device_attribute *attr, char *buf)
+{
+	struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
+
+	return snprintf(buf, PAGE_SIZE, "%s\n", mc_dev->driver_override);
+}
+static DEVICE_ATTR_RW(driver_override);
+
 static struct attribute *fsl_mc_dev_attrs[] = {
 	&dev_attr_modalias.attr,
+	&dev_attr_driver_override.attr,
 	NULL,
 };
 
@@ -704,6 +755,9 @@ EXPORT_SYMBOL_GPL(fsl_mc_device_add);
  */
 void fsl_mc_device_remove(struct fsl_mc_device *mc_dev)
 {
+	kfree(mc_dev->driver_override);
+	mc_dev->driver_override = NULL;
+
 	/*
 	 * The device-specific remove callback will get invoked by device_del()
 	 */
diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
index 54d9436600c7..88095fd30c80 100644
--- a/include/linux/fsl/mc.h
+++ b/include/linux/fsl/mc.h
@@ -194,6 +194,7 @@ struct fsl_mc_device {
 	struct fsl_mc_device_irq **irqs;
 	struct fsl_mc_resource *resource;
 	struct device_link *consumer_link;
+	const char *driver_override;
 };
 
 #define to_fsl_mc_device(_dev) \
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
