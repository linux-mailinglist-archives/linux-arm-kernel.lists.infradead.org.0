Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 508CC848D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 11:46:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1Zleod0KGS/Hgh0BFLga9ueXhljYZPwFDOFHsMTfRo=; b=vChq34P4V2mOlw
	sW9Kag2vQfeM2tblF9/0Og/A6erHOVScQq0gZ38f1SsMTcGOTahVec05DaCHbwA0lo2Zlgd1ONUGu
	2MWZ5iUKwBTKenKg6gRG3BWsFqbP1BMmbLk6KZoA5plOHdpa5ObUfd5RpZ69aZq9igPlS5ud+Qs1f
	O7GNGk9AYx+dELTHJYBdoMLvbBhUjyyFHbmP344aL5/fhgqgdvUdl5ripaVl68GtW1SLZ0OvVDHiQ
	Uy/vw9W5MqvKC/SEsezm+gdgFmc0ZidfGJtKoiD4+bNqEvQNq6oKh6q7vtCKRhb8kk+emJJT5V5EG
	7ogh0q+SLlOb56UF7upQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvIW0-0001wu-CI; Wed, 07 Aug 2019 09:45:52 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvIV6-000058-Iz
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 09:44:58 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x779is95024666;
 Wed, 7 Aug 2019 04:44:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565171094;
 bh=D1ABe6UuCy+19McIAI+7AapSCDTHrhabTxuSk376CL4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=GWKMwM7lSGzz5fj0mVYkYm+iuhFzLSFQSEIz8NEcqoKtfGST3r+Bhs/ihrDGkxwAA
 r9s+rNzrmWnqBtzmbYO1d0cc+HtjFIZmdZ2kcCWrTQrnWuOCMtk0URpIU9W8hdrqyi
 57gND1A6TmdSm3QZRBpkqYyA9U65jH/oE1Le7yEU=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x779irYh096513
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 7 Aug 2019 04:44:54 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 7 Aug
 2019 04:44:52 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 7 Aug 2019 04:44:52 -0500
Received: from gomoku.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x779imdU037583;
 Wed, 7 Aug 2019 04:44:51 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 3/3] ARM: OMAP2+: omap-iommu.c conversion to ti-sysc
Date: Wed, 7 Aug 2019 12:44:41 +0300
Message-ID: <1565171081-7899-4-git-send-email-t-kristo@ti.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1565171081-7899-1-git-send-email-t-kristo@ti.com>
References: <1565171081-7899-1-git-send-email-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_024456_869512_CF0746CB 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert omap2 iommu platform code to use ti-sysc instead of legacy
omap-device / hwmod interfaces.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/mach-omap2/omap-iommu.c | 99 ++++++++++++++++++++++++++++++++--------
 1 file changed, 80 insertions(+), 19 deletions(-)

diff --git a/arch/arm/mach-omap2/omap-iommu.c b/arch/arm/mach-omap2/omap-iommu.c
index 8f6b6b8..f8cbf6b 100644
--- a/arch/arm/mach-omap2/omap-iommu.c
+++ b/arch/arm/mach-omap2/omap-iommu.c
@@ -16,19 +16,27 @@
 
 #include <linux/platform_device.h>
 #include <linux/err.h>
+#include <linux/clk.h>
+#include <linux/list.h>
 
-#include "omap_hwmod.h"
-#include "omap_device.h"
 #include "clockdomain.h"
 #include "powerdomain.h"
 
