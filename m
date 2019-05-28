Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4430B2C77E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffba6X8xhkHic/hTbwDpASellb+S+zdqFPKTw2bAeQI=; b=BFdlvzI9jK9e20
	SqWH245b90koNjz2A2DDfoIg/gHvrWWzh5dXq2VoHXPfQcoMvJHEirFzZtIx1MObE0KDWGLD5AGjU
	r9m1xpHjX46GhExoK3TwYtXOmIv6QuitmQh1vUlGs+VgLXwt9katBCFjB4oK7VEr3N2w6pKAzF4Mx
	uslIqNJuMceqpFk2f/3unE1EroHcLV26q1BejYjW2Fw/pbi1witma6yFi/B5BBbgm9Yx4G5eqkX0V
	5JKurKcE9EqWQsvbcHByQm7A8cNavf2xGuJY00Koc0r6l5Pv7NQ6LRfRsL3Yo7pbz8rWjfQoqbiPG
	3XjkCYkyf5DIg2VxsZGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbsu-0005JM-Cu; Tue, 28 May 2019 13:11:20 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbsG-0004j1-OI
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:10:44 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4SDAdId100918;
 Tue, 28 May 2019 08:10:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559049039;
 bh=FIEuuze6CtJx0isON7HPLjAq0MevsJSjwvl6bTmHscc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=QCA1U2YczTlhMZHr/IjTlQlHZ7Z/rxnnAimrzFCga9uia9CGO06hWa4KOtQks9AOl
 Bv91oG/EAiM+KS29OtiyvHmUVjXzGo5wAWHJA0avb/UP1oFYj2HAEv4ZLUu4qxkfuN
 WKqoLLGUJiuNvHmbc/305rPBT5WzMcED52IZbXZ4=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4SDAdpC076670
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 28 May 2019 08:10:39 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 28
 May 2019 08:10:38 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 28 May 2019 08:10:38 -0500
Received: from gomoku.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4SDAVBx079520;
 Tue, 28 May 2019 08:10:37 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-clk@vger.kernel.org>, <sboyd@kernel.org>, <mturquette@baylibre.com>,
 <ssantosh@kernel.org>, <nm@ti.com>
Subject: [PATCHv2 3/5] clk: keystone: sci-clk: probe clocks from DT instead of
 firmware
Date: Tue, 28 May 2019 16:10:22 +0300
Message-ID: <1559049024-30872-4-git-send-email-t-kristo@ti.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559049024-30872-1-git-send-email-t-kristo@ti.com>
References: <1559049024-30872-1-git-send-email-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_061040_930534_A40E319A 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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

Probing all the available clocks from the PM firmware takes quite a lot
of time, increasing boot time. Instead, implement functionality that
parses only the used clocks from DT, and registers these to clock core.
This way, the boot time is greatly improved.

Additionally, provide a Kconfig option for parsing all the clocks from
firmware, if someone requires this. It is mostly useful as a debugging
functionality if we want to inspect the whole clock tree.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/clk/keystone/Kconfig   |  11 ++++
 drivers/clk/keystone/sci-clk.c | 130 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 141 insertions(+)

diff --git a/drivers/clk/keystone/Kconfig b/drivers/clk/keystone/Kconfig
index b04927d..aaaee7d 100644
--- a/drivers/clk/keystone/Kconfig
+++ b/drivers/clk/keystone/Kconfig
@@ -14,3 +14,14 @@ config TI_SCI_CLK
 	  This adds the clock driver support over TI System Control Interface.
 	  If you wish to use clock resources from the PMMC firmware, say Y.
 	  Otherwise, say N.
+
+config TI_SCI_CLK_PROBE_FROM_FW
+	bool "Probe available clocks from firmware"
+	depends on TI_SCI_CLK
+	default n
+	help
+	  Forces the TI SCI clock driver to probe available clocks from the
+	  firmware. By default, only the used clocks are probed from DT.
+	  This is mostly only useful for debugging purposes, and will
+	  increase the boot time of the device. If you want the clocks probed
+	  from firmware, say Y. Otherwise, say N.
diff --git a/drivers/clk/keystone/sci-clk.c b/drivers/clk/keystone/sci-clk.c
index 1e465de..76ed4cc 100644
--- a/drivers/clk/keystone/sci-clk.c
+++ b/drivers/clk/keystone/sci-clk.c
@@ -23,6 +23,7 @@
 #include <linux/slab.h>
 #include <linux/soc/ti/ti_sci_protocol.h>
 #include <linux/bsearch.h>
+#include <linux/list_sort.h>
 
 #define SCI_CLK_SSC_ENABLE		BIT(0)
 #define SCI_CLK_ALLOW_FREQ_CHANGE	BIT(1)
