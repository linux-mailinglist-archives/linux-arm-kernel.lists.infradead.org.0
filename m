Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD1C1C8208
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 08:06:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ul00F3FQb2KX7fFNDItSypWiF59q0ZRqkfQxI/QLUfs=; b=c7kqAHfJHo05qB
	H2SmuMIfZC24BtL81IZlKGXzAt1MM+la+h17eYEKWC38Y2nRSLCNhdx8oco7IdW70I5B+9CYOepp4
	jvBtO+Bx8SU2RMJPuBu4C+rQtTiw3sor7xyyause4GEEHKpptJWH5GT4U2fe97v567QB8j41IXm53
	gwXVEQacsRv6l3DWPQXk7konCW8J2zFb1cLYBHg9Ole69tghuVYBG/OnTTPlUB9nSObjWpkMVRTxv
	CepAQAs7N526WOtxRgyJsjAUEe/4Xv5J5IT5ElBBq1e1WLZ4Y7azdQzPffQ9NsLDJyL0GeorEhylg
	gnL7AtWXSKhL1yxWye5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWZfP-0004SB-OR; Thu, 07 May 2020 06:05:55 +0000
Received: from mail-eopbgr70052.outbound.protection.outlook.com ([40.107.7.52]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWZfC-0004ML-Mr
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 06:05:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NMB8QKb1uzZju1F6PguZmpgiFWtOJXfckvjF0m3Rm6bcrvX7tuRnIT6k9Sh0V/sSehn/EHhXzvgaPc48k0wJuAoD0LI1w4wLHHimEthLFnUBC/83zMFRnrnTHSgxG3uYOGhIPSFDBY6k/HukNxkDQ1I5ygoYoWIViC7IkPkZTKQKJclsPaKg0bmtHq8pViw6hlHUYmlkYNjYBOP87ncgQDaPkZEphKxPLv+650sVS3wL+YmCAKdz/honEDUtOxm+XwW5rlPhPTWGLYLfwHonVvr8qYJU5Eih7EzJca9njhT0RDenV8Sn/p2kITCQRrIz2O2cmLYhaeXepXH+hLZrPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ar6Czx/TezE8j5XbVIC+AYzW2sKAS85fp3d2AJzNPA=;
 b=hGsnKpUQiymTgTqXbi7ECWjPRWURWWFz1biPD44cLrB2l39mkDpeOL0y1tsGzGfNq8PkXXHjIoLnJchPPHMcsWAeRm16u6LbTtwTShJRCOlaJILr903Okamjvh1niB9YvDk/wyZaz4xZyVwIxnmMZUEH8acIv+S3ccTLFyGzfZbZQzZohSif0EZ+IiIyifPEtKXNwcRN2myIPcyuYcKY1PL2gt8tp/8Lo7x6EwTTDjuy+B4OjatuxwORFgfFRuTaMZPs5hys3J0pMRcQ/c1aKeMeIEEs+FvXsnTmlTrWfQ/AJ3BVs7WHIi+Xe5+nKKYOCmWHtI6dtm0KvwzFCRF8gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ar6Czx/TezE8j5XbVIC+AYzW2sKAS85fp3d2AJzNPA=;
 b=cYTApWxQ0H6hBwEH+maN8lCMBnZKXtsFbyHgAzUZ0ra9oBA4GzVDMvAV1ZsdpQW/ZdgoryLpCWLwZUssj0YIb3LD1zDFdoSDodEw7szeb+fPQ0OqB0BGW2WS3TnA5keuqxMhRERBVvxaVhNCj+I6tqV8bxhhiS7FjlCtgtWlEdE=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2710.eurprd04.prod.outlook.com (2603:10a6:4:95::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Thu, 7 May
 2020 06:05:35 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2979.028; Thu, 7 May 2020
 06:05:34 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 abel.vesa@nxp.com, aisheng.dong@nxp.com
Subject: [PATCH V3 00/10] clk: imx: fixes and improve for i.MX8M
Date: Thu,  7 May 2020 13:56:09 +0800
Message-Id: <1588830979-11586-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR01CA0147.apcprd01.prod.exchangelabs.com
 (2603:1096:4:8f::27) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0147.apcprd01.prod.exchangelabs.com (2603:1096:4:8f::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2979.28 via Frontend
 Transport; Thu, 7 May 2020 06:05:30 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 02a6064c-16a9-43e1-3c33-08d7f24ca7f5
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2710:|DB6PR0402MB2710:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB271014BBCD40325ADBBB8C2D88A50@DB6PR0402MB2710.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-Forefront-PRVS: 03965EFC76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 69C5UPZIlP2kpsBMD0rlpsa/vyxXA3k2zWsjnj4/aEmUEP7X9+O2EE4M9OVJYL2cCj2FmVE7HB2EZOajmi3/93eHIn1oRJLm2hIXGUxlWTy+UmcHAHSbJtNdCXHzv+JYUy4S1RSBBV+YzdGnR5VP2nROM338hU68ydkN5EdPywLMZdv0hQuaFfv5eIT17v56mKBKPdarUnspqQyVRKdUDBOtmwbnjJIPcnQA/mlx1lhhakRTt4ELILJ+CoSD6iuwnxhUjBX26HsYhShZ5E+Z5plvXfhtbBdrHZTqFSriAIjFXHWQTOjFtzYENhwptTvyGX7lwfQhGWOpiBUoUZ+NmbNkay31AwW26TSfRAK3tT//+2241v0ZiK4X7qePpsQIORxsaQ4Qb6/34apKNuA4JAF17OHUh/zxBLt7zHmJi56SdRjGHTEXbj+EZ/yLDe82X3E1Rkxl/Qtwb7rEx1EwNTkKWadigy3s4deLIKfsmH7SERhIRKqXzN3W/euPWAXUbMqTfJNnR1kISaa41gkx84UmYM9fMh2YTHtbOqKdn8L52zJVWc8k4+nj11E1iJp5mvGj5d0N3QgMPAWTZ7P3plxhIw7tP4F79XOAT+bhlUM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(136003)(39860400002)(396003)(33430700001)(316002)(33440700001)(478600001)(2616005)(16526019)(966005)(6666004)(4326008)(66476007)(66946007)(86362001)(2906002)(66556008)(956004)(6486002)(52116002)(36756003)(8676002)(26005)(6506007)(8936002)(5660300002)(186003)(6512007)(9686003)(83320400001)(83280400001)(83300400001)(83310400001)(83290400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: sDmWfNqIVpa5quykLxRir7anePHe3TZvoWVcKcH2b4kv/K2SV+O/DK5alhs1GATwF7RswsjCaBP/NJvIW+z7JpufZBj9ZDD9WWZMF286uGDkeTojOyQ8ZErShoHlo687dsiV9CwYBPWAEjvpxjMsKsa53RzaBgizJlmmjRbNzBwmXNpFFjsAplp3kD7425kdpSK20HRDNvhdbPLytij8uhJDuE1WWzxQbJd3n72HQrTDUUc6aThaEOBd3z1DdvZhtLKmiYOLBImNu/UYAOm48ZhBdykdds58lmuxPI5TUcWDwCHCD7nJ1LH9yoNmo7bBpdGsnXE9x4DYacUIwPi5kfn8xMdVLfS/uv6Oaijymk0LrpXxfJUeBQESiQGJp+c0jSf6o+HT7J08a2lNe9N0gqCaaP32gr/S4Gyo0N2AR2/N/SnWFr+FPnF85866Ntg6tHGfLIxioizBor6/pha8yl1uYNUtopPk+W7CtBf7OghfF8P8R6ezv77cm3Y1loufWHYDJhS9wH/SqK84qfjZivvmSZoJPZCWTdZGlG1yawcIFfvdrwPetdCl95FSX8hEtZqH6k6mE8YCFRItA9ojUPehLlEGhUNQsVoPql0EOZfjskcrzi+PF7XVS94ZNXh41feloYpn5JXFH4AfribLmHzsPJm4M6FbsAwY4dFA7zXHoR97RDScU7PFYtMpx71pSxlYS3yULTY8UcFpehppg/swmBGZ8GkZ5bGRnLy6jAzZMJcjPz5xBMxAi8LHbac3LwyNEkWS69tW60eofXMTH/rvexqfKD17mnbLeJSNERs=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02a6064c-16a9-43e1-3c33-08d7f24ca7f5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2020 06:05:34.8346 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dJQJWG4lhIZkf/fv4uc6NySBm+ggWBKVrn1vjM3F5sp4SSRdCYYDFs83sJtP5Oj73p2T3ZuylJAytZuimzQRKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2710
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_230542_825264_0EDA207B 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.52 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Anson.Huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Patches rebased on for-next

V3:
 Add R-b tag for patch 1-6,10
 Use clk_mux_ops in patch 7, explain more details in commit log
 Boot test on i.MX8MM/N/MQ/P

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
 drivers/clk/imx/clk-composite-8m.c        |  56 ++++++++++-
 drivers/clk/imx/clk-imx8mm.c              |  27 +++---
 drivers/clk/imx/clk-imx8mn.c              |  25 +++--
 drivers/clk/imx/clk-imx8mp.c              | 150 +++++++++++++++---------------
 drivers/clk/imx/clk-imx8mq.c              |  29 +++---
 drivers/clk/imx/clk.h                     |   7 ++
 include/dt-bindings/clock/imx8mp-clock.h  |  28 +++++-
 11 files changed, 229 insertions(+), 133 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
