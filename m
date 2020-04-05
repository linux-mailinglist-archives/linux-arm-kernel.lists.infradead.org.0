Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3434519ED98
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 21:24:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SNWkJLnzvvfbId22xKS07eHaqLqsG0doN8kZxPovxmk=; b=RFKPKtYsxdg8uA
	x8Xxja2JChxryYKp/WIOlDNEMynbeK7as86/CuWDGDVnloX93F+/ollIM0J4ul2Rm0RlVR9upEZCm
	jFQYg+dRREfaKK1aDEU+hRSgKOBfnvju7NdAKY7eqQfzabuPWttFzV73+85jE151ABAtgXT7xIUYu
	Tt58OMsbwqIJQgM4KtNWmHI//ZiKtiBL8+Gw2SpGxxa1YUsc4szsy1g8qF4q54J35VdOKEiVbMBiu
	bZ2agNG0rAadXxWVoZ9bLoFfLkTAItJ5vjWDpX8fTWl49/89TMNIRfiLDsh71hXYwUAduPmnxNaKF
	/nhBfwo5Z0BClWAH3+GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLAsA-0001GF-Hz; Sun, 05 Apr 2020 19:23:58 +0000
Received: from mail-bgr052101131072.outbound.protection.outlook.com
 ([52.101.131.72] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLArP-0000kb-4e; Sun, 05 Apr 2020 19:23:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TVY09mXVoYfq6PTLNE/0CzrDCHXbTZmrQV4a1zQZGsEBPfHV2mmVJAZzSXMHyqY6redDG6vNQcpwSuS2LNZzKN7sufEg76JSbMAgZ9zFaxPqcPU9xR03L/6fAEm117QMDwHrM4TVW9L5UsTj9dAPzZCNDdB5apXCtF/7l8clf8uHQNDhLyVCcyqbW8TyACjebRhMDNNdX+KUgk/l7RvrRYnIZvO4j8K34w/Iajh1NJVXtX4pJBXwBZngkW+LCIEMCjgknVPWX64ImZV2rZg9RySukC3IeFJJEAZq3hImbEliktD2jk0ZGFqujxSuY8cJjOWK+ooKlPrtZinzgHj+qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=atQq7mb/0UUwoxGcHSMu2aS6Ta/RAcP2QPPhubEpy7I=;
 b=Jy53WsVib55zNTDiV6cLicyIDyOK/kG1A1FasBypzI2N3z5ZRhLnLBljdPGP4ApFgI5nbd7t8eMJlha7NmxbmEGyzPSS6eHJF1ZiwcmrxnARZ1dD1rnJtgOPfGrMYcusQ7MUuCKCsDLw3HiNT7VNeS7SXRaRvthldDZD/FAmq2wOLRupDFT408tUWygDdkn1/DLrVugQNhG/c0urfmG1zjz6q0k1UaDCpPCScKmn808FPkeqUO1hWegcPZARAcLGT+AL0O9cDR6xIxHPvz8qnQldFl3XoKzgb6MzkHURKzMIGHXYJd23ZhuWuasHFY8ffKGRRNeDWIUjnnQQxWs1xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=atQq7mb/0UUwoxGcHSMu2aS6Ta/RAcP2QPPhubEpy7I=;
 b=TNHqFK+cAYfGZEf9QuAXYd3zTe18JHyutMpSF2E0nUpI9Nwh1SlOfAohdHnzErOL2DEQu1wTEUUhMzyHeoIyTX64UFUsROWRg+PYVKTQcmfFxrTh57ufOrBcHz+Lr4ISJ7ZOVvhZw+yT+EiJJHnrB7XEKbe2MjCFqK056psXuIk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (2603:10a6:802:1c::24)
 by VI1PR05MB5373.eurprd05.prod.outlook.com (2603:10a6:803:b1::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Sun, 5 Apr
 2020 19:23:03 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2%7]) with mapi id 15.20.2878.018; Sun, 5 Apr 2020
 19:23:03 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: devicetree@vger.kernel.org
