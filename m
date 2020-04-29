Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EAD1BD831
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 11:27:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMPWQ1iq4feFTqBNPj3L/r/7soSaJbEptoR/vhPZnh8=; b=pbSDv9ltoGftkI
	1avZJuc1rcEE/MjFOtcYlUK/8EYYDCqart3rXAIPlGTCD7zMA/Fi6fkgEtpzAsMbJN1p0KjXBVGYG
	4z0owt5oUiVitSlUhqBDegAZPjMj9x2qubo7zSrT6ApM79lP+5PVq19Qo+P021Zjov1uwecSxM6aW
	T6MVTb9MMOhKmD1f6NfDICTTZBC6sTEKOLSi1Hg9JYCqueKLxI6KaY72th2T9/yQAdglQSJRp2tIN
	p/+r4E3pJLzbsJIgc2Drt/Y/8b/IxKADMQcLCbHOZE6TvqYK8+GYnfC+q23IBHEmjsu12C9eWWfrO
	qPC8Cu9OY9aPCK325ElQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTizg-00077s-Gt; Wed, 29 Apr 2020 09:27:04 +0000
Received: from mail-db8eur05on2071.outbound.protection.outlook.com
 ([40.107.20.71] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTiz5-0006ti-Gc
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 09:26:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B/PqYj4AKocQy71yBjCuJwFiZPP3OKmftuqmm7w+VfBdX22z17Ow6jBwt9cUR7adoFGnK0u4BuZK8KXCl06LrHHTgYd4Zjex3pnmdDAE5RMsT5EesTV3sQ4BXUTG83CSt/X3PRwTeN5+6reVmuIzJxXtZypJLG4axt8hu9Hdp8V3DwbYT+JakUWo4iidW++/ZMbznyi9jZESqAV4NR9uaPTm/IOFgqipuKDITag1Z5Zldbm2XPSf2Z01wEs+6N23c5Lb+92faJwpHqWk+36hTZte0Q5jxYJOrlgIDu2klBpv8dBHT+CanAfp9xVD/zQX32gjtpR3NbHimvCQDnd1Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V0Dsla3qCd/gA4FCurjEOxs5jMcFJXa5TVJflIeGhrs=;
 b=EuBc71kRZ/AO3R1g/zASecLJzjQG9fx41tJzyf+3tpo2/H0epJsqhNYzNrJcE17cwD+4KhysJ6sDeTzh8MN2LG9YSuovhAndQXv+Hq1pN1awT9dN4GrLHrLqMCtR/YUjxg5TBXsUW5avM5gGAIyw+rIXRSrvHsfljBnmv6o/h5xH5F6hBcVK+pnhBpQd9u8SQlaj0yqxyw2Ty/AFXYUQMjR64OkJhjj1qOpWOLgP0A3h7MKCI+7UIPzRaQmSr8Bk3RqWBE685RfBhLlcVqd5tYGrTGLA0Ne5ALlQIT0xwI0uvesKMKsMvyWevzzzyEM2qunHqWnthHqjDeI3QeyNEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V0Dsla3qCd/gA4FCurjEOxs5jMcFJXa5TVJflIeGhrs=;
 b=PhW+st9HuBEMQ7VKlYWaBEAjD3gmB5+m05l4OKDfWVQeugaSl+BEZplyfQeiF5czDa1ShdDLveWIfeRlcOKAP9F1qge7spu8y8pkSHISby+q0n2bZZoGJKarIyywCS40J2VWoep9+3rODISTYKdZn7aIxEOVDNVSjRI72ozNq6Y=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2694.eurprd04.prod.outlook.com (2603:10a6:4:97::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Wed, 29 Apr
 2020 09:26:25 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.023; Wed, 29 Apr 2020
 09:26:25 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH V2 1/3] ARM: imx: use device_initcall for imx_soc_device_init
Date: Wed, 29 Apr 2020 17:17:21 +0800
Message-Id: <1588151843-2133-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588151843-2133-1-git-send-email-peng.fan@nxp.com>
References: <1588151843-2133-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR01CA0165.apcprd01.prod.exchangelabs.com
 (2603:1096:4:28::21) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0165.apcprd01.prod.exchangelabs.com (2603:1096:4:28::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2958.19 via Frontend
 Transport; Wed, 29 Apr 2020 09:26:21 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2a08d7ec-7512-4a44-8062-08d7ec1f6374
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2694:|DB6PR0402MB2694:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2694F0CAA9B8E8FE4A55AC7688AD0@DB6PR0402MB2694.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:229;
X-Forefront-PRVS: 03883BD916
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(396003)(376002)(346002)(136003)(39860400002)(956004)(2616005)(8676002)(4326008)(86362001)(6506007)(69590400007)(5660300002)(66556008)(16526019)(66476007)(186003)(36756003)(52116002)(66946007)(9686003)(6486002)(6512007)(8936002)(478600001)(316002)(7416002)(2906002)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ztvHnUZyCkut+Z0tPtnNAyBeE7XhpIh6x8rj6QCpqQRdBHVWFG65aZmdisyf0x35c2PLeZN22t27eXXlogBUGexyEc7mQSkPijEnLbNjfFAMJeMCP22eULMEi+i6Bd0XSdbuozdsJ2Zit+8aTO6M21vDhWKa5UE+hDDd0PpZBenJf0GQ/lTDOMQca1fATGbvlS3AJp+GorBD9Zr0YGqeV33vHVlk/QPFS5cElyfu4nTO24CykrEGHo6BuGEJFzLYT+SqNaFBLUETh71sebo6Uhm7hkMj+0k0BIHo4VzlmKC6qCvcCL5UvUcZrLQKG8vJwVeG0YNGFJx42i9xvIgo+Up+biKzHyhzfn1Mi/SggNv+nhi/wznlsc4GmpqHnhA1xkmyvQ2/x+pI7JFvG+gwume97FkG3LPk4c5d/UV3mV700NVkvvzEukbIPe13E56tYlbq4xb/GQO+ENLb4E9Qj40VBlksuJ65yf+m83W9FC96DQIn/3iCFb8XLHmmM4qr
X-MS-Exchange-AntiSpam-MessageData: jaVxbTd627mDu6P6Cd9+hePNlngdFIX8LzU5tlQ19HEjhlmMegXgkftbelPrQi0gqCqrLtYXBjCP/hWO5QW8iZJawzBRwNi/YExDsfDlplRbE30YA6cyMN6FyQCqXhzgowfaypXUAuCSrg9ZjD0in9gI218gLm6cF0I0IPGJqdeUMJyGf1dX0hE9joDB+6Gz86pzLaVNTs3U9dxO+8dJcBV7m+eG7ZIYHIkuZxiajoQG+FUD0VAVgjYed0DQcWTB3New47QHGvymhIt7Wz4+ymD4O9T/yAecbwsJfZeMVjetu+g6q/96maDIMlZRqZNjtUCDaxeqQTFQPz3W05bwoE9DEV/uLn4fCNCTgBmhQ0s82Lvlob7wFOP/+UT8iiCFGjsJd7rPjEzGPvI+g2oZj4PcLcLEkbfEryFMlI4yE9B64z5ETqQWdlHhtrbplhMyDaZK5dCspC6EMqmuWv/WD2/FMkEoaJg+UJtXuDpH11B1iRy0xndCNvJcryxweRMpyVNVsYXfuLfJmaNKDdRpBn7dFGld/iRFnhDNP4x7aJFZ/QzNBDjPwRChjh4Rm3tBOsLvXvJlB8slpsOuMh8liVXt4JZil22xMfXF41mrd9wpDn8AHklLTajImHxlsKlLOTtc0tSziinonkGX9OZ56PAujB+TtImPunke2uUuHmqiHeeIkNM2PLeebdZePba0Do7UR5FGWuxUVl55CxOnhhfSvSeuuV0I8e+VSIj2nEMw0l7gMh1h5SL9N6lVBYFvn8bT5/78i0+2gTJ3wX2Twwo3nNs9yfX1WqRRb2cBOxg=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a08d7ec-7512-4a44-8062-08d7ec1f6374
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2020 09:26:25.6043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZIB/cLzQf5IrikyMznfwTOgQgDSfHPeUR/6tlOyh2MX4H1VQ1GqrOUScXcg8AGCkeROWVbU5/ofNS6RlOkAl4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2694
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_022627_552601_8C89FB9C 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.71 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.71 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

V2:
 Correct return value

 arch/arm/mach-imx/common.h       |  1 -
 arch/arm/mach-imx/cpu.c          | 21 ++++++++++++++-------
 arch/arm/mach-imx/mach-imx6q.c   |  8 +-------
 arch/arm/mach-imx/mach-imx6sl.c  |  8 +-------
 arch/arm/mach-imx/mach-imx6sx.c  |  8 +-------
 arch/arm/mach-imx/mach-imx6ul.c  |  8 +-------
 arch/arm/mach-imx/mach-imx7d.c   |  6 ------
 arch/arm/mach-imx/mach-imx7ulp.c |  2 +-
 8 files changed, 19 insertions(+), 43 deletions(-)

diff --git a/arch/arm/mach-imx/common.h b/arch/arm/mach-imx/common.h
index db542da4fe67..707ac650f1c2 100644
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
index 06f8d64b65af..5b969f31c9e9 100644
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
 
@@ -208,18 +208,24 @@ struct device * __init imx_soc_device_init(void)
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
@@ -227,5 +233,6 @@ struct device * __init imx_soc_device_init(void)
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
index bf22d19e02f6..445256e6a4a0 100644
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
