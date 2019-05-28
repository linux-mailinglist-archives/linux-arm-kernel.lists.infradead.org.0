Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8C92C77C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBiI8OVXkyjMelvFk/xyMcPtHhrUJTBf9EZ5Le206+k=; b=UM9lKvFr5bEARQ
	hgfkXc/vKU8oXr3ts7VZ+KF/D9NVMNgSYzdx0tLpohJaPI+t9pVFNVe44v4pzTuMCxTg8+QVBAz+L
	GTMCYN3r0XqE0uX+upbbXzeOgOHW9BBHDMN4c8sMMal43W/OkTU03ehzIL2LQej+MSttPbsGRjymd
	E50FaGdojApwKwLhcdaNA1EBLzm0WnivFUb5cmAQ7Z47Zu5cWlTpYFJIMP3s3BBAmLtI8BGSeKKDk
	m/V6PH1XZZjsQljktjTJ2eNnD164mDSNrXbPtnVSE0MUeC1vcTJS4UQcJEf5+9dGM7a4j4P0tdJUI
	0q8lCcm0DVllgC2lfdTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbsk-000554-3V; Tue, 28 May 2019 13:11:10 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbsF-0004iQ-G9
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:10:40 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4SDAbQK100912;
 Tue, 28 May 2019 08:10:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559049037;
 bh=tDG44Vt4584Rd2sNRDh0O70euESEC+9ovgb60TrmNzk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=knH53MQghvQCilYwoSjgi+cUtuymvehq7tHrFOAF4B7jcHLwk3l/E3CcMIHabVxxC
 Aq/NU/P9dQnzX85BMcMu4sMwIpQWCUBBR2LrnAO7bZ7xtEALnCFxVvPMtOxDw4o4jL
 ebAICOTEj5OAT6lO8vK/wIgFzmdrao+9D6z0ggJ0=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4SDAbJt076625
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 28 May 2019 08:10:37 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 28
 May 2019 08:10:36 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 28 May 2019 08:10:36 -0500
Received: from gomoku.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4SDAVBw079520;
 Tue, 28 May 2019 08:10:35 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-clk@vger.kernel.org>, <sboyd@kernel.org>, <mturquette@baylibre.com>,
 <ssantosh@kernel.org>, <nm@ti.com>
Subject: [PATCHv2 2/5] clk: keystone: sci-clk: split out the fw clock parsing
 to own function
Date: Tue, 28 May 2019 16:10:21 +0300
Message-ID: <1559049024-30872-3-git-send-email-t-kristo@ti.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559049024-30872-1-git-send-email-t-kristo@ti.com>
References: <1559049024-30872-1-git-send-email-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_061039_612664_442C538C 
X-CRM114-Status: GOOD (  16.95  )
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

This makes it both easier to see what the probe does, and also makes it
possible to add alternative implementations for the clock data source.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/clk/keystone/sci-clk.c | 68 +++++++++++++++++++++++++-----------------
 1 file changed, 41 insertions(+), 27 deletions(-)

diff --git a/drivers/clk/keystone/sci-clk.c b/drivers/clk/keystone/sci-clk.c
index e737f24..1e465de 100644
--- a/drivers/clk/keystone/sci-clk.c
+++ b/drivers/clk/keystone/sci-clk.c
@@ -403,22 +403,8 @@ static int ti_sci_init_clocks(struct sci_clk_provider *p)
 };
 MODULE_DEVICE_TABLE(of, ti_sci_clk_of_match);
 
-/**
- * ti_sci_clk_probe - Probe function for the TI SCI clock driver
- * @pdev: platform device pointer to be probed
- *
- * Probes the TI SCI clock device. Allocates a new clock provider
- * and registers this to the common clock framework. Also applies
- * any required flags to the identified clocks via clock lists
- * supplied from DT. Returns 0 for success, negative error value
- * for failure.
- */
-static int ti_sci_clk_probe(struct platform_device *pdev)
+static int ti_sci_scan_clocks_from_fw(struct sci_clk_provider *provider)
 {
-	struct device *dev = &pdev->dev;
-	struct device_node *np = dev->of_node;
-	struct sci_clk_provider *provider;
-	const struct ti_sci_handle *handle;
 	int ret;
 	int num_clks = 0;
 	struct sci_clk **clks = NULL;
@@ -429,18 +415,7 @@ static int ti_sci_clk_probe(struct platform_device *pdev)
 	int dev_id = 0;
 	u8 num_parents;
 	int gap_size = 0;
-
-	handle = devm_ti_sci_get_handle(dev);
-	if (IS_ERR(handle))
-		return PTR_ERR(handle);
-
-	provider = devm_kzalloc(dev, sizeof(*provider), GFP_KERNEL);
-	if (!provider)
-		return -ENOMEM;
-
-	provider->sci = handle;
-	provider->ops = &handle->ops.clk_ops;
-	provider->dev = dev;
+	struct device *dev = provider->dev;
 
 	while (1) {
 		ret = provider->ops->get_num_parents(provider->sci, dev_id,
@@ -501,6 +476,45 @@ static int ti_sci_clk_probe(struct platform_device *pdev)
 
 	devm_kfree(dev, clks);
 
+	return 0;
+}
+
+/**
+ * ti_sci_clk_probe - Probe function for the TI SCI clock driver
+ * @pdev: platform device pointer to be probed
+ *
+ * Probes the TI SCI clock device. Allocates a new clock provider
+ * and registers this to the common clock framework. Also applies
+ * any required flags to the identified clocks via clock lists
+ * supplied from DT. Returns 0 for success, negative error value
+ * for failure.
+ */
+static int ti_sci_clk_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct sci_clk_provider *provider;
+	const struct ti_sci_handle *handle;
+	int ret;
+
+	handle = devm_ti_sci_get_handle(dev);
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+
+	provider = devm_kzalloc(dev, sizeof(*provider), GFP_KERNEL);
+	if (!provider)
+		return -ENOMEM;
+
+	provider->sci = handle;
+	provider->ops = &handle->ops.clk_ops;
+	provider->dev = dev;
+
+	ret = ti_sci_scan_clocks_from_fw(provider);
+	if (ret) {
+		dev_err(dev, "scan clocks from FW failed: %d\n", ret);
+		return ret;
+	}
+
 	ret = ti_sci_init_clocks(provider);
 	if (ret) {
 		pr_err("ti-sci-init-clocks failed.\n");
-- 
1.9.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
