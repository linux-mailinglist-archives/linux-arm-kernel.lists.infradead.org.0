Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89ECB182D75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 11:26:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H71J4ADWRQERSGlgZZR+o+EJxQwXgC7GR6wId6ph4NY=; b=dLcVZ8c0Yf74Nr
	bx8BgL2UPb1kFQmAt6Yt+d7yRNXN7d3iQ2dA6/bwFqs9ARui7U/HlJmoM361JiA3sGIgVFUdJWSYC
	l8EISxEEALcblw5ZlG+Ex5LjoCuzdWo9qUk/UOABSUdCcRpPu5VgIJH1gU+RaZl94EJe9BUqI0AXx
	bJvxufcBnm6pbMG4/RtwDcqpHe3toLX/CbnGW/FQ36x4NQDfybjR1HUCMTpQLwgZNTkeiB5BKZLw9
	m0RrKsHET0LDdLTe4Wgaj3ddpR94NsM8OGlKsUD11h8Jx9BYOPhYrzMaif7By4Y2Jfr15ny+tHsnk
	1bgfopDOGMoFExxeauyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCL38-0007Dv-FQ; Thu, 12 Mar 2020 10:26:46 +0000
Received: from mail-eopbgr60042.outbound.protection.outlook.com ([40.107.6.42]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCL2x-0007Da-QZ
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 10:26:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LeOZuRKBLj0XtHiDWnp2fVJeArI+YOT8p84xoY3aGUXWce6ePtg2zUZFInB8dp/VOLkMzFORQd1aZu4wyvW67v+AZuQo+jA2eDwKm7HxKNuzhTPLkGAB28/NastvHEcwagjePaw1THLRXDjZq0vxEMb/J0bC79Ejfrzqrc2FSJfZ3D8e9F3EQlbWrUCtkQQL7dhnk2RztWYDklOu2Ib+jeYLqO2f6JYh2daFhzUZxYptmyYTYMqtEBbQ3p23jTih1kYlUhdo4l2Mt5aHHrnSSr5VPwUyMVVKL3XBsZxRJ8+ISnHO9ETysReOIAHcKuWJhGv2C2QlvSw5gfHJsSZJDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HbkXExOQ6OdJBM03LtkPQenHPgYJtGC53UehoF9NoUc=;
 b=lQu4MBk0LxLLNgu3yFmBvbPyRHAPx1zF5NC+lQk4c32oryklRNC4NJRNHf+c/l0/edyQM6OSOKSo3FwEd6qHQQ9/6U+fdm7PH995wApHTKaH1hy/R0yYDgKCHi64KOMn/5GHl1ZN2EAvGsS8VNNbAsPYTkNmeQBPlU5rLchkvCTsQ61XyFYXMyIRSjidiie5TO5m7hdkFvWU9+LUle8uREllioNYV1IGKfgsn8bQ6uQPp0JfkMvAEFPEol+PjoZOZ81gtPLIxgTP2UatklP4pltpKTNUI27cdOV3QrAGbgVimQzuf3hpcVSP7FsCKBwDzW9KNfj9w3A7V7KqljIg0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HbkXExOQ6OdJBM03LtkPQenHPgYJtGC53UehoF9NoUc=;
 b=Jdi61jVS3s20G5Kve130fVzc3BdiBRaHmKjGFHhvQefWZfEjb+lwgBRAVPuzCRzmQ9U+Eq4qiTnsm0ofgNSmUAoszkL3tFHGY+Yo55vEWTz8kXySUClektZF9sslQdT/qpjkhDzGkP+8LGtYDYQo4hvqGYq6IRB55vzxzdODIJ8=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4195.eurprd04.prod.outlook.com (52.134.92.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Thu, 12 Mar 2020 10:26:32 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 10:26:32 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 sboyd@kernel.org, abel.vesa@nxp.com
Subject: [PATCH V2 00/10] clk: imx: fixes and improve for i.MX8M
Date: Thu, 12 Mar 2020 18:19:34 +0800
Message-Id: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR03CA0113.apcprd03.prod.outlook.com
 (2603:1096:4:91::17) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR03CA0113.apcprd03.prod.outlook.com (2603:1096:4:91::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2835.7 via Frontend Transport; Thu, 12 Mar 2020 10:26:25 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b8161573-37f6-4c49-4149-08d7c66fd521
X-MS-TrafficTypeDiagnostic: AM0PR04MB4195:|AM0PR04MB4195:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB41953EF5A08C4B27B65BA0D688FD0@AM0PR04MB4195.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(199004)(956004)(26005)(6512007)(9686003)(2616005)(86362001)(8676002)(186003)(6506007)(81166006)(6666004)(8936002)(7416002)(6486002)(478600001)(52116002)(966005)(316002)(66946007)(66476007)(16526019)(5660300002)(66556008)(36756003)(81156014)(4326008)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4195;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jP/xVVRLle46Zq1Xh0P6Fe+EuSOTciMreig57MPO+HL0GGQsbSQ18laSxbZjrCsymrnnJQu/0bnWqfFVObDB3ZQJQXxNfedejBZ6ZE6NUhpaSy+RFtSB1gaG0xdt9af8c1IXlGRdoDebZJ2G9jGLg/+NAoold02HM5aYsoBAZwNhS/s58cDy2epgtiYKUpTIe4BH542o45Xmt8W3dTdSRqiw4PAMsxGohy3RbJMyGrtmQczLw2n02xflcrErt/SjqcaWxy/XrjYVKJWtNZ7D/HP9G8Y5waa42kGoSWYrlH4aARm77MHWEkBV7SZxAbCTz4YlqrZYF5ljE4A/OPKXulGxOMQVYOfHrF8LOW7ldV/H2/0PFyTlY5QgLIpvLa1GnULa4FlrxS2oufHwOiF36OS5sldmuP9d9Q3f7avVIglqDK5af/bk0kzEdX8g7GaFG9uQoe99SCs4OBvFvrIvllRHQ3yHn2oNKCJ9KD9AHlyTB1aRToNLZVquvdfrLD53RtCm5OKx598w7LICrSSmfA==
X-MS-Exchange-AntiSpam-MessageData: sJ0933m+EOJNiA1RiiipkRMzYdT+3e9Ce6MR+6WTMqZT+LKAeLQ6E0Q1cusLOjqYd6ppqM/FweqFxxjUez1DKw9HAZzhxwqIU7oaKo9gyEeG474ukDYYz7SlgXhCF/CGaQqdtmwRtwSyfjNaup011g==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8161573-37f6-4c49-4149-08d7c66fd521
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 10:26:31.9538 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7LpjFS/tYmj3L2XeIm71Jl5/55XOf3TfEXyHgDiWqzIxNrakSMd6LJBl1h18eRqMuzmBQYj17mphcA+/BkvbHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_032636_871226_D927D432 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.42 listed in list.dnswl.org]
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
Cc: Peng Fan <peng.fan@nxp.com>, fugang.duan@nxp.com, ping.bai@nxp.com,
 Anson.Huang@nxp.com, andrew.smirnov@gmail.com, daniel.baluta@nxp.com,
 agx@sigxcpu.org, angus@akkea.ca, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, aford173@gmail.com,
 l.stach@pengutronix.de, festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Patches based on for-next

V2:
 Patch 7, drop wait after write, add one line comment for write twice

V1:
Patch 1,2 is to fix the lockdep warning reported by Leonard
Patch 3 is to fix pll mux bit
Patch 4 is align with other i.MX8M using gate
Patch 5 is to simplify i.MX8MP clk root using composite

Patch 3~5 is actually https://patchwork.kernel.org/patch/11402761/
with a minimal change to patch 5 here.

Patch 6 is to use composite core clk for A53 clk root
Patch 7,8,9 is actually to fix CORE/BUS clk slice issue.
 This issue is triggerred after we update U-Boot to include
 the A53 clk fixes to sources from PLL, not from A53 root clk,
 because of the signoff timing is 1GHz. U-Boot set the A53 root
 mux to 2, sys pll2 500MHz. Kernel will set the A53 root mux to
 4, sys pll1 800MHz, then gate off sys pll2 500MHz. Then kernel
 will gate off A53 root because clk_ignore_unsed, A53 directly sources
 PLL, so it is ok to gate off A53 root. However when gate off A53
 root clk, system hang, because the original mux sys pll2 500MHz
 gated off with CLK_OPS_PARENT_ENABLE flag.

 It is lucky that we not met issue for other core/bus clk slice
 except A53 ROOT core slice. But it is always triggerred after
 U-Boot and Linux both switch to use ARM PLL for A53 core, but
 have different mux settings for A53 root clk slice.

 So the three patches is to address this issue.

Patch 10 is make memrepair as critical.

Peng Fan (10):
  arm64: dts: imx8m: assign clocks for A53
  clk: imx8m: drop clk_hw_set_parent for A53
  clk: imx: imx8mp: fix pll mux bit
  clk: imx8mp: Define gates for pll1/2 fixed dividers
  clk: imx8mp: use imx8m_clk_hw_composite_core to simplify code
  clk: imx8m: migrate A53 clk root to use composite core
  clk: imx: add mux ops for i.MX8M composite clk
  clk: imx: add imx8m_clk_hw_composite_bus
  clk: imx: use imx8m_clk_hw_composite_bus for i.MX8M bus clk slice
  clk: imx8mp: mark memrepair clock as critical

 arch/arm64/boot/dts/freescale/imx8mm.dtsi |  10 +-
 arch/arm64/boot/dts/freescale/imx8mn.dtsi |  10 +-
 arch/arm64/boot/dts/freescale/imx8mp.dtsi |  11 ++-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi |   9 +-
 drivers/clk/imx/clk-composite-8m.c        |  67 ++++++++++++-
 drivers/clk/imx/clk-imx8mm.c              |  27 +++---
 drivers/clk/imx/clk-imx8mn.c              |  25 +++--
 drivers/clk/imx/clk-imx8mp.c              | 150 +++++++++++++++---------------
 drivers/clk/imx/clk-imx8mq.c              |  29 +++---
 drivers/clk/imx/clk.h                     |   7 ++
 include/dt-bindings/clock/imx8mp-clock.h  |  28 +++++-
 11 files changed, 240 insertions(+), 133 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
