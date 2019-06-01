Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D702531B63
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 12:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQWH5tf/R340NC7Q4/NhkOrgsSIHRBL1+yJqv4Ym81c=; b=WBQWP6Tdr77mQb
	kAAI/IYMW5UumLKaOBWK9MgQFPmoBLPnChlgxwzo8EdLyjm0oinDKMeDbxv4hOgQvuagr180XqPGr
	kuTcLGRk8wS971lpdPJdMDqjrcMamKMU6p/+WmzEcPi5YJXiPbbCDi67xJUIqyUZoEKbnqw915Iij
	6Y1xg5GMdLHh+VQCEgkmfOQtE7KYwwzKHv5/z0h0J2Wn7Lv6HiEUTdoLYkr1fqX/0dUsa8TU1TIRL
	cCCagxWrcS0RIb/axGJFSOPbmXd30ebB7MsqvotCLT7XqvJtL/dy3KvIAldZQiYPFyiLGRlGMwLJ4
	mY+Fb860j7uHy5aadNvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX1XA-0006Xx-Nu; Sat, 01 Jun 2019 10:46:44 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX1Wj-00066O-KE
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 10:46:26 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x51AkDxi017310;
 Sat, 1 Jun 2019 05:46:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559385973;
 bh=BJWt2Gvc7QpU0VaGfTOe51Gq7OLN9SWlxXnnfBBg1Ck=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=OeZ/Lw127zwMqtQc+InsTr4oKs1m0Pkr9pFGvIUAVLekxSP9raW0nc6ntmk0kNqv+
 9yljPNDNMOD74aDcyV/rsYjlRYO6SiIgIOFYkCYVKeKw+pi/h+jRToJHRHfl6nxOQq
 9BrPIKN7Qx6eaHQ9Twsn4zg+XpOsEn69405cmqwc=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x51AkDvt026493
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 1 Jun 2019 05:46:13 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sat, 1 Jun
 2019 05:46:13 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sat, 1 Jun 2019 05:46:13 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x51AkC1S051947;
 Sat, 1 Jun 2019 05:46:12 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: "David S. Miller" <davem@davemloft.net>, Santosh Shilimkar
 <ssantosh@kernel.org>, Richard Cochran <richardcochran@gmail.com>, Rob
 Herring <robh+dt@kernel.org>
Subject: [PATCH net-next 04/10] net: ethernet: ti: cpts: add support for
 rftclk selection
Date: Sat, 1 Jun 2019 13:45:28 +0300
Message-ID: <20190601104534.25790-5-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190601104534.25790-1-grygorii.strashko@ti.com>
References: <20190601104534.25790-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_034618_168628_5E7EBBF3 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Wingman Kwok <w-kwok2@ti.com>, netdev@vger.kernel.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Murali Karicheri <m-karicheri2@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some CPTS instances, which can be found on KeyStone 2 1G Ethernet Switch
Subsystems, can control an external multiplexer that selects one of up to
32 clocks as time sync reference (RFTCLK) clock. This feature can be
configured through CPTS_RFTCLK_SEL register (offset: x08) in CPTS module
and can be represented as multiplexer clock.

Hence, introduce support for optional cpts-refclk-mux clock, which, once
defined will allow to select required CPTS RFTCLK by using
assigned-clock-parents DT property in board files.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 drivers/net/ethernet/ti/cpts.c | 79 +++++++++++++++++++++++++++++++++-
 drivers/net/ethernet/ti/cpts.h |  2 +-
 2 files changed, 79 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/ti/cpts.c b/drivers/net/ethernet/ti/cpts.c
index 0e79f9743c19..1f67b25d7932 100644
--- a/drivers/net/ethernet/ti/cpts.c
+++ b/drivers/net/ethernet/ti/cpts.c
@@ -5,6 +5,7 @@
  * Copyright (C) 2012 Richard Cochran <richardcochran@gmail.com>
  *
  */
+#include <linux/clk-provider.h>
 #include <linux/err.h>
 #include <linux/if.h>
 #include <linux/hrtimer.h>
