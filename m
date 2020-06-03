Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306A81EC7E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 05:44:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iI3m1hDOca4CiryQSFUzUoxkySjqziVMAmjHC6AocDM=; b=u3Nst9H+Vn1gmt
	vjgUGpQXLtV6XOZLEs3LRnUWUPAnxBG2iuSAgVl9x0ohcFBpXU1gQAylFBA4vM651u2FboslOotaH
	dnC5aWoD7MFnX99hGGjgUDeWQ8MaTo5VUhBUhpc+YHNQBEGPI0XbSxG4PBelN81utmUuDAUI0D4q7
	f5vv9XZtokEMF0qg67r9zIUZbgZGNbam9zeEweyUgUXD1ffZbfR4n+Qk2Pw5E2CnIVc6kC5ZRWgdD
	gi3WOrHoG3zMuuuQrTzxW0FNxpZQfgZmVMvSOLoZfDC4FvIGFNuzv+3s7uBrv4blENBIHXTeHe14m
	Wx4DLlSfg6bJKnqBEk3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgKJt-0003Yk-6D; Wed, 03 Jun 2020 03:44:01 +0000
Received: from mail-eopbgr140081.outbound.protection.outlook.com
 ([40.107.14.81] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgKJ2-0002zC-Rv
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 03:43:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SlNIjUYOJlxrC2unumwcLF6S64uhIVBRkEwv0s8GQZi57R8qbbVbLWFs+msrZU5T0tql7sTMsxwz7v6syCRUYqc1JRN3Kd4ZGUQMAei4fblh8OYFWYYs8LAFFmEIL3eauqN1JiLGHfsHQe6ZvNUZYopHALputhlJZesr0pImH+gc0Ex/bivWHFWXxfWn5xNPby08GgGrzEkIkWFNqBb6hwng9134YpGgQYEErJMmWF+wwn+5Q09yOLAYhq3R1GlWKkKqA0VKVLDr9AWDOVePnJRp7X2zKZtdmKrCKRIu7IIs3ShJhIBjdqhpDRt6pENHWJgxlCy6W/KA2wCt7hV48A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kTNMJKnmzYPf2aJxxbbqOyDbOxZ83LKwA9t9cMSoDrc=;
 b=ihWGcpGnqfLi3g8EnX/aVY5M9UUsqCFUv1eNTdgAz/37CuEhCppdwqNOEb5J9YGIOvFG9M+CAU8BzflZKuUisZKbVjDKXhABc1Veh4lWBVmzSwu3tS9LgN243ubRepTSBR+4xcBksq3y3yRzaqLe87K8N5iM0hrK5aBaTpHWQ6TYez0M1k19/oSj6coZRvWJmlbc30sD3SYrLy5ZX/boeTkgnmcPvEwNOqWp9j9AYmnLmpwoo5r0oUQJayOVZ8OqC+VBwL6QsFmwiBc5Gmow1EQYVM24Ti1w4eyuECmGa/er8N1xeM7hveQNwi0waVkvWeRkFv012doCtS/zS7zRKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kTNMJKnmzYPf2aJxxbbqOyDbOxZ83LKwA9t9cMSoDrc=;
 b=PalB7dLgHHUS0gDQDqtHZ+TP0vxIwja5ZBuo6UfpFpYGXDzVwHm3SwrYrO4/yj49NhQa27EAjkyxrIo08ZpEV4k0StWsPCYHyA1S+hv2sW+7JZqxWc8TuM4VdrnxvODgWP7vDZ+Pa0LqjprRbijOBe3GeeqrC4QESdB9VWt1Pg8=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2854.eurprd04.prod.outlook.com (2603:10a6:4:94::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Wed, 3 Jun
 2020 03:43:06 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3066.018; Wed, 3 Jun 2020
 03:43:06 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	aisheng.dong@nxp.com
Subject: [PATCH V2 3/3] firmware: imx: scu-pd: add more cm4 resources
Date: Wed,  3 Jun 2020 11:32:23 +0800
Message-Id: <1591155143-25972-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591155143-25972-1-git-send-email-peng.fan@nxp.com>
References: <1591155143-25972-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0198.apcprd06.prod.outlook.com (2603:1096:4:1::30)
 To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0198.apcprd06.prod.outlook.com (2603:1096:4:1::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.18 via Frontend Transport; Wed, 3 Jun 2020 03:43:01 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 179f7631-e8a4-4e07-1748-08d8077039bb
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2854:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2854D6B4F6C7D20A2B7F2D5388880@DB6PR0402MB2854.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:364;
X-Forefront-PRVS: 04238CD941
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n2rTxUQu1ABJa9DW8s8Wp5d/nMbeDB4+cH9AkJkfNQI1TV2QT6H4LxpUt/s8SdFCVQw558RgoBipsh8nNG0EqBzYoAks274R97A1kNAyiajCJIjYgAZK6xsBUbQuSP3lCcDIcNaZz8T0BWgSdyAnycBSqhFvqKGVeZ7xbu7DJwL9cL4GLkrYgcWh2fNWx0dfFyFmOzQSRJUlNDxBsU7z2iamv4CDeMGDSDExLhm+mViA6N4iuMrVs1POSvmzdq9/h2fpfy4J4Kv42+tEy70cP4EWO63aw7wwDVrPLd1VZpwOaNrz/zGmiZ09A8WdrHbHehYJe1QMhOgY05sSYTlt4suEarmcmoe4A61SiZ6LUXXHSdRGQ9+xIwvtYqItFiZ7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(376002)(136003)(366004)(346002)(6506007)(478600001)(186003)(6486002)(36756003)(5660300002)(26005)(66476007)(66946007)(66556008)(83380400001)(2616005)(52116002)(8936002)(16526019)(9686003)(316002)(2906002)(956004)(6512007)(69590400007)(4326008)(8676002)(6666004)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: WIQ9zoCDhMHz+qbwvHMf9pShut6nJebQa4s7m7TFFB2a6QVbUp5DCJ2oAOqTKzxCLIW4kuRRYJhHGiOhdIlb5JI3A3oI7wvagS0zVC1oMA+CG/gWrq8n/Cny+AHR/65H/uIsDKWDTIoDFV3pGmwwDAHwK1qxF+4/0Vw/KNrleNPtLc/G7GQcodebN0KzsGIPeTpYqbolh/C0oM2XQ5W78pLzTkMMkBxVxR7dB26/otVmKb9aXQkj6ir9zshOP2lEvUy3+FjilyHkupWxlqQnf0q7U4/oxWtrjY3uXFqJ9I1uJBYlCKcrl3zuw7ZkVirGJutHIBcIej/KmByGT7f9CNJrH1FdCh1lZdSpIdVIOxQRY8hRwu5taak/fY3cFTXJ/KNSofkpzUXPL3TlNazbPsDHrZ2TtEsEMkLkJ7s3Mt83rHNqBr4q+dG0PC/z1V4JQELJlD4WTLtesHZqHZn9uvh7oxLL8WqUMHE3tH8xdEDnDhAt3f1sUzJS6mI33PCj
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 179f7631-e8a4-4e07-1748-08d8077039bb
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2020 03:43:06.1088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3jKuZ940WDB7GGuo+utZ/QOv/2vq3AKBiSWW1c4EKbMTK2VPcPaiFSOmn5VQ1sH5N0vR1VzYSVvlq1EzaHKV/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2854
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_204308_964117_D6C2CC88 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.81 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, festevam@gmail.com, qiangqing.zhang@nxp.com,
 linux@rempel-privat.de, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de, leonard.crestez@nxp.com, daniel.baluta@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add more cm4 resources, then linux could use cm4's i2c/lpuart and
could kick cm4 core.

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/firmware/imx/scu-pd.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
index d1b313fa7b96..af3d6d9ead28 100644
--- a/drivers/firmware/imx/scu-pd.c
+++ b/drivers/firmware/imx/scu-pd.c
@@ -167,8 +167,18 @@ static const struct imx_sc_pd_range imx8qxp_scu_pd_ranges[] = {
 	{ "dc0-pll", IMX_SC_R_DC_0_PLL_0, 2, true, 0 },
 
 	/* CM40 SS */
-	{ "cm40_i2c", IMX_SC_R_M4_0_I2C, 1, false, 0 },
-	{ "cm40_intmux", IMX_SC_R_M4_0_INTMUX, 1, false, 0 },
+	{ "cm40-i2c", IMX_SC_R_M4_0_I2C, 1, false, 0 },
+	{ "cm40-intmux", IMX_SC_R_M4_0_INTMUX, 1, false, 0 },
+	{ "cm40-pid", IMX_SC_R_M4_0_PID0, 5, true, 0},
+	{ "cm40-mu-a1", IMX_SC_R_M4_0_MU_1A, 1, false, 0},
+	{ "cm40-lpuart", IMX_SC_R_M4_0_UART, 1, false, 0},
+
+	/* CM41 SS */
+	{ "cm41-i2c", IMX_SC_R_M4_1_I2C, 1, false, 0 },
+	{ "cm41-intmux", IMX_SC_R_M4_1_INTMUX, 1, false, 0 },
+	{ "cm41-pid", IMX_SC_R_M4_1_PID0, 5, true, 0},
+	{ "cm41-mu-a1", IMX_SC_R_M4_1_MU_1A, 1, false, 0},
+	{ "cm41-lpuart", IMX_SC_R_M4_1_UART, 1, false, 0},
 };
 
 static const struct imx_sc_pd_soc imx8qxp_scu_pd = {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
