Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E8718134C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:37:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tkDmLmGC1zXo4bw+HsUWaJe1Nu/W9YwXsmN/igPJ+v4=; b=g4rzKFPeSJvUk+
	ec0lrm1AC+eBxGWe5rT22N3dJgISYXljXLjCoXr7EJUA6pcBOyayiK9afVIEcTyVwk8ziIsdB0K9L
	EDRjLk0MHjQkLr19vwx7Drwu9et9tVgD2Tu7E2t5bqVUAzSns5Dx7nuwaX304BQocPyronjef2p2B
	oen+6VP5nttkiZ6JtF16V8apnOAZihHxoDHhaJDPrCq1YNKP3WkiSp/5ceX/wmb48nQqY24ep5vu2
	O5IOTCXve20+eJ8Nsnk6Wnd4xt8Rijt/tZz5Juz3bxuV64vG76fjkMOyEhRAIJcmQvvv71Ee5wqW0
	B9FaK77wa1BNbV2L5zcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBws3-0005s3-B4; Wed, 11 Mar 2020 08:37:43 +0000
Received: from mail-vi1eur05on2086.outbound.protection.outlook.com
 ([40.107.21.86] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwqH-0004I9-8G
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:35:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b5SUwrKOIPVwSVKG2i1CXVHir2GUdoO9MFxme9ymTpL9hbks+sPOSQqTib5Yjuyl6ux+kWva+RpjievK8UqvgRC9wkedFQUG+4Y9EiPyvmwaENC7fN1fSFxnkBbgRIsatFUgYe/WdT+7Bxjvm8+uyj2u++M4/RJgK0ouotWy+sjtkrlGv8FiEh4gx/1E4Q5Igpz0fLe4DUAcXSa/v+903ECf8fqLSOwkiC7WU/zpwAThwQOpWxxfRp3AZjIG7yddEW7+WaMINhPlZ1fSc/8XJ1byoRbaybFI56f+yma6Tra2SY/+i9RV6CSXE7vhvDbLU0+kyjP3sJJ9xfdjAg4TAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DZVGY7HSfJlKI0KpbP6KFaPYGNl35gy4W2Hb3NamZjY=;
 b=nWEoqZ8hct8MlBSBrrphyLMrzmu+clZSs049tz57NiDaBZJ5u0ka09tAa4u39TGykIpPeJxrqfIQsrlalncj8qkl5ZrqGDFLMsVh3/dpImLpNby4HtXxfHLQCv8o/t4Im13OAv1TZRtv3luHjOBlZpxelrsfG6phPe2xmMNlhprK86YddZxraLEBSv7amXpS9zQa7FIxZJMnP3k5v7OaEbRITdTrklYPtAjQLI8V/lprqgLqPpqr+EuW/i1VB0VP7p5XbFQ5d1ZMPGqwS3ohjtd25LANpnYqsZwycX5fNjSkPC9hRuFS6NQOgI4p+6sxYAdBa0KjFjQYh6Ci/iqksA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DZVGY7HSfJlKI0KpbP6KFaPYGNl35gy4W2Hb3NamZjY=;
 b=fCxRMYUmpi9ZwM/ahsQLJptAHv/PcUo8kbkdmMNtproVCbfMEPZd3guyjQdVSz1/Z9Exz89w1PTn3ffl+/+KEhsDlg1XUp4MmFpz4Z8/jQNdqS+hMprw5xMhfBSbELMcRDKOt/vcw31Y0KF4xrmY9BL23I5DsC9KP9ZE5AdROdw=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6462.eurprd04.prod.outlook.com (20.179.232.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.15; Wed, 11 Mar 2020 08:35:49 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 08:35:49 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [PATCH v7 06/13] dmaengine: imx-sdma: add mcu_2_ecspi script
Date: Thu, 12 Mar 2020 00:36:29 +0800
Message-Id: <1583944596-23410-7-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
References: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR04CA0158.apcprd04.prod.outlook.com (2603:1096:4::20)
 To VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR04CA0158.apcprd04.prod.outlook.com (2603:1096:4::20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2793.15 via Frontend Transport; Wed, 11 Mar 2020 08:35:43 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ff8cc8b6-5f86-4de6-600c-08d7c5973382
X-MS-TrafficTypeDiagnostic: VE1PR04MB6462:|VE1PR04MB6462:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB64629A59833729EF66D77D1D89FC0@VE1PR04MB6462.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:361;
X-Forefront-PRVS: 0339F89554
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(346002)(136003)(396003)(199004)(52116002)(7416002)(36756003)(5660300002)(6506007)(8936002)(478600001)(66556008)(66476007)(66946007)(6666004)(316002)(2906002)(86362001)(2616005)(956004)(4744005)(6486002)(81166006)(16526019)(186003)(81156014)(8676002)(6512007)(26005)(4326008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6462;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +XWEZpbpTpIcvNoNPoNCa/sQIkngmk7ZCVP/gX0yCKshauRfWrz+tl+RKAybnD3r8/3QsiI6zYjuMfGJDnKtYGc+A+pJuVFIUMJgqb6JwxRJGJObCDjfeM9WwlaL7xJxRG5u6wjYpITJdN+jqK2NaUw+9DuAbg0nFnyCFPoji6cOTJiyOYJJe+ybtBmfqmnZrTpfo92PgCGi/Yy7bbyzFm6kme6ls19dFOMu4W11YZBQ2ZT01M2CtPfUNhiuVhrc8TmdaonR6qijdvDtaamRdqUQtG6JJWSFLER0C8l0EmMY8uRPoYPgjLd7LoNyfEEZPO1Et2FkTDd6yYlJFEOyCgs3o9Mk2ROXuXI40k7lFwLuR1yZlNLYg5GmeZV48ma3FASC4VFtkW2lEE+Na64EyY8zzJVWjBN/9YQY9VjwC1YFnRi3zJwny46wMHcmtrMlrdIhtv64DOP4Kwx8/07hbBI+xRkZZjZxbfN/zGTCKhczSP87GHgpYn49MBBqzpVF
X-MS-Exchange-AntiSpam-MessageData: rzpRji5kb7Z2NGAMpq2fqesrr0CCKTIBw1mUq3093mqMHlJ7+ysoElxnWyyL/1GyW1gjJXBkBiUsmtliTcibRsIpslWCdYUxz6Ct2ZuPmWFSBkOH/69dgu8tF5VRkBFf2oh83iPJIkD/kELB46mbww==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff8cc8b6-5f86-4de6-600c-08d7c5973382
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2020 08:35:49.4248 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AGS5K2NIOcCLORJNI7VWwRsix+DdhNi9Mx1NPScd9YUfAwpKsPGfw4EOh5WQtfCoZD86a/hHzlkEdPltGYrZKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6462
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_013553_381329_4EAD2B35 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.86 listed in list.dnswl.org]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index 69ea44d..e034375 100644
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
