Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CC219F7F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 16:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwbWiErjHR2UVy3LCGW9ut7IkG+c2ayZwRwYjPdhWig=; b=d2pwFiyCx1M+92
	XB9c/fJOC3LvfyHTolUiVOo1Ub4uatiAMVoVdbe8+45w/kv1pYnwdflQLSL6m3t87rMU6sO5jmBih
	yA4oL2Tevjfl+eQw9aeX+Ulr7s+FxfW15aYYDF0JN8svi16QAZKJbh3MpEVWykWIZydgJ1RULTTRc
	guZ8Qnx41crBU43ccNqp8MuFzGxdcbXf/4eY/U6pv46czqJdQq6mO7X6YHqgkBWPGd90XvrpxaeV1
	sPcwujl+vTIQNEG1IHO3No4PXikhdHkOpZgV3cXix3sxTHBlctPPm5eux110ab1OYoijD0GEd1ZIp
	IB2bsIdwxEu4efNyIylg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLSjv-0006wA-Mt; Mon, 06 Apr 2020 14:28:39 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLSim-0005s1-Cp
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 14:27:31 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 35B0F200DA8;
 Mon,  6 Apr 2020 16:27:27 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 28934200DA7;
 Mon,  6 Apr 2020 16:27:27 +0200 (CEST)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id A464C204E6;
 Mon,  6 Apr 2020 16:27:26 +0200 (CEST)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: anda-alexandra.dorneanu@nxp.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 "stuyoder@gmail.com" <stuyoder@gmail.com>, Leo Li <leoyang.li@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "bharatb.yadav@gmail.com" <bharatb.yadav@gmail.com>
Subject: [PATCH 06/10] bus/fsl-mc: Add dprc-reset-container support
Date: Mon,  6 Apr 2020 17:27:09 +0300
Message-Id: <20200319154051.30609-7-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319154051.30609-2-diana.craciun@oss.nxp.com>
References: <20200319154051.30609-2-diana.craciun@oss.nxp.com>
Received: from AM6PR04MB6453.eurprd04.prod.outlook.com (2603:10a6:4:17::31) by
 DB8PR04MB6665.eurprd04.prod.outlook.com with HTTPS via
 DB6PR0601CA0045.EURPRD06.PROD.OUTLOOK.COM; Thu, 19 Mar 2020 15:41:32 +0000
