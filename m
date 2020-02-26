Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C0716F89E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 08:38:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=En7Qs1HmaCx+pyBuu7DoiXo9OJ/9R7pzMgAV/knsAbw=; b=pXSTMrmy+T+Gcq
	SplXRiY08CHg3d3AkRQ1cKUsUhux4f7CGDU77hn6Wcjh9EJB6txvgKLbrbNlfrk0j3LJ9Bb/VMwmh
	o1dJYsbcfQRMk5tQgVAFOSzkNIgcBBSDPQ9FxZKnBASM2gM18ZQcCR9orhxNdf1emQlmWFPzyDQxr
	x5QovJBrPnNN4aElxQPRmNg3U9VGaVCqk2eFeXpOCorVUwXbkQLpa9KIRiz8+v2maQmzIogus5swb
	G0ogoTonyRdci52ljfyhoZKcoGmW2g4hWwrnSKcRkkLqyy04Ksn0KKZry6u1WTEP+ozAH5b7VvBDt
	pr19p4JmnLgHoHBbBqMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6rGo-0005vV-Iw; Wed, 26 Feb 2020 07:38:14 +0000
Received: from mail-eopbgr130052.outbound.protection.outlook.com
 ([40.107.13.52] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6rGB-0005Y1-5f
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 07:37:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DfqGels2QEWnBAbPowZ0mArq75ZGtSfR4rypJT+DX0S+I4qDStIWuRK07bGF7y/7wdcuRCmE7yq7tt8IfPAUcSRAsu98aMQesmx0W2Um/OMJjqzLRKyJj1FA2Jpepef+J7ThiK4bDXom5g/MdTFWFQ8glcksD2Gk5ofe9uG7YtLYwOgI+q6MqObTN7t3uYex5U4LfU5anXdQNGMjy4ybYb0zWukCqrn+7PinW8GC2tnN87hGo0HuyPb5CSGO6cvIeAo+xXhmKKVF4b/y+6HY+Mx4fXrVAkcY15hh18QTtImwzXpdGBWgl3O402WHn2xP4lkQTdvQ3brCkT8pTBxU0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qXpk3f7GEj/8kB6yyCCTcK2F26QP3Dy1CslqVe3tmys=;
 b=YXsISaOYI5QXALJ17ehMFNccJGeEsJwdyrLw4wKisNBRd/5UNVftYb1tkNndr0YaMt0tQupJmsCfRvjgKCACZ7QDVuusi7qZ4iM2gPIdUY1Y7reBn8fhQzoBWmBkOkjT43Wdtw5bRgSH9Pfxk+7c4zgHya4/iql0PAS00Eg4ELhzyJKshF1nm7eG6FQQXBLzjf2vYgNMFxZ9EGwCSv3TFtlBpgQRF1CJbG4+8VhLLvaIZH9up1cXxIk+hncxRlYQa/GNy7oUBdrv+Ms38jd4UyhCHjNLGg2VIKMm17uLFKOKXyBz6x0AIAIQ5BgR0Yy1p0ESTr42FYes8zRqFqegqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qXpk3f7GEj/8kB6yyCCTcK2F26QP3Dy1CslqVe3tmys=;
 b=JAGkt08CZV1etjEllS+s0EfwmpWnevIuvU2t4x/JRr/fUrRlx263H8xdpTFXNBqe+Yoy1TmXaErXteOfJQaQqUBzizoaXxvy8IUigLGwBmN/hus2vaJWSNar7if7/IXwTCYwn0oUKYsT/ubs6361SGLMAS0Qm6gda5WzwB9htF0=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4281.eurprd04.prod.outlook.com (52.135.128.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Wed, 26 Feb 2020 07:37:31 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca%7]) with mapi id 15.20.2750.021; Wed, 26 Feb 2020
 07:37:31 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: john.garry@huawei.com,
	will@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH RFC 2/3] bindings/perf/imx-ddr: update compatible string
