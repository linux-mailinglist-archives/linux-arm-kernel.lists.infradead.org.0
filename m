Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9945F1F94A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JloPnyVD2VtEalLayLDuaNCbX+ykck1fbHgeJsuBxaE=; b=XKdIFF6soSQGcv
	c0X+MMjyaaYX5dRvLDTWun2YaD+dY58ZMsfb6P9tg++KbNf5Wha3nynAPEMZoo9hG9yECeWZY1jbt
	01ve9j2C2gKfdjZWUaCFE9VRB0BhMxkuYIt1lk2iC+Ivv6xzi60hgSsDzBAsQiM/0MYBRjZqUh3s2
	FynnwbqawWwNZzB17AqxLkS/xMXng7i54dpwm6glqJbUqnyXh2Nb0czbLCuSzT2e7huve4QqvFCnL
	XMh8qDHCmVC6zSviy+wA37/G0G2ONmO2Yd7lrZobFZdeePKrq4eTHNEmPwZIZiGAXHzh1hVC4by5D
	o8jkvuRktrxBe9xc2pvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkmQD-0007zs-DE; Mon, 15 Jun 2020 10:32:57 +0000
Received: from mail-vi1eur05on2041.outbound.protection.outlook.com
 ([40.107.21.41] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkmQ3-0007zQ-8A
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:32:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HbdSavLDhFc5ZZ3OnqjEzjGhFefNq1q4YPKkBwifx1DBwVxH2svcplhvlIFDe4+vK5C+Ctei4OSNPt2b0U4yqcyZodjmhlMUTdkBlBY38xu0Q3LPPzppVcbrbYUyiDI2ztr5TIwgfY9P1WrLqxc4xrMTsEFLsDfHqPilxX7edP1Co6KzvpJzxJ100L9wtSKUQcxjr9remZQUISRkYZSqbKItq6m0t8KSqM0DyheXPO6wSN+ydILBJW4o4j4DvHn2NwhKjI7vvyBo8AUGqtTq8AWRJz2/RmU6EBOg/+8KbWa14tQPS3tccbg43wnhv5biBeJy5xSEdmrGy34cmeJ6fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PB0n1ep6nAbDo/vNnHPUtZ5o88XOFgIodNhgAOioVRs=;
 b=oE/PJjM+q0t/R6h5zmTU25ykorQXwXMYogTS1r2YFDsorvmmvy2mViEyDonUkvJ7nccctmOk540MCxx8FtMKDQ5WFIhTuxBEKFA9dS5juH0g2GsD4TNcVLHxZCpDj0SDqRLyIH2kx7pX5NIJaa/Tg1nCssWudtskVe/tz0v0euBnAaaxuwR7lmU4jNNFP8yM19zYTI8igIe1IbILK7rV4Ep2FQIpmd5ei7KqzKW4oyhS3Gk5ZEn+7I4dCK68TY0qGNbIfAl0WiNGeu4DRv0TUyhkdTT5cQWi0aacDIvVqtRN8+a3TT2MqwSnGvKU+2o2nxe5dWmIG9AxxLKmAi3mpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PB0n1ep6nAbDo/vNnHPUtZ5o88XOFgIodNhgAOioVRs=;
 b=Uv//z8K2BLAf20oVJP9S4mtn381VF6g35ef43R2qYFuuzcfbU8wye2aIfsF19iLtAuVjJWd199yBkZJR5H3jgymr2rmtLJZkD8ko77PGRG/C+gVu5jIXZq1KlQj54HqQBfeos+FFqM83cbI3/k8V0EdZABqQYlvaw2DnCt8t52w=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2712.eurprd04.prod.outlook.com (2603:10a6:4:99::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.24; Mon, 15 Jun
 2020 10:32:41 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::2d36:b569:17c:7701]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::2d36:b569:17c:7701%4]) with mapi id 15.20.3088.028; Mon, 15 Jun 2020
 10:32:41 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	aisheng.dong@nxp.com
