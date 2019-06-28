Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 594CB59538
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 09:41:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lRWxAHjn+oAP1f/HPOVpK+GPSEyW7memDrCd0XDwskA=; b=EA4hUfy+gRUVVNYo2/qZ0qciO+
	WW8MPX+5kSDS9TGo88DtoyGeXUdjhyfdhwUFVH6FCxYTWBdpA+rcdk2wG3lwcCeS7FDGnCpgX7M7L
	oK7uKmnl0F71PqL1ATp6IkAeFjjfrfg5R3I5Al9ulb0EStzftgwoqa0tXcuVD4xAkDdQI12BZQomq
	guNmeTqANG1V0REEuCSFF7Tukyd9TwaSE/TTdENXqM85CC0bQo3xga5abPAPQO4coPEnBSXxia+IC
	1CgrbqnpZ3x2bn4YXzQkUxRH4cBmeRGnzALg4rrpAkLL7qb3Z8e71GiPsG8/4iafo3QQ8aMAQpxtt
	0YBXqZYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hglVc-0008Uq-Bp; Fri, 28 Jun 2019 07:41:24 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hglUK-0006uA-E7
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 07:40:07 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BE8C4200D4A;
 Fri, 28 Jun 2019 09:40:02 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B07732001D2;
 Fri, 28 Jun 2019 09:40:02 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id C2C24205D5;
 Fri, 28 Jun 2019 09:40:01 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Viresh Kumar <viresh.kumar@linaro.org>
Subject: [RFCv2 2/8] clk: imx8m-composite: Switch to determine_rate
Date: Fri, 28 Jun 2019 10:39:50 +0300
Message-Id: <5d62b31309e6402bd9fa608730518b39af823fb3.1561707104.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1561707104.git.leonard.crestez@nxp.com>
References: <cover.1561707104.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1561707104.git.leonard.crestez@nxp.com>
References: <cover.1561707104.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_004004_786246_2D2BAF61 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-pm@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This allows consumers to use min_rate max_rate.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/clk/imx/clk-composite-8m.c | 34 +++++++++++++++++++-----------
 1 file changed, 22 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index 388bdb94f841..1be82ec08ecd 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -45,10 +45,12 @@ static unsigned long imx8m_clk_composite_divider_recalc_rate(struct clk_hw *hw,
 				   divider->flags, PCG_DIV_WIDTH);
 }
 
 static int imx8m_clk_composite_compute_dividers(unsigned long rate,
 						unsigned long parent_rate,
+						unsigned long min_rate,
+						unsigned long max_rate,
 						int *prediv, int *postdiv)
 {
 	int div1, div2;
 	int error = INT_MAX;
 	int ret = -EINVAL;
@@ -56,11 +58,17 @@ static int imx8m_clk_composite_compute_dividers(unsigned long rate,
 	*prediv = 1;
 	*postdiv = 1;
 
 	for (div1 = 1; div1 <= PCG_PREDIV_MAX; div1++) {
 		for (div2 = 1; div2 <= PCG_DIV_MAX; div2++) {
-			int new_error = ((parent_rate / div1) / div2) - rate;
+			unsigned long new_rate;
+			int new_error;
+
+			new_rate = ((parent_rate / div1) / div2);
+			if (new_rate < min_rate || new_rate > max_rate)
+				continue;
+			new_error = new_rate - rate;
 
 			if (abs(new_error) < abs(error)) {
 				*prediv = div1;
 				*postdiv = div2;
 				error = new_error;
@@ -69,38 +77,40 @@ static int imx8m_clk_composite_compute_dividers(unsigned long rate,
 		}
 	}
 	return ret;
 }
 
-static long imx8m_clk_composite_divider_round_rate(struct clk_hw *hw,
-						unsigned long rate,
-						unsigned long *prate)
+static int imx8m_clk_composite_divider_determine_rate(struct clk_hw *hw,
+						       struct clk_rate_request *req)
 {
 	int prediv_value;
 	int div_value;
 
-	imx8m_clk_composite_compute_dividers(rate, *prate,
-						&prediv_value, &div_value);
-	rate = DIV_ROUND_UP(*prate, prediv_value);
+	imx8m_clk_composite_compute_dividers(req->rate, req->best_parent_rate,
+					     req->min_rate, req->max_rate,
+					     &prediv_value, &div_value);
 
-	return DIV_ROUND_UP(rate, div_value);
+	req->rate = DIV_ROUND_UP(req->best_parent_rate, prediv_value);
+	req->rate = DIV_ROUND_UP(req->rate, div_value);
 
+	return 0;
 }
 
 static int imx8m_clk_composite_divider_set_rate(struct clk_hw *hw,
-					unsigned long rate,
-					unsigned long parent_rate)
+						unsigned long rate,
+						unsigned long parent_rate)
 {
 	struct clk_divider *divider = to_clk_divider(hw);
 	unsigned long flags = 0;
 	int prediv_value;
 	int div_value;
 	int ret;
 	u32 val;
 
 	ret = imx8m_clk_composite_compute_dividers(rate, parent_rate,
-						&prediv_value, &div_value);
+						   0, ULONG_MAX,
+						   &prediv_value, &div_value);
 	if (ret)
 		return -EINVAL;
 
 	spin_lock_irqsave(divider->lock, flags);
 
@@ -117,11 +127,11 @@ static int imx8m_clk_composite_divider_set_rate(struct clk_hw *hw,
 	return ret;
 }
 
 static const struct clk_ops imx8m_clk_composite_divider_ops = {
 	.recalc_rate = imx8m_clk_composite_divider_recalc_rate,
-	.round_rate = imx8m_clk_composite_divider_round_rate,
+	.determine_rate = imx8m_clk_composite_divider_determine_rate,
 	.set_rate = imx8m_clk_composite_divider_set_rate,
 };
 
 struct clk *imx8m_clk_composite_flags(const char *name,
 					const char * const *parent_names,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
