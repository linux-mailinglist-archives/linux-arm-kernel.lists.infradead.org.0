Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D749C1B5533
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 09:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVbgU2PEIV1obsrAV7qwVN2HDdR32dn4q3G3lJV8t8w=; b=nrPBJGw/ECrJIE
	f7nJ9BoCqSgiHQLPnWPYDSj26aOV/s1BlJHRu5QF9SL7cAMA+y3Bf1PtdjvnMx27/LPloRDf9BYcc
	3nK8dDKI2lCfvvkNOMwGo2WryM9CQ9ozb2pIzLolyMBoO9zuFb5XnG8Fw5xQxBL/DVqxkHzuKJQ0Y
	N2TdWcmDqmM1Zo8Z/HyQdmv5o2VLw0gaPkanNLFlw3DGIC8ArlxlCy6zWgKGZ+0FjlRPpsuCY+rB5
	5gWfhLWNYMD9L/TGe14wwy13CtkvNQIxMF77xfQgvEMr19XRf2D3lLs4QPU3IZ/6Izc8MbF10Dpl/
	i71fVP8xkDLwoK8Sm9qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRVyq-0004Gm-No; Thu, 23 Apr 2020 07:09:04 +0000
Received: from mail-eopbgr60055.outbound.protection.outlook.com ([40.107.6.55]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVyG-0003q8-Oa
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 07:08:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZiJ7qAiWZTkEF0Yo8GoM5G3WEp6MDlMrllmnhjK08Xc6l7wgP1vzFdcqrkbEw44J8pu5SaLXlvnao0YQR/tx3YI5eO5nUrcRmBSTDBFPPhp3y+dgPQAJxXBROLCvsKJeWOKfizIodw7cx0ThtbUQN8+G1ZkTi3aYSnxHFXu4jgCb3WhGbkA3pHidIyUtp4TL3yanSOCql+hMFXh6yst1OopttgPw/jbWsvcXjIeV1YkqRqsdKUUbg4Sq+oNA3/vtKFMZXfLhg9XiVQgYDKGgrS0AOAIetakT8oeX9nT6Dt105kWgy8IBtGq0ILvvvztoLjNBeuwI8iPtXKHIa2hZNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p4FEv099cAWG1Df1rkKDr0Qp9RWpyCfNJwRRLEZw59w=;
 b=e0EdGvu/nNyIJHPRevbP3fF9yXNhbehbBAAxns+6oSwcMdLtzerN98SUPphL3srXDh8h0DCTD5Kpq+Li8vFLa6oVzqFgCVvq6kFZ4Fk5m3HBATG3K6y6nNYNQqNkPzMxcwqoOw0gsx5pDuqSe6aEwbhAmQ5Z9kCPxHXqqv+1K3EpZyTgWsYYRb0RV3O0hQMGhQWaM9rIssriNJ8RibAvkpvAT6/JNgR5zWbAKFj21kGbkkVj+itjonneoCIYfW/vF/Ma7+5b8OhTrZQcQwtMM8wLAG/S5KT3+RqlpyTHv32GcE+Rss1TPSzy0XkZjsV3XX9zjr98vpNhmonbJD4o4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p4FEv099cAWG1Df1rkKDr0Qp9RWpyCfNJwRRLEZw59w=;
 b=a/51B6b44/cmKeXS5oYpPVS6cugFeQ75X0IXyLitAQfTblUl7jPOh37qBA19gjX1Qo5mX3MOzYIuyNE61Z6fdDif8jLPboN9l2BDjufwYgDTsfSy6nHxipkx8KOq+a6BMeI4y4TwiLckkDIJhXKBvtdP9/qAiQIM3cml/Uf2tfw=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2855.eurprd04.prod.outlook.com (2603:10a6:4:98::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 23 Apr
 2020 07:08:26 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.012; Thu, 23 Apr 2020
 07:08:26 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH 2/4] firmware: imx: add resource management api
Date: Thu, 23 Apr 2020 14:59:32 +0800
Message-Id: <1587625174-32668-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
References: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR04CA0149.apcprd04.prod.outlook.com
 (2603:1096:3:16::33) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR04CA0149.apcprd04.prod.outlook.com (2603:1096:3:16::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2937.13 via Frontend Transport; Thu, 23 Apr 2020 07:08:21 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d45d75b7-ebc6-4539-40d2-08d7e7551df0
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2855:|DB6PR0402MB2855:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2855C060216DFB469FDA661F88D30@DB6PR0402MB2855.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 03827AF76E
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(366004)(136003)(376002)(346002)(26005)(66946007)(4326008)(6512007)(9686003)(66476007)(6486002)(66556008)(69590400007)(6666004)(5660300002)(86362001)(8676002)(81156014)(6506007)(52116002)(16526019)(8936002)(2616005)(316002)(2906002)(478600001)(186003)(956004)(36756003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: o4hIOXzDzE9U1fiY6oSKIt4k23QVSCzUppf+KXdYOyUJA+jn3/sX6Cf60tv+9bjRT92OmiB7T+udTADq+jzQsFq6LVXJY+Zp0MbJu7/7ayVzzJu8sKvGzv1Iynhb8q5hYU12LJ6B3xy65L46NVtJ39v5jbni8jhxVPL+AngepezhcssVVQAmj2BMB60fTYbLo0ySXMZvdxnQYm7cvgkcIeizskHIP3ZB5oTci/Bjg+1u/j/qZXMIWLoeCeNeuanljjvUaF49dAz7tO3/omQ+5SYS1vQp/pac8uxWHVt9rfSRZ9JzJ0FkEqm2B/uxmihxzyzhn6sui5cujIy4J/LJpRxnNRNy1b6R6jR2EFWN3TB7ihMZfWMnFBHv37PrGfUuK13PmRCeNVXzAoz5dwPJEwCnHFUWHh2d5A41TqowsdNWZOjHRt3MRIP9BIuyDK+xnLsRL3RBtucfbHnap9gkHKloHqVtUnP98E3Jmq2cYlCH+Vb4I0GZjJBUUzZm7cky
X-MS-Exchange-AntiSpam-MessageData: 1bqFZJcmubYIdOPu6ff9c0T82ysRSoWtenMuOhuCyeS9wwoNOYwkYudxDtp+/vKC5SSfV/zgNn5KrqY8v3ZHkl5CaITImEvpiKOUj/sWMdzBVmJ8bppF5zCCXloLWFiIXsNZtLyLDW11bBddvcVybQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d45d75b7-ebc6-4539-40d2-08d7e7551df0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2020 07:08:25.9194 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VXoDQrWrGOwekmnYwaxqh3MTbQOj9C3RjFCr6qNTTkN01rY65DqGvlFjrC1IVwe6OZdwaalr/B8Kt3nLFcEs8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2855
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_000828_805674_278DB056 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, festevam@gmail.com,
 qiangqing.zhang@nxp.com, linux@rempel-privat.de,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 leonard.crestez@nxp.com, daniel.baluta@nxp.com, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add resource management API, when we have multiple
partition running together, resources not owned to current
partition should not be used.

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/firmware/imx/Makefile       |  2 +-
 drivers/firmware/imx/rm.c           | 40 +++++++++++++++++++++
 include/linux/firmware/imx/sci.h    |  1 +
 include/linux/firmware/imx/svc/rm.h | 69 +++++++++++++++++++++++++++++++++++++
 4 files changed, 111 insertions(+), 1 deletion(-)
 create mode 100644 drivers/firmware/imx/rm.c
 create mode 100644 include/linux/firmware/imx/svc/rm.h

diff --git a/drivers/firmware/imx/Makefile b/drivers/firmware/imx/Makefile
index 08bc9ddfbdfb..17ea3613e142 100644
--- a/drivers/firmware/imx/Makefile
+++ b/drivers/firmware/imx/Makefile
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_IMX_DSP)		+= imx-dsp.o
-obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o imx-scu-irq.o
+obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o imx-scu-irq.o rm.o
 obj-$(CONFIG_IMX_SCU_PD)	+= scu-pd.o
diff --git a/drivers/firmware/imx/rm.c b/drivers/firmware/imx/rm.c
new file mode 100644
index 000000000000..7b0334de5486
--- /dev/null
+++ b/drivers/firmware/imx/rm.c
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2020 NXP
+ *
+ * File containing client-side RPC functions for the RM service. These
+ * function are ported to clients that communicate to the SC.
+ */
+
+#include <linux/firmware/imx/svc/rm.h>
+
+struct imx_sc_msg_rm_rsrc_owned {
+	struct imx_sc_rpc_msg hdr;
+	u16 resource;
+} __packed __aligned(4);
+
+/*
+ * This function check @resource is owned by current partition or not
+ *
+ * @param[in]     ipc         IPC handle
+ * @param[in]     resource    resource the control is associated with
+ *
+ * @return Returns 0 for success and < 0 for errors.
+ */
+bool imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16 resource)
+{
+	struct imx_sc_msg_rm_rsrc_owned msg;
+	struct imx_sc_rpc_msg *hdr = &msg.hdr;
+
+	hdr->ver = IMX_SC_RPC_VERSION;
+	hdr->svc = IMX_SC_RPC_SVC_RM;
+	hdr->func = IMX_SC_RM_FUNC_IS_RESOURCE_OWNED;
+	hdr->size = 2;
+
+	msg.resource = resource;
+
+	imx_scu_call_rpc(ipc, &msg, true);
+
+	return hdr->func;
+}
+EXPORT_SYMBOL(imx_sc_rm_is_resource_owned);
diff --git a/include/linux/firmware/imx/sci.h b/include/linux/firmware/imx/sci.h
index 17ba4e405129..b5c5a56f29be 100644
--- a/include/linux/firmware/imx/sci.h
+++ b/include/linux/firmware/imx/sci.h
@@ -15,6 +15,7 @@
 
 #include <linux/firmware/imx/svc/misc.h>
 #include <linux/firmware/imx/svc/pm.h>
+#include <linux/firmware/imx/svc/rm.h>
 
 int imx_scu_enable_general_irq_channel(struct device *dev);
 int imx_scu_irq_register_notifier(struct notifier_block *nb);
diff --git a/include/linux/firmware/imx/svc/rm.h b/include/linux/firmware/imx/svc/rm.h
new file mode 100644
index 000000000000..fc6ea62d9d0e
--- /dev/null
+++ b/include/linux/firmware/imx/svc/rm.h
@@ -0,0 +1,69 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright (C) 2016 Freescale Semiconductor, Inc.
+ * Copyright 2017-2019 NXP
+ *
+ * Header file containing the public API for the System Controller (SC)
+ * Power Management (PM) function. This includes functions for power state
+ * control, clock control, reset control, and wake-up event control.
+ *
+ * RM_SVC (SVC) Resource Management Service
+ *
+ * Module for the Resource Management (RM) service.
+ */
+
+#ifndef _SC_RM_API_H
+#define _SC_RM_API_H
+
+#include <linux/firmware/imx/sci.h>
+
+/*
+ * This type is used to indicate RPC RM function calls.
+ */
+enum imx_sc_rm_func {
+	IMX_SC_RM_FUNC_UNKNOWN = 0,
+	IMX_SC_RM_FUNC_PARTITION_ALLOC = 1,
+	IMX_SC_RM_FUNC_SET_CONFIDENTIAL = 31,
+	IMX_SC_RM_FUNC_PARTITION_FREE = 2,
+	IMX_SC_RM_FUNC_GET_DID = 26,
+	IMX_SC_RM_FUNC_PARTITION_STATIC = 3,
+	IMX_SC_RM_FUNC_PARTITION_LOCK = 4,
+	IMX_SC_RM_FUNC_GET_PARTITION = 5,
+	IMX_SC_RM_FUNC_SET_PARENT = 6,
+	IMX_SC_RM_FUNC_MOVE_ALL = 7,
+	IMX_SC_RM_FUNC_ASSIGN_RESOURCE = 8,
+	IMX_SC_RM_FUNC_SET_RESOURCE_MOVABLE = 9,
+	IMX_SC_RM_FUNC_SET_SUBSYS_RSRC_MOVABLE = 28,
+	IMX_SC_RM_FUNC_SET_MASTER_ATTRIBUTES = 10,
+	IMX_SC_RM_FUNC_SET_MASTER_SID = 11,
+	IMX_SC_RM_FUNC_SET_PERIPHERAL_PERMISSIONS = 12,
+	IMX_SC_RM_FUNC_IS_RESOURCE_OWNED = 13,
+	IMX_SC_RM_FUNC_GET_RESOURCE_OWNER = 33,
+	IMX_SC_RM_FUNC_IS_RESOURCE_MASTER = 14,
+	IMX_SC_RM_FUNC_IS_RESOURCE_PERIPHERAL = 15,
+	IMX_SC_RM_FUNC_GET_RESOURCE_INFO = 16,
+	IMX_SC_RM_FUNC_MEMREG_ALLOC = 17,
+	IMX_SC_RM_FUNC_MEMREG_SPLIT = 29,
+	IMX_SC_RM_FUNC_MEMREG_FRAG = 32,
+	IMX_SC_RM_FUNC_MEMREG_FREE = 18,
+	IMX_SC_RM_FUNC_FIND_MEMREG = 30,
+	IMX_SC_RM_FUNC_ASSIGN_MEMREG = 19,
+	IMX_SC_RM_FUNC_SET_MEMREG_PERMISSIONS = 20,
+	IMX_SC_RM_FUNC_IS_MEMREG_OWNED = 21,
+	IMX_SC_RM_FUNC_GET_MEMREG_INFO = 22,
+	IMX_SC_RM_FUNC_ASSIGN_PAD = 23,
+	IMX_SC_RM_FUNC_SET_PAD_MOVABLE = 24,
+	IMX_SC_RM_FUNC_IS_PAD_OWNED = 25,
+	IMX_SC_RM_FUNC_DUMP = 27,
+};
+
+#if IS_ENABLED(CONFIG_IMX_SCU)
+bool imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16 resource);
+#else
+static inline bool
+imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16 resource)
+{
+	return true;
+}
+#endif
+#endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
