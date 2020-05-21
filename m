Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 050A31DC6EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 08:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t+9WCHk6xxV/CyHgC7cfx/XhZPIUFuK/X0Cicz9Zxc4=; b=ExrSYRZOEPj92l
	leDdSjLtgMixn+nEDvOcaBqHoNsiSB3D8AN1Q0OvX2OSZNhA+UUFTk767XUOX4LuyaUjPllg8cDki
	PXiZVuEPY+PeHulS4Ae8sRTNHM7i/eCTyjwKzltz0TSxMYwlQomjZIzrXRwU/HGka00NXR4owGe8Y
	yhF94i2PuSU61Ffvm/01UgrrV4o92fkrMK22GRfr5I84Xx1/Xy+FF9/XG70wYovXTYvLNjP/e+VDu
	xiao+mV2NfecHLc8pNZNMKXLPcE+sQm+o/vnyhZkJSGSX9KvY23OTfobrfiPJ23LqvyeMiTY2hI7U
	7RN6HXJmZcr96FRrhXWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbeWb-0007RT-By; Thu, 21 May 2020 06:17:49 +0000
Received: from mail-vi1eur05on2076.outbound.protection.outlook.com
 ([40.107.21.76] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbeWS-0007QU-CL
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 06:17:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SH5KfF/oCd9QBrhCgPyhjegYyMZN0uhQgBntNIM36ujWerNgjVC0SaHt/bSfntQdq93fKOE/D0OtIwsVdws1UzB2Qn+GvV/qgnK4k944iSmW8MHg2P0q31biUJVn8Th5xf3KK19LwYeTiitME9Hbb7WcIvBvb/RUN/lQYuXuvvRoX1vKZ0Xx2FyO5rPlt2cZY0zrlIt7PxDVVSd/XophpsUFOFhcOWGEhffvHrlg0gSakTGFHF6v3H6sbv+yrpBFIftkxoikI090AVvkCc5YBD5BW3wgaqZf5NeAWy1uvNnHaNqAiDws6w3T9ps5/vDAg4O98w7J8vO3Urt1FpIQ9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kZyVXa6OVYjI56fPdSOlinHR0mhsfjQmzse91s3Pqt4=;
 b=LSTEVEQrJKij2U4CFwRFEvGu9lulmKRBhULIAzs51TBRwlxWGR9TaB+QJcjEH3/2h+Fl7PzNB1zsQNq8TKsjmhnOXXlx8dx9bIGF95vY4uWsdjys7vHBTKBJjTz2eH6G72svmLQXolE5PjBpi6+ZCPf8SxYcLwwQz2xVLVObflfdit/4j+DYLr7J1orPtvBnvhD9KE69cZnzRypF0atfbRqcV0jfYt2WJ18NfbfalujbJUIBSKvgPsMHuI5apb3eNg/HReD8xAb6MDNdWn5m0FTdpg6QZzB48YkgvBZimJVWHTt+z1ITXsANcdGHdndYYj7gphP/PLu+FBvsbpwMmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kZyVXa6OVYjI56fPdSOlinHR0mhsfjQmzse91s3Pqt4=;
 b=DhryGNf1wSITqCfKIQUylXPmuaaCKyE4EHew+CEbNvt3DhRd0FKT1xXECF+37U6RKsSds17XtipBvgM9SPHfWfmTNH6TdKn2QHVzdUgLKZZLNwO4zOk+cwV8ADNsRFStN6ImVkZ7iAYq43pUD0XIYrRP/5X8k1lOnUSKrfSCKlM=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6720.eurprd04.prod.outlook.com (2603:10a6:803:123::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Thu, 21 May
 2020 06:17:34 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3021.020; Thu, 21 May 2020
 06:17:34 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, anson.huang@nxp.com, peng.fan@nxp.com
Subject: [PATCH v2 1/2] arm64: dts: imx8mm-evk: correct ldo1/ldo2 voltage range
Date: Thu, 21 May 2020 22:17:53 +0800
Message-Id: <1590070674-23027-1-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SGAP274CA0010.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::22)
 To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SGAP274CA0010.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.23 via Frontend Transport; Thu, 21 May 2020 06:17:30 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 89994a09-0434-4e68-af8d-08d7fd4ea64d
X-MS-TrafficTypeDiagnostic: VE1PR04MB6720:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB672076F0F7996CB95781972A89B70@VE1PR04MB6720.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IvV5abqoQa38WTyJL1ZXf5z/Lv0RJge4YWoDOpDSWCXUv3zfNbxLFHq/i5Em+A+MA6ZokedtG4X6wZb+u/r/9uPWWeI9QHa0iNmj+/q8ZTDCtbF23cOyWWCjN39AOKuWvKNwHczrsU7MLrBfESmeV7KEzujQZ5/AOy0ai+IauITHlnz5C6VCmXEUcUIT0A2AHb4FE7SKukqtEldCnASHNrfaXLqzyPV/QsVfZsRVAXto4V0Mbq4vxfDEEy9DIda1rPkewyZIX7eCuTJJQuToAF44bJs2FlOgBJc9U61WnSGPHy0C3Lk+iECGeuOyHC2BEraUxRfQbBLM1GVshmxH8ox9wgmgAEhuiWfXMQiCwpT5ZEy8JtAPJDZb12q3kpx7jDi7igw2967YIbdms1wzzGjqNfsGTc3uy51GDaSFw17ZCMtvSDqaxWYot1TTMpZY3s9c9RnbRgL62adoX8srtITs28xuDOOYjzO1jc0CQRg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(136003)(346002)(366004)(39860400002)(6506007)(36756003)(6636002)(2616005)(86362001)(6486002)(956004)(52116002)(4326008)(5660300002)(26005)(8676002)(186003)(16526019)(66476007)(66556008)(8936002)(316002)(6666004)(66946007)(2906002)(478600001)(6512007)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 6z2ubjY4anI+e89LieQ6dSKqVAlLB+UwCjuW8MZzVrXleKvc/0vqdUiKt3mVhH1ztDhi73J9XTRO5YqlG5GkbXLGK2rc6yMfjyq0sQID/tB8OEHXKnl+Ktxf912zqqiKpg9nfrodmU/WsF6SDoprgAJiAv25z9aNyNvKa9EhdB55grCkrNqc7XkVpBgBpmYpVRcMATE1k1+pVvfCEEl79Lt/Wu54S7RAcMjpOxa8hFrUZK00qNePXfkoUyfMoXqa4PRjCh7bFffkI5bibW5M1u+5g6GaSw6AvIq6CRmWzKW6lVw5cFdd8L5yX7nX5Ryx5+kG7d9VP2EYwbyYomcebDby/4Yo0qGF0w3QVuPvRG4cWVDvuIz1qw5AXQWCVC6+/+SuW2wcCUtNXGYxap3CaIeNUonkEjBxvepGMsf2hwYnDBvr38RWgP08b926NzUgyhrZEnNh72j5DixCLfVUVQM/htR6Um7djSrNxECrD9uMN/U9z7BnYaEtbxvm5AZR
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89994a09-0434-4e68-af8d-08d7fd4ea64d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 06:17:33.9657 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m9uC8c3waRkn2btB9Hr/0ghRUpbHAO8EYSIxTge4gNlKXvTdLGy344Bg42rcloBptDj73M84JHKPFOdNJO2YuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6720
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_231740_421343_1D09F3AE 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.76 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.76 listed in wl.mailspike.net]
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
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Correct ldo1 voltage range from wrong high group(3.0v~3.3v) to low group
(1.6v~1.9v) because the ldo1 should be 1.8v. Actually, two voltage groups
have been supported at bd718x7-regulator driver, hence, just corrrect the
voltage range to 1.6v~3.3v. For ldo2@0.8v, correct voltage range too.
Otherwise, ldo1 would be kept @3.0v and ldo2@0.9v which violate i.mx8mm
datasheet as the below warning log in kernel:

[    0.995524] LDO1: Bringing 1800000uV into 3000000-3000000uV
[    0.999196] LDO2: Bringing 800000uV into 900000-900000uV

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
index e5ec832..0f1d7f8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
@@ -208,7 +208,7 @@
 
 			ldo1_reg: LDO1 {
 				regulator-name = "LDO1";
-				regulator-min-microvolt = <3000000>;
+				regulator-min-microvolt = <1600000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
 				regulator-always-on;
@@ -216,7 +216,7 @@
 
 			ldo2_reg: LDO2 {
 				regulator-name = "LDO2";
-				regulator-min-microvolt = <900000>;
+				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <900000>;
 				regulator-boot-on;
 				regulator-always-on;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
