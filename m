Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542BDCF393
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 09:20:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u37vC+CZK7clzt425vyAaJ6fOw4hxwWBuz7IPomHau8=; b=W1CsEVW//ZgsH9
	/KjvHpPx1JYwiU56AAQRZhmRGYvgruN/mR4A4iwm826u6BCXSv4DrdAySVqxoyrLIY8wPuZmSOt/8
	bYAJTqXPlnEpT1v3xtkmgi5rFvSMP5Y7ZddEEm1xezvXgSjBWhk6qZ4+KnJSAG7UJpGS66raee7sT
	JJWMks8v3X2w86/f4BMVtwYkrg56eWUqydXzAIK1vUbO9+MgIvjXkIGKPNYibZsT+fAWTbaxP13X/
	R3Da3Zqvn+v0s6YWuhZax3QSPDSvYBQw3Xr+5WU2gZAuBH934FfggFfB8ac1D3aisb1zhW/3E1+Hn
	5oMU+1LXnLAmKBRX7imA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHjn3-0007El-Vw; Tue, 08 Oct 2019 07:20:13 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHjmM-0006nQ-IL
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 07:19:31 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x987JSWs025151;
 Tue, 8 Oct 2019 02:19:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570519168;
 bh=Y7vuHmki0AitevIY4QTjUpFCGHBSgA345LWzYu3kdGg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=XxJVogC+ICfus+EQEnqmy4M/NgIF7sViXfL32XYZacWn9Xa0O2q8HGiaNCMhlMPLf
 ouaNimPomNW63vaSpcr9WxCBJrXvwVmCt/Hzx18a4yv7cqHZGfyvjw/QjyRilrLzO4
 Lq2TdKLXy4Orr8R6ahaFDOiucPQoAopIJSJiIC/s=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x987JSIw073220
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 8 Oct 2019 02:19:28 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 8 Oct
 2019 02:19:25 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 8 Oct 2019 02:19:25 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x987JJj6027770;
 Tue, 8 Oct 2019 02:19:26 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <ssantosh@kernel.org>
Subject: [PATCHv7 3/9] soc: ti: omap-prm: poll for reset complete during
 de-assert
Date: Tue, 8 Oct 2019 10:19:07 +0300
Message-ID: <20191008071913.28740-4-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191008071913.28740-1-t-kristo@ti.com>
References: <20191008071913.28740-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_001930_645787_70084266 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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
Cc: tony@atomide.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, p.zabel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Poll for reset completion status during de-assertion of reset, otherwise
the IP in question might be accessed before it has left reset properly.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/soc/ti/omap_prm.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
index ab0b66ad715d..96fa2aad9b93 100644
--- a/drivers/soc/ti/omap_prm.c
+++ b/drivers/soc/ti/omap_prm.c
@@ -153,6 +153,18 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
 	writel_relaxed(v, reset->prm->base + reset->prm->data->rstctrl);
 	spin_unlock_irqrestore(&reset->lock, flags);
 
+	if (!has_rstst)
+		return 0;
+
+	/* wait for the status to be set */
+	ret = readl_relaxed_poll_timeout(reset->prm->base +
+					 reset->prm->data->rstst,
+					 v, v & BIT(st_bit), 1,
+					 OMAP_RESET_MAX_WAIT);
+	if (ret)
+		pr_err("%s: timedout waiting for %s:%lu\n", __func__,
+		       reset->prm->data->name, id);
+
 	return 0;
 }
 
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
