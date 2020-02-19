Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655EA164111
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:00:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+H0nLeWOWCInPURx1t6U4VafBtNY+Gy39k0BA7/pFak=; b=U93YWeN7osPwcJ
	OD9/ykHWM+g8pT3XssmenDGYTBl9OTqMqrFUAOTs0dHXcfihx27TgzLSDWYPdmCAzb2VE2RR9irTL
	q5gFIlJNqXuQpI8x5MXjoM086m59lFLtaJKFecQgZBp6xkjsYXGFy8AwkLHJr9Bqwd2odR4Ajmpvl
	wxQNn8Qj56Ur1sZf/O12HHbFV3wvcHjws1qqJ02whOM6RK0IvBYvkYGBYqWKt1qIsX4tALaDs7a8O
	MQhXAHIungnG5N504ULm3OZ6d05GybTiL6U1SeCKYlUGPoz89YcQTbIYvkAUFpqAfFhlEOsFWUaWB
	oXeAW1ExbZv/h9m34otw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4M9X-0003Ea-2W; Wed, 19 Feb 2020 10:00:23 +0000
Received: from mail-am6eur05on2060.outbound.protection.outlook.com
 ([40.107.22.60] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4M8x-0001ly-Bw
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:59:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GO48n4j52t4Ssk8W8OyhL14cdZlVQB29HQ7MOzUUSKf/e4GGGfZYdNkpdUPpKoffMDXaBN3HOUmwalCBETAiJCPHfbPd7G3HRGLc8RNh2wKeq4ib7O7JhmtB3+jYXBpTgd2I8A78ppVhmBuA75dQuWNcUWK/HUi0MPyam4o95l4tMv2A6tjOefdq2MZ8mtiPx9TrwAHlM+NMe1WOC/vj/pN2/Rqx6AmMsJF6suW2MrMeoFXVoEut5X7Ue4zNjz3vQt4LciTF0TZl3qRndiZac0tM7i7wWNGx1Bvq9OHOpkzWfrJqumLg6jZP0pdZemRs43OLMdEPR2Q8Rrv/i8umjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UQRxFIy1AfALFm/4u59sX/9uuvMQubv02iJvi7xtDBY=;
 b=AALJSik5VsNKsceYfm1h378fPFQGQz31qzPxU1fDsSMj24RFo6Y6ttjLiCljso4GqB85SkOWzXH9Zyam6ZkOiERrYqv52Wek+ES6hXc3/GII5wwL4p6KakMJUCUJyornUk2lMsRJKSFtAIyiVRPi7uiZqDYqAlPghQ8DeihepV5Wz31K5xfyfsZaNFFRnLJ1DMQgGufa+FxE7JzusbYG5tPP2BVMdz5CE3FMNJnVdbHqijoLBSZDxYMTtXyNYTVedol0oZheofCxI6tCN1WLwc4pj8jAYlbHhME/gc6wuoT/1ODXiyupPoBXro2keI7Q25CVSKx+W0+1JBMoPpt6Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UQRxFIy1AfALFm/4u59sX/9uuvMQubv02iJvi7xtDBY=;
 b=CKQj2OjoL4kvQqAARQBjC/6Lv8jqhNbcdvNbbMeSn/+/D/PDrqIlK6EDxHU8l4wvuGfocxxjr4fKbEQ9hBnjSwLZuUI+kJweViDDCB7OaHPkn8bvqQec7UTobvfhHuqrF/Z7a+KJAZGVWsTXc1COflqvxXarRLJoPlMrEAxazDU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6514.eurprd04.prod.outlook.com (20.179.254.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Wed, 19 Feb 2020 09:59:44 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 09:59:44 +0000
From: peng.fan@nxp.com
To: sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, abel.vesa@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH V3 1/4] clk: imx: composite-8m: add imx8m_clk_hw_composite_core
Date: Wed, 19 Feb 2020 17:53:35 +0800
Message-Id: <1582106022-20926-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582106022-20926-1-git-send-email-peng.fan@nxp.com>
References: <1582106022-20926-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK2PR0302CA0008.apcprd03.prod.outlook.com
 (2603:1096:202::18) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0302CA0008.apcprd03.prod.outlook.com (2603:1096:202::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.8 via Frontend Transport; Wed, 19 Feb 2020 09:59:39 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: eb7bbb8d-db4a-4070-c23a-08d7b52271e0
X-MS-TrafficTypeDiagnostic: AM0PR04MB6514:|AM0PR04MB6514:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6514C7E1864E79C0D5778E6D88100@AM0PR04MB6514.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(189003)(199004)(4326008)(2616005)(956004)(6512007)(5660300002)(8936002)(9686003)(16526019)(186003)(478600001)(81166006)(81156014)(8676002)(36756003)(2906002)(6486002)(6506007)(86362001)(66946007)(52116002)(69590400006)(66556008)(66476007)(316002)(6666004)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6514;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oCdmfLr0Aief1Inn9DCOPo+7qIe7aoaUGVM6hdAzjlviQpOk59oVxmcbgm/7Q6hJauA9wBzdSdy4izaU90gI+kYjBne2XH3nEikaxbFYi1lyzyvQfo8ORY04POzd3YlHF06YQBJyelZufFU56l50ljHb+zj8Rc7452NrZWyu/a7nCYrkzkCKRdsKZdkzxv1pJzcvRHo3YOh6grjV1Tbf+cZL9csXL9AHN6YaBgKiyRhf0i/1N3F3JR0R73qNax/jLbRzRpe6ZDHkT9p9LYMs0lyDwQpeJUVr+m5opJehPEeZ8pJMBI8mUW4FcUtBc/1chRHtI+fZiH3oWBMdoP4Biez3cebgIG3K7PBwa9kvb4vvVpPaE7EArqgODvdS7Vg/LmnRqO81hB9S+VJ+/9Ssva5wdMfFVhPHI07x6wO69T/PPLwVsDFGdyLCE27+Oen6oodfU4iypCsHn3Oa2VLx67KDPegYZfG0iuronI0D4FcxkG/n27GruN8rjSwNgwnZ30KCBVx3XxfgbdUQwWAfjwYQqYvLWyWKKaWnNZqAR94=
X-MS-Exchange-AntiSpam-MessageData: nkOpPJIvAfYqHMOa4Sur1x5wHhkw8+bk1B1hvQCTRK+NOMwd+UJkhWVUAO1uvkhTewVaRoEGJEX5ullLfDp6Pn7DUBkplCeA7VdDAPpKWqcSz8MtTRMCj6jQ2hNPA0pwnqx7lvvrvO9aHphU8/oYSw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb7bbb8d-db4a-4070-c23a-08d7b52271e0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 09:59:44.2164 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tuR5FiYSqmbIDK9/QtPWm3mmDOroa4zUOlfqU4FtPmtvRXQP8dYV5dd8zzEJ8JgEP/fVTOK4CFUzD304TKcwcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6514
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_015947_442097_FC097642 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, ping.bai@nxp.com,
 anson.huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

There are several clock slices, current composite code
only support bus/ip clock slices, it could not support core
slice.

So introduce a new API imx8m_clk_hw_composite_core to support
core slice. To core slice, post divider with 3 bits width and
no pre divider. Other fields are same as bus/ip slices.

Add a flag IMX_COMPOSITE_CORE for the usecase.

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-composite-8m.c | 18 ++++++++++++++----
 drivers/clk/imx/clk.h              | 13 +++++++++++--
 2 files changed, 25 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index e0f25983e80f..4174506e8bdd 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -15,6 +15,7 @@
 #define PCG_PREDIV_MAX		8
 
 #define PCG_DIV_SHIFT		0
+#define PCG_CORE_DIV_WIDTH	3
 #define PCG_DIV_WIDTH		6
 #define PCG_DIV_MAX		64
 
@@ -126,6 +127,7 @@ static const struct clk_ops imx8m_clk_composite_divider_ops = {
 struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 					const char * const *parent_names,
 					int num_parents, void __iomem *reg,
+					u32 composite_flags,
 					unsigned long flags)
 {
 	struct clk_hw *hw = ERR_PTR(-ENOMEM), *mux_hw;
@@ -133,6 +135,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 	struct clk_divider *div = NULL;
 	struct clk_gate *gate = NULL;
 	struct clk_mux *mux = NULL;
+	const struct clk_ops *divider_ops;
 
 	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
 	if (!mux)
@@ -149,8 +152,16 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 
 	div_hw = &div->hw;
 	div->reg = reg;
-	div->shift = PCG_PREDIV_SHIFT;
-	div->width = PCG_PREDIV_WIDTH;
+	if (composite_flags & IMX_COMPOSITE_CORE) {
+		div->shift = PCG_DIV_SHIFT;
+		div->width = PCG_CORE_DIV_WIDTH;
+		divider_ops = &clk_divider_ops;
+	} else {
+		div->shift = PCG_PREDIV_SHIFT;
+		div->width = PCG_PREDIV_WIDTH;
+		divider_ops = &imx8m_clk_composite_divider_ops;
+	}
+
 	div->lock = &imx_ccm_lock;
 	div->flags = CLK_DIVIDER_ROUND_CLOSEST;
 
@@ -164,8 +175,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 
 	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
 			mux_hw, &clk_mux_ops, div_hw,
-			&imx8m_clk_composite_divider_ops,
-			gate_hw, &clk_gate_ops, flags);
+			divider_ops, gate_hw, &clk_gate_ops, flags);
 	if (IS_ERR(hw))
 		goto fail;
 
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index b05213b91dcf..f074dd8ec42e 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -477,20 +477,29 @@ struct clk_hw *imx_clk_hw_cpu(const char *name, const char *parent_name,
 		struct clk *div, struct clk *mux, struct clk *pll,
 		struct clk *step);
 
+#define IMX_COMPOSITE_CORE	BIT(0)
+
 struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 					    const char * const *parent_names,
 					    int num_parents,
 					    void __iomem *reg,
+					    u32 composite_flags,
 					    unsigned long flags);
 
+#define imx8m_clk_hw_composite_core(name, parent_names, reg)	\
+	imx8m_clk_hw_composite_flags(name, parent_names, \
+			ARRAY_SIZE(parent_names), reg, \
+			IMX_COMPOSITE_CORE, \
+			CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE)
+
 #define imx8m_clk_composite_flags(name, parent_names, num_parents, reg, \
 				  flags) \
 	to_clk(imx8m_clk_hw_composite_flags(name, parent_names, \
-				num_parents, reg, flags))
+				num_parents, reg, 0, flags))
 
 #define __imx8m_clk_hw_composite(name, parent_names, reg, flags) \
 	imx8m_clk_hw_composite_flags(name, parent_names, \
-		ARRAY_SIZE(parent_names), reg, \
+		ARRAY_SIZE(parent_names), reg, 0, \
 		flags | CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE)
 
 #define __imx8m_clk_composite(name, parent_names, reg, flags) \
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
