Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6AA127437
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 04:52:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EOsoN1x5GOf/g/nr0e8IIJRDCeom+BM9wbKcAqtRBwA=; b=gxiaXcEIQtsJ8i
	4LAXNuyQy5MmHug2sUkz1Mz2WYXmh6UnNYWja2Z09Mf+bwpMI95KVirZhmbGsWYinIqd2pDAHlFaK
	3TvP9impaIJPPE6P7Zes65VYAdzwGmLcoP0wDmIEAY+y+geXy/tcZY40EBSkNL9BOqIsEKP5XzT34
	Ho2lh1cYMfG4zDb7/0cvkQffLf6sBznW0HXBrWadh9cFSNuK/Av4IcP+sYzWtH0Navsc3gEIR8J/d
	bGgEqLnDdDol1Jfr++rtLmIRYRuZK4ttAVTVEt8XPpsUk+W6u1yBInsaegnNWKcq1t93d4G4uVxwk
	fvewIJ8dqv96NFzmrYow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii9LD-0007yb-9s; Fri, 20 Dec 2019 03:52:39 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii9Jo-0006qo-0f; Fri, 20 Dec 2019 03:51:13 +0000
X-UUID: 0bd705c82a6d4b67b4438dba854ff845-20191219
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=w8agqSkABPe2gpBFFdaj1Yu7esFJCdenNL3aq1JoRvw=; 
 b=e/HnjBMBLGpgHL5pXlaaJJWFGo5cLW22hLuwwSY7mhcI8qlxXQY/Tx1YTKnHdz6t4L3e3mQbzaBwxAOwhl0qZ8M1RR4YswJzmXEncX7vk8g97NyHgF0CCyOm/emKPJjGGcjXzymz4nPBWf8tKHQB2EnDDr3+LKj5LIWKt4lbTqs=;
X-UUID: 0bd705c82a6d4b67b4438dba854ff845-20191219
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 974706840; Thu, 19 Dec 2019 19:51:07 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Dec 2019 19:46:34 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 11:45:50 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 20 Dec 2019 11:46:07 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, Sascha Hauer
 <kernel@pengutronix.de>
Subject: [PATCH v11 06/10] soc: mediatek: Add subsys clock control for bus
 protection
Date: Fri, 20 Dec 2019 11:46:00 +0800
Message-ID: <1576813564-23927-7-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1576813564-23927-1-git-send-email-weiyi.lu@mediatek.com>
References: <1576813564-23927-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_195112_075101_215B417E 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add subsys CG control flow before/after the bus protect control
due to bus protection need SMI bus relative CGs enabled to feedback
its ack.

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>
---
 drivers/soc/mediatek/mtk-scpsys.c | 72 +++++++++++++++++++++++++++++++++++++--
 1 file changed, 70 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
index 763ca58..32be4b3 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -79,6 +79,7 @@
 #define PWR_STATUS_WB			BIT(27)	/* MT7622 */
 
 #define MAX_CLKS	3
+#define MAX_SUBSYS_CLKS 10
 
 /**
  * struct scp_domain_data - scp domain data for power on/off flow
@@ -88,6 +89,8 @@
  * @sram_pdn_bits: The mask for sram power control bits.
  * @sram_pdn_ack_bits: The mask for sram power control acked bits.
  * @basic_clk_name: The basic clocks required by this power domain.
+ * @subsys_clk_prefix: The prefix name of the clocks need to be enabled
+ *                     before releasing bus protection.
  * @caps: The flag for active wake-up action.
  * @bp_table: The mask table for multiple step bus protection.
  */
@@ -98,6 +101,7 @@ struct scp_domain_data {
 	u32 sram_pdn_bits;
 	u32 sram_pdn_ack_bits;
 	const char *basic_clk_name[MAX_CLKS];
+	const char *subsys_clk_prefix;
 	u8 caps;
 	struct bus_prot bp_table[MAX_STEPS];
 };
@@ -108,6 +112,7 @@ struct scp_domain {
 	struct generic_pm_domain genpd;
 	struct scp *scp;
 	struct clk *clk[MAX_CLKS];
+	struct clk *subsys_clk[MAX_SUBSYS_CLKS];
 	const struct scp_domain_data *data;
 	struct regulator *supply;
 };
