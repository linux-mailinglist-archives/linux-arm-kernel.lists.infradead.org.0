Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E2C1DAA50
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 08:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QvhnfGJV1JJit4XlcjlQhF6cjv8MuTtbE5/GIoYGpXE=; b=Lkc1cpBreSYg4P
	dIedAuHdJWArWNAN1wer1dWVoYmfzxiN9Q3j84d9EQnGurheTqfJkQ/UCLK2ftcwkGjSczvlznnsQ
	TUu5zyMyeCnzy3fktJnvybr/wVB/kpnL5hIzdIiQVOnQfMZ0e4SWAvgkO6ftmNWNyvNfL0edNVJQz
	BsIY7ML7vyqzXdquL6OQ6KS+qzA4n2rErOcFQcS4S/SOPEY90SQRKEmHm0ttt7p+VAomnS1ws136e
	qXxUK8rA2eQCb20TagL2zm3PL6qQ9qC2Uv03rdUkWjN2A6aCNw7ITkNuvPUo070QtOcobJTREPHdx
	wQ4o/SjpmIZbJxdamGEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbHoI-0006Sb-42; Wed, 20 May 2020 06:02:34 +0000
Received: from mail-eopbgr70042.outbound.protection.outlook.com ([40.107.7.42]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbHnR-0005yI-Io
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 06:01:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B6ASWrAe/y70+n7BGchIQ5sX6+2/dWS04Q2NU8BdSyhU73j3hRHAC6W8tMuVTiBs2ZKIGj64rfJ5IDn9mBGKAgIKO0ICz/9b6kTCjnmXIhTwBjQybZaSqQuu7RXukOQHZ8hSB7kXvQI8ndCLL1+TyziDN/G8fwVQD+7+OxIpBcxwp2/vbgrIjUWv++6xkTgeCp8hdej/TkIuGh5v+lg9yzZCpBelUcHCIwD9H8h+AabPcpfvYUVzNdY/82vHBbNLZpF2rC0iuFvzcqi1Ee0ERIM6l8CGL3Dd5vPiE8S/X2R0nRtIFV44u9lm3WtWYtagqfXSgwSpztOAQRmJjBgKyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gMmlLBIO2EW1mEDrbxUCq5DrtctmJuawlVaXE2qzKag=;
 b=hRVbinoVe2k9sRlE5BN5nHjAuEvwRe2zl6vcRx9jtcDSwxa9HN8nNnS0FFaHi2gi4TGLEOeXCs1dg3XvFW/gSArozR5Oxc3I+m1gcvGxQaU7mUx9baCTY+rTodCwI8riJWIYtaRSCQYncKQ4ACWnl1uOuRPTEWSK2jpENi1V7A7WWt/O4o6Gw8aUnrsCy1Eolfab4DXcR2S1+wE52ebVGkJL6IlAI72XnthMob4Bynmb55ovb05wDEhzDQT0+XxjVit9y3u8OVoz/NrRsiAwMW7gNb+GBanGqpBboJ/klnfpoShSve/IcyPb1MTbostpaf38T1EG8jRKMqtRhkuFwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gMmlLBIO2EW1mEDrbxUCq5DrtctmJuawlVaXE2qzKag=;
 b=Nr66gr9i/HkcMfbxku9kymc67qRfHMpAYksuvLk16Msp0ROaUKRqGVn3z7UrRrJ/6JhEVO88yl7+inRg3pnYKkXCEcQdMq1Zkkodw/XiC0t08HLk61jj0ATjjpQtEp2c8TCzSDfVdqxs6lHU9MWc90PpU1FgrWl5uRqhtzyBsTg=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2790.eurprd04.prod.outlook.com (2603:10a6:4:97::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Wed, 20 May
 2020 06:01:38 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3021.020; Wed, 20 May 2020
 06:01:38 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH V3 3/3] soc: imx: move cpu code to drivers/soc/imx
Date: Wed, 20 May 2020 13:51:29 +0800
Message-Id: <1589953889-30955-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589953889-30955-1-git-send-email-peng.fan@nxp.com>
References: <1589953889-30955-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR02CA0038.apcprd02.prod.outlook.com
 (2603:1096:3:18::26) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0038.apcprd02.prod.outlook.com (2603:1096:3:18::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3000.31 via Frontend Transport; Wed, 20 May 2020 06:01:33 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c3bd93cb-7fd0-49f3-fd07-08d7fc83423a
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2790:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2790B4B6C7FF1236F696382788B60@DB6PR0402MB2790.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:108;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3x6ydBqct7c1+hwaVYwfowpmcpwSuffNBCQkIg5QWbDu7MuvBH65Ni7EFsP2CTfMOrCX+ZA/5YSf21DiK1uk1CLvJBkU6dJ17+IbiqxhZ6RduUt0mnTgP5cDYf7wXxptTvQQd3N5zje0dcUOh7AgYMacioifKgdIEMMwZRAa1NFVxjcgw5h8XSkuLqSKn27o7NkNXFXCqj+UdbinLCk8EL5NHmxpk+UU0rBRPCeHTS+WGzPZRbcc0sjGu6GNMVYovWOBIzMHhBuntbp7gmpBwf++FXTq8oYiRcVdpczfLZgQVIEXP2aD+ogrpDhBhuXbrIz7Z3EDkoUjbOjYXi2mJk69ytzSPbxrWm1RumO7F499gNx3uWsgZtDscj7dJ6sQJ3wXC1eAb+Gy2+5KFD5RPo/B+woGJVKXafqADXl6cQlXl3ZKoylRYHXvUmGNctUyyc6u8owztgGm1BdXvY+vYF0aSkSvMMNsUkqEb9LdTfE2AXDE3SXn7prDjrF5uV4c
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(136003)(346002)(39860400002)(7416002)(2906002)(16526019)(186003)(66556008)(6486002)(86362001)(956004)(66476007)(2616005)(66946007)(69590400007)(6666004)(316002)(26005)(5660300002)(4326008)(8676002)(6512007)(478600001)(9686003)(36756003)(52116002)(6506007)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: WfE/0f3PAPMSqJD5wMkC01CUTrQdmvR+Tyzd+eXSEouYBNzo7eaGGRXXW3WxAMnfvt6EmmSiqNG6ggIgEm1q/DOVSngzuQ2Otey2BMhcvENDUBtFzGdNAirYEFQ+wPaAJP3eP7y1lnj5XdS9TyeXWtjd/MSP/noPSspN+GC0+/zIFFMC3v3xeIhzTVqvT77V5oocGB7ByJCpFSjJn41BJW7ocyPaGoh5J2YRgX03pnEby9mb0ES0KofncUhRp6qJqRLeJE4Xc/+MUYff+0XmHLYT1Yv6DrekvvbgldJEoTjXn54XeQudaJFiOF9ajc1SWKtmcdggjKyETfYz4HlMlq2HeLdX4VWM0cJ/iZrNYBS8+FRDUqo7YjlAR3g5KURJjdwBKCAfX9RCe0l4pQ7qIuG25BQ/T2Qv2Z7Uq9NYX2ipP85PRUiSIPCdkkEXzExqH+SYJYcoAnK1FnQl0xwxErqh2jOtgcd3CHHwEs79kypxfOWDbpFF90qNTNjALj1h
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3bd93cb-7fd0-49f3-fd07-08d7fc83423a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 06:01:38.2580 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PWXfMLW0TgbSlgASKqEEHB+l7WnDrHvjjXfklT1AaDRC5VfEbWF8WzMpsXr49SnEKhfazZ9dXLRqBIocTI1WCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2790
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_230142_067653_12EB1702 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.42 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>,
 abel.vesa@nxp.com, Anson.Huang@nxp.com, andrew.smirnov@gmail.com,
 festevam@gmail.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, git@andred.net, leonard.crestez@nxp.com, info@metux.net,
 cphealy@gmail.com, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Move the soc device register code to drivers/soc/imx to align with
i.MX8.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/mach-imx/cpu.c   | 182 -------------------------------------------
 drivers/soc/imx/Makefile  |   3 +
 drivers/soc/imx/soc-imx.c | 192 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 195 insertions(+), 182 deletions(-)
 create mode 100644 drivers/soc/imx/soc-imx.c

diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
index 75ffcba9f878..65c7224f5250 100644
--- a/arch/arm/mach-imx/cpu.c
+++ b/arch/arm/mach-imx/cpu.c
@@ -1,25 +1,13 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/err.h>
-#include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/io.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
-#include <linux/regmap.h>
-#include <linux/slab.h>
-#include <linux/sys_soc.h>
 
 #include "hardware.h"
 #include "common.h"
 
-#define OCOTP_UID_H	0x420
-#define OCOTP_UID_L	0x410
-
-#define OCOTP_ULP_UID_1		0x4b0
-#define OCOTP_ULP_UID_2		0x4c0
-#define OCOTP_ULP_UID_3		0x4d0
-#define OCOTP_ULP_UID_4		0x4e0
-
 unsigned int __mxc_cpu_type;
 static unsigned int imx_soc_revision;
 
@@ -82,173 +70,3 @@ void __init imx_aips_allow_unprivileged_access(
 		imx_set_aips(aips_base_addr);
 	}
 }
-
-static int __init imx_soc_device_init(void)
-{
-	struct soc_device_attribute *soc_dev_attr;
-	const char *ocotp_compat = NULL;
-	struct soc_device *soc_dev;
-	struct device_node *root;
-	struct regmap *ocotp = NULL;
-	const char *soc_id;
-	u64 soc_uid = 0;
-	u32 val;
-	int ret;
-
-	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
-	if (!soc_dev_attr)
-		return -ENOMEM;
-
-	soc_dev_attr->family = "Freescale i.MX";
-
-	root = of_find_node_by_path("/");
-	ret = of_property_read_string(root, "model", &soc_dev_attr->machine);
-	of_node_put(root);
-	if (ret)
-		goto free_soc;
-
-	switch (__mxc_cpu_type) {
-	case MXC_CPU_MX1:
-		soc_id = "i.MX1";
-		break;
-	case MXC_CPU_MX21:
-		soc_id = "i.MX21";
-		break;
-	case MXC_CPU_MX25:
-		soc_id = "i.MX25";
-		break;
-	case MXC_CPU_MX27:
-		soc_id = "i.MX27";
-		break;
-	case MXC_CPU_MX31:
-		soc_id = "i.MX31";
-		break;
-	case MXC_CPU_MX35:
-		soc_id = "i.MX35";
-		break;
-	case MXC_CPU_MX51:
-		soc_id = "i.MX51";
-		break;
-	case MXC_CPU_MX53:
-		soc_id = "i.MX53";
-		break;
-	case MXC_CPU_IMX6SL:
-		ocotp_compat = "fsl,imx6sl-ocotp";
-		soc_id = "i.MX6SL";
-		break;
-	case MXC_CPU_IMX6DL:
-		ocotp_compat = "fsl,imx6q-ocotp";
-		soc_id = "i.MX6DL";
-		break;
-	case MXC_CPU_IMX6SX:
-		ocotp_compat = "fsl,imx6sx-ocotp";
-		soc_id = "i.MX6SX";
-		break;
-	case MXC_CPU_IMX6Q:
-		ocotp_compat = "fsl,imx6q-ocotp";
-		soc_id = "i.MX6Q";
-		break;
-	case MXC_CPU_IMX6UL:
-		ocotp_compat = "fsl,imx6ul-ocotp";
-		soc_id = "i.MX6UL";
-		break;
-	case MXC_CPU_IMX6ULL:
-		ocotp_compat = "fsl,imx6ull-ocotp";
-		soc_id = "i.MX6ULL";
-		break;
-	case MXC_CPU_IMX6ULZ:
-		ocotp_compat = "fsl,imx6ull-ocotp";
-		soc_id = "i.MX6ULZ";
-		break;
-	case MXC_CPU_IMX6SLL:
-		ocotp_compat = "fsl,imx6sll-ocotp";
-		soc_id = "i.MX6SLL";
-		break;
-	case MXC_CPU_IMX7D:
-		ocotp_compat = "fsl,imx7d-ocotp";
-		soc_id = "i.MX7D";
-		break;
-	case MXC_CPU_IMX7ULP:
-		ocotp_compat = "fsl,imx7ulp-ocotp";
-		soc_id = "i.MX7ULP";
-		break;
-	case MXC_CPU_VF500:
-		ocotp_compat = "fsl,vf610-ocotp";
-		soc_id = "VF500";
-		break;
-	case MXC_CPU_VF510:
-		ocotp_compat = "fsl,vf610-ocotp";
-		soc_id = "VF510";
-		break;
-	case MXC_CPU_VF600:
-		ocotp_compat = "fsl,vf610-ocotp";
-		soc_id = "VF600";
-		break;
-	case MXC_CPU_VF610:
-		ocotp_compat = "fsl,vf610-ocotp";
-		soc_id = "VF610";
-		break;
-	default:
-		soc_id = "Unknown";
-	}
-	soc_dev_attr->soc_id = soc_id;
-
-	if (ocotp_compat) {
-		ocotp = syscon_regmap_lookup_by_compatible(ocotp_compat);
-		if (IS_ERR(ocotp))
-			pr_err("%s: failed to find %s regmap!\n", __func__, ocotp_compat);
-	}
-
-	if (!IS_ERR_OR_NULL(ocotp)) {
-		if (__mxc_cpu_type == MXC_CPU_IMX7ULP) {
-			regmap_read(ocotp, OCOTP_ULP_UID_4, &val);
-			soc_uid = val & 0xffff;
-			regmap_read(ocotp, OCOTP_ULP_UID_3, &val);
-			soc_uid <<= 16;
-			soc_uid |= val & 0xffff;
-			regmap_read(ocotp, OCOTP_ULP_UID_2, &val);
-			soc_uid <<= 16;
-			soc_uid |= val & 0xffff;
-			regmap_read(ocotp, OCOTP_ULP_UID_1, &val);
-			soc_uid <<= 16;
-			soc_uid |= val & 0xffff;
-		} else {
-			regmap_read(ocotp, OCOTP_UID_H, &val);
-			soc_uid = val;
-			regmap_read(ocotp, OCOTP_UID_L, &val);
-			soc_uid <<= 32;
-			soc_uid |= val;
-		}
-	}
-
-	soc_dev_attr->revision = kasprintf(GFP_KERNEL, "%d.%d",
-					   (imx_soc_revision >> 4) & 0xf,
-					   imx_soc_revision & 0xf);
-	if (!soc_dev_attr->revision) {
-		ret = -ENOMEM;
-		goto free_soc;
-	}
-
-	soc_dev_attr->serial_number = kasprintf(GFP_KERNEL, "%016llX", soc_uid);
-	if (!soc_dev_attr->serial_number) {
-		ret = -ENOMEM;
-		goto free_rev;
-	}
-
-	soc_dev = soc_device_register(soc_dev_attr);
-	if (IS_ERR(soc_dev)) {
-		ret = PTR_ERR(soc_dev);
-		goto free_serial_number;
-	}
-
-	return 0;
-
-free_serial_number:
-	kfree(soc_dev_attr->serial_number);
-free_rev:
-	kfree(soc_dev_attr->revision);
-free_soc:
-	kfree(soc_dev_attr);
-	return ret;
-}
-device_initcall(imx_soc_device_init);
diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
index 103e2c93c342..446143241fe7 100644
--- a/drivers/soc/imx/Makefile
+++ b/drivers/soc/imx/Makefile
@@ -1,4 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
+ifeq ($(CONFIG_ARM),y)
+obj-$(CONFIG_ARCH_MXC) += soc-imx.o
+endif
 obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
 obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
 obj-$(CONFIG_SOC_IMX8M) += soc-imx8m.o
diff --git a/drivers/soc/imx/soc-imx.c b/drivers/soc/imx/soc-imx.c
new file mode 100644
index 000000000000..fec3d672b606
--- /dev/null
+++ b/drivers/soc/imx/soc-imx.c
@@ -0,0 +1,192 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2020 NXP
+ */
+
+#include <linux/mfd/syscon.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/regmap.h>
+#include <linux/slab.h>
+#include <linux/sys_soc.h>
+
+#include <soc/imx/cpu.h>
+#include <soc/imx/revision.h>
+
+#define OCOTP_UID_H	0x420
+#define OCOTP_UID_L	0x410
+
+#define OCOTP_ULP_UID_1		0x4b0
+#define OCOTP_ULP_UID_2		0x4c0
+#define OCOTP_ULP_UID_3		0x4d0
+#define OCOTP_ULP_UID_4		0x4e0
+
+static int __init imx_soc_device_init(void)
+{
+	struct soc_device_attribute *soc_dev_attr;
+	const char *ocotp_compat = NULL;
+	struct soc_device *soc_dev;
+	struct device_node *root;
+	struct regmap *ocotp = NULL;
+	const char *soc_id;
+	u64 soc_uid = 0;
+	u32 val;
+	int ret;
+
+	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
+	if (!soc_dev_attr)
+		return -ENOMEM;
+
+	soc_dev_attr->family = "Freescale i.MX";
+
+	root = of_find_node_by_path("/");
+	ret = of_property_read_string(root, "model", &soc_dev_attr->machine);
+	of_node_put(root);
+	if (ret)
+		goto free_soc;
+
+	switch (__mxc_cpu_type) {
+	case MXC_CPU_MX1:
+		soc_id = "i.MX1";
+		break;
+	case MXC_CPU_MX21:
+		soc_id = "i.MX21";
+		break;
+	case MXC_CPU_MX25:
+		soc_id = "i.MX25";
+		break;
+	case MXC_CPU_MX27:
+		soc_id = "i.MX27";
+		break;
+	case MXC_CPU_MX31:
+		soc_id = "i.MX31";
+		break;
+	case MXC_CPU_MX35:
+		soc_id = "i.MX35";
+		break;
+	case MXC_CPU_MX51:
+		soc_id = "i.MX51";
+		break;
+	case MXC_CPU_MX53:
+		soc_id = "i.MX53";
+		break;
+	case MXC_CPU_IMX6SL:
+		ocotp_compat = "fsl,imx6sl-ocotp";
+		soc_id = "i.MX6SL";
+		break;
+	case MXC_CPU_IMX6DL:
+		ocotp_compat = "fsl,imx6q-ocotp";
+		soc_id = "i.MX6DL";
+		break;
+	case MXC_CPU_IMX6SX:
+		ocotp_compat = "fsl,imx6sx-ocotp";
+		soc_id = "i.MX6SX";
+		break;
+	case MXC_CPU_IMX6Q:
+		ocotp_compat = "fsl,imx6q-ocotp";
+		soc_id = "i.MX6Q";
+		break;
+	case MXC_CPU_IMX6UL:
+		ocotp_compat = "fsl,imx6ul-ocotp";
+		soc_id = "i.MX6UL";
+		break;
+	case MXC_CPU_IMX6ULL:
+		ocotp_compat = "fsl,imx6ull-ocotp";
+		soc_id = "i.MX6ULL";
+		break;
+	case MXC_CPU_IMX6ULZ:
+		ocotp_compat = "fsl,imx6ull-ocotp";
+		soc_id = "i.MX6ULZ";
+		break;
+	case MXC_CPU_IMX6SLL:
+		ocotp_compat = "fsl,imx6sll-ocotp";
+		soc_id = "i.MX6SLL";
+		break;
+	case MXC_CPU_IMX7D:
+		ocotp_compat = "fsl,imx7d-ocotp";
+		soc_id = "i.MX7D";
+		break;
+	case MXC_CPU_IMX7ULP:
+		ocotp_compat = "fsl,imx7ulp-ocotp";
+		soc_id = "i.MX7ULP";
+		break;
+	case MXC_CPU_VF500:
+		ocotp_compat = "fsl,vf610-ocotp";
+		soc_id = "VF500";
+		break;
+	case MXC_CPU_VF510:
+		ocotp_compat = "fsl,vf610-ocotp";
+		soc_id = "VF510";
+		break;
+	case MXC_CPU_VF600:
+		ocotp_compat = "fsl,vf610-ocotp";
+		soc_id = "VF600";
+		break;
+	case MXC_CPU_VF610:
+		ocotp_compat = "fsl,vf610-ocotp";
+		soc_id = "VF610";
+		break;
+	default:
+		soc_id = "Unknown";
+	}
+	soc_dev_attr->soc_id = soc_id;
+
+	if (ocotp_compat) {
+		ocotp = syscon_regmap_lookup_by_compatible(ocotp_compat);
+		if (IS_ERR(ocotp))
+			pr_err("%s: failed to find %s regmap!\n", __func__, ocotp_compat);
+	}
+
+	if (!IS_ERR_OR_NULL(ocotp)) {
+		if (__mxc_cpu_type == MXC_CPU_IMX7ULP) {
+			regmap_read(ocotp, OCOTP_ULP_UID_4, &val);
+			soc_uid = val & 0xffff;
+			regmap_read(ocotp, OCOTP_ULP_UID_3, &val);
+			soc_uid <<= 16;
+			soc_uid |= val & 0xffff;
+			regmap_read(ocotp, OCOTP_ULP_UID_2, &val);
+			soc_uid <<= 16;
+			soc_uid |= val & 0xffff;
+			regmap_read(ocotp, OCOTP_ULP_UID_1, &val);
+			soc_uid <<= 16;
+			soc_uid |= val & 0xffff;
+		} else {
+			regmap_read(ocotp, OCOTP_UID_H, &val);
+			soc_uid = val;
+			regmap_read(ocotp, OCOTP_UID_L, &val);
+			soc_uid <<= 32;
+			soc_uid |= val;
+		}
+	}
+
+	soc_dev_attr->revision = kasprintf(GFP_KERNEL, "%d.%d",
+					   (imx_get_soc_revision() >> 4) & 0xf,
+					   imx_get_soc_revision() & 0xf);
+	if (!soc_dev_attr->revision) {
+		ret = -ENOMEM;
+		goto free_soc;
+	}
+
+	soc_dev_attr->serial_number = kasprintf(GFP_KERNEL, "%016llX", soc_uid);
+	if (!soc_dev_attr->serial_number) {
+		ret = -ENOMEM;
+		goto free_rev;
+	}
+
+	soc_dev = soc_device_register(soc_dev_attr);
+	if (IS_ERR(soc_dev)) {
+		ret = PTR_ERR(soc_dev);
+		goto free_serial_number;
+	}
+
+	return 0;
+
+free_serial_number:
+	kfree(soc_dev_attr->serial_number);
+free_rev:
+	kfree(soc_dev_attr->revision);
+free_soc:
+	kfree(soc_dev_attr);
+	return ret;
+}
+device_initcall(imx_soc_device_init);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
