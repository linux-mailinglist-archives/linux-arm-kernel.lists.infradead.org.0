Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0B41657A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 07:30:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8jXGFfRniioAF9Oin66zAzNN2CmyPt928lPmoqaDr4=; b=SsFb9K8d1DYgSR
	gdkX+hRevyLsuuPUM3FNSgCur0bV7VPpsVqTeYaxbBp2qy6lFjFJRqITSCtKXU8x2hQ5PwPw0Hr2N
	biUBWnTWNt3KUxZkkr6V6zw29fhl4C4nhaXdInHyYIA5MTYhNctCH2vS4EBLAehHWMXntLFPrv0VU
	3f805BUQg4bAQxfWy6cTZIVYMxTEbPU2v6/FUdC8HH/8MTvdG4bth+EW3X++WyF5egLbCKogfa7W6
	fSw4eqk47Ulu5Uv62PZatcQn+ofaznHuonmblgvlQXwToIZITeFq2O9hFdVrounzKiGWmog9QBaqy
	8mIeb+yFnk72DWMySIHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4fMG-0007p6-7s; Thu, 20 Feb 2020 06:30:48 +0000
Received: from mail-eopbgr40072.outbound.protection.outlook.com ([40.107.4.72]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4fLt-0007gH-5c
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 06:30:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tfj2HIrmq3iIDPFwDCHa+grtCt36Ww3zYrAScxcnPAZgYLuEs92O/XX6cu8Xn7njtib26aU2jdxoqh/xtVEa4DKpOINh2DnumIMDxeMuXDh0ovuv/ETod1tvmdAf2im/UhDEKwszLY499PmH6Xtslmc/Nlp8fjN509GNCpqxHPQqWvZD6OGlxnSKhKuckEz6ds17BDZlSJ23/inLyrsIHWTgngXdnnd7TqaDJuXPyRU6vrd06b2hgotSShdBu74FGtp09Cnx8NzhIF6twp3bQ49mnajyq+WUR1Z5faqHIm7o9//qpD7fKqOLncWwh9qxikipeIHKK51LXa11KqDzZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+uE/QSC0B3WORImci7u2ZQ5qpDnJiJIDHvsx10aHPIw=;
 b=Q8+iRrC4kvNvPR7sbQRQXDl1+hQ6n2348DnZwlPrzIdWQZnMaaEcYBS51j4pRaA11f8L8GLVwN0T4mm2l/135VRgk+e493ZhRfJrh9hiBxBSmILBZlNgqqv25XmiOX8YE+Xcn2r85boKgAFzdsaXEt4ElD7CYtkVcX3cR4B6myBdr2uRUAZ2pUHcQSkuyAVcnd3CVa7CUhmRMHbICN9R70BrH/3hoG/Tqd4nLFVAq8EiJT/Tbb/wB2wzvjtzd6xDD3bpL/+tF7TCdCQpPrkcjpaI1TaXvOvJZhgPkJ0r6frBIc5COKpLLpENWkoXnbE+NeNhMm3xFdVr9bWWx4fluQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+uE/QSC0B3WORImci7u2ZQ5qpDnJiJIDHvsx10aHPIw=;
 b=n1Kz0u+zfHvpQaeVnsPeP43J7gHkVulN5lkdJdJUdVVobyC5n1mEb2s97C6ea3xO0myEJPi/jKdy/3aJJt8ps7mkro+lZ1HFjb3SRkAgXRGyoZ7bZ70fQESyag2heIW+fAQ2OhtDWIkA6ugMnMtRvDp2KUkxhBSPCL8iplj1R1E=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4860.eurprd04.prod.outlook.com (20.176.233.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.29; Thu, 20 Feb 2020 06:30:22 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::59e6:140:b2df:a5b0]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::59e6:140:b2df:a5b0%7]) with mapi id 15.20.2729.033; Thu, 20 Feb 2020
 06:30:22 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH V4 1/2] firmware: imx: add dummy functions
