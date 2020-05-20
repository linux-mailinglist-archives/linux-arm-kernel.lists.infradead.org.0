Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D784E1DAA4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 08:02:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0qNrg4RSbhxkfmhqkie+cNcLXHy1vTGgFr+WPyklLJw=; b=feBEt0fitvH5dg
	NPtUflbNveix4tkUYmMWVYXGT/xK9BISSvYdQ8iPhJXKdHkCfI2lqYbBqHSrYNJiNWlZO8Q/OBsBH
	e5B48JJirUDPbWCQHx+XLMUotJNnPUp31zISajd5GliIAkev3G9epdtmozvyWY2JTx0daQrfp++In
	mm01naYZUTUDk/bB/W82eW4AB/sgSAkcLBzWnB4b8m7s0ncaE7njBn25vips1epl6V2iDvvc+ijBx
	4BMx8fGtR10lhsrrYdOeY41z98d9w9Nfs+TYs8MeZPLAO/nBoN+oM8WeeFjIyfJDVH/FMisSFEjqF
	N5gIihA8vq8O8nPDlnjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbHnf-0005sd-4z; Wed, 20 May 2020 06:01:55 +0000
Received: from mail-db8eur05on2085.outbound.protection.outlook.com
 ([40.107.20.85] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbHnF-0005l7-Aa
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 06:01:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gAlR98Pr6dnTdW3F7R7hRVTlloNM3WY+40RuDvcL09/VsiUK1rnXaO0askcAkoLihdk/9MCO2AopRZYtoFGhFuWSYylnVZjIvkO+pb0v3rudLMxk3BI8IqDnbakljGcFYCOowSBdOyc7Xxf9OZ7D/gL0WIFgEnFoKUGB1mptvtXeBzhgLTqdjeEh1p3+yFTxKFr9QjUU8ns4hhLJW3OOqkLfMaz5T+5MftA64C1uIiPp14+Z6nfF9AsZw751Nft3+kxXUFNRHYDqwi2Em+vqJhnqQt3dAKCvWWaQn8ed6acsbg+czTNZWMg9o5FS1dDyPhe1081F0EE+KkKk5Uz6Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j90AY/pb5J8s1Prk3FmQC1a6R7yqpKcOPjnvxSYuDWM=;
 b=TTatUcluDIA0/5MjU0C+UW87oNnbXoGnWQi3+GdRBLofKCBo4mSs0fnUPstZ9KUlCGvRjLbtmCeYRbqamU/cI7u+F6NnfMfvn32onxJwqcCrY2PSn62B+GRnZkUT0O+1EmcrHJn3OA4TWJxTIKIoyumhBTqQhm9twvEIep5yMSFzlBOf0la67auCkf14wD7pVC+lBGxXHeBpqS0CLUAU1njIxwcNjUWNMZe2UNKKeNbcHbChCk8ADfeajTmK7Nc2ruoi/bvhjThIsPf2F94CIlleIMDkBhDh88FXmQQrlpNr0VI+zxXEYe0Nw/gXLySIWfprO6vLAcvKgcZr5+XgIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j90AY/pb5J8s1Prk3FmQC1a6R7yqpKcOPjnvxSYuDWM=;
 b=WYK960i6oyF1oJWlji4cFxajaFWWHvEvdoF4SS366f7UspS8nppqJ6gnO6tRunoJxQ/m61+5u/W0eU1wEnformqr9emEsTK9VnLlF+4nrqBkXIqA5ELhlnCocOTI1SD01PbMkHqvmR/QlWpLoVK7BNj3Jf7ZQ96lJ60r6gcCMRI=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2790.eurprd04.prod.outlook.com (2603:10a6:4:97::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Wed, 20 May
 2020 06:01:26 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3021.020; Wed, 20 May 2020
 06:01:26 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH V3 1/3] ARM: imx: use device_initcall for imx_soc_device_init
Date: Wed, 20 May 2020 13:51:27 +0800
Message-Id: <1589953889-30955-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589953889-30955-1-git-send-email-peng.fan@nxp.com>
References: <1589953889-30955-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR02CA0038.apcprd02.prod.outlook.com
 (2603:1096:3:18::26) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0038.apcprd02.prod.outlook.com (2603:1096:3:18::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3000.31 via Frontend Transport; Wed, 20 May 2020 06:01:21 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 21b5da77-fe60-44dc-cef4-08d7fc833b72
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2790:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2790B0EB9BB01DC17D92539488B60@DB6PR0402MB2790.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:229;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sVIFzRHZUfR+mD/4N9N/wG2MMsArk7dRfPCLJeuYoxE05OfJjI9UMG6mnDSFchkmMEDYBoL7K881cSGblwhgzhhApKYDNyOUSw3FvY5A2/UqJ/aQmF4PqUtTsRLLkxika4Q+OkokfWmy9JrEgYKH7TDPl/M4OJL6d9eFdCKqBFJQwqpUmjwVZ0Xw5lRKjHvge1qP4cwuuReV5za+vHYvE51k/ooMNvpVrhzmkKen5yuPPZMCylBWITBGj87bnoYM7QAcdv0yeOaUkARHiH1XGmKDsENWcMmed5zklDnIWDDD92hTok1qjmLmr7LMpoL5tLYZrttBrNxURaFOZUsv8FvH5D4Wcd+dg4zENjSYYnAJdj4DPi7pzeYz1k1pL9HRsV+3T5/eF6F3ZdKpHQP9mFsBjgAXRFThGVJ4FkqGuRxLrisb6yYaPbFQeZ9Q+S99X/dMCuoxF6QxgHyzt/Q54xt0omoZflmkYKGGkF6wQP7WbwkbnQ+S3nXcB0mY4ORI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(136003)(346002)(39860400002)(7416002)(2906002)(16526019)(186003)(66556008)(6486002)(86362001)(956004)(66476007)(2616005)(66946007)(69590400007)(316002)(26005)(5660300002)(4326008)(8676002)(6512007)(478600001)(9686003)(36756003)(52116002)(6506007)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: QO6CyJNBagFTW+49ZKd2wnhicsaQhkHgrSh87TWnhFeDmoXQLSKKzOLgKzfAVYUlUrjf49bceLZkiy4dcO9UeLgQiEeunMWUsT5DriscwNoXoBeulTKgakW6xpkH9Hh92eplUtn6GLFE776LXyNoQCVkpJoHjduLB/pqMd3VBj+szjpndAxKWtrULGTX1hfnb6IK89b4xgpepMWdXdRq8Il54iNQNdsoyZ+wU7TnY0JDvwWq+i7twtHHCrokwemGeowdWZsqbs7CPty3cDldVOZzn18/SHiqAixlQc9kR6KJG/nx7KSF5mlXLZee59SlWGBajS+9jUGnY4Y0Okv9g7o77KX34zZM/mK58NK9kVEtG1yOgXjmZJJ51U9d1ZLONwOD858v7kqhnX5KRzCjmEn/p1Q2jAXBeOVVcAUMPVg1GfBwCcbgj+fUbk8QRzO1cQ8ZHJjseoSFzSzkgD2DHTdsFeDNNdKBjtnEIWobPUbFdPsuYaqtxAQsqRYG0rw6
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21b5da77-fe60-44dc-cef4-08d7fc833b72
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 06:01:26.8098 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eoKalDxBxFeld2lBnpnipE7c6bwoqK0NcGBHvHW4smcox5oOafHX0gwttAPBvRXjUCPCVnXeK/aojk8ZMmAofw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2790
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_230129_408206_4E18CD48 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.85 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>,
 abel.vesa@nxp.com, Anson.Huang@nxp.com, andrew.smirnov@gmail.com,
 festevam@gmail.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, git@andred.net, leonard.crestez@nxp.com, info@metux.net,
 cphealy@gmail.com, allison@lohutok.net
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
 arch/arm/mach-imx/common.h       |  1 -
 arch/arm/mach-imx/cpu.c          | 21 ++++++++++++++-------
 arch/arm/mach-imx/mach-imx6q.c   |  8 +-------
 arch/arm/mach-imx/mach-imx6sl.c  |  8 +-------
 arch/arm/mach-imx/mach-imx6sx.c  |  8 +-------
 arch/arm/mach-imx/mach-imx6ul.c  |  8 +-------
 arch/arm/mach-imx/mach-imx7d.c   |  6 ------
 arch/arm/mach-imx/mach-imx7ulp.c |  2 +-
 arch/arm/mach-imx/mach-vf610.c   |  8 +-------
 9 files changed, 20 insertions(+), 50 deletions(-)

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
index e3d12b21d6f6..75ffcba9f878 100644
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
+		return -ENOMEM;
 
 	soc_dev_attr->family = "Freescale i.MX";
 
@@ -224,18 +224,24 @@ struct device * __init imx_soc_device_init(void)
 	soc_dev_attr->revision = kasprintf(GFP_KERNEL, "%d.%d",
 					   (imx_soc_revision >> 4) & 0xf,
 					   imx_soc_revision & 0xf);
-	if (!soc_dev_attr->revision)
+	if (!soc_dev_attr->revision) {
+		ret = -ENOMEM;
 		goto free_soc;
+	}
 
 	soc_dev_attr->serial_number = kasprintf(GFP_KERNEL, "%016llX", soc_uid);
-	if (!soc_dev_attr->serial_number)
+	if (!soc_dev_attr->serial_number) {
+		ret = -ENOMEM;
 		goto free_rev;
+	}
 
 	soc_dev = soc_device_register(soc_dev_attr);
-	if (IS_ERR(soc_dev))
+	if (IS_ERR(soc_dev)) {
+		ret = PTR_ERR(soc_dev);
 		goto free_serial_number;
+	}
 
-	return soc_device_to_device(soc_dev);
+	return 0;
 
 free_serial_number:
 	kfree(soc_dev_attr->serial_number);
@@ -243,5 +249,6 @@ struct device * __init imx_soc_device_init(void)
 	kfree(soc_dev_attr->revision);
 free_soc:
 	kfree(soc_dev_attr);
-	return NULL;
+	return ret;
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
diff --git a/arch/arm/mach-imx/mach-vf610.c b/arch/arm/mach-imx/mach-vf610.c
index 565dc08412a2..208ff640698d 100644
--- a/arch/arm/mach-imx/mach-vf610.c
+++ b/arch/arm/mach-imx/mach-vf610.c
@@ -49,15 +49,9 @@ static void __init vf610_detect_cpu(void)
 
 static void __init vf610_init_machine(void)
 {
-	struct device *parent;
-
 	vf610_detect_cpu();
 
-	parent = imx_soc_device_init();
-	if (parent == NULL)
-		pr_warn("failed to initialize soc device\n");
-
-	of_platform_default_populate(NULL, NULL, parent);
+	of_platform_default_populate(NULL, NULL, NULL);
 }
 
 static const char * const vf610_dt_compat[] __initconst = {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
