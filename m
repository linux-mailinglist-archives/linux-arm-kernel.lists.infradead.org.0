Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5094218875E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 15:22:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFdcZPjDpZaQaDvcxaC6v+fhgB0EDPdTnQG5wxE0g7o=; b=bg+gM1lqpQCZgT
	2T4RJ61C7jUmX5I+Sh7uG982S6C6qfMIS08YEVlhp5d3O78e99AQWv0OMEQw50RVM+kw6eEIEIJX7
	naZeOysgEhUoocEjAFzzypYS6qzD4sk9kZIXQubH2GWBhpQeL56Y6Fx09hxCe5CZ04TRuzoxqIP/9
	Itsjx8z8sdDMBFdcsdmiaFvUejmVo77tWV9yShMV8aRH3Q//cQ6xQz72xxqg63QmxCnTCZAtF5jmD
	22cPlQknEFUcRf9BPh4U7X2MMIMnyJ9laUpXAPlckPV+UoLtgzXXeuKqoapTJwxq6qm2NVYz7GHe2
	j7kB4lcaa6K7KfxM2axg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jED6P-0004GX-K2; Tue, 17 Mar 2020 14:21:53 +0000
Received: from mail-db8eur05on2045.outbound.protection.outlook.com
 ([40.107.20.45] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jED5y-00046k-Gp
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 14:21:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dFzDCOuLJ3NaNm6ENYa+mS57f6qQK3gGGMI/Zbh/Rj3ubx2BijU446GxXtLX7ND6eGaY6XJ1mEY/JXagqqGzbiJQKxZ9wj60PJfHgk8SPyLHgJB8iJphmc4hQQKDJQCfjH7KuRg44aDumGqlpv8YR/pGLUVJZzRisrqCmaQosWdTxXh6DBPah+S3yrBt25i5gAwlA0d+9asi0O+1XRQTAO17PKwkkBcr0uY8jdEUhcLN+8msBGCCgVzlSgsvmUgd5k76yhFFpAZJs4SfapltMjDX+GGm3erDi6IoDPTIALHLAIe1bqjPVrnuR2CjXzajbbnRvaJ+/9Hjuuca1+NPgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VPj5X1gl2PdatTZcZuFhLPksS7DLcdToHbQEUyrV0dY=;
 b=PkSh7SebL1SnyREH14AcDITLLqTWFYm/DibEbbk/1WlvtmyUToTkf0YrlkkOJcC74xAWftX3TD2YS2fs6C4Gr2Ya1nHYWuPrMHPdE8JVM4uPJBJH/msqYCxRvb24ResXZRNiaGnz0KSoplAsCMn5o0Qo+KtcfEsp5GIbE0B28o08nFEwqFMt1A7tRLgGQU24uRpW2p7oQdjpiKq2eZ4oUveFX3bJW3o98QIeBYcnU4T4yXWjh/Ldj9wLOVfyc1URsMJFhLCq+9YzdtbHSZ7ss4IvZ3reRi7zKaMn+FgIUtR9PHZIk/yE069q6euIYLjRK0YJyJXE7IVDplOdB/VLZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VPj5X1gl2PdatTZcZuFhLPksS7DLcdToHbQEUyrV0dY=;
 b=DRszfRy44XfWdMAwItxHeoZ/a9ge/8JT/YFGxenWyJKQ5QBBPmdkLA4ea3P9TMJu4CefI48ilV9AfRKXUNvpxeG0f1wlQzkUZxxGlFafAC19da9Wm2qQ5Ue4WnkWG9oac90/ytfNlz5rFfBBUWnKPdyAEBv5NQk7pfHFr+/rilQ=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com (20.179.2.147) by
 AM6PR04MB5416.eurprd04.prod.outlook.com (20.178.94.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.18; Tue, 17 Mar 2020 14:21:19 +0000
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::fdd6:55d:c03e:5818]) by AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::fdd6:55d:c03e:5818%4]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 14:21:18 +0000
From: laurentiu.tudor@nxp.com
To: thierry.reding@gmail.com, robin.murphy@arm.com, will@kernel.org,
 iommu@lists.linux-foundation.org