Subject: [PATCH] soc: imx: Kconfig: force using OF when COMPILE_TEST
Date: Mon, 15 Jun 2020 18:21:25 +0800
Message-Id: <1592216485-20574-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR06CA0102.apcprd06.prod.outlook.com
 (2603:1096:3:14::28) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0102.apcprd06.prod.outlook.com (2603:1096:3:14::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3088.19 via Frontend Transport; Mon, 15 Jun 2020 10:32:38 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6781f557-18b9-4bf7-c966-08d811176ebf
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2712:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB27123A28859A7BC90D4A377D889C0@DB6PR0402MB2712.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:901;
X-Forefront-PRVS: 04359FAD81
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rkdhH+YLqtB1oPT7fCo1sYZChOWMmZXXqWWvVYo6W4b3NnIlAS7zVObWhKipkfaLdaMJvFYJ8dEpSLeUIQxokrooomdBi936hzYTQ8itUTd94AZOm9yf0z7Qx4fAMJVpHJeDCslUVaLZRXKlgmUigS7DdezBr0eTuUeBd6T6Z0cfa1wMncEJVhytb8lDto1xh2ChHtBlXGkpIjqCPXPLtfOLUbOq1eG+o8HqfQOgsEl78kCgrJl+VVyo33RXQ50agDXywi577Op4ozst0mwjkJw1nA0N+P9gwTDUx7cX0dy2gX5nOtmmXJyxwShB+Hoh0oSFB3GSCbitLvFStR72K6o04fKTZWdg/A1MV8CtK9hT19iuxSLNXDh+i3nOXgcN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(366004)(39860400002)(136003)(396003)(346002)(66946007)(2616005)(2906002)(6486002)(8676002)(36756003)(9686003)(8936002)(956004)(6666004)(83380400001)(4744005)(5660300002)(66476007)(66556008)(6512007)(6506007)(69590400007)(316002)(52116002)(4326008)(86362001)(26005)(186003)(478600001)(16526019);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 4JS0vAloko/103JpaBJLpdmGekXuVeXs+JvFuIJcMidyR+suyFOjs/TObDYMICedH5l2LNU1F2qphNLQBiF0rPLUjv259tVjy3H55ia5mtbUTDji1Sq3/x8mTTb8Rg5q2OQ7cOPAAaQujHHBE5ynEonjXMuTxjCgCg0T+jJsVzUwzOYG8xbSmeV75SYDFFnEl46fk+maTi714h90Kn7miOcHmkp7CfYlYuiZ9tGg4ujeW0HjN3K1ASmcoCf8bYCCUUDzcEEXMPIV3rKO7zV+HnHppAvzWa0davS0XdSMrQZX+9lL7S5KB260HE3usTCH4QPmU/hMP2Z/bCFWdUhXF1OnlpUQ7Ha+cC6uAJsfdKXm37cB1713GDP5K8b1nzREKxuP9AEwmSQCwtk1v1nz+PFXNMqxBaWCVvgj/knoUMZGSq/btwZNxWUcRabax10usY9cqAYvStUWdyFMhnk6rix1XYraaads3WwMC0MZr0rjj/KI9Hl1gSYCKQHQNMUC
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6781f557-18b9-4bf7-c966-08d811176ebf
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2020 10:32:41.6696 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4od15o1888hXtIvT9bm7eB0dtZ1PtPyqJO+UHko/Q6wtleWilf3lpVMF20O6cBf/7ElyrkRId3eqc1T8CZO7Zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2712
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_033247_368862_7808749B 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.41 listed in wl.mailspike.net]
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
Cc: Peng Fan <peng.fan@nxp.com>, leonard.crestez@nxp.com,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Fix the build warning with x86_64-randconfig
>> drivers/soc/imx/soc-imx8m.c:150:34: warning: unused variable
>> 'imx8_soc_match' [-Wunused-const-variable]
static const struct of_device_id imx8_soc_match[] = { ^

Fixes: fc40200ebf82 ("soc: imx: increase build coverage for imx8m soc driver")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/soc/imx/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index d515d2cc20ed..aadf13c9d396 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -19,7 +19,7 @@ config IMX_SCU_SOC
 
 config SOC_IMX8M
 	bool "i.MX8M SoC family support"
-	depends on ARCH_MXC || COMPILE_TEST
+	depends on ARCH_MXC || (COMPILE_TEST && OF)
 	default ARCH_MXC && ARM64
 	select SOC_BUS
 	help
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
