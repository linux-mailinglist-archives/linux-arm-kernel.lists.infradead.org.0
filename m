Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFBE182C66
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:25:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbEVcgF2fqxsX4S9ItQrnagjA0fl2klsnOhh+qsOwg4=; b=pR5Fa/Ag87Fzoh
	3sobBhGPAMz25DQnMNG/5Qnn62tlzWOflfgXeBpCJWEK6Wts/sIYRX13YG3yLV4hzFIabmZLa5rEu
	kvOQN7VU8Who/ExMfFumFzTA1rqPC7Qeg/e4+HjWhCMrMBLMK3X15W9+2Vm8T+qplXeUiv4wdCWAG
	Yq8rn25too75YHfwPPn6pcFIm2NHsE+x3dvnjvW2uco6J2XwYTiOH0GdNPUZJCXZ6kDlkloVQ5ihm
	73iKY2wqyMzoaGc8lXQUBFejATAPkYowMkmYwYZSTJWt7Hwn88zIrQV8Bgun4L0RvORp5rytlVW0t
	1dZGMqOhpjZOYQuKjgOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCK63-0006LK-AJ; Thu, 12 Mar 2020 09:25:43 +0000
Received: from mail-eopbgr70045.outbound.protection.outlook.com ([40.107.7.45]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCK4m-00049Q-U8
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:24:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ER1EAvLitKRts18IFl+MYar6ZTWi+w4gwbTm6KMdQiD+gCtZYP8lJUreTx3ZgRTQf9210PxM6TFK02t3xqzzXdLR28V9tT/J3x8A/RCYbRTcpUt8qojtAQKiuA9xC4JPxZKRgm08zpwS5P4zPmfDHRae0fKr69kYLYaMTcQmLhL8tSJWoZe3uK9ZVJbRwFOZ3NtBNE+Pu6JPcl7md5Fq2GKAMJ3GL525nSli9fPWVZqMalGsvW1XytV22N38jI4M8f43mMMoPRWiJtQNVgbzB/PwDo7ZHZqz1vmfvfZLjLd+WqLA0uFpS/dkwPG6KrcXKoETKahhL+HpGqbQ9P8Oew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G0CMnX4vMzPYzS9g30+XGH16lJIrzgO4jK1RlzhTYEw=;
 b=VbGxkuh609XNHr6heiXGTls5b+ZvikoqfTO4Qlntpw860SqGrAkCfs3ScDb0ixBtyZRBOyY0m7bu7VSqsLtbkvXx+HXKtC1i1lUKdhfvUajU+GiJmkryLWMBxVHI1Z30fg4R/cYqTirBsQVWZusJASDLDspvyWKQ1edsVisObnX+YpmSt/NO5gJ9c4jD9phs1LoLuhIyF8Lj9N7TwqhVHKC2wo3kE7dbjVkfhCsTqU7Dl8gFCqyEmIrkKskiYKPZXh5dFHv/wK10jRM7UV6IpoeYPLmvxPfeHBZU5cfda5NOGWlQy1wU3zooNaari7wU8P/bGyEhHxEI6q1xm7pmaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G0CMnX4vMzPYzS9g30+XGH16lJIrzgO4jK1RlzhTYEw=;
 b=AymwMeaVx/frPOqJ7P3GEThhatjWNXazi6fGugBrY8TTYIsxBe2SsyFhx+NUxtqgspYTZuBjzKP68kSVKm1jG5CyqbF5UwP2mj/6qrbg5u5buifosXBjQgDocDBiCkmVt8MhTp1Bw+bvpN7RBcBQQNtRH+07w/9Sp/Gsb7k6wn4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5588.eurprd04.prod.outlook.com (20.178.119.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16; Thu, 12 Mar 2020 09:24:21 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 09:24:21 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH V1 3/4] ARM: imx: move cpu definitions into a header
Date: Thu, 12 Mar 2020 17:17:24 +0800
Message-Id: <1584004645-26720-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584004645-26720-1-git-send-email-peng.fan@nxp.com>
References: <1584004645-26720-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR0302CA0001.apcprd03.prod.outlook.com
 (2603:1096:3:2::11) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR0302CA0001.apcprd03.prod.outlook.com (2603:1096:3:2::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2835.7 via Frontend Transport; Thu, 12 Mar 2020 09:24:16 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7d5423a9-3aff-444e-5376-08d7c6672564
X-MS-TrafficTypeDiagnostic: AM0PR04MB5588:|AM0PR04MB5588:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB558866E322E59B3D684A217488FD0@AM0PR04MB5588.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(366004)(396003)(39860400002)(199004)(8936002)(478600001)(66946007)(81156014)(86362001)(6486002)(6512007)(69590400007)(52116002)(9686003)(81166006)(26005)(2906002)(4326008)(8676002)(6506007)(7416002)(5660300002)(2616005)(36756003)(316002)(66556008)(6666004)(66476007)(956004)(186003)(16526019);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5588;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PBOGHYBxUL8FGXL4WX07nhT3dTcUOhq+LnZlVm6P1B6S+KisnV4BShZFAnNJZOzzHEyfC3HPP6LtcUQwPRxCMQB48DW71CLASy1yFweCE8edum/kW57vmHwPeyW5Rj0wnS1UYWfPtPbGXufSPCCyl5Xy7K75dQSrEKxSlz7j/FoLM73nJ+MpfIFD1ppKYzq587hu1BoaTfvqZ3wYKPPmzknLxfYMLbLJ5v8G5xTSP359EL36hXxzgRfSFShkax2PdoilOnDurIqe9gpx/JADdZjXn+pM6ta5ZPYoXs0jNaShx0Gi29XfFmXx7khh9zdbOKpoESjtGOce7MKC/AtcykoSSobjbUDbLytU3O9ZXMaPczxuEtn3dlZjaLqLSJcHUV4J720wxoa6QjOEs0CGQKq/G5dAi/uiNZwxWuJmw7VMqOLlkv5Rao14SSw6OMIBfmkB1gMnDD9ZpsocKWNmAXHo8lagMjANDeaDrJiErbycffjuzvKuHVe1U1edaET9
X-MS-Exchange-AntiSpam-MessageData: dyNYyDdcFUHdCzl5QrCI0vQJxM7+mEus1foNhA2vkkf3df8Z3fKTULVIpsoWNkmDraT7yFZFMEICvwt1qn3dA4ilM3fpyN+e5TGxCDlLLhIl2oqCd4Am3mq1MBh6Ew21/Qit2+uJ4GE7OyhlEddJng==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d5423a9-3aff-444e-5376-08d7c6672564
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 09:24:20.9346 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NLvHly9FcFqfzUeqV9hYz7/2lFvU9UzjJjqrEBPEXCXV8/HadndJq2jhb09zbsPf1ypchOzP3XYllzfy4kDveA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5588
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_022424_999645_0F632BF8 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.45 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>,
 abel.vesa@nxp.com, Anson.Huang@nxp.com, ard.biesheuvel@linaro.org,
 festevam@gmail.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, git@andred.net, leonard.crestez@nxp.com, info@metux.net,
 allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The soc device register code will be moved to drivers/soc/imx/,
the code needs the cpu type definitions. So let's move the cpu
type definitions to a header.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/mach-imx/mxc.h | 22 +---------------------
 include/soc/imx/cpu.h   | 30 ++++++++++++++++++++++++++++++
 2 files changed, 31 insertions(+), 21 deletions(-)
 create mode 100644 include/soc/imx/cpu.h

diff --git a/arch/arm/mach-imx/mxc.h b/arch/arm/mach-imx/mxc.h
index 2bfd2d59b4a6..fe2d0f5abfcc 100644
--- a/arch/arm/mach-imx/mxc.h
+++ b/arch/arm/mach-imx/mxc.h
@@ -8,35 +8,15 @@
 #define __ASM_ARCH_MXC_H__
 
 #include <linux/types.h>
+#include <soc/imx/cpu.h>
 
 #ifndef __ASM_ARCH_MXC_HARDWARE_H__
 #error "Do not include directly."
 #endif
 
-#define MXC_CPU_MX1		1
-#define MXC_CPU_MX21		21
-#define MXC_CPU_MX25		25
-#define MXC_CPU_MX27		27
-#define MXC_CPU_MX31		31
-#define MXC_CPU_MX35		35
-#define MXC_CPU_MX51		51
-#define MXC_CPU_MX53		53
-#define MXC_CPU_IMX6SL		0x60
-#define MXC_CPU_IMX6DL		0x61
-#define MXC_CPU_IMX6SX		0x62
-#define MXC_CPU_IMX6Q		0x63
-#define MXC_CPU_IMX6UL		0x64
-#define MXC_CPU_IMX6ULL		0x65
-/* virtual cpu id for i.mx6ulz */
-#define MXC_CPU_IMX6ULZ		0x6b
-#define MXC_CPU_IMX6SLL		0x67
-#define MXC_CPU_IMX7D		0x72
-#define MXC_CPU_IMX7ULP		0xff
-
 #define IMX_DDR_TYPE_LPDDR2		1
 
 #ifndef __ASSEMBLY__
-extern unsigned int __mxc_cpu_type;
 
 #ifdef CONFIG_SOC_IMX6SL
 static inline bool cpu_is_imx6sl(void)
diff --git a/include/soc/imx/cpu.h b/include/soc/imx/cpu.h
new file mode 100644
index 000000000000..0669fc08a501
--- /dev/null
+++ b/include/soc/imx/cpu.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef __IMX_CPU_H__
+#define __IMX_CPU_H__
+
+#define MXC_CPU_MX1		1
+#define MXC_CPU_MX21		21
+#define MXC_CPU_MX25		25
+#define MXC_CPU_MX27		27
+#define MXC_CPU_MX31		31
+#define MXC_CPU_MX35		35
+#define MXC_CPU_MX51		51
+#define MXC_CPU_MX53		53
+#define MXC_CPU_IMX6SL		0x60
+#define MXC_CPU_IMX6DL		0x61
+#define MXC_CPU_IMX6SX		0x62
+#define MXC_CPU_IMX6Q		0x63
+#define MXC_CPU_IMX6UL		0x64
+#define MXC_CPU_IMX6ULL		0x65
+/* virtual cpu id for i.mx6ulz */
+#define MXC_CPU_IMX6ULZ		0x6b
+#define MXC_CPU_IMX6SLL		0x67
+#define MXC_CPU_IMX7D		0x72
+#define MXC_CPU_IMX7ULP		0xff
+
+#ifndef __ASSEMBLY__
+extern unsigned int __mxc_cpu_type;
+#endif
+
+#endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
