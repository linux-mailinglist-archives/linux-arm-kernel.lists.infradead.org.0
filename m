Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0D6182C5D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:25:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+0VJqHNaS+j6Xx0K/mE47+/pvI2x+8DCrAWkcwQLjk=; b=PUxtdYkbuaXmKm
	yS5na+XhofMlC1SsuUohjzRrSdryYCr3RUNQY378PqSV4tk8WkUjXyqORDN6Qxn6p61fsTKUd9w97
	CCCbzHAP6i5LeXZaeWq/wNGdOAh7PXGdoU2xzJk44odDuWsKNjGHuJYnGt9+bP1xUfZHdt1Zbekag
	bE/JhGWWoDkI7FpJz8zll7sK7ChDk0Q0IIm5liDQ252PfRt4n89SP713NRz2wdzsluAXt8eMCrJLa
	3Y2CZ8B2f2daM2twudCU3QYjHmQFi0Op0ajTZa0iFTrgzrXE6Xh0kFrcQ2wnZiaat15YkxtHKKfyI
	5uPr5eMRirvqIsQP4+Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCK5L-0004T9-Lu; Thu, 12 Mar 2020 09:24:59 +0000
Received: from mail-eopbgr130041.outbound.protection.outlook.com
 ([40.107.13.41] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCK4d-0003wX-C0
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:24:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oeU4KfNJ/9Q53rKK2h2UtNRkaFFVXvuuk9ryQOi7SfHGlAkFtAc0uFpqNcpzyQI3RyDgUwYU1nawz/8z78DN/m+kTFPY14M6h1P40cjJ2w68wwmD/CBDrS8fq3YmzT7Mr5o9payZRotfmnvrnBUulSEPJGEcgkwG9XGZ2eePiMomtlVYCAZ+UfIV38YHooHg2lHZ0oXnMx2fm5D7Ldj8lILpeb/xBk62oxLtaC+MGiKFfUZclgEkx496Y7L0s5l9b0G915fe5iODNQxw1RnRKIRX+loCTHD2r1jjIEvkz7rvF0f05cmwHpHV+J/cFxNaB0ID/XNCf8KmnmBl+krDJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SSc0wLoVfGMlBt9BsItn/Q2w7BgQbkJ38ahG/ciGDs8=;
 b=Rz3cUV3879+VI8KBN7cc269bfFQVxSz1zgXZx4Wa0eEHxbvlquKXGr5yWhmDG/8Axg6PbZcNcueoJNQTcfX2XV05KNwVBu6bjWysVB3HSEJjrRp8kKtSJ4iRjFY9orzRFZIzmgf+OILx+rUF0Kr0q0yDvWNqTdkqdBf5I7LkqjUyGOpAKaPFRyNSxfhPILUj6bHTHF/uhXa0ZyKEkXxbooUzeiLEAj/TfUGgW/z3d1L7zXW2ZDjBdJFTeZGKgavpS+Wq4P2EXEt89trdCVZkrMGD5SnJbMd95rwiP5C+rd9TysJjpLswNahIFc8kkfd7zXoR/uN1Ylxfm9daFySyCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SSc0wLoVfGMlBt9BsItn/Q2w7BgQbkJ38ahG/ciGDs8=;
 b=AMUoGfEMKHUQl13wqHEozleRrM7JnIe7xhctEk220WuuTbJg8DoJDXVauL+InVeysnP6H1z3RI07K+qqs+eLVrEZwFTF/bCjdnU8tQ+yfQEbXp5X4d3VT+y3/xdH9muZoOXvlY2dIx+ZdX/x8ZXu2R012EmNzuOFkisxKN6XiOo=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5042.eurprd04.prod.outlook.com (20.177.41.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Thu, 12 Mar 2020 09:24:11 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 09:24:11 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH V1 1/4] ARM: imx: use device_initcall for imx_soc_device_init
Date: Thu, 12 Mar 2020 17:17:22 +0800
Message-Id: <1584004645-26720-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584004645-26720-1-git-send-email-peng.fan@nxp.com>
References: <1584004645-26720-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR0302CA0001.apcprd03.prod.outlook.com
 (2603:1096:3:2::11) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR0302CA0001.apcprd03.prod.outlook.com (2603:1096:3:2::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2835.7 via Frontend Transport; Thu, 12 Mar 2020 09:24:07 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f8bffde1-002b-493d-21ca-08d7c6671fd4
X-MS-TrafficTypeDiagnostic: AM0PR04MB5042:|AM0PR04MB5042:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5042F3F98EB2308AFB32FD1E88FD0@AM0PR04MB5042.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:229;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(376002)(39860400002)(346002)(199004)(316002)(52116002)(8676002)(8936002)(6506007)(36756003)(81166006)(81156014)(186003)(6666004)(9686003)(6486002)(16526019)(4326008)(66556008)(66476007)(26005)(7416002)(6512007)(956004)(5660300002)(86362001)(478600001)(2616005)(2906002)(66946007)(69590400007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5042;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: a0bivvowreIU5QUCIh74WbCJkk1fM3L7dde76TcRBczlzw95pien7DT3uG75bXUg3/5JFLjg2I143n3ZAZR1GmWNefUe6sFenkUT8yM5qfCWuvQ871ZbQT4HkxItL3jx3NO7iElxSyIz61Hzmo4aWBW2jBdjZr8CnGFD/nN6HS+0d+Idgp+LK1ltm0akscwl9QZ0ggIrpZ6LGJ4GPoLc8/a4+qvCVNzOyNpcy4q7QjnW8czbj/pcrg8HoJpkEfJh9cll+l1Iou1j6fZ4SVANjf7KT+wAgJPRjrojQ7IZQnqrCMDLqAyhx8jXbA/lHGsXL4lhqVFBg/JkmxxGMFpWVSQqcze9Jbnfst/7mqpAJgKPUOjCNEL/A1OQ23ADcVG2M8Of1jrfwZZsyP6OJK8ItMadpLl1Opv33R9zwmAbC20gsGzmsQ5I63fjPGE0tpu/4ObelFtNz37CmFgGb9rNOPv9oFBsIPozvTDS6cq53gjGXB1DEEwG0K5JVzQvc6dO
X-MS-Exchange-AntiSpam-MessageData: h+6Txow9OH8260OZ56d+i9yNyKdBNbm1ke1JI3Em5jMptmuiuus0XQWkeOGVBjzjPV9yoUPMMGC24Og3U+4n8JjJb7ljSCASk4FiE/8JjhIhxW9D2FqCfjXdP5qr2p3xbL527qHLkWgb7dspBMRi4w==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8bffde1-002b-493d-21ca-08d7c6671fd4
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 09:24:11.7159 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5I/6PUme3jPCU2bdxkDOjQqy1EkTolemW+J4HvIaEN8ssKmGsjCoMnUCWMQnQy7UTWj2Rcv5NqNfgvI2773SaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_022415_447628_E3A51B15 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>,
 abel.vesa@nxp.com, Anson.Huang@nxp.com, ard.biesheuvel@linaro.org,
 festevam@gmail.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, git@andred.net, leonard.crestez@nxp.com, info@metux.net,
 allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

This is preparation to move imx_soc_device_init to drivers/soc/imx/

There is no reason to must put dt devices under /sys/devices/soc0,
they could also be under /sys/devices/platform, so we could
pass NULL as parent when calling of_platform_default_populate.

Following soc-imx8.c soc-imx-scu.c using device_initcall, need
to change return type to int type for imx_soc_device_init.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/mach-imx/common.h       | 1 -
 arch/arm/mach-imx/cpu.c          | 9 +++++----
 arch/arm/mach-imx/mach-imx6q.c   | 8 +-------
 arch/arm/mach-imx/mach-imx6sl.c  | 8 +-------
 arch/arm/mach-imx/mach-imx6sx.c  | 8 +-------
 arch/arm/mach-imx/mach-imx6ul.c  | 8 +-------
 arch/arm/mach-imx/mach-imx7d.c   | 6 ------
 arch/arm/mach-imx/mach-imx7ulp.c | 2 +-
 8 files changed, 10 insertions(+), 40 deletions(-)

diff --git a/arch/arm/mach-imx/common.h b/arch/arm/mach-imx/common.h
index 5aa5796cff0e..72c3fcc32910 100644
--- a/arch/arm/mach-imx/common.h
+++ b/arch/arm/mach-imx/common.h
@@ -49,7 +49,6 @@ void imx_aips_allow_unprivileged_access(const char *compat);
 int mxc_device_init(void);
 void imx_set_soc_revision(unsigned int rev);
 void imx_init_revision_from_anatop(void);
-struct device *imx_soc_device_init(void);
 void imx6_enable_rbc(bool enable);
 void imx_gpc_check_dt(void);
 void imx_gpc_set_arm_power_in_lpm(bool power_off);
diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
index 06f8d64b65af..2df649a84697 100644
--- a/arch/arm/mach-imx/cpu.c
+++ b/arch/arm/mach-imx/cpu.c
@@ -83,7 +83,7 @@ void __init imx_aips_allow_unprivileged_access(
 	}
 }
 
-struct device * __init imx_soc_device_init(void)
+static int __init imx_soc_device_init(void)
 {
 	struct soc_device_attribute *soc_dev_attr;
 	const char *ocotp_compat = NULL;
@@ -97,7 +97,7 @@ struct device * __init imx_soc_device_init(void)
 
 	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
 	if (!soc_dev_attr)
-		return NULL;
+		return PTR_ERR(soc_dev_attr);
 
 	soc_dev_attr->family = "Freescale i.MX";
 
@@ -219,7 +219,7 @@ struct device * __init imx_soc_device_init(void)
 	if (IS_ERR(soc_dev))
 		goto free_serial_number;
 
-	return soc_device_to_device(soc_dev);
+	return 0;
 
 free_serial_number:
 	kfree(soc_dev_attr->serial_number);
@@ -227,5 +227,6 @@ struct device * __init imx_soc_device_init(void)
 	kfree(soc_dev_attr->revision);
 free_soc:
 	kfree(soc_dev_attr);
-	return NULL;
+	return -ENOMEM;
 }
+device_initcall(imx_soc_device_init);
diff --git a/arch/arm/mach-imx/mach-imx6q.c b/arch/arm/mach-imx/mach-imx6q.c
index 284bce1112d2..85c084a716ab 100644
--- a/arch/arm/mach-imx/mach-imx6q.c
+++ b/arch/arm/mach-imx/mach-imx6q.c
@@ -245,21 +245,15 @@ static void __init imx6q_axi_init(void)
 
 static void __init imx6q_init_machine(void)
 {
-	struct device *parent;
-
 	if (cpu_is_imx6q() && imx_get_soc_revision() == IMX_CHIP_REVISION_2_0)
 		imx_print_silicon_rev("i.MX6QP", IMX_CHIP_REVISION_1_0);
 	else
 		imx_print_silicon_rev(cpu_is_imx6dl() ? "i.MX6DL" : "i.MX6Q",
 				imx_get_soc_revision());
 
-	parent = imx_soc_device_init();
-	if (parent == NULL)
-		pr_warn("failed to initialize soc device\n");
-
 	imx6q_enet_phy_init();
 
-	of_platform_default_populate(NULL, NULL, parent);
+	of_platform_default_populate(NULL, NULL, NULL);
 
 	imx_anatop_init();
 	cpu_is_imx6q() ?  imx6q_pm_init() : imx6dl_pm_init();
diff --git a/arch/arm/mach-imx/mach-imx6sl.c b/arch/arm/mach-imx/mach-imx6sl.c
index e27a6889cc56..f6e87363d605 100644
--- a/arch/arm/mach-imx/mach-imx6sl.c
+++ b/arch/arm/mach-imx/mach-imx6sl.c
@@ -45,13 +45,7 @@ static void __init imx6sl_init_late(void)
 
 static void __init imx6sl_init_machine(void)
 {
-	struct device *parent;
-
-	parent = imx_soc_device_init();
-	if (parent == NULL)
-		pr_warn("failed to initialize soc device\n");
-
-	of_platform_default_populate(NULL, NULL, parent);
+	of_platform_default_populate(NULL, NULL, NULL);
 
 	if (cpu_is_imx6sl())
 		imx6sl_fec_init();
diff --git a/arch/arm/mach-imx/mach-imx6sx.c b/arch/arm/mach-imx/mach-imx6sx.c
index d5310bf307ff..781e2a94fdd7 100644
--- a/arch/arm/mach-imx/mach-imx6sx.c
+++ b/arch/arm/mach-imx/mach-imx6sx.c
@@ -63,13 +63,7 @@ static inline void imx6sx_enet_init(void)
 
 static void __init imx6sx_init_machine(void)
 {
-	struct device *parent;
-
-	parent = imx_soc_device_init();
-	if (parent == NULL)
-		pr_warn("failed to initialize soc device\n");
-
-	of_platform_default_populate(NULL, NULL, parent);
+	of_platform_default_populate(NULL, NULL, NULL);
 
 	imx6sx_enet_init();
 	imx_anatop_init();
diff --git a/arch/arm/mach-imx/mach-imx6ul.c b/arch/arm/mach-imx/mach-imx6ul.c
index 3b0e16ccd59d..e018e716735f 100644
--- a/arch/arm/mach-imx/mach-imx6ul.c
+++ b/arch/arm/mach-imx/mach-imx6ul.c
@@ -55,13 +55,7 @@ static inline void imx6ul_enet_init(void)
 
 static void __init imx6ul_init_machine(void)
 {
-	struct device *parent;
-
-	parent = imx_soc_device_init();
-	if (parent == NULL)
-		pr_warn("failed to initialize soc device\n");
-
-	of_platform_default_populate(NULL, NULL, parent);
+	of_platform_default_populate(NULL, NULL, NULL);
 	imx6ul_enet_init();
 	imx_anatop_init();
 	imx6ul_pm_init();
diff --git a/arch/arm/mach-imx/mach-imx7d.c b/arch/arm/mach-imx/mach-imx7d.c
index ebb27592a9f7..879c35929a13 100644
--- a/arch/arm/mach-imx/mach-imx7d.c
+++ b/arch/arm/mach-imx/mach-imx7d.c
@@ -78,12 +78,6 @@ static inline void imx7d_enet_init(void)
 
 static void __init imx7d_init_machine(void)
 {
-	struct device *parent;
-
-	parent = imx_soc_device_init();
-	if (parent == NULL)
-		pr_warn("failed to initialize soc device\n");
-
 	imx_anatop_init();
 	imx7d_enet_init();
 }
diff --git a/arch/arm/mach-imx/mach-imx7ulp.c b/arch/arm/mach-imx/mach-imx7ulp.c
index 11ac71aaf965..128cf4c92aab 100644
--- a/arch/arm/mach-imx/mach-imx7ulp.c
+++ b/arch/arm/mach-imx/mach-imx7ulp.c
@@ -57,7 +57,7 @@ static void __init imx7ulp_init_machine(void)
 
 	mxc_set_cpu_type(MXC_CPU_IMX7ULP);
 	imx7ulp_set_revision();
-	of_platform_default_populate(NULL, NULL, imx_soc_device_init());
+	of_platform_default_populate(NULL, NULL, NULL);
 }
 
 static const char *const imx7ulp_dt_compat[] __initconst = {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