@@ -52,6 +53,7 @@ struct sci_clk_provider {
  * @num_parents: Number of parents for this clock
  * @provider:	 Master clock provider
  * @flags:	 Flags for the clock
+ * @node:	 Link for handling clocks probed via DT
  */
 struct sci_clk {
 	struct clk_hw hw;
@@ -60,6 +62,7 @@ struct sci_clk {
 	u8 num_parents;
 	struct sci_clk_provider *provider;
 	u8 flags;
+	struct list_head node;
 };
 
 #define to_sci_clk(_hw) container_of(_hw, struct sci_clk, hw)
@@ -403,6 +406,7 @@ static int ti_sci_init_clocks(struct sci_clk_provider *p)
 };
 MODULE_DEVICE_TABLE(of, ti_sci_clk_of_match);
 
+#ifdef CONFIG_TI_SCI_CLK_PROBE_FROM_FW
 static int ti_sci_scan_clocks_from_fw(struct sci_clk_provider *provider)
 {
 	int ret;
@@ -479,6 +483,124 @@ static int ti_sci_scan_clocks_from_fw(struct sci_clk_provider *provider)
 	return 0;
 }
 
+#else
+
+static int _cmp_sci_clk_list(void *priv, struct list_head *a,
+			     struct list_head *b)
+{
+	struct sci_clk *ca = container_of(a, struct sci_clk, node);
+	struct sci_clk *cb = container_of(b, struct sci_clk, node);
+
+	return _cmp_sci_clk(ca, &cb);
+}
+
+static int ti_sci_scan_clocks_from_dt(struct sci_clk_provider *provider)
+{
+	struct device *dev = provider->dev;
+	struct device_node *np = NULL;
+	int ret;
+	int index;
+	struct of_phandle_args args;
+	struct list_head clks;
+	struct sci_clk *sci_clk, *prev;
+	int num_clks = 0;
+	int num_parents;
+	int clk_id;
+	const char * const clk_names[] = {
+		"clocks", "assigned-clocks", "assigned-clock-parents", NULL
+	};
+	const char * const *clk_name;
+
+	INIT_LIST_HEAD(&clks);
+
+	clk_name = clk_names;
+
+	while (*clk_name) {
+		np = of_find_node_with_property(np, *clk_name);
+		if (!np) {
+			clk_name++;
+			break;
+		}
+
+		if (!of_device_is_available(np))
+			continue;
+
+		index = 0;
+
+		do {
+			ret = of_parse_phandle_with_args(np, *clk_name,
+							 "#clock-cells", index,
+							 &args);
+			if (ret)
+				break;
+
+			if (args.args_count == 2 && args.np == dev->of_node) {
+				sci_clk = devm_kzalloc(dev, sizeof(*sci_clk),
+						       GFP_KERNEL);
+				if (!sci_clk)
+					return -ENOMEM;
+
+				sci_clk->dev_id = args.args[0];
+				sci_clk->clk_id = args.args[1];
+				sci_clk->provider = provider;
+				provider->ops->get_num_parents(provider->sci,
+							       sci_clk->dev_id,
+							       sci_clk->clk_id,
+							       &sci_clk->num_parents);
+				list_add_tail(&sci_clk->node, &clks);
+
+				num_clks++;
+
+				num_parents = sci_clk->num_parents;
+				if (num_parents == 1)
+					num_parents = 0;
+
+				clk_id = args.args[1] + 1;
+
+				while (num_parents--) {
+					sci_clk = devm_kzalloc(dev,
+							       sizeof(*sci_clk),
+							       GFP_KERNEL);
+					if (!sci_clk)
+						return -ENOMEM;
+					sci_clk->dev_id = args.args[0];
+					sci_clk->clk_id = clk_id++;
+					sci_clk->provider = provider;
+					list_add_tail(&sci_clk->node, &clks);
+
+					num_clks++;
+				}
+			}
+
+			index++;
+		} while (args.np);
+	}
+
+	list_sort(NULL, &clks, _cmp_sci_clk_list);
+
+	provider->clocks = devm_kmalloc_array(dev, num_clks, sizeof(sci_clk),
+					      GFP_KERNEL);
+	if (!provider->clocks)
+		return -ENOMEM;
+
+	num_clks = 0;
+	prev = NULL;
+
+	list_for_each_entry(sci_clk, &clks, node) {
+		if (prev && prev->dev_id == sci_clk->dev_id &&
+		    prev->clk_id == sci_clk->clk_id)
+			continue;
+
+		provider->clocks[num_clks++] = sci_clk;
+		prev = sci_clk;
+	}
+
+	provider->num_clocks = num_clks;
+
+	return 0;
+}
+#endif
+
 /**
  * ti_sci_clk_probe - Probe function for the TI SCI clock driver
  * @pdev: platform device pointer to be probed
@@ -509,11 +631,19 @@ static int ti_sci_clk_probe(struct platform_device *pdev)
 	provider->ops = &handle->ops.clk_ops;
 	provider->dev = dev;
 
+#ifdef CONFIG_TI_SCI_CLK_PROBE_FROM_FW
 	ret = ti_sci_scan_clocks_from_fw(provider);
 	if (ret) {
 		dev_err(dev, "scan clocks from FW failed: %d\n", ret);
 		return ret;
 	}
+#else
+	ret = ti_sci_scan_clocks_from_dt(provider);
+	if (ret) {
+		dev_err(dev, "scan clocks from DT failed: %d\n", ret);
+		return ret;
+	}
+#endif
 
 	ret = ti_sci_init_clocks(provider);
 	if (ret) {
-- 
1.9.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
