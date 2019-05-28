Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF252C77F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:11:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQkctJZHQTd5fSc4mCNBirq0cnwEOwUA/PWKYCPgHPU=; b=XClQSMCRQ/RoUT
	EVA+o1/OtE8fhEg8SfleVGWg3jSVbsk1j4Z5YdECY5woGXEV7Z933NEQ6denRvGPphwcnyuVzY7gM
	4BJApno8Z9q4PiTqAZGBhswG++Q+hAUHuH/WmD9MsvD9+oZGzeUCKOOhSo6NqONM8VyBfn78c4WvV
	18E/D8yBLjXwEWs/bKyBeH3+z3u3xQexwdHo/+aELEromDfgxz9Jq2Jpzsa6FjoKdHfd6diuYc2vf
	6RzqIMy6aa0+KfpoNPzmufjPq6pXFr9F3075BbjVpOc50hcc/6R2X+eqdIhCJEyeNFCk5h4rR0yz0
	GNrKXq6Rd/g1UcrLnxoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbt5-0005Xq-Tw; Tue, 28 May 2019 13:11:31 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbsI-0004l9-IO
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:10:46 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4SDAe2x060659;
 Tue, 28 May 2019 08:10:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559049041;
 bh=qOqfw5a/Yv52Hb5YO9NZcOBoRU8gk4OsPDad4G7Juvo=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ILgDCNNJX89WBoeWBOJUvQvZM05fjkF1yRPWD6zoSuER8ikl8o7laZsE6w5HvxE6A
 niy7XshCiwR91+Osi9nzWJ+LLSPVHBgiJ4gH2N8fadDXpwUXX14Y+/C+dYmln1+ZqM
 JGPC2hqtMpXjE0xmzA0D5R9bYRr6gtYUT8zwdb00=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4SDAem6090506
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 28 May 2019 08:10:40 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 28
 May 2019 08:10:40 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 28 May 2019 08:10:40 -0500
Received: from gomoku.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4SDAVC0079520;
 Tue, 28 May 2019 08:10:38 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-clk@vger.kernel.org>, <sboyd@kernel.org>, <mturquette@baylibre.com>,
 <ssantosh@kernel.org>, <nm@ti.com>
Subject: [PATCHv2 4/5] clk: keystone: sci-clk: extend clock IDs to 32 bits
Date: Tue, 28 May 2019 16:10:23 +0300
Message-ID: <1559049024-30872-5-git-send-email-t-kristo@ti.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559049024-30872-1-git-send-email-t-kristo@ti.com>
References: <1559049024-30872-1-git-send-email-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_061042_995204_CCECD407 
X-CRM114-Status: GOOD (  19.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, the clock identifiers are limited to 255. To support future
SoCs, this muse be extended to 32 bits, which should provide way more
than enough space. Basic support for extending the clock API is going
to be implemented in the firmware driver, but there are some minor
changes that need to be done on the clock driver side first.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/clk/keystone/sci-clk.c | 36 ++++++++++++++++++++++++++++--------
 1 file changed, 28 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/keystone/sci-clk.c b/drivers/clk/keystone/sci-clk.c
index 76ed4cc..7edf8c8 100644
--- a/drivers/clk/keystone/sci-clk.c
+++ b/drivers/clk/keystone/sci-clk.c
@@ -58,8 +58,8 @@ struct sci_clk_provider {
 struct sci_clk {
 	struct clk_hw hw;
 	u16 dev_id;
-	u8 clk_id;
-	u8 num_parents;
+	u32 clk_id;
+	u32 num_parents;
 	struct sci_clk_provider *provider;
 	u8 flags;
 	struct list_head node;
@@ -221,11 +221,11 @@ static int sci_clk_set_rate(struct clk_hw *hw, unsigned long rate,
 static u8 sci_clk_get_parent(struct clk_hw *hw)
 {
 	struct sci_clk *clk = to_sci_clk(hw);
-	u8 parent_id;
+	u32 parent_id = 0;
 	int ret;
 
 	ret = clk->provider->ops->get_parent(clk->provider->sci, clk->dev_id,
-					     clk->clk_id, &parent_id);
+					     clk->clk_id, (void *)&parent_id);
 	if (ret) {
 		dev_err(clk->provider->dev,
 			"get-parent failed for dev=%d, clk=%d, ret=%d\n",
@@ -233,7 +233,9 @@ static u8 sci_clk_get_parent(struct clk_hw *hw)
 		return 0;
 	}
 
-	return parent_id - clk->clk_id - 1;
+	parent_id = parent_id - clk->clk_id - 1;
+
+	return (u8)parent_id;
 }
 
 /**
@@ -417,13 +419,14 @@ static int ti_sci_scan_clocks_from_fw(struct sci_clk_provider *provider)
 	int max_clks = 0;
 	int clk_id = 0;
 	int dev_id = 0;
-	u8 num_parents;
+	u32 num_parents = 0;
 	int gap_size = 0;
 	struct device *dev = provider->dev;
 
 	while (1) {
 		ret = provider->ops->get_num_parents(provider->sci, dev_id,
-						     clk_id, &num_parents);
+						     clk_id,
+						     (void *)&num_parents);
 		if (ret) {
 			gap_size++;
 			if (!clk_id) {
@@ -546,7 +549,7 @@ static int ti_sci_scan_clocks_from_dt(struct sci_clk_provider *provider)
 				provider->ops->get_num_parents(provider->sci,
 							       sci_clk->dev_id,
 							       sci_clk->clk_id,
-							       &sci_clk->num_parents);
+							       (void *)&sci_clk->num_parents);
 				list_add_tail(&sci_clk->node, &clks);
 
 				num_clks++;
@@ -555,6 +558,23 @@ static int ti_sci_scan_clocks_from_dt(struct sci_clk_provider *provider)
 				if (num_parents == 1)
 					num_parents = 0;
 
+				/*
+				 * Linux kernel has inherent limitation
+				 * of 255 clock parents at the moment.
+				 * Right now, it is not expected that
+				 * any mux clock from sci-clk driver
+				 * would exceed that limit either, but
+				 * the ABI basically provides that
+				 * possibility. Print out a warning if
+				 * this happens for any clock.
+				 */
+				if (num_parents >= 255) {
+					dev_warn(dev, "too many parents for dev=%d, clk=%d (%d), cropping to 255.\n",
+						 sci_clk->dev_id,
+						 sci_clk->clk_id, num_parents);
+					num_parents = 255;
+				}
+
 				clk_id = args.args[1] + 1;
 
 				while (num_parents--) {
-- 
1.9.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