Subject: [RFC PATCH v2 5/6] arm: dts: pwm: replace flag 1 with
 PWM_POLARITY_INVERTED
Date: Sun,  5 Apr 2020 22:22:45 +0300
Message-Id: <20200405192246.3741784-6-oleksandr.suvorov@toradex.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200405192246.3741784-1-oleksandr.suvorov@toradex.com>
References: <20200405192246.3741784-1-oleksandr.suvorov@toradex.com>
X-ClientProxiedBy: GV0P278CA0017.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:710:26::27) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (82.193.109.226) by
 GV0P278CA0017.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:26::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.16 via Frontend Transport; Sun, 5 Apr 2020 19:23:02 +0000
X-Mailer: git-send-email 2.24.1
X-Originating-IP: [82.193.109.226]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d30ddb97-c874-43aa-a8f0-08d7d996c2a4
X-MS-TrafficTypeDiagnostic: VI1PR05MB5373:|VI1PR05MB5373:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB53734A18EC07175143EDD993F9C50@VI1PR05MB5373.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 03648EFF89
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:5; SRV:;
 IPV:NLI; SFV:SPM; H:VI1PR05MB3279.eurprd05.prod.outlook.com; PTR:; CAT:OSPM;
 SFTY:;
 SFS:(10019020)(4636009)(346002)(376002)(366004)(396003)(39840400004)(136003)(54906003)(6486002)(55236004)(81156014)(2906002)(8676002)(508600001)(86362001)(52116002)(6496006)(26005)(81166006)(316002)(8936002)(36756003)(6666004)(956004)(66946007)(2616005)(7416002)(1076003)(186003)(16526019)(66556008)(66476007)(44832011)(6916009)(5660300002)(4326008)(23200700001);
 DIR:OUT; SFP:1501; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e0KnAaOkBC/koNiAGxYf0yqSNXbayOeHQiip5ux5fwEpr/+siQOgxCWOzQL88j3zJI4T5oyqp2jqcdN3hKGLB0qS3cLZSg//cLbH+xGK5Oyk1A6MNz3NMAemceEUec1SulkSEJgXGKkQaqWXQ1kBcHxzpLyrd9/US4pJBw4UV/PD03LaZWHus7lrn2glTD4g//A/0HFKYS3/PXUd541rCOQNVSgckND8XfW+QqMMmzkUv1NjYNnlMi9b9/49slyx5qgOe6iVDAm/GHI5s10fgg9gKaHIsH0vCTm14i3JDjovz16ZkymPjKrJ/e27P9jT8BzeYDpSFMf96xGxHH6xTHF5P5XZFGr9SdsVU4HMNY7XIdpttABPIe/IQO1KnHClKi3fc27ltF8z0MrVB/QSUs3PsfY4S4m/C6hEQP82vXIFMJQ1Wf0vhDdxw7WjHsNqGus/Ns7RgFifnYFUmTEmzyFnhSQry/py9YaDFzS6c0+tafSn1zViWsgi5T5NLlP4Rs1G+3lLZJ8PC8vwWJY2tQ+byf6txJu37vBfzJxzrJuVF1KZ8tIbV9B9dh8g1GO+acgR6uJnBD4twT+7d2OgXDJMhafVZP1kDrdQ6LVnfpiTALQWLGs00MBNI5i2QjdA9e9HlakJt8W6pGmYZrKEkBeruFySCnGG/dstk683q3WbIqG0Q91T5pvdleRaAz5l3ghcIu8QbqOSoWh8O7V9PKhoeN+X/OFQ7LdeDUTZ0q+FjzqocUHGzB0tGRiDSo3dwC0/HtVpd2WPNIAktWQBOw==
