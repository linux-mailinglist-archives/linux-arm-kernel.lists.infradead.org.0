Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFE49FE09
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 11:12:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9WpOC5NKqpGvB2kad8/0YjmixW1YwbX4OaRGiBglX7g=; b=D9B3dRDRmv24ZP
	YlXubmEydLBHcK00j+c2KXXAC/NGw1+kJjtaLhLkGpddqFId7DPPJ7RYr7TXtBIHGX4NW8Ley//0Z
	Va/Tjy4YzD9HGBlBH6UDyWGXS7r3irSJnySHocCtUiLyb00ZQ18zPnVo09Po3ZMyJmZmIfO/25VWM
	7840TORyj9au4h7/3cJvuw3/H5aZT+NfbKLhsgfRyYggE8Hyh7BuF2S9YiSMgyQCW8+nYW+/4edpR
	KL7VhH2D1lr+XttHNpoioF+pCrbq9nBXoYOd2D+ZVagbE0QkaI0RFxLQbLb/P1FPJQqGeCsQ6+tF6
	OZQitUx4vTnMfNLH4Big==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2u0Y-0002rs-46; Wed, 28 Aug 2019 09:12:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2tzn-0002UR-Uq; Wed, 28 Aug 2019 09:12:05 +0000
X-UUID: b19382606ddb4f1dbe172cc41f4d20f4-20190828
X-UUID: b19382606ddb4f1dbe172cc41f4d20f4-20190828
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1897038616; Wed, 28 Aug 2019 01:12:07 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 02:12:06 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 17:12:04 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 28 Aug 2019 17:12:04 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v7 06/13] soc: mediatek: Refactor sram control
Date: Wed, 28 Aug 2019 17:11:39 +0800
Message-ID: <1566983506-26598-7-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1566983506-26598-1-git-send-email-weiyi.lu@mediatek.com>
References: <1566983506-26598-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_021203_999200_1211CF7B 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

Put sram enable and disable control in separate functions.

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>
---
 drivers/soc/mediatek/mtk-scpsys.c | 79 +++++++++++++++++++++++++--------------
 1 file changed, 51 insertions(+), 28 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
index 73e4a1a..ad0f619 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -230,12 +230,55 @@ static int scpsys_clk_enable(struct clk *clk[], int max_num)
 	return ret;
 }
 
+static int scpsys_sram_enable(struct scp_domain *scpd, void __iomem *ctl_addr)
+{
+	u32 val;
+	u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
+	int tmp;
+
+	val = readl(ctl_addr) & ~scpd->data->sram_pdn_bits;
+	writel(val, ctl_addr);
+
+	/* Either wait until SRAM_PDN_ACK all 0 or have a force wait */
+	if (MTK_SCPD_CAPS(scpd, MTK_SCPD_FWAIT_SRAM)) {
+		/*
+		 * Currently, MTK_SCPD_FWAIT_SRAM is necessary only for
+		 * MT7622_POWER_DOMAIN_WB and thus just a trivial setup
+		 * is applied here.
+		 */
+		usleep_range(12000, 12100);
+	} else {
+		/* Either wait until SRAM_PDN_ACK all 1 or 0 */
+		int ret = readl_poll_timeout(ctl_addr, tmp,
+				(tmp & pdn_ack) == 0,
+				MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int scpsys_sram_disable(struct scp_domain *scpd, void __iomem *ctl_addr)
+{
+	u32 val;
+	u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
+	int tmp;
+
+	val = readl(ctl_addr) | scpd->data->sram_pdn_bits;
+	writel(val, ctl_addr);
+
+	/* Either wait until SRAM_PDN_ACK all 1 or 0 */
+	return readl_poll_timeout(ctl_addr, tmp,
+			(tmp & pdn_ack) == pdn_ack,
+			MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
+}
+
 static int scpsys_power_on(struct generic_pm_domain *genpd)
 {
 	struct scp_domain *scpd = container_of(genpd, struct scp_domain, genpd);
 	struct scp *scp = scpd->scp;
 	void __iomem *ctl_addr = scp->base + scpd->data->ctl_offs;
-	u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
 	u32 val;
 	int ret, tmp;
 
@@ -247,6 +290,7 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
 	if (ret)
 		goto err_clk;
 
+	/* subsys power on */
 	val = readl(ctl_addr);
 	val |= PWR_ON_BIT;
 	writel(val, ctl_addr);
@@ -268,24 +312,9 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
 	val |= PWR_RST_B_BIT;
 	writel(val, ctl_addr);
 
-	val &= ~scpd->data->sram_pdn_bits;
-	writel(val, ctl_addr);
-
-	/* Either wait until SRAM_PDN_ACK all 0 or have a force wait */
-	if (MTK_SCPD_CAPS(scpd, MTK_SCPD_FWAIT_SRAM)) {
-		/*
-		 * Currently, MTK_SCPD_FWAIT_SRAM is necessary only for
-		 * MT7622_POWER_DOMAIN_WB and thus just a trivial setup is
-		 * applied here.
-		 */
-		usleep_range(12000, 12100);
-
-	} else {
-		ret = readl_poll_timeout(ctl_addr, tmp, (tmp & pdn_ack) == 0,
-					 MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
-		if (ret < 0)
-			goto err_pwr_ack;
-	}
+	ret = scpsys_sram_enable(scpd, ctl_addr);
+	if (ret < 0)
+		goto err_pwr_ack;
 
 	if (scpd->data->bus_prot_mask) {
 		ret = mtk_infracfg_clear_bus_protection(scp->infracfg,
@@ -312,7 +341,6 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
 	struct scp_domain *scpd = container_of(genpd, struct scp_domain, genpd);
 	struct scp *scp = scpd->scp;
 	void __iomem *ctl_addr = scp->base + scpd->data->ctl_offs;
-	u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
 	u32 val;
 	int ret, tmp;
 
@@ -324,17 +352,12 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
 			goto out;
 	}
 
-	val = readl(ctl_addr);
-	val |= scpd->data->sram_pdn_bits;
-	writel(val, ctl_addr);
-
-	/* wait until SRAM_PDN_ACK all 1 */
-	ret = readl_poll_timeout(ctl_addr, tmp, (tmp & pdn_ack) == pdn_ack,
-				 MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
+	ret = scpsys_sram_disable(scpd, ctl_addr);
 	if (ret < 0)
 		goto out;
 
-	val |= PWR_ISO_BIT;
+	/* subsys power off */
+	val = readl(ctl_addr) | PWR_ISO_BIT;
 	writel(val, ctl_addr);
 
 	val &= ~PWR_RST_B_BIT;
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
