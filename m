Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0039C1C8230
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 08:08:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSLu+fabqLHpvr/U5EZZKBF0lhpMIRLkPHz/7E4+CR8=; b=ilvB2HyF2aNDvy
	TAs6QNMuydKLc810yMERgWMZ9BiFx28uN7j1+80u2xNJgsDyQYXj2MqKX5tSD8AdheLyycqf4lb4r
	Z+U2Xx2cCkUC2v6odeIdOfBpWcma34j/MIFkhJi15uuHld6/PZJi+eISWaEy2ETJWtyUiX6bpLGAZ
	YUbda8u8oR0qHC51+8yXI3At+qe+A+CSyMg/78npTbFWMAZQOrlZwFxgGVTxD7fKYGXP+AluFw0Q+
	BfkYWHqzF9RKMJzsW+g+JRunx/xHPZFcIcmdvbZ3Itf0Yazlsw7FUQ6l8zvH4BVVXtgL+AqcVqHqn
	KbeYevI6eJnwDrBxWccA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWZi3-0006q9-HT; Thu, 07 May 2020 06:08:39 +0000
Received: from mail-eopbgr140085.outbound.protection.outlook.com
 ([40.107.14.85] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWZff-0004uh-TO
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 06:06:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QnewtA2iQEE/wRrBp4lJT+SD1KLJ5sxMV0K38PXJfKcGUlqTD67gAR+oLHTCiGd0CxvPVLy923v7b+5CFbYjXOF3rl/ZIelRv55sNUpkJKRwnuHjGW8CTkk3qeW2Ropevjb58A/LzpIEG9DEdMKzW5HYc9Mg8gXiAMdbNteXy/ifAm7Bd2JcpKJ4ZFNkZzwebrPHI+Uai7xORL6kolZxO96P2HpIPdsdmTWLUajFoT3TX1C+oGl9Lrcv+GQTcsOHQkcslUxotPp/lSmzkPHlL9tSCOMGfAP5cLFElnFS0SMRbkCPB9bfTMfaHWpwWns8UT5zSsYhwr0yu04SV/oS6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+G9gslLqoYoHrM8jXQSTgamJqfTt/qEQuS7UZWpd4eQ=;
 b=lUFUYHb9+ARlZUkr7QdCZGQGhVfqdCiV1wZJI1r8SXIqVG5EG4x3Ct+B6DBZ57fLngiif2X7LbIOOV7mKGOJdbPo2LwOnhTOqHFfQjTVNp3dH+8czZM4/h3MyqZJ/CM9ztGGeG/GzB6xmTm5OyE91nq9Xs1A0OdPGRbKkHAxB4fVfL92pMmz2OtjiKtuLjLQ4n6nRjzEDzwIsEcqI/hYx0Z98U/vro6PfeqNfLKKRWcktf/l1wMjnWb2KjhKWC4tENJQdSxdvaswK2v3EIJVcj4cDlC7nEkqczGCRZy2d6itzezzboarXXpHTbKp1hRxipZUEogRCnHL+cBNEp6qTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+G9gslLqoYoHrM8jXQSTgamJqfTt/qEQuS7UZWpd4eQ=;
 b=ep8yn6D9QGghCHtOct6Zt+acv6nCrd6qbcnJ/15to6vS4THeUReaBYl3LPNuN3MWFQZPr42RXWPq5hJRlF0ovyPe/lyj8gOED+iCqOebsE72+vOacdYDbXflwU3262f96e0xzSEs4kt7KeKPdHnWV4JQXSncvmPcdAT+7gf5C8o=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2710.eurprd04.prod.outlook.com (2603:10a6:4:95::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Thu, 7 May
 2020 06:06:10 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2979.028; Thu, 7 May 2020
 06:06:10 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 abel.vesa@nxp.com, aisheng.dong@nxp.com
Subject: [PATCH V3 08/10] clk: imx: add imx8m_clk_hw_composite_bus
Date: Thu,  7 May 2020 13:56:17 +0800
Message-Id: <1588830979-11586-9-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588830979-11586-1-git-send-email-peng.fan@nxp.com>
References: <1588830979-11586-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR01CA0147.apcprd01.prod.exchangelabs.com
 (2603:1096:4:8f::27) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0147.apcprd01.prod.exchangelabs.com (2603:1096:4:8f::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2979.28 via Frontend
 Transport; Thu, 7 May 2020 06:06:06 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 973dd7e4-2a60-4e85-5d5e-08d7f24cbd66
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2710:|DB6PR0402MB2710:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB271045A28828AADA8B77CBC488A50@DB6PR0402MB2710.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 03965EFC76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pm38i8okvzwJkJKei3XGgKHEHZacziQlYT4N5ZKCeTgXzDf7ui6I4LtP1hCIOTy8P7aVt+jVkkd5oQsMxqDYs51oQDGFd3seIbbPeLV9l7yzBHsZqoySQPYVzc45L9abL+d03cmSlNKUI4wPQOSgolUXg974JYxb38vqOSAVm7/F7aHWwzoZ6Kq8Uqj39284W+pTRBgzZl4FkIpOZCh9pbX2D/+nCRX4TCf3NG79zC/U+b1FJTKCoAqtMaLE6+XsMS8T/6QYufbd8+L49ALjoHo/57/fa2/aSKJ+O0MhaRD7QN3h51K51SUTOWz5ovlwl5S8/2U/Lm6rWySDJg0JBcyyHb9pGLw5z15YfHYdQZfrGMwXds0/7ytinC3fCO8ouRTQEuWkT+BclFBOU0uBN1KozvTP166FjmM3q5Bpw5dqKils6UHFW0pNVTmkMJWRIOX2tNXyqIqDBy+PkHO0PNjgLyaeUx8H653AzVMFPzOHjVqbml5TwUxrYCyV35TuKid0qDZXvO8q41Njc9GPdBIlnHmI4F/j3OfZ918byYzeqjxhwjdRMKU85Tqna5QL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(136003)(39860400002)(396003)(33430700001)(316002)(33440700001)(478600001)(2616005)(16526019)(69590400007)(6666004)(4326008)(66476007)(66946007)(86362001)(2906002)(66556008)(956004)(6486002)(52116002)(36756003)(8676002)(26005)(6506007)(8936002)(5660300002)(186003)(6512007)(9686003)(83320400001)(83280400001)(83300400001)(83310400001)(83290400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: xvxA+EhKiAxugX7gXn0d7uZd/zN5nCMPEGxtBBeLXgrgKyD/qCby2lB3tZAzVX8nb+VV/YgtFhv11SI+nFueUNk3eX4Vo/H4CyWvDnQhsK0ymAWZVh1wCtN4HdXRfuxemOmhwRNyDmiPc+6o9kTzOtm4UzWR4MTNrT/bgfk5QTq3GL2NquC9A+tNSxoMKbRv4ESyuMaMr2sxw18da0SQwLADAsGI+5+HjZDFCpOCf7CUnc1oDkCPBd4vn/RZvM0eciaSheEUbimPjEUTc2LkQrDYbFp1n3LG7nFn1yiXok5iHWINBqM7PJoyWLr1lrSt/FY8Xk0RWA/7RBwUx7GugBoYYkI4hlwbD1RB0MIqPhBLDLISIHUfmqaWlRpSdXKOEs1po+5PxChnxghzab0yYFurqgcsk9gkxuu2xZyMWSOBoteSbc59UiJ74Z1SRZBD5liksVdoe19U1YDFkLJLZQ0FJbdJltyiiICewhipR6nuWgpa4N4en8mpot4oXEpQqL5VRA5Qv65AP2H6J2jbMO51JqYlfV6SnOxdZVbmGdbkFmtiKVhERuA7sipsqsD6aUYHGPCRyrkY5XaBx5wz9daFkwWjVBsZMH8veahudxB8p9L6QTNZ64RIa8ftD+hu2nI2VHgJ+fkZOGhbpo6r+KPN27NPCjIKx8NSJiOd6vusgYU2/7j7UOB2/AFn/3ffn2obnA8zpAzeLfzlUXHifAxBJaiCtdaB2H58TThwolbnVxZNgz8XjHKoLkKrTYxrqxEQuPkbYT2L0bOhxy6HPtNzWSgmnGv9uz7dspIxkKI=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 973dd7e4-2a60-4e85-5d5e-08d7f24cbd66
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2020 06:06:10.7452 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 16Vc1Qf3q1lIXR4IaYyLrsqDcX/49Ce+ixQsQwJz0qfILtRB57PUeh9CfMwr6Sr3jITvIk6Yokzo8cO+TP6dtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2710
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_230611_965250_68EE6E34 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.85 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Introduce imx8m_clk_hw_composite_bus api for bus clk root slice usage.
Because the mux switch sequence issue, we could not reuse Peripheral
Clock Slice code, need use composite specific mux operation.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-composite-8m.c | 5 +++++
 drivers/clk/imx/clk.h              | 7 +++++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index 8fa60f22d377..3ba6838ce3d4 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -205,6 +205,11 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 		div->width = PCG_CORE_DIV_WIDTH;
 		divider_ops = &clk_divider_ops;
 		mux_ops = &imx8m_clk_composite_mux_ops;
+	} else if (composite_flags & IMX_COMPOSITE_BUS) {
+		div->shift = PCG_PREDIV_SHIFT;
+		div->width = PCG_PREDIV_WIDTH;
+		divider_ops = &imx8m_clk_composite_divider_ops;
+		mux_ops = &imx8m_clk_composite_mux_ops;
 	} else {
 		div->shift = PCG_PREDIV_SHIFT;
 		div->width = PCG_PREDIV_WIDTH;
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index b91b1b18a4a2..16adbc34e05f 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -527,6 +527,7 @@ struct clk_hw *imx_clk_hw_cpu(const char *name, const char *parent_name,
 		struct clk *step);
 
 #define IMX_COMPOSITE_CORE	BIT(0)
+#define IMX_COMPOSITE_BUS	BIT(1)
 
 struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 					    const char * const *parent_names,
@@ -535,6 +536,12 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 					    u32 composite_flags,
 					    unsigned long flags);
 
+#define imx8m_clk_hw_composite_bus(name, parent_names, reg)	\
+	imx8m_clk_hw_composite_flags(name, parent_names, \
+			ARRAY_SIZE(parent_names), reg, \
+			IMX_COMPOSITE_BUS, \
+			CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE)
+
 #define imx8m_clk_hw_composite_core(name, parent_names, reg)	\
 	imx8m_clk_hw_composite_flags(name, parent_names, \
 			ARRAY_SIZE(parent_names), reg, \
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
