Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6771025F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 15:09:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g2F88BeE7YFDSd8KqTWiDQ4+NCDJMZ/7uJzH18QWb8Y=; b=mlUDRLjcy/sVdk
	UPxYjGP0MciwkWOXsqUR3VHd/+jOeDZnNXnaAOEjr9lbADpcQ9t1nhsqKM2yh91f3R9z8x+xvyRSI
	SHnO7o63xFfL8d9/LPinH/o1IgOb44l+u93WAr0kSCZuDfNMnu6Jp/HMSMHhewJ4WZyPjvmxJTA/H
	3jslKNUCsnXfhG120XotCJYYp/+bqlyxK2OZtlYx/tO3zWzA5N82of+HrTf+oTtSM6//D5gTzgS/k
	sJhJOQDni0p1HlPHW7q/NDzL4MKh4b0CK6EVt97ZsZqifGpj23WQKa5VltIouWYJ/9TV9rcZMMMfx
	kfea7oBsveuu2kEdPQ0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX4Bi-000193-Ef; Tue, 19 Nov 2019 14:09:02 +0000
Received: from mail-eopbgr00089.outbound.protection.outlook.com ([40.107.0.89]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX4BV-00016H-2O
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 14:08:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cwRQVYMZDuPrimu8oN+poGbJVbma27ErfsZNTEAlu4kh9j5eot+BOrFp03l8dbtZ2pEiu2ISNrJSA7G/CNIsl6OI5JAcUelMyz+QR5Sqk/3CcYyx7Bu6nbBw2fDwIqKPCEenQHGdsEOpNUT/ZvHY5UfEKCwBjNBB6FDssWVvZ6dVCXGe5Sl2/5gf686om8F5bDn1LHO7FmunIqmjW26s9rzDck5R9RyzOKrOkCYgiYVOvO4eWkMv6DPvmFIL0zCa8RtqC+Qpo8hI6lXwm/9z8/dwewq3KjxnONCmYondKHpvIsn6W1xzJGVthAWYqS+YrPEWpAlRnFJIZ8ULM4RyvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MZ4OfLCsjHFD/jznR+kbQq2822zCmXWWlrqHQbFvHu8=;
 b=guOf02VSxqGVNEs0YSFTyiiRFRQri/kzFsH3+1EdGXs0Db0rymuy6H5zXuvLJXxWlcFheEaXiJ4T0d9UvfYN5RuCCzAw4R8yGb1WBZtpCbhm1yLB1g3R/EJJ4VOMeZUF94I/bDlEzAk1LcZ2uEyEJY4DY+JCKzFWkdjt3LLzKqV9N3hDe2HQf3GYVxtQTSVRZnKvFjp5AblWTmgSEiRukJovR/5cfyg/knDlPMzzSiviF3c/xZzqtGk0oC1QcXJ93LdbPPFAhOoE/v2Mopfqv6rGXWLfRTSNB7kMEKmf865/keR79qPiSc0lC8HOerKv5sekvN77Mj+mczK2k9SeSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MZ4OfLCsjHFD/jznR+kbQq2822zCmXWWlrqHQbFvHu8=;
 b=VJNH1FY8SYLag8WkC9FnwlLbFC92MwvneH7oN4l6j30y1EWTT0KKWhywjAcDQpOzhKOxvAVu2C8YZot3q3EsFk5LRI84WKflNInXOF0/Q7px8QO8vnSIrAXAXWcNqoCFHR+7hvJgeb/i6YXYlPtA7g5jX/5uJTxvwbU+YbTU0cA=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5428.eurprd04.prod.outlook.com (20.178.113.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Tue, 19 Nov 2019 14:08:39 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2451.029; Tue, 19 Nov 2019
 14:08:39 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Sascha Hauer <kernel@pengutronix.de>, Jacky
 Bai <ping.bai@nxp.com>
Subject: [PATCH 1/9] clk: imx: Replace all the clk based helpers with macros
Thread-Topic: [PATCH 1/9] clk: imx: Replace all the clk based helpers with
 macros
Thread-Index: AQHVnuLXujDGAXBLjEOo3SuHVLGWQQ==
Date: Tue, 19 Nov 2019 14:08:38 +0000
Message-ID: <1574172496-12987-2-git-send-email-abel.vesa@nxp.com>
References: <1574172496-12987-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1574172496-12987-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR04CA0026.eurprd04.prod.outlook.com
 (2603:10a6:208:122::39) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.7.4
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c398c1d4-7454-42d9-58f4-08d76cf9f9b4
x-ms-traffictypediagnostic: AM0PR04MB5428:|AM0PR04MB5428:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB542895607B08973A741C9356F64C0@AM0PR04MB5428.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(39860400002)(376002)(136003)(346002)(189003)(199004)(110136005)(14444005)(256004)(86362001)(316002)(66446008)(66556008)(66476007)(64756008)(66946007)(36756003)(446003)(7736002)(305945005)(186003)(3846002)(6116002)(26005)(5660300002)(478600001)(52116002)(76176011)(99286004)(2616005)(66066001)(54906003)(2906002)(11346002)(6506007)(476003)(44832011)(386003)(6636002)(486006)(6486002)(102836004)(25786009)(8936002)(71200400001)(81156014)(81166006)(71190400001)(50226002)(6512007)(4326008)(6436002)(8676002)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5428;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 99Kyyva7i+Pw3kWT+xnvYzkKbgPHMBmGcLLmzkPrIlJFcVp9d6/2+tDbrs0mUA6OWWRPt9hGcimtjzuWdRRyZsSEirk/w+TyhieGCPZvJtFWEXpNhhQi6dGJzAjrPd/61weO6eDRvY6lCYgllUkPB2dOEkxoFvZUwMQbxhoNk+A75hlUqVo1k+rLg/RictgykHzQBzP0UPo8hPiNDhOMdUntvFoTyIP7mrY9mNuO4fV796dSbyd7Gs8mcj2t0n3JbSkIqnHnUe/webRFSKvyMhbM6r4bo0UkzTvF8k2rPKnt2jCGLN8fpPKcsR9k3Xray7M6rT8HDop35tXM51yi0PfBrskcGcN/aB/BUUXGkPTmT+DO0sY31KHRTZ+m2L8P4F9LAJQoop/Vg3+k838qBeVbE9t/OYaj/Rheoa+YrfG6B8tTbno6394ARUPG8ww7
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c398c1d4-7454-42d9-58f4-08d76cf9f9b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 14:08:39.0006 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: af2wQkYpxKCXYyIK+5W22FvmSm5rHZ1hAzK2iBONA4bI9GQLjkUJLNAgRHWJAOUylXmmZsLx1Z5SL+gFT3qVZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5428
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_060849_116990_800C8538 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replacing with macros all the clk based API helpers we reduce the code
duplication. The end goal is to get rid of all these macros when there
will be no more users of the clk based API, that is, when all the i.MX
clock provider drivers will be switched completely to the clk_hw based
API.

This is another step in moving away from the non clk_hw based API usage
throughout the i.MX clock drivers. The reason for doing that is to
have a clear split between the clock provider and the clock consumer API.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk.h | 39 ++++++++++++---------------------------
 1 file changed, 12 insertions(+), 27 deletions(-)

diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index bc5bb6a..945ce4d 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -73,9 +73,18 @@ extern struct imx_pll14xx_clk imx_1443x_pll;
 #define imx_clk_fixed_factor(name, parent, mult, div) \
 	imx_clk_hw_fixed_factor(name, parent, mult, div)->clk
 
+#define imx_clk_divider(name, parent, reg, shift, width) \
+	imx_clk_hw_divider(name, parent, reg, shift, width)->clk
+
 #define imx_clk_divider2(name, parent, reg, shift, width) \
 	imx_clk_hw_divider2(name, parent, reg, shift, width)->clk
 
+#define imx_clk_divider_flags(name, parent, reg, shift, width, flags) \
+	imx_clk_hw_divider_flags(name, parent, reg, shift, width, flags)->clk
+
+#define imx_clk_gate(name, parent, reg, shift) \
+	imx_clk_hw_gate(name, parent, reg, shift)->clk
+
 #define imx_clk_gate_dis(name, parent, reg, shift) \
 	imx_clk_hw_gate_dis(name, parent, reg, shift)->clk
 
@@ -97,6 +106,9 @@ extern struct imx_pll14xx_clk imx_1443x_pll;
 #define imx_clk_mux(name, reg, shift, width, parents, num_parents) \
 	imx_clk_hw_mux(name, reg, shift, width, parents, num_parents)->clk
 
+#define imx_clk_fixed(name, rate) \
+	imx_clk_hw_fixed(name, rate)->clk
+
 struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
 
@@ -198,11 +210,6 @@ struct clk_hw *imx_clk_hw_fixup_mux(const char *name, void __iomem *reg,
 			      u8 shift, u8 width, const char * const *parents,
 			      int num_parents, void (*fixup)(u32 *val));
 
-static inline struct clk *imx_clk_fixed(const char *name, int rate)
-{
-	return clk_register_fixed_rate(NULL, name, NULL, 0, rate);
-}
-
 static inline struct clk_hw *imx_clk_hw_fixed(const char *name, int rate)
 {
 	return clk_hw_register_fixed_rate(NULL, name, NULL, 0, rate);
@@ -224,13 +231,6 @@ static inline struct clk_hw *imx_clk_hw_fixed_factor(const char *name,
 			CLK_SET_RATE_PARENT, mult, div);
 }
 
-static inline struct clk *imx_clk_divider(const char *name, const char *parent,
-		void __iomem *reg, u8 shift, u8 width)
-{
-	return clk_register_divider(NULL, name, parent, CLK_SET_RATE_PARENT,
-			reg, shift, width, 0, &imx_ccm_lock);
-}
-
 static inline struct clk_hw *imx_clk_hw_divider(const char *name,
 						const char *parent,
 						void __iomem *reg, u8 shift,
@@ -240,14 +240,6 @@ static inline struct clk_hw *imx_clk_hw_divider(const char *name,
 				       reg, shift, width, 0, &imx_ccm_lock);
 }
 
-static inline struct clk *imx_clk_divider_flags(const char *name,
-		const char *parent, void __iomem *reg, u8 shift, u8 width,
-		unsigned long flags)
-{
-	return clk_register_divider(NULL, name, parent, flags,
-			reg, shift, width, 0, &imx_ccm_lock);
-}
-
 static inline struct clk_hw *imx_clk_hw_divider_flags(const char *name,
 						   const char *parent,
 						   void __iomem *reg, u8 shift,
@@ -274,13 +266,6 @@ static inline struct clk *imx_clk_divider2_flags(const char *name,
 			reg, shift, width, 0, &imx_ccm_lock);
 }
 
-static inline struct clk *imx_clk_gate(const char *name, const char *parent,
-		void __iomem *reg, u8 shift)
-{
-	return clk_register_gate(NULL, name, parent, CLK_SET_RATE_PARENT, reg,
-			shift, 0, &imx_ccm_lock);
-}
-
 static inline struct clk_hw *imx_clk_hw_gate_flags(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, unsigned long flags)
 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