@@ -532,6 +533,82 @@ static void cpts_calc_mult_shift(struct cpts *cpts)
 		 freq, cpts->cc.mult, cpts->cc.shift, (ns - NSEC_PER_SEC));
 }
 
+static int cpts_of_mux_clk_setup(struct cpts *cpts, struct device_node *node)
+{
+	unsigned int num_parents;
+	const char **parent_names;
+	struct device_node *refclk_np;
+	struct clk_hw *clk_hw;
+	u32 *mux_table;
+	int ret = -EINVAL;
+
+	refclk_np = of_get_child_by_name(node, "cpts-refclk-mux");
+	if (!refclk_np)
+		/* refclk selection supported not for all SoCs */
+		return 0;
+
+	num_parents = of_clk_get_parent_count(refclk_np);
+	if (num_parents < 1) {
+		dev_err(cpts->dev, "mux-clock %s must have parents\n",
+			refclk_np->name);
+		goto mux_fail;
+	}
+
+	parent_names = devm_kzalloc(cpts->dev, (sizeof(char *) * num_parents),
+				    GFP_KERNEL);
+
+	mux_table = devm_kzalloc(cpts->dev, sizeof(*mux_table) * num_parents,
+				 GFP_KERNEL);
+	if (!mux_table || !parent_names) {
+		ret = -ENOMEM;
+		goto mux_fail;
+	}
+
+	of_clk_parent_fill(refclk_np, parent_names, num_parents);
+
+	ret = of_property_read_variable_u32_array(refclk_np, "ti,mux-tbl",
+						  mux_table,
+						  num_parents, num_parents);
+	if (ret < 0)
+		goto mux_fail;
+
+	clk_hw = clk_hw_register_mux_table(cpts->dev, refclk_np->name,
+					   parent_names, num_parents,
+					   0,
+					   &cpts->reg->rftclk_sel, 0, 0x1F,
+					   0, mux_table, NULL);
+	if (IS_ERR(clk_hw)) {
+		ret = PTR_ERR(clk_hw);
+		goto mux_fail;
+	}
+
+	ret = devm_add_action_or_reset(cpts->dev,
+				       (void(*)(void *))clk_hw_unregister_mux,
+				       clk_hw);
+	if (ret) {
+		dev_err(cpts->dev, "add clkmux unreg action %d", ret);
+		goto mux_fail;
+	}
+
+	ret = of_clk_add_hw_provider(refclk_np, of_clk_hw_simple_get, clk_hw);
+	if (ret)
+		goto mux_fail;
+
+	ret = devm_add_action_or_reset(cpts->dev,
+				       (void(*)(void *))of_clk_del_provider,
+				       refclk_np);
+	if (ret) {
+		dev_err(cpts->dev, "add clkmux provider unreg action %d", ret);
+		goto mux_fail;
+	}
+
+	return ret;
+
+mux_fail:
+	of_node_put(refclk_np);
+	return ret;
+}
+
 static int cpts_of_parse(struct cpts *cpts, struct device_node *node)
 {
 	int ret = -EINVAL;
@@ -547,7 +624,7 @@ static int cpts_of_parse(struct cpts *cpts, struct device_node *node)
 	    (!cpts->cc.mult && cpts->cc.shift))
 		goto of_error;
 
-	return 0;
+	return cpts_of_mux_clk_setup(cpts, node);
 
 of_error:
 	dev_err(cpts->dev, "CPTS: Missing property in the DT.\n");
diff --git a/drivers/net/ethernet/ti/cpts.h b/drivers/net/ethernet/ti/cpts.h
index 024aab6af12f..bb997c11ee15 100644
--- a/drivers/net/ethernet/ti/cpts.h
+++ b/drivers/net/ethernet/ti/cpts.h
@@ -24,7 +24,7 @@
 struct cpsw_cpts {
 	u32 idver;                /* Identification and version */
 	u32 control;              /* Time sync control */
-	u32 res1;
+	u32 rftclk_sel;		  /* Reference Clock Select Register */
 	u32 ts_push;              /* Time stamp event push */
 	u32 ts_load_val;          /* Time stamp load value */
 	u32 ts_load_en;           /* Time stamp load enable */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