Subject: [RFC PATCH v2 1/2] iommu: arm-smmu: Extract arm_smmu_of_parse()
Date: Tue, 17 Mar 2020 16:21:06 +0200
Message-Id: <20200317142107.28776-2-laurentiu.tudor@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200317142107.28776-1-laurentiu.tudor@nxp.com>
References: <20200317142107.28776-1-laurentiu.tudor@nxp.com>
X-ClientProxiedBy: AM3PR05CA0105.eurprd05.prod.outlook.com
 (2603:10a6:207:1::31) To AM6PR04MB5925.eurprd04.prod.outlook.com
 (2603:10a6:20b:ab::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-101.ea.freescale.net (89.37.124.34) by
 AM3PR05CA0105.eurprd05.prod.outlook.com (2603:10a6:207:1::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.15 via Frontend Transport; Tue, 17 Mar 2020 14:21:18 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 761985ca-eaa7-40b5-5d35-08d7ca7e75c3
X-MS-TrafficTypeDiagnostic: AM6PR04MB5416:|AM6PR04MB5416:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB5416FBFCC28038221C50E47AECF60@AM6PR04MB5416.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:561;
X-Forefront-PRVS: 0345CFD558
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(39860400002)(376002)(396003)(199004)(52116002)(1076003)(8676002)(81156014)(66556008)(8936002)(9686003)(81166006)(66946007)(66476007)(6512007)(7416002)(5660300002)(6506007)(6486002)(4326008)(16526019)(186003)(26005)(316002)(86362001)(956004)(2616005)(36756003)(6666004)(2906002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5416;
 H:AM6PR04MB5925.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Dj6RFZlyCSyI/E3yczuYetwd9rx5kfVakXc/wk5OExX2BKQLUppYb0MD/9Ji507Yma4T6nNzuCPWc/vZzT2c+0g6rEgkYK1TJuiGN5FckqQjgsi7hD4k9TcBFYJ/RZcGcM3sMede0fyXarc1SYgM+9SlM5vEWaSrdiOYprUW3rhErOfM5ZWbklB8YeEUk4pp60EUgR1NK/VQWokrNuZDNfeuGLNpu8acDGWOSByNZOfgkO4UD2J0LfQyoQcmLWfrKMe6ha3Qnp2jJtl+p6D/+Hbf/lCqYe1H+dBGsAmyvtZkatixmkiLEDAsQCJyQ9ZL+rmxUyUiB8XaOoWN/MlB7JkUbcWTYyFYkRcWHUA1AfBdg86n+J0C+qZJRIKrQ0sGBipRYKz6NWzt6Ke4HPR/0Wple2N2ru4JvF21l0U723s09lg7B+TsgUIPX+gxJTYX
X-MS-Exchange-AntiSpam-MessageData: V/W23DkVGWQ76l2Dl9VkT3NZFQU81P03ef5UyerXm3QcPXCxoZ8mVHMY54QoJnVGkYV19+DRdAGHbmGq45hlpB++p55tcb5XxJDK4gIC6GNAIHrSJrZagsOaj8+1TAV0eTrU+8iKGNmnuWUsUjeRVA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 761985ca-eaa7-40b5-5d35-08d7ca7e75c3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2020 14:21:18.8880 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GDLSJl+E7+tWUNwWwqvcZ2sPrPHkojx+3cBwJRfAq8uT8hShS4PIkL/vC5GMjZXftO3Y8/6IaWXpCY81Ui9UqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5416
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_072126_573856_74A09804 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.45 listed in wl.mailspike.net]
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
Cc: saravanak@google.com, pdaly@codeaurora.org, kernel-team@android.com,
 diana.craciun@nxp.com, linux-tegra@vger.kernel.org,
 Thierry Reding <treding@nvidia.com>, pratikp@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

This function will be subsequently used to extract stream ID information
early, before a struct device is available.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/iommu/arm-smmu.c | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 16c4b87af42b..8a238d5a4b51 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1584,18 +1584,28 @@ static int arm_smmu_domain_set_attr(struct iommu_domain *domain,
 	return ret;
 }
 
-static int arm_smmu_of_xlate(struct device *dev, struct of_phandle_args *args)
+static int arm_smmu_of_parse(struct device_node *np, const u32 *args,
+			     unsigned int count)
 {
-	u32 mask, fwid = 0;
+	u32 fwid = 0, mask;
 
-	if (args->args_count > 0)
-		fwid |= FIELD_PREP(ARM_SMMU_SMR_ID, args->args[0]);
+	if (count > 0)
+		fwid |= FIELD_PREP(ARM_SMMU_SMR_ID, args[0]);
 
-	if (args->args_count > 1)
-		fwid |= FIELD_PREP(ARM_SMMU_SMR_MASK, args->args[1]);
-	else if (!of_property_read_u32(args->np, "stream-match-mask", &mask))
+	if (count > 1)
+		fwid |= FIELD_PREP(ARM_SMMU_SMR_MASK, args[1]);
+	else if (!of_property_read_u32(np, "stream-match-mask", &mask))
 		fwid |= FIELD_PREP(ARM_SMMU_SMR_MASK, mask);
 
+	return fwid;
+}
+
+static int arm_smmu_of_xlate(struct device *dev, struct of_phandle_args *args)
+{
+	u32 fwid;
+
+	fwid = arm_smmu_of_parse(args->np, args->args, args->args_count);
+
 	return iommu_fwspec_add_ids(dev, &fwid, 1);
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
