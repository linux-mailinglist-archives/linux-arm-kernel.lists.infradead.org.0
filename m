Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5D5186398
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 04:16:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8K0ruoPJBqSgnFAaWChLxmEBSa3D6isK9S3sOEWK5U0=; b=m7HELJBZdVxszR
	RfC6bmltQEng3RQ82WCSguC3GLOtlPYfz03D4vF7BKRPAp5b/5DWcb/6+ktRYG+fQa1ZGs0OWa/6u
	kjdqJ88Q/6zEqqBtNQ2WPJ2IgXOGJWjkyA+wTIN/iShYNVvXskhAml0pZVBz5MpRbQJK+ptZh3Shl
	otTDn72P2XZ6ow1YcFoa2zCv9YhgIlTONr42ItFo8WTxODX+kww00x2zpAN874ROKPI3+n61sui65
	VAAG/SPtMkH7N/TVRx/bnOWcaCotAFMW0q2ybBXgInwKztg52UEpBvr1S2bvBOYW9BjqdRqLtOdmv
	yik7PfZ5DjjcarONw5mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDgET-0006UX-0N; Mon, 16 Mar 2020 03:16:01 +0000
Received: from mail-eopbgr150049.outbound.protection.outlook.com
 ([40.107.15.49] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDgEL-0006Tw-2Q
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 03:15:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fFErWGu852fv//9sgQIpLbZNgLE8Cdw9SOj/l2fdCNF0FVkCLIRAHQijCrWhTo+jjKBwxQNCllxagSuoclL5XmklekVpwAUkdtpEqCKCBJ+o40CE2XfeCwjZdqHEJe87XuThTtg5icu6H2mtaRlVCSasatH1jdUsnn1it2nmwMNnRLY8KV4TH8YFjL3AtxsgHYEhFvQao4RJLF+HtwYxH2p9uq+mib8kXoUUq6aFCXklnTLOLbx6BHqxSZXDMFkB1puXKRhoOxyVbVFGEZ2Tl0O63AcvrvzK7/J6oYoCgdqwjRUnEpnasgMaPVuEWJTVN5IRtnTHO7FFAEhkLhEe+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CFpcJfWftyCyHL3ntM+JubuiOiojkiOMfrs1o5LdxuE=;
 b=aXQ3sIL7VfHIAam2uqHLUF12lFLbHIrEufM62v+HXo/DvPoogRs0Et4hgPp84kHy4qzJSqJRf26ZTVikr0vy3gGI7rdpYA/hXbcWXUSTfOqP0YsZ1zdbQ3KBLPKrkR/D11Uv5ptg8l6bqvJdMZlJKklwLU/R4+WYCfjKdwvDhDsTHeyiZoCtlPvbOg2ywpNngXUKUduNelKJQ5fCNOdp6xeDIO/L4Ygr0lnbPC8XtXZnvLMOrPU5dHOh5C96wQAG13HTuX6+8ZiIzoY5ohyfmrbIQvTIbXU04SS7BkyC2O5Ca0JwE45kXWTgbQx1hO+a8meD2CZOHujlFgA+UAlRgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CFpcJfWftyCyHL3ntM+JubuiOiojkiOMfrs1o5LdxuE=;
 b=hEyqCr1FD+GF6YOU6/fuJfr/vAULhERjWYO+fAUHPqY9MOb6Iy2NQOCXmtfd/PJ2VgKfHWobLLWLYhOEbvW9ec/XPOonG60JjsXagmK1AhlQicp1jJnv4Lr1V4Jcp//1cfK4OPVp7Lv8o2GIM73v1KfWXuGr89tvSy89FCfTlf8=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4225.eurprd04.prod.outlook.com (52.134.91.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.21; Mon, 16 Mar 2020 03:15:49 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2814.019; Mon, 16 Mar 2020
 03:15:49 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH] soc: imx: drop COMPILE_TEST for IMX_SCU_SOC
Date: Mon, 16 Mar 2020 11:09:02 +0800
Message-Id: <1584328142-11810-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SGBP274CA0013.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::25)
 To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SGBP274CA0013.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2814.16 via Frontend Transport; Mon, 16 Mar 2020 03:15:46 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b60b472a-ae99-4789-d3ed-08d7c958537a
X-MS-TrafficTypeDiagnostic: AM0PR04MB4225:|AM0PR04MB4225:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB42253903013F267F80A6D59788F90@AM0PR04MB4225.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1775;
X-Forefront-PRVS: 03449D5DD1
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(376002)(396003)(136003)(346002)(199004)(2906002)(2616005)(69590400007)(4326008)(6666004)(4744005)(66946007)(478600001)(86362001)(66556008)(66476007)(956004)(26005)(316002)(6506007)(186003)(36756003)(6486002)(5660300002)(52116002)(6512007)(8936002)(9686003)(16526019)(8676002)(81166006)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4225;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YyAMpjpe1W5ka7bQxpUjbVPj2uAcpfzLaOKT/69CI/9KYe80gY87rOSmuj5RmzXrBix6hi5bmI09bMZCKtwwEbMSclaCVdSA9LlFardm0PuShbZpHOHuVg8yRsMJDaR3zg3FrnA8pFfAipRju/pPC8iMLQYrbnfm8rxEJlde7qyPMQ/rB1iMmJqDiOepJwOrNGgxXDFUAM4xGyXevX4h8T2zs2JZMb7YmGP5y/k96WcoVAge5GgvtNE8YdIGJ3af4NJMA3Vce6N5/qNj7WdLTyk7dRfV9CmAO5tXArSikHpjxCyf8pdmE8TQRZpYX3s97hgsJQ2u2Cqdb5dlk+3mha692LUZB/DCujdgbDtvUz9JDjy8T9gtQ2VH+dIX0h0e+XIFIO3278BK18c4tF9C/Jgvg/DSEoa288BBwjD3QCECGfiKm4mqk7jEn/kKCMDmwrqqidHoGncuZfxDbucM6s3MGxgRAPyJu80gqXwgl+63tvmc0M23iHywdSiOyB0o
X-MS-Exchange-AntiSpam-MessageData: FvgLiG0KB60DusRGQ3RcraBisx9woOQVu7TWb2kDkv30DhGOGarwmzBUiYCQTLBHIi9t09B3RWcIF9Kk2oomSozBIXET8dDW0sIVZW4zjzqc0PGZIUZ+hH1oE1vXRFB6alXg7yY9AbcqmPQi6Gau+A==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b60b472a-ae99-4789-d3ed-08d7c958537a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2020 03:15:49.5285 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YigBz5+szbxTznNEoja8FLF1lIZ9DRg1kvHhyrY0BDmeU4WLEzXDJ3DmMQgKvB54MWNcZmqp0KSldTZ1CaqkwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4225
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_201553_114101_6F43D038 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.49 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

With COMPILE_TEST, there will be build error, because IMX_SCU
might be set to n, so drop COMPILE_TEST.

Suggested-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/soc/imx/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index 0b69024296d5..b18271e99d4f 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -10,7 +10,7 @@ config IMX_GPCV2_PM_DOMAINS
 
 config IMX_SCU_SOC
 	bool "i.MX System Controller Unit SoC info support"
-	depends on IMX_SCU || COMPILE_TEST
+	depends on IMX_SCU
 	select SOC_BUS
 	help
 	  If you say yes here you get support for the NXP i.MX System
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
