Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC3215B83D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 05:10:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSq7ays1TBXs7P4icWtpEgYVrRt2n19FxFwncH7wObI=; b=mV2OW0DwBFWBHW
	m5Nsm8hx9a7vpDkquMQfroBV/LlmQMYC0+TAMsD3cyJg5coHD+s1GxdR4dvRC4dI/CtWcWpL0YLTA
	18y7u86gnBjFSNWLB6HBiPMtoQHU3YMmNa83eZTtzIz7hAP2vFrQR08uycUV6waHi4iyWZbtaZxl+
	X0EbpGHL6a1DahEw14rdalPRpwa2O8NOblzuVqR0oodAyjqxVypp8pHOrc/SVNxF1T4Zo+Wfz9m1P
	mFXwCNndNB7uz+af5dJjks1Z3UybpqoZ3W3qE2LE7fYVGhuUOZ238iJj8TyaUpz9Yi1FnrHrYLRjU
	JHTVHbiaOwhL11cTWE9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j25pp-0006i0-ME; Thu, 13 Feb 2020 04:10:41 +0000
Received: from mail-eopbgr150078.outbound.protection.outlook.com
 ([40.107.15.78] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j25p5-000567-B8
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 04:09:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kregBZuqd3qvFCkFaGn178GV/81ky91UF8QDjtReTK6xICgLsKpZa9M3MbKEQajbH8SLtuxknYq1xCxlffbRmBhY0eG+3Jb10h8r1F6btR3qk8EutjHwIDmKxutmDa1xz0rpU+I5aArmbh2uA2BWquAW06E9DUSroUdyUvVxz3922VfmYTCEPlgqK4FtqNTJ56ePDCXvEPLmMiLdfArvFFIAILa2GwyWXtkvpPxAXbhxqB1BYZwN+Jzsg5ENHy3yFBmE4Fe/yCX4uGGc4sI/NSo6VoUm3aMQWn8CDdXQYBkwuximV5X1J4M6JVuqFAWaZiBqN3nNE3lvN8V3aMzV+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6BMK3L4YNaO4pTsyC2JFNReHXIGIgxUiBJp4uxq7xfw=;
 b=EgOmJ64KUu+Q5sa9+8EzqOsfggPi9/LoB9X660wFOi410BxLjLEje1z1XVut7gGTA/aPyo8sB3rReDt0oenir2nM1PASOEX3IaLqU2J2pb+Z2A/csUKkUPW7v/03JdHntuFNaMi5QG85Xr0MamDgCuVANTnvs+mOc4xOwY5ZvcJRqJjYkaQOIOneDWkiIyHb9zEmVjLkTzBTTeC2s+jyRT7k76BSJR+vOeef/n9PE0tNOC4WXvzxYBDAHmVwo7VLEiwikil4khXFtsXm3vnkWF0SQ9gu7okVXGWUd3cslHWxAKlG1rHu8d4F/oag6E3t3VE1ymkSLRbGQn1ul/JAQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6BMK3L4YNaO4pTsyC2JFNReHXIGIgxUiBJp4uxq7xfw=;
 b=eYXrvQJKMvug9jAjBBcGfZBbuVSX8AZ/tUe1gd7WjrDih0iZyhIxMR6TlMlY+LB+X9ekBCKgEj9tmNF4CFlS2iTuW/jT+GhaYUf/DTAlRDmVLhFhyrA7d/g7uyJGwov7mznQgaZKnP0krfIAdgF9CmK+csWoUQktwqF+XD4Ms5A=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB7084.eurprd04.prod.outlook.com (52.135.63.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.23; Thu, 13 Feb 2020 04:09:53 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::104b:e88b:b0d3:cdaa%4]) with mapi id 15.20.2707.030; Thu, 13 Feb 2020
 04:09:53 +0000
From: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com, robh+dt@kernel.org, andrew.murray@arm.com,
 arnd@arndb.de, mark.rutland@arm.com, l.subrahmanya@mobiveil.co.in,
 shawnguo@kernel.org, m.karthikeyan@mobiveil.co.in, leoyang.li@nxp.com,
 lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCHv10 02/13] PCI: mobiveil: Move the host initialization into a
 function
Date: Thu, 13 Feb 2020 12:06:33 +0800
Message-Id: <20200213040644.45858-3-Zhiqiang.Hou@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
References: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
X-ClientProxiedBy: HK2PR04CA0069.apcprd04.prod.outlook.com
 (2603:1096:202:15::13) To DB8PR04MB6747.eurprd04.prod.outlook.com
 (2603:10a6:10:10b::31)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.73) by
 HK2PR04CA0069.apcprd04.prod.outlook.com (2603:1096:202:15::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.24 via Frontend Transport; Thu, 13 Feb 2020 04:09:47 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.73]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: bbdffd89-46d9-47b2-9f76-08d7b03a9398
