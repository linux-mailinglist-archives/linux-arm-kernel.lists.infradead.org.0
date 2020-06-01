Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD671E9C37
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 05:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUOdksujKbaP9uUWbqWW0Gj84uKh1u9DdvDLD6vJZQU=; b=eIfbaTT2H6SiqT
	zFd4atspYwTXsF6qAkWADzUCZojQC8241CQsWtJG7f+GgY9lvi4NaUL8DU6SiqI5eIeYaxgIGagYK
	69U6ON0eIv5rtCjUbgg1CIRrD0VVA1dkQNuP/3LF7p/8C68DOluS7bHHY7QofQZY9n9jiqtyt6LtP
	Spt51ODPmjNfAH6Y3Mm0klnFK6nOMmn4dhHyzpUU+KZ3oUy1Nv83Wf77YRkv06WPpSolQceVi9sv1
	JKEjD6VfxQuUoYaA5bJZDVA+AptRiqLd7K3RLmEzSs8ML83r/6U9VnsXQ5O1EsKcBC/3kAfpROUvN
	c4/j1SSPd8aPwnCEzaig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfbX0-00089g-BU; Mon, 01 Jun 2020 03:54:34 +0000
Received: from mail-am6eur05on2047.outbound.protection.outlook.com
 ([40.107.22.47] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfbWQ-0007mU-Up
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 03:54:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OPps/POaOYwx5daJxRENqt0s4AZZGJre2+w2gXxcnEw6CM5W4N8IC/MqOhJVuO2kkDx3rzZcgivrmuKXIGpO6MIof1FDvLMreaW78vr6uypkvXLeinp0aljJsUTmTN+/QAkW/w52PIXCo2fykjarTArBQka3/0zDc93d6GOMwjy01k77fS7FhX6PYMQ6Wlyn8ocUcThkUDYNIDlpK6EnjMRH3Df+FdXQiKCbGixspu7iGQbyZ9NjqtwaLd7DMHoB/CQloiiauthZoX8gyQrLmRy8rXnsFbXo3N4sktBD92OnYRibVpHkHxjsWPp0vnjatRMbADTxnpH4+qlIpxczzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y4q4wCwL3LxIESNvf12qzzIuKsZSBW8AaLNyUcO7Bdk=;
 b=GXn4JOp3y+J3XPfl3lNpBWJSRrS8WMgT1asMWXtJjpuititjgEfh2DTegYv6i3S6DBRlNN4w0JHpWoE5ne/Ud8pWFvnCTbsEocSUpmDk1jrjed8pOAq/hlpNlespBWg3GXsAz5qg5soJtAeuo/VDuJAN9mErM0KoY/k0rGUrGxV/WxNTlMFZ3piBf6mTnJmVRzz7Fh6DgqjiXqoUNeXzt/m4p8ts63fQEWd+eeg+PGKI5nVBGAShwrCu2v53Y3cF4JfE4iRuWViU6PDR8KExDkaWS8SXOrEjEAqYgJlKCIGdv3uu5gTml+wVKs+OCNgFdavqMBDKSt9it2BbCpB0gQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y4q4wCwL3LxIESNvf12qzzIuKsZSBW8AaLNyUcO7Bdk=;
 b=LcgZU7XnlUAeDwGANqO5sBszCq2CQ4Ds2+WwqDP7Bm0U6TkDOD76lM+fe1CAXCj7ad2JEkl9KyDTlvkoHrmgsiEINAAfg/KUTs/DzZ6EXddNaiDaDw657tpDSLgIyH8RbYtOh96wHJIX9HoVYLbWT9aUhcLV/0IuFEJH61EbN8s=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2920.eurprd04.prod.outlook.com (2603:10a6:4:9d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Mon, 1 Jun
 2020 03:53:55 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 03:53:55 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, fabio.estevam@nxp.com, kernel@pengutronix.de,
 aisheng.dong@nxp.com, robh+dt@kernel.org, sboyd@kernel.org,
 linux@rempel-privat.de, jaswinder.singh@linaro.org
Subject: [PATCH V2 2/3] arm64: dts: imx8m: add mu node
Date: Mon,  1 Jun 2020 11:43:18 +0800
Message-Id: <1590982999-7149-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590982999-7149-1-git-send-email-peng.fan@nxp.com>
References: <1590982999-7149-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR03CA0096.apcprd03.prod.outlook.com
 (2603:1096:4:7c::24) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR03CA0096.apcprd03.prod.outlook.com (2603:1096:4:7c::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.7 via Frontend Transport; Mon, 1 Jun 2020 03:53:50 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 16d709f3-18d7-4e92-0f5b-08d805df678d
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2920:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2920A5E4D401CDBC565FCA88888A0@DB6PR0402MB2920.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:459;
X-Forefront-PRVS: 0421BF7135
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HR+cVgcgE1bZXLX0oVvh+VydfcyHj8EYWoPBb//ZoUrX0/a9XvBWVG8a6zxb+yl0P78/3XmK+1hwr73XY4c9E5bCPnhF/9w3y+ug5Dl6qcWfSRtGpFyBzL8pRx2SgKCBT7miUxKufOfBbIrp8GtdgIE1Kbf/4gUBy0QX7ppp6QMGIqr3UPoOlKkB73MECJduH8knekQUfMoYBOvBE04LPa4yjF+4ZvZkk/OQr+ZjaD8+9QsKpTA4UmBVUbpW1G09f6q7u7Y39YB1l0AN6ln/0AShqsk+hXPJaG/yGzq5pFgOccEFxlGVxTSSl0b1wkcdmeSnB/Ba3x2DfoNdyZxaKpmXy1aL9qrG3xOR307MR3BOcajXx3Wq9y+e+9zFV2N0tfgAlZCv8hMUG8hgnp4qzQYK8RibQQIv0hHh7yZVzIQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(396003)(136003)(346002)(39860400002)(376002)(36756003)(4326008)(6486002)(8936002)(6666004)(8676002)(7416002)(6506007)(9686003)(6512007)(478600001)(69590400007)(16526019)(26005)(316002)(52116002)(5660300002)(66946007)(66476007)(2906002)(66556008)(86362001)(186003)(956004)(83380400001)(2616005)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: UEUgY7o0IE5uquxfTq78p6JFsslIFvhyuC8t8y5ScpYSlAatz18RIycSWKAyaWT5wYMU38MSpx5yeZ/JRf+6D+LF2uksAJpACQb9A9lFcEzKQs5BBBkA9pbh16WQyc2SbseqF/kZyQwlAtRs4ZeoEdUiz6wmvfrbq9F3zEc3or/E5LW0d7fwxyNYFOXgM5OodFf3JEVE4a1r5aCanfUYmfdqQzTpn2O51bf9gPhnmD5A29zwAXctBAsOomd60en2gnMBVO/Y5sKJtuFkVJ0UON030GnGZdddad/sNrgyZ1rZaf/R6hSTs2hQ4OWWIW4DC1HJ86bJ1B+lhKKmHSywyjOK1qE7Azm5OzRPX4mZ6B4Dsx3K4UC0GdN/lJ4z24Zogacz6esMivXlSmzkxZfmqksQef51lP6Q6smyrQ8tbHFg4LCCpbLN41/HUsnyU4kAySNiC+GosCoic3vA/Fkf0sooKhFh3Zi8p45VNoDzviQ=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16d709f3-18d7-4e92-0f5b-08d805df678d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2020 03:53:54.9247 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NsNNIqKliYsYD9/AYPq9oOwSp8mPfWufJP2c4d+/Y3ecNjiKf4AhT6mPkL9rtOAG4MuHLCg436uehZAfPsHOgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2920
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_205359_049318_AEB5D2AC 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.47 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add mu node to let A53 could communicate with M Core.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 9 +++++++++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 9 +++++++++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 9 +++++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 9 +++++++++
 4 files changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index aaf6e71101a1..fc001fb971e9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -775,6 +775,15 @@
 				status = "disabled";
 			};
 
+			mu: mailbox@30aa0000 {
+				compatible = "fsl,imx8mm-mu", "fsl,imx6sx-mu";
+				reg = <0x30aa0000 0x10000>;
+				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_MU_ROOT>;
+				clock-names = "mu";
+				#mbox-cells = <2>;
+			};
+
 			usdhc1: mmc@30b40000 {
 				compatible = "fsl,imx8mm-usdhc", "fsl,imx7d-usdhc";
 				reg = <0x30b40000 0x10000>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 9a4b65a267d4..c8290d21ccc9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -675,6 +675,15 @@
 				status = "disabled";
 			};
 
+			mu: mailbox@30aa0000 {
+				compatible = "fsl,imx8mn-mu", "fsl,imx6sx-mu";
+				reg = <0x30aa0000 0x10000>;
+				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MN_CLK_MU_ROOT>;
+				clock-names = "mu";
+				#mbox-cells = <2>;
+			};
+
 			usdhc1: mmc@30b40000 {
 				compatible = "fsl,imx8mn-usdhc", "fsl,imx7d-usdhc";
 				reg = <0x30b40000 0x10000>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 45e2c0a4e889..b530804f763e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -621,6 +621,15 @@
 				status = "disabled";
 			};
 
+			mu: mailbox@30aa0000 {
+				compatible = "fsl,imx8mp-mu", "fsl,imx6sx-mu";
+				reg = <0x30aa0000 0x10000>;
+				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MP_CLK_MU_ROOT>;
+				clock-names = "mu";
+				#mbox-cells = <2>;
+			};
+
 			i2c5: i2c@30ad0000 {
 				compatible = "fsl,imx8mp-i2c", "fsl,imx21-i2c";
 				#address-cells = <1>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 978f8122c0d2..66ba8da704f6 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -959,6 +959,15 @@
 				status = "disabled";
 			};
 
+			mu: mailbox@30aa0000 {
+				compatible = "fsl,imx8mq-mu", "fsl,imx6sx-mu";
+				reg = <0x30aa0000 0x10000>;
+				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MQ_CLK_MU_ROOT>;
+				clock-names = "mu";
+				#mbox-cells = <2>;
+			};
+
 			usdhc1: mmc@30b40000 {
 				compatible = "fsl,imx8mq-usdhc",
 				             "fsl,imx7d-usdhc";
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
