Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 962C119F7F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 16:29:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYMu4QtnvWVtSmQTaPglETu5TjZciVLYXeo9RnwXa5I=; b=rCJzlf3KV8fr89
	5T8ug2S9nj/icyiKZbb1H6pFh4HQKJI6rie/+p/i/UnLAhFwMcoUmHKXLfehF6UhRiBpn7yphunG8
	PF1pc6kH9e0Thv3KUytEbWCBSej44NFwqId9NxzJ/JlOkvcj0wWUL4geQqObLTVfqdAHQv+AwpSn1
	tuTFmFWcPJluA/Yt6efWOLYGlQY+Sh59hQQgwC876fJv3MhWeytIwi0ya6J5J5dPZdonm9XsVxEt6
	uXcCSQBy/ByPR+tBMREZ4KzpWPoNSGNKRC4PAelPUjduGeD3L30s+X+rn5XW15BNsQKdO/6xirtCt
	59BUTsMpbJJrzxQs5ohw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLSkT-0007Up-Iw; Mon, 06 Apr 2020 14:29:13 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLSin-0005sp-JV
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 14:27:33 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6DEAD200DA7;
 Mon,  6 Apr 2020 16:27:28 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6110F200DA6;
 Mon,  6 Apr 2020 16:27:28 +0200 (CEST)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D6648204E6;
 Mon,  6 Apr 2020 16:27:27 +0200 (CEST)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: anda-alexandra.dorneanu@nxp.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 "stuyoder@gmail.com" <stuyoder@gmail.com>, Leo Li <leoyang.li@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "bharatb.yadav@gmail.com" <bharatb.yadav@gmail.com>
Subject: [PATCH 08/10] bus/fsl-mc: Export a cleanup function for DPRC
Date: Mon,  6 Apr 2020 17:27:11 +0300
Message-Id: <20200319154051.30609-9-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319154051.30609-2-diana.craciun@oss.nxp.com>
References: <20200319154051.30609-2-diana.craciun@oss.nxp.com>
Received: from AM6PR04MB4421.eurprd04.prod.outlook.com (2603:10a6:4:7b::20) by
 DB8PR04MB6665.eurprd04.prod.outlook.com with HTTPS via
 DB6PR0601CA0010.EURPRD06.PROD.OUTLOOK.COM; Thu, 19 Mar 2020 15:41:34 +0000