@@ -301,16 +306,22 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
 	val |= PWR_RST_B_BIT;
 	writel(val, ctl_addr);
 
-	ret = scpsys_sram_enable(scpd, ctl_addr);
+	ret = scpsys_clk_enable(scpd->subsys_clk, MAX_SUBSYS_CLKS);
 	if (ret < 0)
 		goto err_pwr_ack;
 
+	ret = scpsys_sram_enable(scpd, ctl_addr);
+	if (ret < 0)
+		goto err_sram;
+
 	ret = scpsys_bus_protect_disable(scpd);
 	if (ret < 0)
-		goto err_pwr_ack;
+		goto err_sram;
 
 	return 0;
 
+err_sram:
+	scpsys_clk_disable(scpd->subsys_clk, MAX_SUBSYS_CLKS);
 err_pwr_ack:
 	scpsys_clk_disable(scpd->clk, MAX_CLKS);
 err_clk:
@@ -337,6 +348,8 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
 	if (ret < 0)
 		goto out;
 
+	scpsys_clk_disable(scpd->subsys_clk, MAX_SUBSYS_CLKS);
+
 	/* subsys power off */
 	val = readl(ctl_addr);
 	val |= PWR_ISO_BIT;
@@ -374,6 +387,48 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
 	return ret;
 }
 
+static int init_subsys_clks(struct platform_device *pdev,
+		const char *prefix, struct clk **clk)
+{
+	struct device_node *node = pdev->dev.of_node;
+	u32 prefix_len, sub_clk_cnt = 0;
+	struct property *prop;
+	const char *clk_name;
+
+	if (!node) {
+		dev_err(&pdev->dev, "Cannot find scpsys node: %ld\n",
+			PTR_ERR(node));
+		return PTR_ERR(node);
+	}
+
+	prefix_len = strlen(prefix);
+
+	of_property_for_each_string(node, "clock-names", prop, clk_name) {
+		if (!strncmp(clk_name, prefix, prefix_len) &&
+				(clk_name[prefix_len] == '-')) {
+			if (sub_clk_cnt >= MAX_SUBSYS_CLKS) {
+				dev_err(&pdev->dev,
+					"subsys clk out of range %d\n",
+					sub_clk_cnt);
+				return -ENOMEM;
+			}
+
+			clk[sub_clk_cnt] = devm_clk_get(&pdev->dev,
+						clk_name);
+
+			if (IS_ERR(clk[sub_clk_cnt])) {
+				dev_err(&pdev->dev,
+					"Subsys clk get fail %ld\n",
+					PTR_ERR(clk[sub_clk_cnt]));
+				return PTR_ERR(clk[sub_clk_cnt]);
+			}
+			sub_clk_cnt++;
+		}
+	}
+
+	return sub_clk_cnt;
+}
+
 static int init_basic_clks(struct platform_device *pdev, struct clk **clk,
 			const char * const *name)
 {
@@ -466,6 +521,7 @@ static struct scp *init_scp(struct platform_device *pdev,
 		struct scp_domain *scpd = &scp->domains[i];
 		struct generic_pm_domain *genpd = &scpd->genpd;
 		const struct scp_domain_data *data = &scp_domain_data[i];
+		int clk_cnt;
 
 		pd_data->domains[i] = genpd;
 		scpd->scp = scp;
@@ -476,6 +532,18 @@ static struct scp *init_scp(struct platform_device *pdev,
 		if (ret)
 			return ERR_PTR(ret);
 
+		if (data->subsys_clk_prefix) {
+			clk_cnt = init_subsys_clks(pdev,
+					data->subsys_clk_prefix,
+					scpd->subsys_clk);
+			if (clk_cnt < 0) {
+				dev_err(&pdev->dev,
+					"%s: subsys clk unavailable\n",
+					data->name);
+				return ERR_PTR(clk_cnt);
+			}
+		}
+
 		genpd->name = data->name;
 		genpd->power_off = scpsys_power_off;
 		genpd->power_on = scpsys_power_on;
-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
