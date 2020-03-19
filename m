Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F3D18ADC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 08:57:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wVEvrWopX0ykml+ETYgfqYbK5B1HyVW2MfiuPjQYd0=; b=Ilv8cAZAEsA9az
	aURLpRYsnrd/BPeluSH6ufjqXyNPm1c0Yblu19VDM5OKYB2jzlwL2Yq7ccpaaaoROXJQycTUlRr7T
	dAvVu1fxVSux0Swll30pR1Me5GHisVxGWmnSw4mAxno+KvmrGYOOrUo9Gg9PdFkPVZ6VgnncPmQaL
	NZovJMlC4pqsuqPikneefZMO0zeKD3UBTubmf0tSLQr49NniOidQWtgQ2t87Fd/hx2FHWOa9Hf9SM
	FtjRmRisGePEgOOnYhzDJofS4eclI3sfrvySI5qY6aPvrel5FP1t16ZsAulomrDc9DNTQ+7UtANmw
	iRRC98NzIOw/+dA+C63Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEq3e-00033t-DF; Thu, 19 Mar 2020 07:57:38 +0000
Received: from mail-eopbgr40044.outbound.protection.outlook.com ([40.107.4.44]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEq3S-00032q-HG
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 07:57:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZFttWGmCYmz3B095XcYV5A8dYmFZVETk+nbSHW82SQm967//WWz+qpfGIri76UO+ncoIc+Q+VOqnYNOM2NVAYh73orUwtgYTrkyW9bGpdp0DDZUhJzf+wIZ1D4RUSqpTdH/CVT51uPuSc7unHydfVIuXrh46Cyx13SzFY0L5avr2TZL+Wlqa8T/CkgcrkWCYpC7izqJoDXUfO/DMAKIIYN8vnWP5Zly+O5PGPll6OwMEbawVSK06ylQcsZ7Z60v6VMLvgXjnXWfSAcePoTbrocIqfhEuj8ib1q8NSsLIBrpmXRwOa7vqYs8LSP/477vAM2IbR3geC+kyP/liL0kRAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YbdLfxIXuTTzXcK3eSZNp44a1DH83hgbfLpATB5pTiE=;
 b=AupWXONMRV5Kye3UWP71iM+YQo6UynaQaJHUENBjtx0m7K2dM4NVChSYmyOTcdy7U70p8aDeEGvzWesMlDEdsQuRUDx/PDcr5Kdu4cKtUHTgp6WS7Xko+6HwShbmfFR8bSj/GxXiP7GNw6WxbuRpebz61EG4VXPkuPKFxbhvU9t161rNETMP6BxUhm2vcDPBji+g5z4YrQICen/v87LLKAVNePiqDYPWg6+fPg7EhYc6Y2P/5s4dgoEu+REr3k6h13Ri993rg8ZuVHwmMsfKGui0Sqp53v8SIx6SoTN6dy2arbx0qI76hDQFdvxARXDLJETRPJPjZX+WKfy+fq+Mpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YbdLfxIXuTTzXcK3eSZNp44a1DH83hgbfLpATB5pTiE=;
 b=UZ9WiU5Z7ffcOeCyYl5x/pVKvFgw+Kda6RF4zEOi2M6AlSmimONBe66sOhn65YKj7vX16/ZrvXXVw7Jl7r4qbD4lFadm+y7MuS+OV0oZUNTZAJp2sxRBg3qlti2pclhWoOO3RioM1e1hd8bNic9esfvDsY2RMdIvAbI35W3sRho=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5780.eurprd04.prod.outlook.com (20.178.118.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Thu, 19 Mar 2020 07:57:23 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2814.021; Thu, 19 Mar 2020
 07:57:23 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de, leonard.crestez@nxp.com
Subject: [PATCH V7 1/4] dt-bindings: mailbox: imx-mu: add SCU MU support
Date: Thu, 19 Mar 2020 15:49:50 +0800
Message-Id: <1584604193-2945-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584604193-2945-1-git-send-email-peng.fan@nxp.com>
References: <1584604193-2945-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR02CA0118.apcprd02.prod.outlook.com
 (2603:1096:4:92::34) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0118.apcprd02.prod.outlook.com (2603:1096:4:92::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2835.18 via Frontend Transport; Thu, 19 Mar 2020 07:57:19 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e57b533c-432e-4ec2-677f-08d7cbdb2853
X-MS-TrafficTypeDiagnostic: AM0PR04MB5780:|AM0PR04MB5780:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB578005E715FD4D4C8A68F1BC88F40@AM0PR04MB5780.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0347410860
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(346002)(39860400002)(376002)(396003)(199004)(6666004)(66946007)(36756003)(66476007)(15650500001)(6486002)(5660300002)(478600001)(6512007)(9686003)(69590400007)(16526019)(4326008)(81166006)(81156014)(52116002)(6506007)(8676002)(66556008)(316002)(2906002)(8936002)(2616005)(186003)(86362001)(956004)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5780;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CialMPpOVPQ96D/FgiNdGJE0cQ1DR2Epjwoauz/NnebdUCPPUOKCqFrfDccGx2sQfaHeapgtCOPc76TRRAgunO92uzuz438MSKQwN/wGtqiaZG3pJNiRrMSpjWeoR7YtY5LfSwZHpeX8ldvS/qQUn1TX6EMirHnzkURVEsLkvoqeNk6aHw8dMKYPqwHAhYPuEU9Jjljb77gkb3/qOGIlp7sQ18VaV/uEtpTj1FrBTNtivmVB232XjUdxdYknnelkM3FJ0OMxptGt3D8sJH9XzBeUDmItScgGlYt/LYDKTfOGFQaRVh+GJWkBPvba8OUPZJWISjHZFuFpVnG5zappKpgari6oSb/7fvbkJTczomcqTFkEy72nbXukRKGhTSluif5jfL9ney1UNCm4l7BA+7HXZydx0PiY8w/Q/RLZqU7BRgUNeF6KzTsMak8MffFY3kBBZWWb79NMjtAE1zw+1GOCK5OatD3wdPyjxARGJUWbU7KRIZximuuSaNernY0x
X-MS-Exchange-AntiSpam-MessageData: Wa0kX+WVRKirMD83wHC/eEalENE2lqWEkNuiYTN5SG5J7UYCI4GAmbIFCWZ9yVwPm9FStelQv+jAzGX7E5tItJEeplOXKczaBuYYVTGaGHo70kUocZvr38JNuloChWcpDrvCzPHiPMyuT9eYuGsyIA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e57b533c-432e-4ec2-677f-08d7cbdb2853
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 07:57:23.4743 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OGZ9VEAVfIUVZvObMyw9vRM4LNMlI7p0zjYi8IJacPAOOYFqyUW31v3wWRlGkQzwXSazZKSeQYbwFzGy94lfUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5780
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_005726_707503_C931B1D7 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

i.MX8/8X SCU MU is dedicated for communication between SCU
and Cortex-A cores from hardware design, it could not be reused
for other purpose. To use SCU MU more effectivly, add "fsl,imx8-scu-mu"
compatile to support fast IPC.

Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
V7:
 None
V6:
 Add R-b tag
V5:
 None
V4:
 None
V3:
 New patch

 Documentation/devicetree/bindings/mailbox/fsl,mu.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
index 9c43357c5924..31486c9f6443 100644
--- a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
+++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
@@ -23,6 +23,8 @@ Required properties:
 		be included together with SoC specific compatible.
 		There is a version 1.0 MU on imx7ulp, use "fsl,imx7ulp-mu"
 		compatible to support it.
+		To communicate with i.MX8 SCU, "fsl,imx8-mu-scu" could be
+		used for fast IPC
 - reg :		Should contain the registers location and length
 - interrupts :	Interrupt number. The interrupt specifier format depends
 		on the interrupt controller parent.
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
