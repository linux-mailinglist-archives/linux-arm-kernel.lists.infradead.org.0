Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B117413D740
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 10:51:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30fLDjEvF7soBjcctH46tv+KkAfomJQxuBrTUrFW5to=; b=tTUErRTYbaqAMm
	VTBGyNjeVsIcSevmmFs/cVWIwj7lf0Q0/hSw9Aq5MMzC5+53dVi99WLDq4j7uYvZKa0OQxv7kPdlI
	r8fRVvaPFVuUDEk+41O1Othj4avuLt613GOPeaUSV+dSTO/seUk8a3gXa3VLc6bzOCMnjnD5rkAJX
	oZcppBRUXPooFMZG2FlbYcOwBdVYD37lWVwD30sz8lYwm8HFfYhutgfhQu9olVUredTfFfMogTMmV
	QorVjq6wm/oO4I+YhTiGE5hvxDSRa4gSQQ3fov1c+TyAg/vyh43gEksANudm6QkOl74+CDkArnSsO
	IdS4rCBjv+Dz+LYdYI9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is1oC-0001Dd-B9; Thu, 16 Jan 2020 09:51:24 +0000
Received: from mail-db5eur03on0624.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::624]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is1o2-0001CW-55
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 09:51:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cmxy7hYNeJwBuFRughBtBK0JTRSOhyp7tJrT8EfvsuqztO3yRTDrzJ3m7jZ67SnJ8KTIRNWLUdUGz7GOKwIlVvwbDDvbTkL5QNBl1/7Dc/NeZeBgMWRSnPdLoiKzVYiEkbHcjzT3r7szrHejtI5kcUjFS23XzEKbzSyvp1lrNy9YaceIEEPgBU0o9rqUTxzTwSHRHcUalVIlEiHptr9srZAYFBidUs6bqm6dpuxg5f4B6BDuimuqsxP3Vl3wvl4e/+R4NyakdXuFaBMLKBcrS3wDK4ssBDpPnHZr0ZVvtEFYDLP9Lb6qJIIskmEFKniDWj5/45cWu3uHBIG5i+XXPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bDBjEp4ekHynZOedeToWfedR2/wJxwlLC2SQXexxIzs=;
 b=kyApLmTPFdlafhj0JLpoymvsuQsWZsTOaSr5O/sjzu6pHx0iuTatkbUpfLr9qPKx5kTejxcvfE3qsgs4OsNDoOIjl2UEbccwy949npmdUizdxQLsG3vxRJ9+lHXugRepMmenpFToVEyEFElhuT2TDdv+3BBM+fYbnT8C+wzqn8Wg7AN9BGFs/LxPBwK7fRB3H9KpZrAgc9cth/LtSf12DBZdk+JcKBVK5+zqkrdOjcoWRotQ+yS3yNKnnFTM7DxfUPlYoAScaJZPptnTSOIlAA62ObgcpJaPnIDnvGLum1fAvhUKUtQJUZD2SL3k52wbxCIN8hzk44CvW1HuyZotfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bDBjEp4ekHynZOedeToWfedR2/wJxwlLC2SQXexxIzs=;
 b=pB6LrRy203Pf/igPHp7tiBmw+JVzFLcU3CAKtxSOF3lE7CzZvrJSxt2rbnZdT6XhxPKz6DhsC6of8A/jxBfTKC2Hp3029/W8nwFgs7Q8bvz4bDPlJ376pQ5ruCYxn8yR8qjeTVJ/7Q+HWqIQ/IJDCOljK2eINwJCK+FAZoZrOJA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4337.eurprd04.prod.outlook.com (52.134.124.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Thu, 16 Jan 2020 09:36:48 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 09:36:48 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0302CA0022.apcprd03.prod.outlook.com (2603:1096:202::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.6 via Frontend Transport; Thu, 16 Jan 2020 09:36:43 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: [RFC 1/4] ARM: imx: use device_initcall for imx_soc_device_init
Thread-Topic: [RFC 1/4] ARM: imx: use device_initcall for imx_soc_device_init
Thread-Index: AQHVzFB5yGe49vkt3U6MybEMHs/GuA==
Date: Thu, 16 Jan 2020 09:36:48 +0000
Message-ID: <1579167145-1480-2-git-send-email-peng.fan@nxp.com>
References: <1579167145-1480-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1579167145-1480-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0302CA0022.apcprd03.prod.outlook.com
 (2603:1096:202::32) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 61d910c8-ccbe-4489-dc4f-08d79a679b79
x-ms-traffictypediagnostic: AM0PR04MB4337:|AM0PR04MB4337:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB433700B7BCDAF4CA6AAE132588360@AM0PR04MB4337.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:229;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(39860400002)(136003)(366004)(199004)(189003)(8936002)(86362001)(69590400006)(71200400001)(6512007)(186003)(16526019)(52116002)(956004)(44832011)(2616005)(6486002)(26005)(6506007)(478600001)(4326008)(7416002)(2906002)(81166006)(66556008)(81156014)(66476007)(66446008)(8676002)(110136005)(316002)(54906003)(5660300002)(36756003)(66946007)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4337;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /fwPvO3Fq8djF21uqcEi+nmDfUXt6dIP1x1oGNXK3RcqEZF+48qzAgwRGZ7YTIwQjpeA9Lvx03BqRDCgvwyC/qZKMCf3CcNR/YYETkpQDaSm+MXArBjphz7s3X0j5FEh1npzzJpTG8BCOph2z/5SrUUmj2gyDLkmtSO7eKxgayYT7RXzrhQ0XpuAuGwQB7zdd2/8OjIGkOHLzYY43ROOKSGN0eTP/e5TolzMcF0m/v6bXR2MMTDVytrN4+H0qdqiBHsrvWUQ4CGn276GFENxaRZU/tvxuBcqjW7OmKN2RVEEvwEh96ImVKKQzB+tHaKsxkFJOMob9D/Bit3X3w6LCenPH+UlDjnf9h1tNJNT3orLCA+piCSQv1FwOh2vC715DGDa9CjKS09tj6+p01cMHsDHWyhKf6a58OLWVBytZ/bpAMwXlzNO1nqHaOdxfmX6Usj3/kPhcO0h6ljJu1M47KUyU0uKH8XE+hptESk9MT42BCO/OZOH/KzlazhZoBkf
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61d910c8-ccbe-4489-dc4f-08d79a679b79
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 09:36:48.0875 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: exzDltkTiyf2S5S9HKpxHbG5J1GwM9rh2FATlXw1OFRGNcCfnnBLp7d3848X4DWC6okw83wAozjNpBa6teTodg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_015114_199807_C5DFF6E4 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:624 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Peng Fan <peng.fan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "git@andred.net" <git@andred.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "info@metux.net" <info@metux.net>, "allison@lohutok.net" <allison@lohutok.net>
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
index 912aeceb4ff8..09e89aa7be50 100644
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
index edd26e0ffeec..735da3311320 100644
--- a/arch/arm/mach-imx/mach-imx6q.c
+++ b/arch/arm/mach-imx/mach-imx6q.c
@@ -258,21 +258,15 @@ static void __init imx6q_axi_init(void)
 
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
index e00818abe54d..0f046a37dc73 100644
--- a/arch/arm/mach-imx/mach-imx6sl.c
+++ b/arch/arm/mach-imx/mach-imx6sl.c
@@ -46,13 +46,7 @@ static void __init imx6sl_init_late(void)
 
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
index 311f5e4ff723..9db8e567c6b5 100644
--- a/arch/arm/mach-imx/mach-imx6ul.c
+++ b/arch/arm/mach-imx/mach-imx6ul.c
@@ -56,13 +56,7 @@ static inline void imx6ul_enet_init(void)
 
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