Date: Thu, 20 Feb 2020 14:24:02 +0800
Message-Id: <1582179843-14375-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582179843-14375-1-git-send-email-peng.fan@nxp.com>
References: <1582179843-14375-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK2PR02CA0133.apcprd02.prod.outlook.com
 (2603:1096:202:16::17) To DB7PR04MB4490.eurprd04.prod.outlook.com
 (2603:10a6:5:36::22)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR02CA0133.apcprd02.prod.outlook.com (2603:1096:202:16::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.18 via Frontend Transport; Thu, 20 Feb 2020 06:30:18 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 272da3df-0224-4a6f-56e5-08d7b5ce5d12
X-MS-TrafficTypeDiagnostic: DB7PR04MB4860:|DB7PR04MB4860:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB4860C4D565B75CFE8CB1C73488130@DB7PR04MB4860.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 031996B7EF
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(136003)(346002)(396003)(199004)(189003)(8936002)(6666004)(66946007)(66556008)(66476007)(81166006)(5660300002)(69590400006)(81156014)(8676002)(6486002)(9686003)(6512007)(4326008)(36756003)(478600001)(2906002)(86362001)(2616005)(16526019)(316002)(956004)(186003)(26005)(6506007)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4860;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OHLKv6lj31z0SIfXnhcv3A/V5OyJxTxs5BgX4WTT2NA/2c9+tvhOPUlnWYP4d76cqUBGC/vqapCkAERPR+iigcJQFbXnVLomeoWaD9g7HaBgCd+a5AOgy/cCK6y1z9t2DVhZZ39+7GVgYdxajTmsu40By5UbRmUwiyx/F6zZrNlxelI3bDi0BzqNcrRGWGwp9c4RMFkkIhTjPNWluayelpykRMnbn8nWLGVogY6NMerId9ci+N5322EHDZWhpddAY9RtCm+0RT5Lg3cYeUKJVTV6iPM2Ooy9G8Y97qYhxYNB3DmUfZuQGg2qPUEoZB2CZpVFud7u8XAP4F1ltxzXEl5F0PvJzod9ZR1OLcyJ+an0ICPP/ijskg4VFa/ZzrDio0lKRLLJVV0o+ZwJPX+ZGxxNM7Pr4gv4G2pU0swLtL+t+C+g3CEINUZRwnTo+LSdPNmfprt44eO9vemnY/XGNkSC6MO4bWjXQ+TDAcbxgslI13UsZifKZ0ZCy7zlnEJdDVDDM4a8hcB5Qt1rD1SwwOYy452dd78f8MyC7dOzjoo=
X-MS-Exchange-AntiSpam-MessageData: J9/Lb7QdictPpTt3xRJ9f3mwIGurD9vLKnCFEVX9zy9G3Ldetx1JBNxeLO4qxCgNm+SOwgk2DVArIDQE2dnJ11JigjrEgua7UStjS4nRwOYq5sV7VxFsFG68ErJiEUexhhznRJug++V2QKpEAollMQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 272da3df-0224-4a6f-56e5-08d7b5ce5d12
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2020 06:30:22.7556 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U4Oz2QaiFGHTDdZLkm5U3+WNzQOWShD817LEPvQWj9wKqEsBQ2wJFoptl/0Mr80OX5HQcriLBGKCNH4PjOenQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4860
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_223025_211450_14736EF2 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, olof@lixom.net, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

IMX_SCU_SOC could be enabled with COMPILE_TEST, however there is
no dummy functions when CONFIG_IMX_SCU not defined. Then there
will be build failure.

So add dummy functions to avoid build failure for COMPILE_TEST

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 include/linux/firmware/imx/ipc.h      | 13 +++++++++++++
 include/linux/firmware/imx/sci.h      | 22 ++++++++++++++++++++++
 include/linux/firmware/imx/svc/misc.h | 19 +++++++++++++++++++
 3 files changed, 54 insertions(+)

diff --git a/include/linux/firmware/imx/ipc.h b/include/linux/firmware/imx/ipc.h
index 6312c8cb084a..30475082f472 100644
--- a/include/linux/firmware/imx/ipc.h
+++ b/include/linux/firmware/imx/ipc.h
@@ -35,6 +35,7 @@ struct imx_sc_rpc_msg {
 	uint8_t func;
 };
 
+#ifdef CONFIG_IMX_SCU
 /*
  * This is an function to send an RPC message over an IPC channel.
  * It is called by client-side SCFW API function shims.
@@ -56,4 +57,16 @@ int imx_scu_call_rpc(struct imx_sc_ipc *ipc, void *msg, bool have_resp);
  * @return Returns an error code (0 = success, failed if < 0)
  */
 int imx_scu_get_handle(struct imx_sc_ipc **ipc);
+#else
+static inline int imx_scu_call_rpc(struct imx_sc_ipc *ipc, void *msg,
+				   bool have_resp)
+{
+	return -ENOTSUPP;
+}
+
+static inline int imx_scu_get_handle(struct imx_sc_ipc **ipc)
+{
+	return -ENOTSUPP;
+}
+#endif
 #endif /* _SC_IPC_H */
diff --git a/include/linux/firmware/imx/sci.h b/include/linux/firmware/imx/sci.h
index 17ba4e405129..7ea875b186e3 100644
--- a/include/linux/firmware/imx/sci.h
+++ b/include/linux/firmware/imx/sci.h
@@ -16,8 +16,30 @@
 #include <linux/firmware/imx/svc/misc.h>
 #include <linux/firmware/imx/svc/pm.h>
 
+#ifdef CONFIG_IMX_SCU
 int imx_scu_enable_general_irq_channel(struct device *dev);
 int imx_scu_irq_register_notifier(struct notifier_block *nb);
 int imx_scu_irq_unregister_notifier(struct notifier_block *nb);
 int imx_scu_irq_group_enable(u8 group, u32 mask, u8 enable);
+#else
+static inline int imx_scu_enable_general_irq_channel(struct device *dev)
+{
+	return -ENOTSUPP;
+}
+
+static inline int imx_scu_irq_register_notifier(struct notifier_block *nb)
+{
+	return -ENOTSUPP;
+}
+
+static inline int imx_scu_irq_unregister_notifier(struct notifier_block *nb)
+{
+	return -ENOTSUPP;
+}
+
+static inline int imx_scu_irq_group_enable(u8 group, u32 mask, u8 enable)
+{
+	return -ENOTSUPP;
+}
+#endif
 #endif /* _SC_SCI_H */
diff --git a/include/linux/firmware/imx/svc/misc.h b/include/linux/firmware/imx/svc/misc.h
index 031dd4d3c766..3f4a0f526b73 100644
--- a/include/linux/firmware/imx/svc/misc.h
+++ b/include/linux/firmware/imx/svc/misc.h
@@ -46,6 +46,7 @@ enum imx_misc_func {
  * Control Functions
  */
 
+#ifdef CONFIG_IMX_SCU
 int imx_sc_misc_set_control(struct imx_sc_ipc *ipc, u32 resource,
 			    u8 ctrl, u32 val);
 
@@ -54,5 +55,23 @@ int imx_sc_misc_get_control(struct imx_sc_ipc *ipc, u32 resource,
 
 int imx_sc_pm_cpu_start(struct imx_sc_ipc *ipc, u32 resource,
 			bool enable, u64 phys_addr);
+#else
+int imx_sc_misc_set_control(struct imx_sc_ipc *ipc, u32 resource,
+			    u8 ctrl, u32 val)
+{
+	return -ENOTSUPP;
+}
+
+int imx_sc_misc_get_control(struct imx_sc_ipc *ipc, u32 resource,
+			    u8 ctrl, u32 *val)
+{
+	return -ENOTSUPP;
+}
 
+int imx_sc_pm_cpu_start(struct imx_sc_ipc *ipc, u32 resource,
+			bool enable, u64 phys_addr)
+{
+	return -ENOTSUPP;
+}
+#endif
 #endif /* _SC_MISC_API_H */
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
