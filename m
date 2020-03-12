Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A349182C0D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:11:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYMk29BBwKrq9iswze+sPFUumBxDcBSdTiBgO63cbj8=; b=f/0mLO41Z0WOZc
	QrOzBeYGv47FE8qmv+En3MZP4LqxMj+MMD9For+N0DYt+zcLRUKPEPZkxS5Kl4kyuDP/AqOaIehGF
	ewtA277h/JPzLKU1BQEa2VOA95S/bkM5JH1y3UP2zbBKUpjK+vnep+k2lEE79DZlm32gWrGLkLFek
	h8Ko1hIiLxouiOho/ZDQCO8EOZdLdybjC9KQ7Px29+dUcatOHOtRsAwIL1ZgzMA6rWaeESevvS4w6
	+LUkki6w7KLiNK47n+QEj7u1Pz6iWFgE8XyYL/UcW4EPMbfnLlDQmFjWfAe7MlsGUPJc4WsZ0fcOX
	lQ+0/mOLT6fz4cEdB1Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCJrf-0006WN-Qk; Thu, 12 Mar 2020 09:10:51 +0000
Received: from mail-am6eur05on2047.outbound.protection.outlook.com
 ([40.107.22.47] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJpz-0003n6-Av
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:09:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RChnQ+SfiMQzscqGQ+/3IQLMyNfsOvlaCWWOU+p1Wn1gIVgVEyHADIhUXk51wyMG4F+2YlsQtMBrUfRqci1cu2qKyBHssG6/YR9TO0jl9dJCvlWbEOzwgT5KVil/aIRioB34q58AeErJkXakaqFDdsWTse6Z8G4MDOsNI1egSuJgPu2JCmnPAg++ROWapWW4HmnCUAXXZ4h95YVZm9kpvA7r5Fjm6eu8XpN1YuRMbqKrBeHWtFxs/EjbrPAkv9yQyTUo2AuVG6axRBbzUROEQYCNgIlRVuY6RJdK9UebXKiGcXTuYOSlx4CV8RPDHrMJNcwoRQznSx0sPUmA1PBWDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RmiXlFQ3dGb4nFSU8nWLTwcL1z33bug6yhy5/CqzBjE=;
 b=oMH1UhcA6LFzggMerUP7mTk95Jp1ckKHeX1czFED4z+l8C7kCGLQ4fqfHhhSef4Jd1hLVwk74sDSGzExFdWZKTlcL3wPBBy5Vq5XitFB20TxJMuM9ApOdpJfsB2r2DLuWEeTWJXBlf9NJkv4tt+lIyrU1S6dPDBWLjdzSN8O9EYW/JBqA3czWrWr9mesBi5uGMwvAb9j6ddPUGQ1ibjHClqnEj3tCbFcVSF+IIQRVZI80JtDS4cH7B/e2NmOTm9aB7szxl1qYDuX6O26fqtS3EHbj512cFR7h+8ka/d/05dEly8FRELzWTkiUooea2QEunzU2pSSyAqWCnbr2CempQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RmiXlFQ3dGb4nFSU8nWLTwcL1z33bug6yhy5/CqzBjE=;
 b=CULjs+MIXWemIRuPxR36GBHuA/i01esWlvhwaVXgMFTr2VW+pRT+bFTuYlmYczZTVI+WUbd0EbLyCGQBapIKbK4pXwUIfKe5BIKvVdCWGUYBDwa6Mbp+a0uWg+mtLUZrC9xRyGTrX9TlH+Pir8ZxUbFAHlc8N3LNwHxLwsO9SnY=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5795.eurprd04.prod.outlook.com (20.178.118.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Thu, 12 Mar 2020 09:09:04 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 09:09:04 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 sboyd@kernel.org, abel.vesa@nxp.com
Subject: [PATCH 08/10] clk: imx: add imx8m_clk_hw_composite_bus
Date: Thu, 12 Mar 2020 17:01:30 +0800
Message-Id: <1584003692-25523-9-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584003692-25523-1-git-send-email-peng.fan@nxp.com>
References: <1584003692-25523-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR02CA0052.apcprd02.prod.outlook.com
 (2603:1096:4:54::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0052.apcprd02.prod.outlook.com (2603:1096:4:54::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2814.14 via Frontend Transport; Thu, 12 Mar 2020 09:08:58 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4d8df14c-cad3-454a-a7a1-08d7c665030b
X-MS-TrafficTypeDiagnostic: AM0PR04MB5795:|AM0PR04MB5795:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5795FDAD369F9A8EBF48A49688FD0@AM0PR04MB5795.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(346002)(366004)(136003)(376002)(199004)(6666004)(52116002)(69590400007)(66946007)(6506007)(9686003)(6486002)(86362001)(66476007)(66556008)(6512007)(5660300002)(4326008)(956004)(36756003)(16526019)(26005)(186003)(478600001)(7416002)(2906002)(316002)(81166006)(2616005)(81156014)(8676002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5795;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ACC0EEop3CCQqZNpYOJugNbxzCPQdqnhPfQwXLDesI/bfVClCJSqqmm/H5O5q8scEl/vFHPD84MneiS6oCaFgluPSvlKI5YLsrVjiAH3OyHzibrymUWpcnXTf4aAODSwMdwuDjJQ3Q2xXH1mP7NASGC21PaI4j29odhUgsy3UDiAsZ739SF786gbAIn8sCIh3n+R+TwGheb1Txb1A9TB0kXUG5vS3WahFObf6npQNgsDfgXB4If7LLfis50Ah4uEo3HHKp+qY5MV8GlsPYjsqiZGnUZRQpu8HttgVTf5rjCyytoPaZRd236X33hMru/Ew+XtgX28fxX1togZYOrkwmIKzmGwk3zTunYztNKaceOfMhznraMHs1Z/hTbl35fbop4ujebrIlgTPCbtC9pUoFSgtIDgb6rFm+2aOc/U9qNX/HI+dhUNCtm7BI7kVZC58pRdRgOTboc+ed24ArioMa+QdNHVaJkOr1GoN3ENAGMewVW5PNQW9lZ5zoKpZjcr
X-MS-Exchange-AntiSpam-MessageData: /ALYEcpm/fAdbG7EmhL4JXxL1uhznWLpNWDaGI6bpWYVdujmFkSl0j4oUxCzLFZwwnopRHTmCjk9RslhGVlfBEniZhhfQcFrR1HNS+MqNIcTrlQdqvNKzWTkCfRvkXQHupTMlq0yXu4nXE2viguRCw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d8df14c-cad3-454a-a7a1-08d7c665030b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 09:09:04.3365 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SKwuznjBeH8IuwyAsTQrkOa+xkGnPwNBIif/cFRnr/RkdxNgqq6gX7lnwRmkV3is2c22SYNt62fR4tLB55K7DQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5795
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_020907_524730_24C9E7A6 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.47 listed in wl.mailspike.net]
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

Introduce imx8m_clk_hw_composite_bus api for bus clk root slice usage.
Because the mux switch sequence issue, we could not reuse Peripheral
Clock Slice code, need use composite specific mux operation.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-composite-8m.c | 5 +++++
 drivers/clk/imx/clk.h              | 7 +++++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index fe05b3c4d4fc..086c9ed68bdf 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -223,6 +223,11 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
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
index f074dd8ec42e..d4ea1609bcb7 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -478,6 +478,7 @@ struct clk_hw *imx_clk_hw_cpu(const char *name, const char *parent_name,
 		struct clk *step);
 
 #define IMX_COMPOSITE_CORE	BIT(0)
+#define IMX_COMPOSITE_BUS	BIT(1)
 
 struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 					    const char * const *parent_names,
@@ -486,6 +487,12 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
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
