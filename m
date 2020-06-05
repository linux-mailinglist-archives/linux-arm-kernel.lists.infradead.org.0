Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3741EF95D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZ1FKcWktGY85tVhbFnP3Kvo9huKOTFNVUQzXghH840=; b=kSbPrcDg5PibkP
	1459t1FB18JP0JZv6DuXtBKSBMF5kTwWsmCOg0FjgrT4l3EqjQS1wkmzisSpUPsGEWf3TxGXJe0fL
	08JDPcPb85n7hd5IshotCvEsKiHXjPuS+MgshfzSyHm045DDt467JK3p25KeLchtY0ydkOPtDck55
	B86eS2/H/8dfsAC2k8RBcR+R5X8rc9xkLkkZ7vihaxB65NI/rop78Vd7xkV37cxiBr05D4rruyWtv
	gi/LwOPeSsL+DpyMPftM4zkLQCb9w4qihjMvUscvJnLhsI4qRN98sBDY6YWi/Qg6Ul/VQ1+a4cM7T
	uZss4EmWGHPR9SeE3VzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCWC-0000Pg-Ai; Fri, 05 Jun 2020 13:36:20 +0000
Received: from mail-am6eur05on2063.outbound.protection.outlook.com
 ([40.107.22.63] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCU2-0004wx-0G
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:34:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ikV7Rcv8JXCfNZdAzTGCqfLajDvhu/llvusEasUNbPRLY88eYcn0G71e33F6IVKruEMcK/hHd8Y/JetI8musbslqOKvpgORk2VvKn3dVsmXvPWK3yJCvnkIZq3Ys4QORhvjoYbvKH16Y9PR+Q5KgdUSZD8D0B9z3A6W/Lbhii0chcTub4/O1L4zSGhPQPQe3jRKffkM1cfGE4Iw6GlyBzsvk/1QbW4OsG1U3Us6HIdqSurd7VmPRoXdLBr/KNL6Qn2quealHD63vtMiN1t5ajKxGmeC8cNJ9WO3e1plxVVj2GnriJt26dCtZQMS9VdZCfeEXja0AecyYR4zB18VBwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Yx0IR+9/TNLsZpIgHM8O9jKDpTRHMYZbaruFg9y6So=;
 b=XMhE5C2dH8vG8SGKQOPSd8lZDShP8d8PL3xCEz/P38INYQVFc7/z4xVh3yonCFPRDLT96F4Y73yQv0DrNjInaO+gvhWWPq/mRSnM2G2AB3JMJAwNd5hcJ91zM/rWFL6k//uM/F/zf4pl6m/jdf3QLuIIdPbHTtG2jPAs70uKcEnV5DfYS+2wddy425YDfoSCgEkFdaqqXr95hnMiCo2fqMrayM8cabf/j0mgv1T8O+QvrnxRVc5o3ggVFPtWFZN9a/VEcMyOeyu+P1eJSWxuivDa3YuNQdkIrRTEBS8h0jyHYEoZpsXsw9ILVDii3LJ6tTD89aYL4twbRQ2D8+Yucg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Yx0IR+9/TNLsZpIgHM8O9jKDpTRHMYZbaruFg9y6So=;
 b=gapvx+5Xwp5KmG/axyFETJClvvbXViMNNtRnR2oNXaabcii1lcMskdag5yB4Tx+VUiO/WB7e5sl7iGqHdQugi2SXCd4ooqhVHZUOkABMmW5HgvDe34oaSWfUaEvQN1d9yvnD1hRN56U9YQGVpsAZRhlyqecokAzJJdcgG2QhtNA=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6702.eurprd04.prod.outlook.com (2603:10a6:803:123::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Fri, 5 Jun
 2020 13:33:06 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.019; Fri, 5 Jun 2020
 13:33:06 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v9 07/14] dmaengine: imx-sdma: add mcu_2_ecspi script
Date: Sat,  6 Jun 2020 05:32:28 +0800
Message-Id: <1591392755-19136-8-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591392755-19136-1-git-send-email-yibin.gong@nxp.com>
References: <1591392755-19136-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR02CA0048.apcprd02.prod.outlook.com
 (2603:1096:3:18::36) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR02CA0048.apcprd02.prod.outlook.com (2603:1096:3:18::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.20 via Frontend Transport; Fri, 5 Jun 2020 13:33:00 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 166272d3-054c-4548-fd84-08d80954faa1
X-MS-TrafficTypeDiagnostic: VE1PR04MB6702:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB670292C0A469CE77B3DB043289860@VE1PR04MB6702.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:361;
X-Forefront-PRVS: 0425A67DEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: epUF6zqoB1WPAloD2sjtZ7Q7OazIUSAp1pYVv5xez+rxMn2no6RW9NlEPtEgqe7/ZlZq91fxLj/1+vGC0V+7tTwV7nNxpHTOlR0J+ZxypDW/hQfAWhZbb9WTxlBmiMzCJyQY1yl9qddiiGvNWTEONUg7UuO05Q9eA+uqEtRFgSetJgwcO9RwtWgiiz9zLZgjlINH6N2xTD8C1nKBWNmnpVAgyP0QvcnG6DSm92B1sFVG1PltMJqs4cq0uvTP4jescGiFhlKwUWKKMbLx0UAPyRtg9iPbejtZUTE7M4+3Q9gahDe4c+2GqSi3S60TX1BC/s5AmPaOgkAQ5hzMqZ86PvwQDhpdeCP8vFjGIfm1/Tz1HZ0IL0st7nyqjWg4i+2J
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(6486002)(52116002)(2906002)(316002)(4326008)(6506007)(5660300002)(26005)(66946007)(2616005)(956004)(478600001)(66556008)(186003)(8676002)(16526019)(7416002)(6512007)(6666004)(36756003)(8936002)(4744005)(86362001)(66476007)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: nZkEXHjT6vhJXzE7Z0kdUGu71cpQJq2OqenbVMS07k2cm+wuCtQWHb8+6NeM9DILEBjsveQKYGjXO0qWVeVYVgWKvoecS5r3bpSwYzOB9qK/CX3Z3PIieq8vmzNgG0gXDkjO5DsWy0OV4EPtGPaNoNMcC0e/99E5j8nf+6tV5l/AOAiOTkxu2k25wISM3HXEGPO8m1AfJ2OAyFnHWTvxekDFmlMuuxYGSxRPAJ0pLH3h9FEbChZguh2MKEHsUCz/IbHW2e/P6Wpd3w4/n2CINUxR/USbiOjWLR8loIR2r/rBYIyAE0em3ac6g8tbvJ57s5LbGdGtrLs+RXlhZ9Y1PrGrQBSlkM6MN1QNBwDLcDD40OJjILSBlNPhjve+3I8KW+wVLnswt6Jb7wdQsykvImbiVqRUAft5EMondZKEr3sa0L2fVpcYBHzl12o45lIj8mIT5e2DQceHaKQdZxFZ1KytCxIBger/LhQx+02HJ24=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 166272d3-054c-4548-fd84-08d80954faa1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2020 13:33:06.3496 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tou9LDo1EFl7hR788owv0B9uqPRzlFnGQLpq6kJ9lzRAjBMkDMMwbXXIEqdXDtt1xEkRQ4N/wxmwBhdmXuKjmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_063406_107038_56C55E11 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.63 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.63 listed in wl.mailspike.net]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add mcu_2_ecspi script to fix ecspi errata ERR009165.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/dma/imx-sdma.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 4440ddb..db4132f 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -920,6 +920,9 @@ static void sdma_get_pc(struct sdma_channel *sdmac,
 		emi_2_per = sdma->script_addrs->mcu_2_ata_addr;
 		break;
 	case IMX_DMATYPE_CSPI:
+		per_2_emi = sdma->script_addrs->app_2_mcu_addr;
+		emi_2_per = sdma->script_addrs->mcu_2_ecspi_addr;
+		break;
 	case IMX_DMATYPE_EXT:
 	case IMX_DMATYPE_SSI:
 	case IMX_DMATYPE_SAI:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