+struct pwrdm_link {
+	struct device *dev;
+	struct powerdomain *pwrdm;
+	struct list_head node;
+};
+
+static DEFINE_SPINLOCK(iommu_lock);
+static struct clockdomain *emu_clkdm;
+static atomic_t emu_count;
+
 static void omap_iommu_dra7_emu_swsup_config(struct platform_device *pdev,
 					     bool enable)
 {
-	static struct clockdomain *emu_clkdm;
-	static DEFINE_SPINLOCK(emu_lock);
-	static atomic_t count;
 	struct device_node *np = pdev->dev.of_node;
+	unsigned long flags;
 
 	if (!of_device_is_compatible(np, "ti,dra7-dsp-iommu"))
 		return;
@@ -39,34 +47,87 @@ static void omap_iommu_dra7_emu_swsup_config(struct platform_device *pdev,
 			return;
 	}
 
-	spin_lock(&emu_lock);
+	spin_lock_irqsave(&iommu_lock, flags);
 
-	if (enable && (atomic_inc_return(&count) == 1))
+	if (enable && (atomic_inc_return(&emu_count) == 1))
 		clkdm_deny_idle(emu_clkdm);
-	else if (!enable && (atomic_dec_return(&count) == 0))
+	else if (!enable && (atomic_dec_return(&emu_count) == 0))
 		clkdm_allow_idle(emu_clkdm);
 
-	spin_unlock(&emu_lock);
+	spin_unlock_irqrestore(&iommu_lock, flags);
+}
+
+static struct powerdomain *_get_pwrdm(struct device *dev)
+{
+	struct clk *clk;
+	struct clk_hw_omap *hwclk;
+	struct clockdomain *clkdm;
+	struct powerdomain *pwrdm = NULL;
+	struct pwrdm_link *entry;
+	unsigned long flags;
+	static LIST_HEAD(cache);
+
+	spin_lock_irqsave(&iommu_lock, flags);
+
+	list_for_each_entry(entry, &cache, node) {
+		if (entry->dev == dev) {
+			pwrdm = entry->pwrdm;
+			break;
+		}
+	}
+
+	spin_unlock_irqrestore(&iommu_lock, flags);
+
+	if (pwrdm)
+		return pwrdm;
+
+	clk = of_clk_get(dev->of_node->parent, 0);
+	if (!clk) {
+		dev_err(dev, "no fck found\n");
+		return NULL;
+	}
+
+	hwclk = to_clk_hw_omap(__clk_get_hw(clk));
+	clk_put(clk);
+	if (!hwclk || !hwclk->clkdm_name) {
+		dev_err(dev, "no hwclk data\n");
+		return NULL;
+	}
+
+	clkdm = clkdm_lookup(hwclk->clkdm_name);
+	if (!clkdm) {
+		dev_err(dev, "clkdm not found: %s\n", hwclk->clkdm_name);
+		return NULL;
+	}
+
+	pwrdm = clkdm_get_pwrdm(clkdm);
+	if (!pwrdm) {
+		dev_err(dev, "pwrdm not found: %s\n", clkdm->name);
+		return NULL;
+	}
+
+	entry = kmalloc(sizeof(*entry), GFP_KERNEL);
+	if (entry) {
+		entry->dev = dev;
+		entry->pwrdm = pwrdm;
+		spin_lock_irqsave(&iommu_lock, flags);
+		list_add(&entry->node, &cache);
+		spin_unlock_irqrestore(&iommu_lock, flags);
+	}
+
+	return pwrdm;
 }
 
 int omap_iommu_set_pwrdm_constraint(struct platform_device *pdev, bool request,
 				    u8 *pwrst)
 {
 	struct powerdomain *pwrdm;
-	struct omap_device *od;
 	u8 next_pwrst;
 	int ret = 0;
 
-	od = to_omap_device(pdev);
-	if (!od)
-		return -ENODEV;
-
-	if (od->hwmods_cnt != 1)
-		return -EINVAL;
-
-	pwrdm = omap_hwmod_get_pwrdm(od->hwmods[0]);
+	pwrdm = _get_pwrdm(&pdev->dev);
 	if (!pwrdm)
-		return -EINVAL;
+		return -ENODEV;
 
 	if (request) {
 		*pwrst = pwrdm_read_next_pwrst(pwrdm);
-- 
1.9.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
