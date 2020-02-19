Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF77163EEC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:22:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQGjWc8UlXly5d7FGr7TUY0YhNYn+BvfwdGwF3Z/B18=; b=q6ZnEQP7yoTcDE
	zyewkp+Mve3UtUkQ+Z0bJ600XOVKLuCp8hnSTmDrqmcuC+YM9Tnsp7x6aDCHtOkfYemySvUopabRM
	fZi/AcTAZJhuJzBPThXY1bwRfMn1I5taPUNkR/H0JzIIbIVYV0YlZBUpJWoDKmJWLA6x8jJezObFN
	LOVAf9PoBpx3fTHXWdw2kMltf+AwMB3wvMup786H4l3YbUwaZip3u52QU9mkihnqAU3CPXMYAV7j9
	B1FlyZepIqmYTlP0wogWqqNN71TsgC8/SBEQk7ab5C4PD1KCSrXzquf39nAi8YLq0mL8mf2pv1EiT
	amtasxM1hIMLzwMnwhig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Kca-0001rC-Lm; Wed, 19 Feb 2020 08:22:16 +0000
Received: from mail-vi1eur05on2058.outbound.protection.outlook.com
 ([40.107.21.58] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KcP-0001qL-PY
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:22:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PO1MOUpa/dsK0FPqVPs3w9wgzii/9EYID8mqDweXsVRqRnEgpToVZmKh+s7/uiRWnKxwDU88YAWkEc9EB1lEBTlunmDJaD0MQ2YvZ3PHlDqwm8naazC7zpq09kHXHYWCTNehqmoAxQenVTgjgEEy5pX4hrl4RRc499ZY+SO8DMgCPOZC5IKxzyV13Hh4Mo5rAKoLW+NkAkAP09xY5ntZJdWHUb0h3yQja87lAf6LMqh8rLLjSti0PDPAzzNUbvkBzVGXrKv0GSz1aPvI8YdPJmsPi50ps9spHTarfWu8OPWwXsmn5ZSBcvzpivdSqcEK/4/JvUTKHXnir8MLlfwFLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9BkRvE9fRRa9zVozc3Al9xaIawZGzJcAeFdOpReGN8E=;
 b=EJe7+netgHw/N1wPFZOIVNzfFu8dx2MMab/13uD0jfkBtY+pdq5HBsIJwpeVclwNse2oHzTfoEQ0Af7GhZKbgMc0aGVUS+oTQg9wjNk1oRG9ZF2T2J+htOS3gPV6BR6UxdTGPfhSAtxfEEI4Rso+dHxF/VkiAdiUo+W39J4v4GmZV+BWhJ5UBcVy9Te5Aq8CAMwwlGshLkEvPfkoATHT/VEB6FDllZ6qopdHvFHEMIzdLDhx7LMptQgGxatjZ8vB0Ult/wyZqjFO1vfq8dMAhdIO0YUlFENsWgjG6q7PHboHzBaHeOsQLM/fFjFgIYBfq7+659c7ACDm1g0DDEhKUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9BkRvE9fRRa9zVozc3Al9xaIawZGzJcAeFdOpReGN8E=;
 b=m4GQToA/7k0Mmexee6730klvcaybE1CaSYO8NABoWPldb5uTXTSpbzQOScqyoPIhlw1Fh+Xiau0Zn3m+ElnoFx8At0Tww++krI9d3j4g67Pa0ZcktlmEY7XJxanxhxnEGYrJmN2nc2NfOqrBNMw2V74V4+Ugv1egTKR9pNPBV/Y=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4132.eurprd04.prod.outlook.com (52.134.94.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 08:07:06 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 08:07:06 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org, viresh.kumar@linaro.org, rjw@rjwysocki.net
Subject: [PATCH v2 14/14] [Do not Apply] ARM: dts: imx7ulp: add cpu OPP points
Date: Wed, 19 Feb 2020 15:59:57 +0800
Message-Id: <1582099197-20327-15-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HKAPR04CA0013.apcprd04.prod.outlook.com
 (2603:1096:203:d0::23) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HKAPR04CA0013.apcprd04.prod.outlook.com (2603:1096:203:d0::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 08:06:59 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9a9f9968-06be-42ec-d70f-08d7b512b422
X-MS-TrafficTypeDiagnostic: AM0PR04MB4132:|AM0PR04MB4132:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4132EA6BCCDEDB0319A30B1688100@AM0PR04MB4132.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:546;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(396003)(376002)(39860400002)(199004)(189003)(9686003)(2906002)(6486002)(6512007)(316002)(478600001)(69590400006)(2616005)(66476007)(8936002)(86362001)(8676002)(36756003)(81156014)(186003)(7416002)(81166006)(52116002)(5660300002)(66946007)(4326008)(6506007)(16526019)(26005)(956004)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4132;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q/AyLNfu8Kmge5Q6Cbjn8QWV3gQFGOGY/lYus+15wDDLXxtZtYkTuiCZSlk+iHx3fJGvs51LzvTcBueGDr5Mf9pdXQbKLWLQ1itEvJO4N21Nq4VM7W7yUxx1yV8KxSZslBebkgcGAwoEbe52Gb15zQ20CZAK3fOykOO2AHdoqcvil1fthYMT8UMM+gEmgOlq5HYUqARuyZniRdpVygFwAUhEX/1pffHZkqiHik6f+lwFFqRpYLRKTnJ1xSGdjHn2zdLQl7Ki22AAk+UoIenbV0b69Gih5IU2ei1+RAZQMN9FRRfbyPW1EDlbNxNhXlMB0Rd3Xnm6e9N5J7D/xtVC+g1/bkk40RDr4sOTJO/BtUyI6CkbHqzJMnzBzYi3GFLq+bSeZkA/LRVt0wpUbXzRHaFlBImcTynBY0Q4mNoQllzQoXMLPzLQLRM8Dt1smdW7Cs3RRkmZ8UnnksfBkssZIhX479GWQYS38rNNEhs9Ny9GrqSpc/R12xl1v6aiRFacnKN/+WP3wHs4lJs6QJ22YUa7imAbsDJFmuPr2RZnvNg=
X-MS-Exchange-AntiSpam-MessageData: JVyARPJ0Hty+TD0Dvi361cKI0/NAgvYVJO4iUPcisQ5+5SwYUNHDXgjxikqPBtbMonird8mIhepo7q/n+KluqWL/LOGgenwegED4tsYx9fX9dRzSVJ54cYRI18PCkgKk9B+J9Bl5rby/mMQNlD4WvQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a9f9968-06be-42ec-d70f-08d7b512b422
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 08:07:04.1360 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jiGnvQd99caldvIeSRzbYQsitwCqRx9xI6leTm3LKBc2No1dkdLvuAKixUhsi14Yt7Vr+zcnrx2rq2nzyaeAwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_002205_830741_46FAFC5D 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.58 listed in list.dnswl.org]
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
Cc: Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add cpu OPP points. voltage part not ready, only clk freq now.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/boot/dts/imx7ulp.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index 32c218123662..a5bf6605f729 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -41,6 +41,34 @@
 			compatible = "arm,cortex-a7";
 			device_type = "cpu";
 			reg = <0xf00>;
+			clocks = <&smc1 IMX7ULP_CLK_ARM>,
+				 <&scg1 IMX7ULP_CLK_CORE>,
+				 <&scg1 IMX7ULP_CLK_SYS_SEL>,
+				 <&scg1 IMX7ULP_CLK_HSRUN_CORE>,
+				 <&scg1 IMX7ULP_CLK_HSRUN_SYS_SEL>,
+				 <&scg1 IMX7ULP_CLK_FIRC>;
+			clock-names = "arm", "core", "scs_sel",
+				      "hsrun_core", "hsrun_scs_sel",
+				      "firc";
+			clock-frequency = <500210000>;
+			operating-points-v2 = <&cpu0_opp_table>;
+		};
+	};
+
+	cpu0_opp_table: opp-table {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-500210000 {
+			opp-hz = /bits/ 64 <500210000>;
+			/*opp-microvolt = <1025000>;*/
+			clock-latency-ns = <150000>;
+		};
+
+		opp-720000000 {
+			opp-hz = /bits/ 64 <720000000>;
+			/*opp-microvolt = <1125000>;*/
+			clock-latency-ns = <150000>;
 		};
 	};
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