Date: Wed, 26 Feb 2020 15:34:32 +0800
Message-Id: <20200226073433.5834-3-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226073433.5834-1-qiangqing.zhang@nxp.com>
References: <20200226073433.5834-1-qiangqing.zhang@nxp.com>
X-ClientProxiedBy: SG2PR06CA0133.apcprd06.prod.outlook.com
 (2603:1096:1:1f::11) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by
 SG2PR06CA0133.apcprd06.prod.outlook.com (2603:1096:1:1f::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14 via Frontend Transport; Wed, 26 Feb 2020 07:37:29 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 93481fda-a505-45cc-1787-08d7ba8ebcc3
X-MS-TrafficTypeDiagnostic: DB7PR04MB4281:|DB7PR04MB4281:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB42810705CEA41C1FC6CAF6CFE6EA0@DB7PR04MB4281.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:473;
X-Forefront-PRVS: 0325F6C77B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(376002)(366004)(346002)(189003)(199004)(186003)(66476007)(16526019)(956004)(86362001)(1076003)(6666004)(6512007)(8936002)(66946007)(4326008)(5660300002)(36756003)(66556008)(81166006)(6486002)(26005)(8676002)(15650500001)(316002)(52116002)(2906002)(81156014)(2616005)(6506007)(478600001)(4744005)(69590400006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4281;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 440YnMt0FZ0cRpw0U7InJYY7d6xgw8LFg5nT9idWA9BnYBOfN2e1W2vdVQR7KO1o2g2U0/F04jupNKfEpspn4Pk8BulBoGlcT2d57cFr0JF7nw824zY7KiW4lglSskkSexLS6OvjiO+9X+H2MUjEuyMjA6PLyohfe05otWdof/hUHM8yn3d5DHDXIMCC6iyQePqExtkJFeHa9yebA4sSXbNwuKT26KG/rDWiKujqJrfDMb22O83EBOXxqjItMH3I2VowY1JtzdxgCTcsarO901dxG1IT9c6ADOusPNFKPQ2ugGFsuIT5Il+vKqFSwrl+SUjQhdm9S4rUEvP4SmFdudm95tRhbP+LfZIwOX+xWFDDFALuQlviZm9oWf4P9xL4IvE/VfSCgfEc+g1wH5SN8yD5ZEbFoJ2WZljAKcZAiNEdy6hVSmHSrf8MxhOzqkxwcX+OiH9WxhWeNICvM1Nctaz6JxVxXh6eEuttSCJG3qlBqwDxDtcFLAXLkfk5xQ0j5l8iVAXyVhLJygdpnQimEAdREh6xTw9WarZF2xlcL7s=
X-MS-Exchange-AntiSpam-MessageData: xsncdxte1KPbjO5pRRj69ESbcM5Gd7QviN+p2sNX6H3aqEtq9+vGHxbuteozilLlvIdTfdREYvRwILiioph9f1O1yZvca0aSF3vD8SdUNevKSlOF9GQBuSA/GEd4gfo4ICq9W7/lKOTKTf+JL0mJmw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93481fda-a505-45cc-1787-08d7ba8ebcc3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 07:37:31.4507 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nlz3kPDGkX1R1cFzKY0+8j1dCXRJyO1xbAllz4tmO2n2PJ+9KaJFFfLKS9Q6hAQaEu2yto7H5EuErs5hqtb5bQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4281
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_233735_240802_A34E0828 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update compatible string according to driver change.`

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
index 7822a806ea0a..b27a1d4fec78 100644
--- a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
+++ b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
@@ -4,7 +4,9 @@ Required properties:
 
 - compatible: should be one of:
 	"fsl,imx8-ddr-pmu"
-	"fsl,imx8m-ddr-pmu"
+	"fsl,imx8mq-ddr-pmu"
+	"fsl,imx8mm-ddr-pmu"
+	"fsl,imx8mn-ddr-pmu"
 	"fsl,imx8mp-ddr-pmu"
 
 - reg: physical address and size
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