Received: from DB6PR0802CA0044.eurprd08.prod.outlook.com (2603:10a6:4:a3::30)
 by AM6PR04MB6453.eurprd04.prod.outlook.com (2603:10a6:20b:d9::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20; Thu, 19 Mar
 2020 15:41:31 +0000
Received: from DB5EUR01FT038.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:4:a3:cafe::9b) by DB6PR0802CA0044.outlook.office365.com
 (2603:10a6:4:a3::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.15 via Frontend
 Transport; Thu, 19 Mar 2020 15:41:31 +0000
Received: from vger.kernel.org (209.132.180.67) by
 DB5EUR01FT038.mail.protection.outlook.com (10.152.4.191) with Microsoft SMTP
 Server id 15.20.2814.14 via Frontend Transport; Thu, 19 Mar 2020 15:41:31
 +0000
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
 id S1728297AbgCSPlZ (ORCPT <rfc822;diana.craciun@oss.nxp.com>
 + 1 other); Thu, 19 Mar 2020 11:41:25 -0400
Received: from inva021.nxp.com ([92.121.34.21]:51848 "EHLO inva021.nxp.com"
 rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
 id S1728120AbgCSPlO (ORCPT <rfc822;linux-kernel@vger.kernel.org>);
 Thu, 19 Mar 2020 11:41:14 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D610C2000C4;
 Thu, 19 Mar 2020 16:41:11 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BE3712000C2;
 Thu, 19 Mar 2020 16:41:11 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 68504205C2;
 Thu, 19 Mar 2020 16:41:11 +0100 (CET)
Thread-Topic: [PATCH 06/10] bus/fsl-mc: Add dprc-reset-container support
Thread-Index: AQHV/gTd8ZgOXCxL1EOQBkKMsWiW1A==
X-MS-Exchange-MessageSentRepresentingType: 2
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
In-Reply-To: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
Content-Language: en-US
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Organization-AuthSource: DB5EUR01FT038.eop-EUR01.prod.protection.outlook.com
X-Auto-Response-Suppress: All
X-MS-Exchange-Organization-Network-Message-Id: 51d9161b-4feb-496e-b006-08d7cc1bff1f
X-MS-Exchange-Organization-RecordReviewCfmType: 0
received-spf: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
x-ms-publictraffictype: Email
authentication-results: spf=none (sender IP is 209.132.180.67)
 smtp.mailfrom=vger.kernel.org; oss.nxp.com; dkim=none (message not signed)
 header.d=none;oss.nxp.com; dmarc=fail action=none
 header.from=oss.nxp.com;compauth=fail reason=601
x-ms-traffictypediagnostic: AM6PR04MB6453:
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:1; auth:0; dest:J;
 ENG:(20160513016)(750127)(520011016)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?n05HL1Dzc5vwg5q+Ix2EikBWqhnwT9cVLG9ayqIudhvj4zAgFiBeljYOrn?=
 =?iso-8859-1?Q?rM/4y1EHgPNm2EAnlFlWhJsmyjrXPMxqHoomCvBhZ8DXVTzYnMI99Alvvz?=
 =?iso-8859-1?Q?epR1K3SgGpS9567hzfQc/oUtWPzUDQzn0zV3V3ZQnFpqzER55Olnpg4oaB?=
 =?iso-8859-1?Q?w9zC5rF0doZGM7qkTeBxtdD1yKDnzerGVCgpAAx/6IXbSkw3cr6YcEdIIy?=
 =?iso-8859-1?Q?z9a1HQzqQGaCcZQFULdC61D3OE1pko1vjmeDSGve6qFPMgl8sxc9OcYLgH?=
 =?iso-8859-1?Q?Yy3SWTJB73R44SRFpYBC3nh4A8OTTWLKHRNdqYSJyoVxOpkY7jAy6K9/fW?=
 =?iso-8859-1?Q?b9nE5sfTo+b1oWGR9004C0xtAV8ij3NeeSZdjiIgXnSuL4Um3mi3Lw1WTX?=
 =?iso-8859-1?Q?sy58C51G07LxNqelbLIOESGxwUvt51fo9LTQsX7q9SLQ5BbQBWzLNzyvt8?=
 =?iso-8859-1?Q?+Orgi3l7bGamg5O6TtDeIBmNXcDcR0Ttv+axm+ryudQAH7vMtGnDMmCGkO?=
 =?iso-8859-1?Q?OagE4Gv7OayM1/LPXyFSi/nLL6I+Pqchs5RgXPD5/Ui6PLdfMDvKIBtjh5?=
 =?iso-8859-1?Q?zg9UMqEqYHSMJJlEhT5BAs8ron/tNtyYwpfuNoBvv6vZEPlmksx8RMRWAC?=
 =?iso-8859-1?Q?MU62FOP+RN3IAlvGrPWnt6NnyJdWpNaGLdCvcAehgbqO3199jxnOkTyg5i?=
 =?iso-8859-1?Q?J/+srQ7vIfjxBBa
 J/H2c6/ex6QvHqMmJOFv/m7SOawT6kLA2Dpnhw0D2Xn?=
 =?iso-8859-1?Q?Hr79yhrk0vm/1buBhP6KKZdRltUsVymaFMXmxhcBBpWRYfynRZ/S/IVOan?=
 =?iso-8859-1?Q?TVnmmNau2mx+mWG03gaI0rReTQLW1yK3HoZQSlvcrjg8SNbFyUBSebdy/F?=
 =?iso-8859-1?Q?yxyMeZoYsTYwdZiMzgIE32OqOKqqiNtsB89ck8wnOXD2m4Cxi2uk3leiq4?=
 =?iso-8859-1?Q?GQxVkccZph2F3eQelvxe4cjVYpYCYq73Lq0/JbhF3pSGbkuWyjqFaCg0Vz?=
 =?iso-8859-1?Q?Cqhzv0fUhLFliscxsTQaU0A4iLXUcA7fKAbyIP30cqrjLUtRcGmbjxWXzA?=
 =?iso-8859-1?Q?7NUcql7BgwvxfH4l0x9WcLr+KJe+4HFd1YBwVhu0d628i7wGnUW2p8nVmY?=
 =?iso-8859-1?Q?uuYCbLMRz4BxBJQorgRLY2fRM/2ZEvJ8Q45frrTuUSg8avUQ6Qt/fR3I0G?=
 =?iso-8859-1?Q?NZr8GAYsE+k9vvFOAZh+u9uLXKwejGPXpx6IvX/7NsCEXIqORCWuXacZC9?=
 =?iso-8859-1?Q?S5dG//FI6irdACwJi9fIZotqcL7J6ETinXl+rVrLTywvDJXYaJUGfEa8Pj?=
 =?iso-8859-1?Q?ytYrE14Heksz3rq0vsFDyAk5GWanlcOQ5CEEf2FFYbmovoeYGx/VT8CYIF?=
 =?iso-8859-1?Q?8YKZjJ1b0RjloKbj2EgzaOgeoHMmeHwQ9jX+SU9NkNKyn3DCQAJal2+0dZ?=
 =?iso-8859-1?Q?lTvM/7+lQZidyZA0KrV8/+eSHaZCqZc439ZWdYUgvV4buW4SBcfXG1YvTq?=
 =?iso-8859-1?Q?Ss0
 tmhmdbPaY1U3E+0UWIcOxjjWuWR7hhp3Vd3eUaC/RiEg5Hod9hvfYrT?=
 =?iso-8859-1?Q?12VD7LAxBllEizoRHf/+YoJe8ybOFyFfS83Y1a4JOOPFO0cZaagYo/b0Vq?=
 =?iso-8859-1?Q?E0e0QH+6mjIbvN7R5NJeleF0ImyRXE2qGzKq3Q5s2NT+ZvGYL9u2pJwt1e?=
 =?iso-8859-1?Q?HUXQPEZJKzeJyNFwGerRhh6LMeJKgDy/owgb+eqdoUMyhdJBKwtm05D8bi?=
 =?iso-8859-1?Q?l3v96zf4JegmsVLGswXuwjgC6xrTR5nymuMu7jq58zgnkmEBusa+cCxX+5?=
 =?iso-8859-1?Q?aShsaP1J0EvtnGEwMKWoTGS53w/jGCqvpMsGMyLbhrpLdpc6Ks13l3P10M?=
 =?iso-8859-1?Q?cGQjhu+vqihBP1UUXobSsFjUC3lQegha/XJdloqTJ4Mxpzh0gh7KBaDmIZ?=
 =?iso-8859-1?Q?lqtYTzNQBjjnFPmSLYAXn1ESE//+keZLX2Y1iPWCxP40rc1OD9MC+CPhS1?=
 =?iso-8859-1?Q?CH74xsq1L6fUHkUFEaM/GhwiV34gDV49uUR5yaT+1xz4tJZj2h0N1NVpFP?=
 =?iso-8859-1?Q?RLkQ0GwWEJUkKEPzL6z0fKSMjSYmf3X90ujaH2nsjkgLC5r3N9mz+ZTFSG?=
 =?iso-8859-1?Q?Qx5xO5lsgocWYW59NMyZqBJCysvjCrzDXjWaK+S1iSu94ZP2rBt9HoRh/o?=
 =?iso-8859-1?Q?OkACz+8X0DfFFAaO/K5hmTmm?=
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_072728_705090_77A103EB 
X-CRM114-Status: GOOD (  12.00  )
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

DPRC reset is required by VFIO-mc in order to stop a device
to further generate DMA transactions.

Signed-off-by: Bharat Bhushan <Bharat.Bhushan@nxp.com>
Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/dprc.c           | 41 +++++++++++++++++++++++++++++
 drivers/bus/fsl-mc/fsl-mc-private.h |  5 ++++
 include/linux/fsl/mc.h              |  5 ++++
 3 files changed, 51 insertions(+)

diff --git a/drivers/bus/fsl-mc/dprc.c b/drivers/bus/fsl-mc/dprc.c
index 602f030d84eb..5ae17fd957ba 100644
--- a/drivers/bus/fsl-mc/dprc.c
+++ b/drivers/bus/fsl-mc/dprc.c
@@ -72,6 +72,47 @@ int dprc_close(struct fsl_mc_io *mc_io,
 }
 EXPORT_SYMBOL_GPL(dprc_close);
 
+/**
+ * dprc_reset_container - Reset child container.
+ * @mc_io:	Pointer to MC portal's I/O object
+ * @cmd_flags:	Command flags; one or more of 'MC_CMD_FLAG_'
+ * @token:	Token of DPRC object
+ * @child_container_id:	ID of the container to reset
+ *
+ * In case a software context crashes or becomes non-responsive, the parent
+ * may wish to reset its resources container before the software context is
+ * restarted.
+ *
+ * This routine informs all objects assigned to the child container that the
+ * container is being reset, so they may perform any cleanup operations that are
+ * needed. All objects handles that were owned by the child container shall be
+ * closed.
+ *
+ * Note that such request may be submitted even if the child software context
+ * has not crashed, but the resulting object cleanup operations will not be
+ * aware of that.
+ *
+ * Return:	'0' on Success; Error code otherwise.
+ */
+int dprc_reset_container(struct fsl_mc_io *mc_io,
+			 u32 cmd_flags,
+			 u16 token,
+			 int child_container_id)
+{
+	struct fsl_mc_command cmd = { 0 };
+	struct dprc_cmd_reset_container *cmd_params;
+
+	/* prepare command */
+	cmd.header = mc_encode_cmd_header(DPRC_CMDID_RESET_CONT,
+					  cmd_flags, token);
+	cmd_params = (struct dprc_cmd_reset_container *)cmd.params;
+	cmd_params->child_container_id = cpu_to_le32(child_container_id);
+
+	/* send command to mc*/
+	return mc_send_command(mc_io, &cmd);
+}
+EXPORT_SYMBOL_GPL(dprc_reset_container);
+
 /**
  * dprc_set_irq() - Set IRQ information for the DPRC to trigger an interrupt.
  * @mc_io:	Pointer to MC portal's I/O object
diff --git a/drivers/bus/fsl-mc/fsl-mc-private.h b/drivers/bus/fsl-mc/fsl-mc-private.h
index 81b9a9b16698..66ccf7fb34af 100644
--- a/drivers/bus/fsl-mc/fsl-mc-private.h
+++ b/drivers/bus/fsl-mc/fsl-mc-private.h
@@ -92,6 +92,7 @@ int dpmcp_reset(struct fsl_mc_io *mc_io,
 #define DPRC_CMDID_GET_API_VERSION              DPRC_CMD(0xa05)
 
 #define DPRC_CMDID_GET_ATTR                     DPRC_CMD(0x004)
+#define DPRC_CMDID_RESET_CONT                   DPRC_CMD(0x005)
 
 #define DPRC_CMDID_SET_IRQ                      DPRC_CMD(0x010)
 #define DPRC_CMDID_SET_IRQ_ENABLE               DPRC_CMD(0x012)
@@ -112,6 +113,10 @@ struct dprc_cmd_open {
 	__le32 container_id;
 };
 
+struct dprc_cmd_reset_container {
+	__le32 child_container_id;
+};
+
 struct dprc_cmd_set_irq {
 	/* cmd word 0 */
 	__le32 irq_val;
diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
index f997f8091408..b9d5e5955adb 100644
--- a/include/linux/fsl/mc.h
+++ b/include/linux/fsl/mc.h
@@ -471,6 +471,11 @@ static inline bool is_fsl_mc_bus_dpseci(const struct fsl_mc_device *mc_dev)
 	return mc_dev->dev.type == &fsl_mc_bus_dpseci_type;
 }
 
+int dprc_reset_container(struct fsl_mc_io *mc_io,
+			 u32 cmd_flags,
+			 u16 token,
+			 int child_container_id);
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
