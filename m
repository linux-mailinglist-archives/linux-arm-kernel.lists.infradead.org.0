Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55ECB190CAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 12:46:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LpFGIDl69YSd5AK4XhAe8Sa93ip83rIsxDrx/Pog1S8=; b=WW1Nnr0xDf53LI
	4Ji7UZ8azgSnwA/NX117OmVp34aXuzfIBwA2WFKw3JQH29u+11cryV0XY83BZ3yTj4eHA5OnKTx/z
	jCuTawVtgEgkuWkB8l3LJG/a6H0OlLFXv81GQgbN7T7MvRWYQ03pQ2JxasBZf6YqqOibvt6Tkw0w5
	XHzPVHuZ6GkyJzT8A/LYaGxF5q1TZh3jIwVtj8Bm0n/Wm1awhB36b6qNAcvlftcI6egu/GsbtNVwq
	qoTfmi30vC1sYrJhPXLl4EywdH3ivOduRELU3UcdgtxO3GzhdcrM2KkLt2VEmPA8g07Yy9kJXxAWl
	8Y+M+qEsXrVVqpZA25CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGi0w-0003dk-4u; Tue, 24 Mar 2020 11:46:34 +0000
Received: from mail-eopbgr10074.outbound.protection.outlook.com ([40.107.1.74]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGi0f-0003Zq-3W
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 11:46:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lafBX4jNGaJsTFcztBUX0QBSIbD/0GvauIuEaIjzTTCZQE3hyPT/SdNoUhqQmpurmCBhVRRMvuKgonGdcOLlx4aRAJp4ELdTs6/E5iF26CmuU8SBDerLI/BRKb5Iw1PbHvH4LbNIeGlwUTdi6iWClGm8lw1c+mNE7qcWk9SM6BD/UB9znJGCA4yZ/lVCnUi/FitQvS5cQgu5kMKeKFAqaBTCcBX3G2doJogrMV1Z829umt4xGKF2Fr24C3n/eH9ybq7xtQjoYItI7idaA3kpa3RMwLKslDRHwvvfvzDTVcvW3/X/kcRfPNldg7KeV2OeQZF3VAFpPEqTMJq0S1RmaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MrAsPuYmzomTw/I6ERXcbfE6GbcnkxdExla3dKaOzEA=;
 b=AmURlWGi0QFsSCNyWAI1Hx7KxVQGRKyQ6EG/XFmss79oGLmksFRACzwjnURFVI/XiQoqxhWPGerMECRvO23KmsTedaZ1C/FHY486K6hq1QHAAFp4OqBwBkSIQYElxICKNOQFe9PUPOL6qyDWtUjPux7SKqigDmrBE+MUDj9DvSEAluRz0LUrPILzjOR3/sNZzhgELNXIS9EMQOjdYfzI7ReLw8c/jqTNTwA9x0jmdoHFaAscYF64BJBSNRBZr4jEsZq4IG1GE+dLCaYUNVeaZaixAwzOOZcb4+ye9JczvUmoTGCTtlIxL8SncEkSDhGjd+n1jCRDx2AUBULnz+cX4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MrAsPuYmzomTw/I6ERXcbfE6GbcnkxdExla3dKaOzEA=;
 b=aSCul+BBlRQEsUILCRhRfiRNHYbAhNdQWEHB6ShYvTdRB8m+4RjfakpFC39D62WzLXJeBb1mMu5KY+m8xbLNkUuf4OQkR3BfId+VG2jxxbwHJKNl4yP6XGZIGxUT3LaBAoPjNKY1uSp07WJlmt7Fz8/3GTvVl3ZidrS+hWyNITk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com (20.179.2.147) by
 AM6PR04MB5960.eurprd04.prod.outlook.com (20.178.92.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.20; Tue, 24 Mar 2020 11:30:35 +0000
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e]) by AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e%5]) with mapi id 15.20.2835.023; Tue, 24 Mar 2020
 11:30:35 +0000
From: laurentiu.tudor@nxp.com
To: robin.murphy@arm.com, lorenzo.pieralisi@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org
Subject: [RFC PATCH v2 2/4] irqchip/fsl-mc: Change the way the IRQ domain is
 set for MC devices
