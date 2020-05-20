Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CFD1DA865
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 05:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0UGGVtpCw6jmtYjCRE/f91cYWgoyY7NPOETF+EeKp7o=; b=cX8TCRFISiMuRu
	/rX1tA8GiPwYVpZRFtWCgQmF8516iM46Sm0tqFLTgch88a9IXFpiBhruvD8fOHgv8LTZSIceRBpkj
	AxPfHMnAjbGt14qyW5iAjPNN5Lk9m9RpQ1CJMvt5Acs8qQa+hW6xRjJM/x3C74Yw7p+E+XsqH+Sxi
	x06hSR3amOj8WhqYQykhinah4L36sM7F5RrJtsBv2P4fwAPjp4VDQPvr9HlnbnTHvKA2SxyNkiLbi
	UdR/0tSAgZKKiZ83uWDvKqON+pBaXcE3R9BIu8WFF0z+1ymKTD7ISQ1LbzolqNor6IaVDm+WGExsE
	/MMN9XWOmCEj2ls+1flA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEy8-0000u0-LL; Wed, 20 May 2020 03:00:32 +0000
Received: from mail-am6eur05on2040.outbound.protection.outlook.com
 ([40.107.22.40] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbExB-0006HM-CC
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 02:59:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LgWayIxBwWXTxh77VoNlBJ0N4wnGAfQ0CKAHq4ZvmQGfRtPpjB3LMWY5Xf4tz2YAtcbY9PTlUqcKa9wFRHmXGECxew22/3YZ5idCHM2MVP2o6isflP56kDwNbe4NVweTaava+NPCgsfYAMTWAVnAFP0Fp408jG6UaE2npA5lRIFk7Gzjiujo5+plnw3rqiu603VwHkdjhvOq7EQ+YLqP5p++oBJ/OunIq+ovZu1yKzXuXNKQH7GAyH5NKAhqgNphrtjyR9cQz32oEcSXot+Fz40BHA3O30EOPSkwgbgBDz1TER3hgIqc4kD0SwEC1nkwjMg38dkbj2nbOe7uNIwuAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T5zCrxqrYdDhwlKvQaiCmennCqm9k07OLzQSm95LsW4=;
 b=f0UOPf5pva13C9RTo8Rn3Q5rnuch3aPLppNaxWabWTuBAOq7aUUk9/ctj+wr1YJVgj4qzGVEfaEeOjKZrc8WDSk9wIGNhyqGjizI9/pN6+BqrS6ysYZCf7CG2Hz/A6GEZAq0ATp8mi6zKmggS7sAYxGNfoq4+yo2HM5OC2XjwXp9WZz5yW3JOE+hsR76vX7W8Psl+qxmET7h3Erq6+okN8X8yDLs/BG6zpp2Ao8WvhOYdnbR1Cv49xpbNkMwxsLdDisC/vdc3dWI51cfDT6XuUpX/mTkFModqq1cZhnNESh8Q2VkA9yUI0K0pNhphwMsLNIDOvLZHOCIrJaxmiAFaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T5zCrxqrYdDhwlKvQaiCmennCqm9k07OLzQSm95LsW4=;
 b=L/VWIYrH1iM4xPe0R7PU677ZkR1tyXacxr5rG1CT9MZMaQ3YqvE5nnViju3SYPuFtFzEU22UkNDEArga189jG06GjTX4A+XLuYUud3Z9lXUVOdzGd0tJyeDToz+yydU1E/o/14v7rtb0todXinhmUwiqQlGT2H2epB9w7ENnJKI=
Authentication-Results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB6634.eurprd04.prod.outlook.com (2603:10a6:10:10e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Wed, 20 May
 2020 02:59:31 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%7]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 02:59:31 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: john.garry@huawei.com, will@kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, shawnguo@kernel.org
Subject: [PATCH V2 3/3] arm64: dts: imx8/8mm/8mn/8mq: add identifier for DDR
 perf
Date: Wed, 20 May 2020 10:56:19 +0800
Message-Id: <20200520025619.687-4-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200520025619.687-1-qiangqing.zhang@nxp.com>
References: <20200520025619.687-1-qiangqing.zhang@nxp.com>
X-ClientProxiedBy: SG2PR01CA0142.apcprd01.prod.exchangelabs.com
 (2603:1096:4:8f::22) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by
 SG2PR01CA0142.apcprd01.prod.exchangelabs.com (2603:1096:4:8f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Wed, 20 May 2020 02:59:28 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b0d37a41-12dd-4457-ba5e-08d7fc69d15b
X-MS-TrafficTypeDiagnostic: DB8PR04MB6634:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB6634564660549414F9252D87E6B60@DB8PR04MB6634.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:843;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: V6tnQ/Y0TIULIZwzear2fnHPLLQAMiPw4m95v8ZM1YPVY0jqpu/ID5SwN+NApStu9c/jtynpq0UEfZyOl12Vjh56pmg1ZWAfodl3PiivEvZVYxG8fZnOmXVzDqty+QF5IOqMkr3lr3YZVREN1cyv6L3EdjnMp2j7plu+8DDddPMFfYKvwvDwvDgvfpnglE7bC87cE0rmpMoeOFFqoBmZXuUlc80j7MzIfFZKVe+bdQ4jNDjlOjBP0+eRF2hhSGQnVHzReERMF8LvNneE90jN3KupaMoLjpvQw69QUwb+h6OSKxEQ9LTbXzmqlCOOPcz4zWh/SPUQPVnHG1Tz2696Z83wGzXGFNUL8bksI06XYW36yX0a0oWO5HYwr6XK7JfGS2ASHfUpDOrARB8YsaE+9ZwrrcCLMuRIUkqhCiCXmHjAuM5rJ1/gGuuwczMzVPZaQXMC+vPaUdLKcZ4B7OXD64g7BIM4EF7XYFzDst4CkwdP4yUrRJpzAchmcC2qELLt
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(136003)(39860400002)(366004)(8676002)(478600001)(2906002)(6486002)(956004)(8936002)(6666004)(2616005)(36756003)(6506007)(16526019)(5660300002)(66556008)(66476007)(4326008)(26005)(66946007)(1076003)(6512007)(316002)(86362001)(69590400007)(186003)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: CHe32/Bhg5qY8LRRCSeNJe9LnmA4dRWIa9VTyW1v4akUEupOO889gRgnyBUg7U1285l/AMlqJ83NByff5LQ3Jc7GtjWyxnz8gwfSIxBr8rIDQH3zSMGOoPkF2qvEK9ZGlprH27KFg/JLr4+5iZMrE1xjL0S0HeY4211mhQDCQAqEzS0yC7qhuZmtR0AZntl828tSy582J5ri8irOFy9wdgAheBIvhTIui0PKEaUgSZs/3QSfMlPTJTMSdJu5ZQMH2Gm+GpSKohxjXUutxjgxMuOEM3ZEe3cr5W2u6WyvZps5viM+gEf0c5m8eLy33gS0UZtyrbUtgH1wUi0GjJIhebH4GpWA5mtN6Kt8hfOn4UUoKTqzlz0QhemvWj21ET8bmerbYMrDzXueSd1kLTJ40/FYAJ2F7TppH9W8JHvmouNSkPeGXIz47J+3f0eBOV8CChNJ9AJxpdHXVSeB6w9iViCdCB9C+J0iTk+uMCkNdFk=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0d37a41-12dd-4457-ba5e-08d7fc69d15b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 02:59:31.2650 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MZS6VTlagS7bwuMKBofRKpPGqxM+J6c8+gz4gqawg/xhQrMXjq2VZq6xmda6A/xZbgQm+iUXvLrvpsLnaeqVmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6634
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_195933_442817_7DCC9D1D 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.40 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add identifier property for DDR perf.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi  | 1 +
 arch/arm64/boot/dts/freescale/imx8mn.dtsi  | 1 +
 arch/arm64/boot/dts/freescale/imx8mq.dtsi  | 1 +
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 1e5e11592f7b..ee14a6ecdb93 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -898,6 +898,7 @@
 			reg = <0x3d800000 0x400000>;
 			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+			identifier = "i.mx8mm";
 		};
 	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index a44b5438e842..b93e56ebf9a7 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -796,6 +796,7 @@
 			compatible = "fsl,imx8mn-ddr-pmu", "fsl,imx8m-ddr-pmu";
 			reg = <0x3d800000 0x400000>;
 			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+			identifier = "i.mx8mn";
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 6a1e83922c71..38cc93af35ac 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -1217,6 +1217,7 @@
 			reg = <0x3d800000 0x400000>;
 			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+			identifier = "i.mx8mq";
 		};
 	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index fb5f752b15fe..0c294b549806 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -436,6 +436,7 @@
 			compatible = "fsl,imx8-ddr-pmu";
 			reg = <0x5c020000 0x10000>;
 			interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+			identifier = "i.mx8";
 		};
 	};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