X-MS-TrafficTypeDiagnostic: DB8PR04MB7084:|DB8PR04MB7084:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB708466793F76B5CB61329E4D841A0@DB8PR04MB7084.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 031257FE13
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(396003)(39860400002)(346002)(189003)(199004)(36756003)(6506007)(5660300002)(26005)(66476007)(7416002)(66556008)(66946007)(6512007)(4326008)(52116002)(6666004)(16526019)(86362001)(478600001)(1076003)(2616005)(956004)(6486002)(69590400006)(81156014)(8676002)(81166006)(8936002)(186003)(2906002)(316002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB7084;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: elhHX0b3ftTPWpeWxMK2rKF3EcriVteOb4tevyKdbVDArc0LOwaoc7XYxRLe7QXOlky0pZ4rD2ub0X0ay472ifwp2WO4QceaWxsIWGLzw0+BB7gOULTFtdFXlGvY3v63ve53COk4IrAduBexxcP5WBZFG4jJkH9GT9NXXVvhneEesGX5BQKknfAx1RGWXdCoKDbr3yLez6dEfKdsL/doepAtBbrN+fgGhbYTW+kSRXuc5kdVIkSI8XtqEXeEsEV5s59wpc098EP2GwuePOeTR/BM1mCXLLwY8ATg/mzsEzSEbVP/utGsx6AZrM+4K3V1vRKRzzNxlXsn3ZN8/7Y/R4OzBpBZXbQTU5ozj5ckA008v9e5oa0zbWimEQObqX8zWs8/MoIKhftD7Y0f6LV+rIpLyQUJVbkNnDaxtPhK33N8sUkJtEECBA8x/L9762Om6ElTmxHSRf80VPitWn3CkHyQJHGyYDADC5RT1uso8Eoy7FLphjO+xZQ8k9ama+cMkS3UsSOA644GA7hmjFPvxU6XlIGeeNPxqWij+fEvyWASbGnMbKLa8UyrT3HtAb6rVuUqJ4FilzGud0+t0e0ccA==
X-MS-Exchange-AntiSpam-MessageData: 949HfIhyL9JITX5WobS7BdPIwTMUkBxqESwdFYcR0/EYdaXN/QHirjVBU/pmfUKtyBU7Hal1IXaUqcfDiidIH+NA7IhtiyDsPeiYOImaioH55MaWlZmQSorh/bEi239Y0iaq0pX6Or8giyS0DbQaaQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbdffd89-46d9-47b2-9f76-08d7b03a9398
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2020 04:09:53.0227 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e2LcEdE6hImC7ouzAxGj4NHDlAM9F1obHUBrxGVmYVYP6MCT1PPHeC0gXlE22tcWa/QO82ad+B8CEqYcRdV4ZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_200955_400691_4002073C 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Minghuan.Lian@nxp.com, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Xiaowei.Bao@nxp.com, Mingkai.Hu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>

Move the host initialization related operations into a new
routine such that it can be reused by other incoming platform's
PCIe host driver, in which the Mobiveil GPEX is integrated.

Change the subject and change log slightly.
Change the function mobiveil_pcie_host_probe to static.
Add back the comments that was lost in v9.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
---
V10:
 - Refined the subject and change log.
 - Changed the mobiveil_pcie_host_probe() to a static function.
 - Added back the lost comments.

 drivers/pci/controller/pcie-mobiveil.c | 39 +++++++++++++++-----------
 1 file changed, 23 insertions(+), 16 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index d4de560cd711..01df04ea5b48 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -873,27 +873,15 @@ static int mobiveil_pcie_init_irq_domain(struct mobiveil_pcie *pcie)
 	return 0;
 }
 
-static int mobiveil_pcie_probe(struct platform_device *pdev)
+static int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
 {
-	struct mobiveil_pcie *pcie;
+	struct mobiveil_root_port *rp = &pcie->rp;
+	struct pci_host_bridge *bridge = rp->bridge;
+	struct device *dev = &pcie->pdev->dev;
 	struct pci_bus *bus;
 	struct pci_bus *child;
-	struct pci_host_bridge *bridge;
-	struct device *dev = &pdev->dev;
-	struct mobiveil_root_port *rp;
 	int ret;
 
-	/* allocate the PCIe port */
-	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*pcie));
-	if (!bridge)
-		return -ENOMEM;
-
-	pcie = pci_host_bridge_priv(bridge);
-	rp = &pcie->rp;
-	rp->bridge = bridge;
-
-	pcie->pdev = pdev;
-
 	ret = mobiveil_pcie_parse_dt(pcie);
 	if (ret) {
 		dev_err(dev, "Parsing DT failed, ret: %x\n", ret);
@@ -956,6 +944,25 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static int mobiveil_pcie_probe(struct platform_device *pdev)
+{
+	struct mobiveil_pcie *pcie;
+	struct pci_host_bridge *bridge;
+	struct device *dev = &pdev->dev;
+
+	/* allocate the PCIe port */
+	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*pcie));
+	if (!bridge)
+		return -ENOMEM;
+
+	pcie = pci_host_bridge_priv(bridge);
+	pcie->rp.bridge = bridge;
+
+	pcie->pdev = pdev;
+
+	return mobiveil_pcie_host_probe(pcie);
+}
+
 static const struct of_device_id mobiveil_pcie_of_match[] = {
 	{.compatible = "mbvl,gpex40-pcie",},
 	{},
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