Received: from DB6PR0802CA0039.eurprd08.prod.outlook.com (2603:10a6:4:a3::25)
 by AM6PR04MB4421.eurprd04.prod.outlook.com (2603:10a6:20b:21::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.22; Thu, 19 Mar
 2020 15:41:33 +0000
Received: from DB5EUR01FT038.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:4:a3:cafe::e0) by DB6PR0802CA0039.outlook.office365.com
 (2603:10a6:4:a3::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18 via Frontend
 Transport; Thu, 19 Mar 2020 15:41:33 +0000
Received: from vger.kernel.org (209.132.180.67) by
 DB5EUR01FT038.mail.protection.outlook.com (10.152.4.191) with Microsoft SMTP
 Server id 15.20.2814.14 via Frontend Transport; Thu, 19 Mar 2020 15:41:33
 +0000
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
 id S1728216AbgCSPlR (ORCPT <rfc822;diana.craciun@oss.nxp.com>
 + 1 other); Thu, 19 Mar 2020 11:41:17 -0400
Received: from inva021.nxp.com ([92.121.34.21]:51880 "EHLO inva021.nxp.com"
 rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
 id S1728157AbgCSPlP (ORCPT <rfc822;linux-kernel@vger.kernel.org>);
 Thu, 19 Mar 2020 11:41:15 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8F8F02000E0;
 Thu, 19 Mar 2020 16:41:12 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8278D2000C2;
 Thu, 19 Mar 2020 16:41:12 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 3503A205C2;
 Thu, 19 Mar 2020 16:41:12 +0100 (CET)
Thread-Topic: [PATCH 08/10] bus/fsl-mc: Export a cleanup function for DPRC
Thread-Index: AQHV/gTesnbPL1Q71k6JzCuYF1VTvg==
X-MS-Exchange-MessageSentRepresentingType: 2
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
In-Reply-To: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
Content-Language: en-US
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Organization-AuthSource: DB5EUR01FT038.eop-EUR01.prod.protection.outlook.com
X-Auto-Response-Suppress: All
X-MS-Exchange-Organization-Network-Message-Id: 469e561c-a3d4-44dd-31a2-08d7cc1c0046
X-MS-Exchange-Organization-RecordReviewCfmType: 0
received-spf: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
x-ms-publictraffictype: Email
authentication-results: spf=none (sender IP is 209.132.180.67)
 smtp.mailfrom=vger.kernel.org; oss.nxp.com; dkim=none (message not signed)
 header.d=none;oss.nxp.com; dmarc=fail action=none
 header.from=oss.nxp.com;compauth=fail reason=601
x-ms-traffictypediagnostic: AM6PR04MB4421:
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:1; auth:0; dest:J;
 ENG:(20160513016)(750127)(520011016)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?BcIeQwh/SRLgBVwA9qpbpWZGY0j3sYzyKGX/HEX5GQl6n+tWVtrdfjnPa5?=
 =?iso-8859-1?Q?LuQmS75msZhOxC20wywG2oJLH4bEN0v8clN2hgBqmUz2hAHjpMjNpoT26C?=
 =?iso-8859-1?Q?Mqrry3ihHSJzB7P2NpfLm+pQdqEbX0JXWwSeCQ+pjX2pzN4bYPjcT5DVjY?=
 =?iso-8859-1?Q?7vNDvvHAMG89VS8z6PjANi0X+PdLzAhf1dCX2ghzLracHgfuheEXg/yl3E?=
 =?iso-8859-1?Q?wfNQ+fyCLmWZZp0x4WzEI/e/cJPAtsZcgESkT8eVMmrSRk9N+ReJSiilOO?=
 =?iso-8859-1?Q?QV7gU/AuYoFhifF6HNO+W04yErtBUV5YaIIGb7SHCLmOSuCzs514xmp97b?=
 =?iso-8859-1?Q?rK1wHuywUllv3QUIAjPmlRszUPrfJVeMFlFKvaTm1m/3UKvw1JcLvuJqEn?=
 =?iso-8859-1?Q?q/HMkLraEFGp/HpQ8Kypyse26dKVP82LCDoGb1T23hsQZNkmmZm+dLZrj+?=
 =?iso-8859-1?Q?P4BJie7XEp0m9d+phUNxgva6/O1YXs3sQ9/mBbEOpC5e3qJJbasxttEtRj?=
 =?iso-8859-1?Q?KJxEXLT3VX8/TX68P6EPER7m+mnE4eDHHijg95JaIwqPfETl/6UphOhR8l?=
 =?iso-8859-1?Q?8gdHA99ijtr1DTY8TScjmjUJAUMnub/Z+6BpVdcQOXHG1PWv7ArS1WPr3H?=
 =?iso-8859-1?Q?1HHcB+5R6+J4HXzwVG1NeDLMg5dSX2rH8+mFeXGNaONQu65UPlXLkn+Zjk?=
 =?iso-8859-1?Q?LuXl4ZVmtP9BMC5
 WyLMM9OjHpiOq5mVoPHW+hmX3NWUXIgEJU1QzgfawH1?=
 =?iso-8859-1?Q?T/HlWVY+8XCHpLdn5AkScfO6vtb2AaqxO6PLDTGBJNgDP+v6Wj2deAqVwM?=
 =?iso-8859-1?Q?FNX/Rqnm155wxs1ZX+j/2obW0Dm4lGtREJx4GO3H4u/o1Sr6mDT+bQ54Gs?=
 =?iso-8859-1?Q?Cvn+L8wFPSKy8eRH0AZ0oDoJU3DWmANxDO8A+dPBVRqdP+AioM/SdMv7nP?=
 =?iso-8859-1?Q?c4RlY6SCcbD/cWoYLd+mMDqe0t6/uFq6Ja620v+eDpUvwPV00LAFBME0Zi?=
 =?iso-8859-1?Q?gyZQRSkCvr+6iMdP4wnmxAO+mWQ9hmHg0pWOdQWnCeOmpT/7DuUDciYPBK?=
 =?iso-8859-1?Q?oGaYnDs9e+6iaXE21LeM8/YMTP2/iXp89xlZlzCFLVK1j3/j+LHbElr57T?=
 =?iso-8859-1?Q?qWRVp+FOTWHZWP/MJsRjmWryfbhI6fkT/2/6FhtMoBAvi/gr2tnZXn4AYA?=
 =?iso-8859-1?Q?kjcZfurEuaB8iJAMkE5y1n8vf9KwOcPySxixm9jrTxkE5Kf0/bousG5hjE?=
 =?iso-8859-1?Q?VeAln3rlaKsAomeOgutCr3KaJsxuhRniKFBeQ/A8/WxVh2XX0GKGSm5Lza?=
 =?iso-8859-1?Q?QpWB0oxf7XNIu4+7uXNWTRKzQ7dMu5aZUG+5GoOiFQhw5lIenPAXoqlWCs?=
 =?iso-8859-1?Q?vUMmJmAAR2crBAdRbF7vJf0b0hVdgXSB3H4HEAGvKWFB2t5mDclTpO3nfn?=
 =?iso-8859-1?Q?mWr83sU+tZWWfxRKi0wbR85FsQIOQp5dI0BDlipgS0UuLkM6IromWrmKrh?=
 =?iso-8859-1?Q?PX4
 LWksOXwuwsucGUWxcHIENRSUM3JLxlWCm0RZsi67Pz0fcx4woPIR/vJ?=
 =?iso-8859-1?Q?v+yPHJ606pvL/tQdXXtMF0V9A5t582N2A5GDbX9XmindCY+f35FtBakL1x?=
 =?iso-8859-1?Q?7J8s1XLf4itCPaAt0R3C8ixBU0mO4gT1Skiq0s/DhNvMaoyQ6X1qzaM3/R?=
 =?iso-8859-1?Q?GizyZ1xsG8/YsXvI1BY+G8BCUhuyofMG/YNak8cVtzY8i8bx+FdBcq59P1?=
 =?iso-8859-1?Q?fYyjWLUeE6lgyZ63rhGMNyqQ+weTfmwg5iBL/CKYyK5r15XMLPhckGwFsa?=
 =?iso-8859-1?Q?n/xEdXdy3Q2K9Qb0audjnGEkGrqIdwXgrAtodQQfyepbM/5qu391Z+6ms7?=
 =?iso-8859-1?Q?bcCEpDoXAntSonD6MAoD/jineNPfbj+UpRiTrvRo9aa5+pYjy6MwXlxnYq?=
 =?iso-8859-1?Q?yq32+2hzM3E5RTAiaD8usKgtFMgcCZyhKJ7lzxvd4M6R6pdoaZKLBTTnDS?=
 =?iso-8859-1?Q?GY7wsBo8t/vkBBxfgLCrw+9c5HKbDDrZyfUOlDErnkau0wowDy4hpmY9Q4?=
 =?iso-8859-1?Q?p6SRMDu6c6TrRIhRg55e2dYkWIxGNUW7KJmc9vjc6U1rL3ErLapCd/uNUq?=
 =?iso-8859-1?Q?J/P4ROigeK9YuPub4Dw+k+23Bt9BZw+BsaqRNTFoDl75KI4dBZV/QPdnd6?=
 =?iso-8859-1?Q?p6l2dB5+tGWwPxYXdXgCQq9N?=
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_072729_936352_F3119BD3 
X-CRM114-Status: GOOD (  13.38  )
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

Create and export a cleanup function for DPRC. The function
is used by the DPRC driver, but it will be used by the VFIO
driver as well.

Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/dprc-driver.c | 52 ++++++++++++++++++++++++--------
 include/linux/fsl/mc.h           |  2 ++
 2 files changed, 41 insertions(+), 13 deletions(-)

diff --git a/drivers/bus/fsl-mc/dprc-driver.c b/drivers/bus/fsl-mc/dprc-driver.c
index 789220f0372a..a655e3fee291 100644
--- a/drivers/bus/fsl-mc/dprc-driver.c
+++ b/drivers/bus/fsl-mc/dprc-driver.c
@@ -725,33 +725,25 @@ static void dprc_teardown_irq(struct fsl_mc_device *mc_dev)
 }
 
 /**
- * dprc_remove - callback invoked when a DPRC is being unbound from this driver
+ * dprc_cleanup - function that cleanups a DPRC
  *
  * @mc_dev: Pointer to fsl-mc device representing the DPRC
  *
- * It removes the DPRC's child objects from Linux (not from the MC) and
- * closes the DPRC device in the MC.
- * It tears down the interrupts that were configured for the DPRC device.
+ * It closes the DPRC device in the MC.
  * It destroys the interrupt pool associated with this MC bus.
  */
-static int dprc_remove(struct fsl_mc_device *mc_dev)
+
+int dprc_cleanup(struct fsl_mc_device *mc_dev)
 {
 	int error;
 	struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_dev);
 
 	if (!is_fsl_mc_bus_dprc(mc_dev))
 		return -EINVAL;
-	if (!mc_dev->mc_io)
-		return -EINVAL;
 
-	if (!mc_bus->irq_resources)
+	if (!mc_dev->mc_io)
 		return -EINVAL;
 
-	if (dev_get_msi_domain(&mc_dev->dev))
-		dprc_teardown_irq(mc_dev);
-
-	device_for_each_child(&mc_dev->dev, NULL, __fsl_mc_device_remove);
-
 	if (dev_get_msi_domain(&mc_dev->dev)) {
 		fsl_mc_cleanup_irq_pool(mc_bus);
 		dev_set_msi_domain(&mc_dev->dev, NULL);
@@ -768,6 +760,40 @@ static int dprc_remove(struct fsl_mc_device *mc_dev)
 		mc_dev->mc_io = NULL;
 	}
 
+	return 0;
+}
+EXPORT_SYMBOL_GPL(dprc_cleanup);
+
+/**
+ * dprc_remove - callback invoked when a DPRC is being unbound from this driver
+ *
+ * @mc_dev: Pointer to fsl-mc device representing the DPRC
+ *
+ * It removes the DPRC's child objects from Linux (not from the MC) and
+ * closes the DPRC device in the MC.
+ * It tears down the interrupts that were configured for the DPRC device.
+ * It destroys the interrupt pool associated with this MC bus.
+ */
+static int dprc_remove(struct fsl_mc_device *mc_dev)
+{
+	int error;
+	struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_dev);
+
+	if (!is_fsl_mc_bus_dprc(mc_dev))
+		return -EINVAL;
+
+	if (!mc_bus->irq_resources)
+		return -EINVAL;
+
+	if (dev_get_msi_domain(&mc_dev->dev))
+		dprc_teardown_irq(mc_dev);
+
+	device_for_each_child(&mc_dev->dev, NULL, __fsl_mc_device_remove);
+
+	error = dprc_cleanup(mc_dev);
+	if (error < 0)
+		dev_err(&mc_dev->dev, "dprc_close() failed: %d\n", error);
+
 	dev_info(&mc_dev->dev, "DPRC device unbound from driver");
 	return 0;
 }
diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
index 2bdd96a482fb..e3ba273a1122 100644
--- a/include/linux/fsl/mc.h
+++ b/include/linux/fsl/mc.h
@@ -480,6 +480,8 @@ int dprc_scan_container(struct fsl_mc_device *mc_bus_dev,
 		   const char *driver_override,
 		   bool alloc_interrupts);
 
+int dprc_cleanup(struct fsl_mc_device *mc_dev);
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
