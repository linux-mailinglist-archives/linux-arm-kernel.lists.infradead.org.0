Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297D0166CF4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 03:39:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+SZ7BbIOsPDvztwkN0hfU/afPOf83inShxgFpmlwrC4=; b=bkkPKJ1nZ0ZbCN
	TakpK0MYjbdG0RM3JbWlf7mK7Os3NvSC7VHjD/AA+rcSHmCGn4l9N7FCyATNRkn4ndb6YVLFf1Pz5
	ffwVs61amkfsEZ01V/Z38a5t1AHDFMaj2JK9v93Pj6ATKh/50RaSjOvsi9k8sv0q95Kjk1yU73n81
	+yoYAGrVSjAAkt7dNuftpV4UM9tEerFiFExXC7/l2wBPt2H3z+uV3b0D+g/1TYsUC0FBevFJby/Qh
	tiGFeoeRGS7hPPq9Zhl1YTmaLYXyFLcs0tYn2V7Ot4DKZgtdG9rkNTE0AyDPWnE5T20w1cIiSYk+J
	Pw7nJsAgU0sHfUCJ0z0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4yDT-0007wd-If; Fri, 21 Feb 2020 02:38:59 +0000
Received: from mail-eopbgr10065.outbound.protection.outlook.com ([40.107.1.65]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4yCv-0007iq-V0
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 02:38:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NLV0/hdYeoUAB1+y624pw8JZi6tCOcL58oJSuLmZJe5sVhmqcD07OwHFloV4htI48ZSyNhG0xLWf5/MO2X3biQ2+mB4Pg0PtUkwJWm6Rx91E0yRVjHAaIFRTy2mMChHhQlDV+9tRQTQd1Q8o8LKt6tmO3ItCs3li1AMKFlj2p6crXqhvCnCrP62NTqVlZw4IwaSpwouSKjg8Wbx+b53VP54HKYhMkoaVhpoUrtOgK6IWRMTSQVroHtiS5bn9gfCersrda3uFrZY04inF4mWA+mP3tC5rrfFjnwgaFFGxQGPbjAqa9eNC2O9L0nrG8O5M1f9or6XlTWFLXllEtvjCTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1pHpzxEIbDKi2Xx5kdCK1RS4J/36DfLqAvV+tLY9f1I=;
 b=Ei1pnIRyBObs0tC9O6fNjgS3JeIYGnkW7bc3GvGlfvQasR+kk4sM1gK8GfZdYodLtHwT71ssswfVlFKLaVoP3ROWBsAhuozAYyEYlB3p/1NJRaAQdZt9b6jVwMhn4dLK9ESguRS6EuqgYdnlhetPLCVk5bCq3TrRzzZ1TxFwvttMNvMtfv7LXlawNhCwyi4Oerdm0R8ES8llnL8Vh9yHyt6am+ywGIV4c9oc+8N69X7n398w5dz1rCRt/03n3XZUYnxBeIkM5C+kAyAK8kAPATt4f+M9j2HgpOdQ5hBB7S41XorTy+ITQw6o88vcOKPOdMm3O01/4Vq9LA7vnv44yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1pHpzxEIbDKi2Xx5kdCK1RS4J/36DfLqAvV+tLY9f1I=;
 b=pOlGpCCwfD/a2e7PugDOgjzNE3nV6dq/DsaC30XRkxPt2IMGt/YS+yySG6sa51S0TmAFbP1UQljCy5rnCtlYv+WLl4xlN5RymQsdE9hQbd2g8Cfyx6/uJ8TF8/i6EooKB0XQfQdNgiXD75qmufADN3lbpL5vXMoVn8KjOSWTFIc=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5281.eurprd04.prod.outlook.com (52.134.89.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Fri, 21 Feb 2020 02:38:24 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 02:38:24 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH V5 1/2] firmware: imx: add dummy functions
Date: Fri, 21 Feb 2020 10:32:18 +0800
Message-Id: <1582252339-15733-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582252339-15733-1-git-send-email-peng.fan@nxp.com>
References: <1582252339-15733-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK2PR04CA0057.apcprd04.prod.outlook.com
 (2603:1096:202:14::25) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR04CA0057.apcprd04.prod.outlook.com (2603:1096:202:14::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.17 via Frontend Transport; Fri, 21 Feb 2020 02:38:20 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6d75dcb9-c7c7-4d62-d080-08d7b6771f47
X-MS-TrafficTypeDiagnostic: AM0PR04MB5281:|AM0PR04MB5281:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB52815A54BD10E6614419595788120@AM0PR04MB5281.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 0320B28BE1
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(366004)(346002)(39860400002)(189003)(199004)(2616005)(9686003)(26005)(4326008)(956004)(478600001)(6506007)(36756003)(5660300002)(6486002)(6512007)(16526019)(8676002)(86362001)(8936002)(52116002)(69590400006)(2906002)(186003)(66946007)(81166006)(66556008)(81156014)(316002)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5281;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IlGIXc2fupVgG9aHsM9c2/HOGkMQvE5iDr/twPvxqzM83IWYK94CP6U5rZgFwLZkem0sH+giiTW6nfjuW8P1vVFllCAGtl9JkFxPr/A5bixbOGRZIVkLtkrxLy3LaHnnpl6HY5fSvYgO46KSinCeZ3f8Nt7LyrXS3hXrSFqbDUQ7LSLoEDVPQd+y0Co8J1/5bDGX0YXlC77JM5H1OnQmow2xbnpjALFvZDJvcj3Bh1Mf/uSjOlrdrLVXmlpuMGlU1DIXVNPAqLoy+e0By8QPzyoHBvPL5Jk52t6i8GnJZDtn7iJn2DrplAq6UP3wIdmQTcAhgDMrF9z/qoZh8We1H2VFiUvG6krK+ww7OBhcRIe/T2Xr7VCE7EQFXWXsALk7HrQ3nTyCd3vQru7kS8jVpPEcgwRcfnVNdZimHspW7nRj8Vccjw+JiYncFzJNlGeVSWi6LAtW10VV1PcYCxjk7AfPwJIglM0LbM+GEOpqtHbldt/dyU1rUVDv4N7/CFzNFL5C+0QawgF6F3vk6TR1Lw8axdFYGfMyFNEznICxc2Q=
X-MS-Exchange-AntiSpam-MessageData: S04rmBY6VoneMLkxg4OlS4ZMNLgzeU8//g57muue28C7ytN8nJY3v6tOKkVTpG8H+zFKi+PDwS2HYv6ZlVTmZPeCRyLbDkg78XNkHVR0KCxq5nt2lqbE26GjXSl569oSLYcpUXdqGWuUGNVhUIdXsA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d75dcb9-c7c7-4d62-d080-08d7b6771f47
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2020 02:38:24.0456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E5y7Ax4UvaMPdggOTzs9YxbG/CUdBWumgI1wmC2DUsR8JAU1ZNtwf6K1ND51egFcAaw4kgkiYawDOWzVrq+s/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5281
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_183826_006394_4F80877E 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index 031dd4d3c766..760db08a67fc 100644
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
+static inline int imx_sc_misc_set_control(struct imx_sc_ipc *ipc,
+					  u32 resource, u8 ctrl, u32 val)
+{
+	return -ENOTSUPP;
+}
 
+static inline int imx_sc_misc_get_control(struct imx_sc_ipc *ipc,
+					  u32 resource, u8 ctrl, u32 *val)
+{
+	return -ENOTSUPP;
+}
+
+static inline int imx_sc_pm_cpu_start(struct imx_sc_ipc *ipc, u32 resource,
+				      bool enable, u64 phys_addr)
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