X-MS-Exchange-AntiSpam-MessageData: ey7oMs9HPihny1vD5lYvkn6skZujTaqcwXSWULkrNf4qv+0F9hk4Nw12DuU6BDdj7X83OblaR7k07ntymX483oZpH19EidGdXUFMnQd6ByHnpcLnQUi5khj9whSRTNg1isgpREZaXBjogigPXRi4dg==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d30ddb97-c874-43aa-a8f0-08d7d996c2a4
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2020 19:23:03.1776 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YkA08l9m1tU2uEkx2Cxbvteo0BYcdTm5wfCJybE0Nhzd1kaA99Yj6APSGs7ExRUPwHPIgevAK2JzLsAWl4LnFuzBU++SsgAgSQHVXRGwnrY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5373
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_122311_198959_D880EAE9 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.101.131.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [52.101.131.72 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Igor Opaniuk <igor.opaniuk@toradex.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Paul Barker <pbarker@konsulko.com>, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The flag '1' in the 3rd cell of the "pwms" property means the inverted
polarity.

This patch converts '1' flag into PWM_POLARITY_INVERTED.

Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
---

Changes in v2: None

 arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 4 +++-
 arch/arm/boot/dts/rk3229-evb.dts               | 4 ++--
 arch/arm/boot/dts/rk3229-xms6.dts              | 4 ++--
 3 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
index a78849fd2afa..3707f13ffd83 100644
--- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
@@ -3,6 +3,8 @@
  * Copyright 2017 Toradex AG
  */
 
+#include <dt-bindings/pwm/pwm.h>
+
 / {
 	chosen {
 		stdout-path = "serial0:115200n8";
@@ -75,7 +77,7 @@ &bl {
 	brightness-levels = <0 4 8 16 32 64 128 255>;
 	default-brightness-level = <6>;
 	power-supply = <&reg_3v3>;
-	pwms = <&pwm4 0 5000000 1>;
+	pwms = <&pwm4 0 5000000 PWM_POLARITY_INVERTED>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/rk3229-evb.dts b/arch/arm/boot/dts/rk3229-evb.dts
index 350497a3ca86..68ea0c320ab4 100644
--- a/arch/arm/boot/dts/rk3229-evb.dts
+++ b/arch/arm/boot/dts/rk3229-evb.dts
@@ -83,7 +83,7 @@ vccio_3v3: vccio-3v3-regulator {
 
 	vdd_arm: vdd-arm-regulator {
 		compatible = "pwm-regulator";
-		pwms = <&pwm1 0 25000 1>;
+		pwms = <&pwm1 0 25000 PWM_POLARITY_INVERTED>;
 		pwm-supply = <&vcc_sys>;
 		regulator-name = "vdd_arm";
 		regulator-min-microvolt = <950000>;
@@ -94,7 +94,7 @@ vdd_arm: vdd-arm-regulator {
 
 	vdd_log: vdd-log-regulator {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		pwm-supply = <&vcc_sys>;
 		regulator-name = "vdd_log";
 		regulator-min-microvolt = <1000000>;
diff --git a/arch/arm/boot/dts/rk3229-xms6.dts b/arch/arm/boot/dts/rk3229-xms6.dts
index 679fc2b00e5a..f11088ae855b 100644
--- a/arch/arm/boot/dts/rk3229-xms6.dts
+++ b/arch/arm/boot/dts/rk3229-xms6.dts
@@ -92,7 +92,7 @@ vccio_3v3: vccio-3v3-regulator {
 
 	vdd_arm: vdd-arm-regulator {
 		compatible = "pwm-regulator";
-		pwms = <&pwm1 0 25000 1>;
+		pwms = <&pwm1 0 25000 PWM_POLARITY_INVERTED>;
 		pwm-supply = <&vcc_sys>;
 		regulator-name = "vdd_arm";
 		regulator-min-microvolt = <950000>;
@@ -103,7 +103,7 @@ vdd_arm: vdd-arm-regulator {
 
 	vdd_log: vdd-log-regulator {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		pwm-supply = <&vcc_sys>;
 		regulator-name = "vdd_log";
 		regulator-min-microvolt = <1000000>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
