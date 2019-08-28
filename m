Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CD09FB72
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:22:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jp/0ANtHKqeBvRkG506H7Upa50RN71vq+H9TxTA4UN4=; b=hwLB/9DkIGvqDQ
	TbI6WyiAN2nVhTR0IsydUdWuKaXFbMseMVLHpao/tFZsAwlOS8GiVCWHGOConW/9NLP1eyIymaVwG
	/YIV+Zd6g7JcMoojr1hclguFkPFKJWKEHDNr0rQ/ALIVM5oeWw86RAvkY1zutSSnyuz4Vhc7dSxRm
	AMhYeU/SchW9hw84v6S8asxhtzJ0kFu0hSclQ/gO6nDc5imCqV7bHrK8LUydfc1QwYiaS03xIaKbF
	Gs9PHgZmI5orcwkvyrwTj3UeDeDSd3Dshzn/SM1EB3hIkW570fe0PpFxlIklJ83iRQ7Uc4LIA0lZP
	NEIMa/6HI+q6cO6HAYzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2sHa-0008VM-BX; Wed, 28 Aug 2019 07:22:18 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2sFS-0006UM-PU
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:20:08 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7S7K4O5116190;
 Wed, 28 Aug 2019 02:20:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566976804;
 bh=haaNeLbrXohBveS7uejJKhMKitMSpHxT1HJ3TV94XO8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=CQcK8JDZ6gfr2c/MsWlW0toLXL7U/02zMv/yE2ceznAc9siz99nvKNv2Fcgx13/KJ
 IWBW2T4ZbqMGXoi1FoZQdglad/a3JfpYt59GBb9ri0Ipao9txqjd0WTnkHyEc5MZ+O
 9qfgN33QDGOYISMn9WZcWsV4OZhAXfW7ULA43//A=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7S7K4VK083176
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 02:20:04 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 02:20:04 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 02:20:03 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7S7JmfI052201;
 Wed, 28 Aug 2019 02:20:02 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <ssantosh@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-omap@vger.kernel.org>, <robh+dt@kernel.org>,
 <p.zabel@pengutronix.de>
Subject: [PATCHv2 06/11] soc: ti: omap-prm: support resets with no associated
 clockdomain
Date: Wed, 28 Aug 2019 10:19:36 +0300
Message-ID: <20190828071941.32378-7-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828071941.32378-1-t-kristo@ti.com>
References: <20190828071941.32378-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_002006_960752_A7F75B4D 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Typically hardware resets on TI SoCs are associated with a clockdomain
which must be forced to be active while the reset is being de-asserted.
Otherwise the reset may not de-assert properly leaving the IP in some
weird metastate. However, some hardware reset lines don't have this
association in place, so add support for a new PRM flag for this
purpose.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/soc/ti/omap_prm.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
index e876bad8f8d5..d7a29e282788 100644
--- a/drivers/soc/ti/omap_prm.c
+++ b/drivers/soc/ti/omap_prm.c
@@ -56,6 +56,7 @@ struct omap_reset_data {
 
 #define OMAP_PRM_HAS_RSTCTRL	BIT(0)
 #define OMAP_PRM_HAS_RSTST	BIT(1)
+#define OMAP_PRM_HAS_NO_CLKDM	BIT(2)
 
 #define OMAP_PRM_HAS_RESETS	(OMAP_PRM_HAS_RSTCTRL | OMAP_PRM_HAS_RSTST)
 
@@ -162,7 +163,8 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
 		writel_relaxed(v, reset->prm->base + reset->prm->data->rstst);
 	}
 
-	pdata->clkdm_deny_idle(reset->clkdm);
+	if (reset->clkdm)
+		pdata->clkdm_deny_idle(reset->clkdm);
 
 	/* de-assert the reset control line */
 	v = readl_relaxed(reset->prm->base + reset->prm->data->rstctrl);
@@ -200,7 +202,8 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
 	}
 
 exit:
-	pdata->clkdm_allow_idle(reset->clkdm);
+	if (reset->clkdm)
+		pdata->clkdm_allow_idle(reset->clkdm);
 
 	return ret;
 }
@@ -229,7 +232,7 @@ static int omap_prm_reset_init(struct platform_device *pdev,
 		return 0;
 
 	/* Check if we have the pdata callbacks in place */
-	if (!pdata->clkdm_lookup || !pdata->clkdm_deny_idle ||
+	if (!pdata || !pdata->clkdm_lookup || !pdata->clkdm_deny_idle ||
 	    !pdata->clkdm_allow_idle)
 		return -EINVAL;
 
@@ -256,9 +259,11 @@ static int omap_prm_reset_init(struct platform_device *pdev,
 	sprintf(buf, "%s_clkdm", prm->data->clkdm_name ? prm->data->clkdm_name :
 		prm->data->name);
 
-	reset->clkdm = pdata->clkdm_lookup(buf);
-	if (!reset->clkdm)
-		return -EINVAL;
+	if (!(prm->data->flags & OMAP_PRM_HAS_NO_CLKDM)) {
+		reset->clkdm = pdata->clkdm_lookup(buf);
+		if (!reset->clkdm)
+			return -EINVAL;
+	}
 
 	while (map->rst >= 0) {
 		reset->mask |= BIT(map->rst);
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
