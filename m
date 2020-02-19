Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE34163DC4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:35:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kcC8t3o5IWuHXJ9+Apo2En6khCblPkmLvuxu0dkuNnI=; b=qHA4yPHd/d3WKE
	bC2t28sT2EKfWh3Jjj8mwi/UG4zTMRZcAd+1If6FSM/ZMjEU6013k/4RdwkPU2FZGcL/HcxJ+IsLb
	hXPXZTZ6Wqf0rwIiy5QboSLetLJFnbqFBXvGtZS7xE7HJJ9o1QLNU9qdXxkqGf72kOLH1yl35mrKb
	4l+vYdnXC/9YNU1zJO72Rths03wkf467n8pV4NRwMwv2eWXXNpyhTZeOZFhcAmqEDQsl7fXlCL1mp
	828b8Ms5WyXIzQRWiv89DIZE9FK8zpSu4fXRQyPz29KH+CYItXY78YDcmyv5lF2RmChJbum+vv4zD
	g0MyL8NXRwrioLY6nRJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4JtB-00082j-Nt; Wed, 19 Feb 2020 07:35:21 +0000
Received: from mail-eopbgr00045.outbound.protection.outlook.com ([40.107.0.45]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Jrl-0007Cn-BV
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:33:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O+1R8zP4ZeWRwjJYN4W0F+D4jWmJyznrNZATteGMdZPCiLPUpThexAo6W4AHUeK5oDS0Gdu0jBymWg3J+VH29I5DPHirEMWjoB4lkv7i0gjVqSKaniS8hzdtjyj/HtMq1xwKPMX6w3nb09ErF4vjaQqSTyxJbk6qeR6ymWoSNMbMRYa24mkaFqL/Bfg7bA/fbgAMxAq3/11a9JyXPtCFUrLMF5gZ/gBlvJI8F4reehzdjRQqk1vrqMRQwHWhFwtj8ZwxsmALWZ2M0Ffhczt9mK0RdiiYqxt4NFWx4TBxnFrZ15clOa3BuhvCk1CytG7tL6HUq3PiFb+xEYVamEbVuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+qCILug04ayhEfedFyILsM0cXXdxMb0n+5FQBhiCtvo=;
 b=kmQE6EGLhdgKcb+PlpgHB0+8cNeNYwcNAMM3MvtawHuR/zKP/wEKHRtlPi2bHqhH8RtD+X+S/R6OZMWtqCa+0jqMdQ5VLeN9kS+zey9sA9nUx5522uoadvCLZrKi9t0eeI5kpFItcmaOkIBZwjzHzBuL66AIjbIrWMvUYbH3+7SboGKea+6VhzrpSIqaNBNcnnsNIyYIbalydqOMV4c5D8ErRb/ZMMzFvvngQBIXqysCQhWc3zEWpQqUkA3yZXeDcHD/awwk8zEU66wu3fF/7fgAZyTBUQSf4Hm65ozd3Z8tmonviwrF0nkg0jRIrJeDO3FqzQxFEBuzV4mdT7pX+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+qCILug04ayhEfedFyILsM0cXXdxMb0n+5FQBhiCtvo=;
 b=kTBKUSFERZVNTrKCdzLjGmo+d+bFw+30BQJ6WugXtt4ujWB4wjmv+FXFCBjvRovnYwDBjtAh6sgYK4jSNUqBp6SloyZPUwpX+0GfwuV7wXGN3tNfByepeUBzqEmHzBJqitJfK37N5r2aKsldFe9eW/NQ6TYfGuxOI84Kf5Hq5tg=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB3969.eurprd04.prod.outlook.com (52.134.95.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 07:33:50 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 07:33:50 +0000
From: peng.fan@nxp.com
To: ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com
Subject: [PATCH 3/9] remoteproc: add support to skip firmware load when
 recovery
Date: Wed, 19 Feb 2020 15:27:39 +0800
Message-Id: <1582097265-20170-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
References: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK0PR03CA0115.apcprd03.prod.outlook.com
 (2603:1096:203:b0::31) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR03CA0115.apcprd03.prod.outlook.com (2603:1096:203:b0::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 07:33:46 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 13e3cbc9-b313-46e1-1dd1-08d7b50e1026
X-MS-TrafficTypeDiagnostic: AM0PR04MB3969:|AM0PR04MB3969:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB3969EDDE27632E931F1C72E488100@AM0PR04MB3969.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:568;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(366004)(376002)(396003)(136003)(189003)(199004)(66556008)(66476007)(8676002)(478600001)(186003)(52116002)(956004)(81166006)(81156014)(7416002)(5660300002)(4326008)(2616005)(66946007)(8936002)(16526019)(316002)(69590400006)(9686003)(6666004)(36756003)(2906002)(86362001)(6506007)(6512007)(26005)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB3969;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1I6HbkX6Ll/Dm/0MgNppX+vD54De+DaHoCUDBj1OThOlti9GLYfXGGOUJPeOpDypnQSTxDRIYFKrPKwZyXV1WhGoorhwPOC5EESB+jSubFqVjLmeSQH5ziCiFrDMzL7se27BHKouJHCDZwIZvd0ES0GH2YpcG9Zhk+GYAbVzshwrZeycGxuYZUGJmnFOb21WGXmCff4FQL6GagfrP7Pvil2ks8mAEXBq+hrG9Y+QedZbc5lZS232fjVEQB8cOE0vUsXgxg/UZlbAKf8z3928oxQjDqE/hqp8LBEMRH5gqXkROQW8h0wZyz3kLQ4munSy/4eAaGTjUcJq1R6NnXMfKzNzwUEMDYe3KxyZIiFu5zpv0wtbc7sFh2KBnTpvj1K9L/JKhxnjHG/PHaf22EnjFPhE/kheyO+ZW2GoOT1okZL1g4C3+6//9tc+QyX4UAQL8mEg1w8oQepm+WCFLutgO4BZoVZjEnlW3u7I0ooNFO6KxuNT5TZvS6o5mdrkbSt2mOOSvmKY8lScFG8ii+VrMK1ldWBwuHDT7Dg3Ae4UnC0=
X-MS-Exchange-AntiSpam-MessageData: /SCSUIRJHQLQY6XpjGsXwoGiyDG2RzPGBBldfAnDb16BwMcyGxjDTN7jVn2hCUk12kuXoY+1YJTd2N616rcMhrbK6FI4lcHELBUF4WbU0lQUlvaOlIUf4bDpYu8dv2J+ms/8/K9/c+SSe4qCf9uJQQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13e3cbc9-b313-46e1-1dd1-08d7b50e1026
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 07:33:50.2906 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bskIFBC9QqxDLcNAOAz3VgsR2GPMhUAQwPsPWjCcJc/1Y+CbJ45EKQkVeh4ej6v/ImhTDNdzyCKdcwLgEPV1bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3969
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_233353_422707_18E53F9D 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Remote processor such as M4 inside i.MX8QXP is not handled by Linux
when it is configured to run inside its own hardware partition by
system control unit(SCU). So even remote processor crash reset, it is
handled by SCU, not linux. To such case, firmware load should be
ignored, So introduce skip_fw_load_recovery and platform driver
should set it if needed.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/remoteproc/remoteproc_core.c | 19 +++++++++++--------
 include/linux/remoteproc.h           |  1 +
 2 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 876b5420a32b..ca310e3582bf 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -1678,20 +1678,23 @@ int rproc_trigger_recovery(struct rproc *rproc)
 	if (ret)
 		goto unlock_mutex;
 
-	/* generate coredump */
-	rproc_coredump(rproc);
+	if (!rproc->skip_fw_load_recovery) {
+		/* generate coredump */
+		rproc_coredump(rproc);
 
-	/* load firmware */
-	ret = request_firmware(&firmware_p, rproc->firmware, dev);
-	if (ret < 0) {
-		dev_err(dev, "request_firmware failed: %d\n", ret);
-		goto unlock_mutex;
+		/* load firmware */
+		ret = request_firmware(&firmware_p, rproc->firmware, dev);
+		if (ret < 0) {
+			dev_err(dev, "request_firmware failed: %d\n", ret);
+			goto unlock_mutex;
+		}
 	}
 
 	/* boot the remote processor up again */
 	ret = rproc_start(rproc, firmware_p);
 
-	release_firmware(firmware_p);
+	if (!rproc->skip_fw_load_recovery)
+		release_firmware(firmware_p);
 
 unlock_mutex:
 	mutex_unlock(&rproc->lock);
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index 4fd5bedab4fa..fe6ee253b385 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -514,6 +514,7 @@ struct rproc {
 	bool has_iommu;
 	bool auto_boot;
 	bool skip_fw_load;
+	bool skip_fw_load_recovery;
 	struct list_head dump_segments;
 	int nb_vdev;
 };
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