Date: Tue, 24 Mar 2020 13:30:21 +0200
Message-Id: <20200324113023.322-3-laurentiu.tudor@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324113023.322-1-laurentiu.tudor@nxp.com>
References: <20200324113023.322-1-laurentiu.tudor@nxp.com>
X-ClientProxiedBy: AM0PR06CA0036.eurprd06.prod.outlook.com
 (2603:10a6:208:ab::49) To AM6PR04MB5925.eurprd04.prod.outlook.com
 (2603:10a6:20b:ab::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-101.ea.freescale.net (89.37.124.34) by
 AM0PR06CA0036.eurprd06.prod.outlook.com (2603:10a6:208:ab::49) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18 via Frontend Transport; Tue, 24 Mar 2020 11:30:34 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 577bc46c-18b4-48dd-7fb4-08d7cfe6c53f
X-MS-TrafficTypeDiagnostic: AM6PR04MB5960:|AM6PR04MB5960:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB59608B613DF87E931B2077A7ECF10@AM6PR04MB5960.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 03524FBD26
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(39860400002)(346002)(396003)(366004)(66476007)(6486002)(66556008)(66946007)(6512007)(2906002)(9686003)(478600001)(81166006)(8676002)(186003)(16526019)(81156014)(26005)(52116002)(8936002)(6506007)(1076003)(7416002)(2616005)(5660300002)(956004)(4326008)(6666004)(36756003)(86362001)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5960;
 H:AM6PR04MB5925.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OERkQ7HtHAfQxhonHKHm4Y5Gfthd3eiypd48WInDiBAtE4M1UMLnRBPtGMUq9FZak4h7jQQGTapQZoDh5J3uIVRt7hN07l9FwD6EB67Dl7/RicJszhJP5pHb1f4JsxuVThVbSTwEe1cG9BdN/9GuPvVkk/RfMDc9uW+08wC3pi3++UMkft0qp5ZH227/z0B9n1coR3PmO+IWZkiP737WBZzRPeT8YeMXhbJXUFWTH3g81VIhj8TAYFCFwS96gJobUpzispYKxM8y7dHpMWXte5ct2aEO1RiKS5iujweNGMyaDAr4F8yKy+XZpJSMTMr3n/MkCAYfYrXF0XrJ1JrLIqNVu7Rl78UrTAihTp6aPmtaL484YnmgGKqa3OXqDSB+JkVIrw0ez+fACekqirD/pvz6UEcxtxRZ9asKiT8PIUyhlCmWxSDgB6B+9d0Dhf+b
X-MS-Exchange-AntiSpam-MessageData: Jm/A0HUqw3ODNthJdHsYHKzuAIJ9TjuYp8PYjQ4xwGkjKRlHGNIYF4p3u4XmW/7vGbT9jpfBQ+0/S2R0n/3fhsLkHcQj6vTojtf2N7Ip8ua6R71AOzfyWRUvTklkDuMtf4qNvgorqDUO3k1DkqSORA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 577bc46c-18b4-48dd-7fb4-08d7cfe6c53f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2020 11:30:35.6944 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zb2j1MEL2CoQkh3DBCQ/Dnv3kC0wtJYMFFrkYUh8Ieh+trAOkYJxx2BGdRbeJPVlz++Ppw4UiUtWM1KCcts4qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_044617_163609_05130222 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.74 listed in list.dnswl.org]
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
Cc: calvin.johnson@nxp.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 pankaj.bansal@nxp.com, diana.craciun@oss.nxp.com, jon@solid-run.com,
 jeremy.linton@arm.com, makarand.pawagi@nxp.com, cristian.sovaiala@nxp.com,
 V.Sethi@nxp.com, ioana.ciornei@nxp.com, tglx@linutronix.de, joro@8bytes.org,
 jason@lakedaemon.net, Stuart.Yoder@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Diana Craciun <diana.craciun@oss.nxp.com>

In ACPI the MC bus is represented as a platform device and a named
component in the IORT table. The mc-bus devices are discovered
dynamically at runtime but they share the same fwnode with the parent
platfom device. This patch changes the way the IRQ domain is searched
for the MC devices: it takes the fwnode reference from the parent and
uses the fwnode reference to find the MC IRQ domain.

Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/fsl-mc-msi.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/bus/fsl-mc/fsl-mc-msi.c b/drivers/bus/fsl-mc/fsl-mc-msi.c
index 8b9c66d7c4ff..1e2e97329781 100644
--- a/drivers/bus/fsl-mc/fsl-mc-msi.c
+++ b/drivers/bus/fsl-mc/fsl-mc-msi.c
@@ -182,16 +182,23 @@ int fsl_mc_find_msi_domain(struct device *mc_platform_dev,
 {
 	struct irq_domain *msi_domain;
 	struct device_node *mc_of_node = mc_platform_dev->of_node;
+	struct fwnode_handle *fwnode;
 
-	msi_domain = of_msi_get_domain(mc_platform_dev, mc_of_node,
-				       DOMAIN_BUS_FSL_MC_MSI);
+	msi_domain = dev_get_msi_domain(mc_platform_dev);
 	if (!msi_domain) {
 		pr_err("Unable to find fsl-mc MSI domain for %pOF\n",
 		       mc_of_node);
 
 		return -ENOENT;
 	}
+	fwnode = msi_domain->fwnode;
+	msi_domain = irq_find_matching_fwnode(fwnode, DOMAIN_BUS_FSL_MC_MSI);
+	if (!msi_domain) {
+		pr_err("Unable to find fsl-mc MSI domain for %pOF\n",
+		       mc_of_node);
 
+		return -ENOENT;
+	}
 	*mc_msi_domain = msi_domain;
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
