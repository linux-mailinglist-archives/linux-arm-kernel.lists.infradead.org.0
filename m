Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8512B9FE3C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 11:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2Hi9nLOc1ofAuxUMSnEYhJdsN0w9WRtsJnTy+bPWRI=; b=IwjMcAJUdj6szF
	2+aaKGJ08/V5DA9JirbjW//Sh4U3JLOb6B9karh3MdHCVkuVnTnABOmR7Tp4u9SlKm1ImvQLtLdZ0
	rmTBfnZXpxhMqaRmvC+ANrk5ly9E4d7C4D6C0oApo2bSPozNTPjwlJvsjQ/AOpfrFQvkWcnAF62bA
	4TXfsX/Xss4mINKQBRsGr0kLYfZ4X2Wem3mb8GoYvhYO7cWyK0XSoe19GHMl07UfQznIZuV2XmMja
	r1vQY5lW536jq6Em+N654Vmh9YZAliOm3tWb+rCTBqbeC8k5kNzCX4Xd+26xnpGGmF37+Ek7tQSv7
	G+w/p9cQzCJjZgIGip4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2u47-0006eg-NO; Wed, 28 Aug 2019 09:16:31 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2u01-0002Zf-Ec; Wed, 28 Aug 2019 09:12:19 +0000
X-UUID: e92ce250c3c44df6840c4053056dd13e-20190828
X-UUID: e92ce250c3c44df6840c4053056dd13e-20190828
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1569910755; Wed, 28 Aug 2019 01:12:19 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 02:12:17 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 17:12:04 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 28 Aug 2019 17:12:04 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v7 05/13] soc: mediatek: Refactor clock control
Date: Wed, 28 Aug 2019 17:11:38 +0800
Message-ID: <1566983506-26598-6-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1566983506-26598-1-git-send-email-weiyi.lu@mediatek.com>
References: <1566983506-26598-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_021217_742570_AF7917BC 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Yong Wu <yong.wu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Put clock enable and disable control in separate function.

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
---
 drivers/soc/mediatek/mtk-scpsys.c | 45 ++++++++++++++++++++++++---------------
 1 file changed, 28 insertions(+), 17 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
index aed540d..73e4a1a 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -207,6 +207,29 @@ static int scpsys_regulator_disable(struct scp_domain *scpd)
 	return regulator_disable(scpd->supply);
 }
 
+static void scpsys_clk_disable(struct clk *clk[], int max_num)
+{
+	int i;
+
+	for (i = max_num - 1; i >= 0; i--)
+		clk_disable_unprepare(clk[i]);
+}
+
+static int scpsys_clk_enable(struct clk *clk[], int max_num)
+{
+	int i, ret = 0;
+
+	for (i = 0; i < max_num && clk[i]; i++) {
+		ret = clk_prepare_enable(clk[i]);
+		if (ret) {
+			scpsys_clk_disable(clk, i);
+			break;
+		}
+	}
+
+	return ret;
+}
+
 static int scpsys_power_on(struct generic_pm_domain *genpd)
 {
 	struct scp_domain *scpd = container_of(genpd, struct scp_domain, genpd);
@@ -215,21 +238,14 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
 	u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
 	u32 val;
 	int ret, tmp;
-	int i;
 
 	ret = scpsys_regulator_enable(scpd);
 	if (ret < 0)
 		return ret;
 
-	for (i = 0; i < MAX_CLKS && scpd->clk[i]; i++) {
-		ret = clk_prepare_enable(scpd->clk[i]);
-		if (ret) {
-			for (--i; i >= 0; i--)
-				clk_disable_unprepare(scpd->clk[i]);
-
-			goto err_clk;
-		}
-	}
+	ret = scpsys_clk_enable(scpd->clk, MAX_CLKS);
+	if (ret)
+		goto err_clk;
 
 	val = readl(ctl_addr);
 	val |= PWR_ON_BIT;
@@ -282,10 +298,7 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
 	return 0;
 
 err_pwr_ack:
-	for (i = MAX_CLKS - 1; i >= 0; i--) {
-		if (scpd->clk[i])
-			clk_disable_unprepare(scpd->clk[i]);
-	}
+	scpsys_clk_disable(scpd->clk, MAX_CLKS);
 err_clk:
 	scpsys_regulator_disable(scpd);
 
@@ -302,7 +315,6 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
 	u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
 	u32 val;
 	int ret, tmp;
-	int i;
 
 	if (scpd->data->bus_prot_mask) {
 		ret = mtk_infracfg_set_bus_protection(scp->infracfg,
@@ -343,8 +355,7 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
 	if (ret < 0)
 		goto out;
 
-	for (i = 0; i < MAX_CLKS && scpd->clk[i]; i++)
-		clk_disable_unprepare(scpd->clk[i]);
+	scpsys_clk_disable(scpd->clk, MAX_CLKS);
 
 	ret = scpsys_regulator_disable(scpd);
 	if (ret < 0)
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
