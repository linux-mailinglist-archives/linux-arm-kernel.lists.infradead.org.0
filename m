Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD8F185D4F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 14:54:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=prK5T+283Brjzi6gx97GaJJZHPpdXmEBwpfvWSsS4ss=; b=IW60Zt3ijGniPlT70Dm8VQR9XS
	7S0Dvp259uT/1qjOjejFMtrHdE9YFylQsM8+dIld6hQS5KMBP8Lo0HOg268iSg/bEZAoWy++aoMSL
	/AX7QJ6IOWoIyFzfrpz5OTuoEggnY4wtrXWhdnm+nDbVyOC+aRY4btgR0w+JAqIb17sxHBH6/YaBE
	UmvWqufgr3MU5HTO2BDcK5cmG93CDqbTro5oR1OYPT7d/qUFwTC2Dintus2NduexUth0V/Js/OeaG
	1lfqQcC38d3Nl7gBS4PlStR+Wj0SmarwKiRpxn62g3hqlNRMWWqwPX720ZZJARP9yv/JlTtW9a+cQ
	VqclBn8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDTiX-0006pC-6A; Sun, 15 Mar 2020 13:54:13 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDTfJ-0003x3-Ku
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 13:50:57 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 64BE41A04CE;
 Sun, 15 Mar 2020 14:50:52 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 96ABD1A0528;
 Sun, 15 Mar 2020 14:50:47 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 0CB87402C1;
 Sun, 15 Mar 2020 21:50:40 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH V6 12/12] clk: imx: scu: unregister clocks if add provider
 failed
Date: Sun, 15 Mar 2020 21:43:56 +0800
Message-Id: <1584279836-29825-13-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
References: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_065053_874900_52692485 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, sboyd@kernel.org,
 mturquette@baylibre.com, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Unregister clocks if add provider failed

Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>

---
ChangeLog:
v6: new patch
---
 drivers/clk/imx/clk-imx8qxp.c | 11 +++++++++--
 drivers/clk/imx/clk-scu.c     | 13 +++++++++++++
 drivers/clk/imx/clk-scu.h     |  2 ++
 3 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8qxp.c b/drivers/clk/imx/clk-imx8qxp.c
index 2ec3e0c4749d..e615214495c0 100644
--- a/drivers/clk/imx/clk-imx8qxp.c
+++ b/drivers/clk/imx/clk-imx8qxp.c
@@ -138,10 +138,17 @@ static int imx8qxp_clk_probe(struct platform_device *pdev)
 				i, PTR_ERR(clks[i]));
 	}
 
-	if (clk_cells == 2)
+	if (clk_cells == 2) {
 		ret = of_clk_add_hw_provider(ccm_node, imx_scu_of_clk_src_get, imx_scu_clks);
-	else
+		if (ret)
+			imx_clk_scu_unregister();
+	} else {
+		/*
+		 * NOTE: we did not unregister clocks for the legacy way cause
+		 * it will be removed later.
+		 */
 		ret = of_clk_add_hw_provider(ccm_node, of_clk_hw_onecell_get, clk_data);
+	}
 
 	return ret;
 }
diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
index 7b910922aecf..1933cf90ae30 100644
--- a/drivers/clk/imx/clk-scu.c
+++ b/drivers/clk/imx/clk-scu.c
@@ -595,3 +595,16 @@ struct clk_hw *imx_clk_scu_alloc_dev(const char *name,
 	/* For API backwards compatiblilty, simply return NULL for success */
 	return NULL;
 }
+
+void imx_clk_scu_unregister(void)
+{
+	struct imx_scu_clk_node *clk;
+	int i;
+
+	for (i = 0; i < IMX_SC_R_LAST; i++) {
+		list_for_each_entry(clk, &imx_scu_clks[i], node) {
+			clk_hw_unregister(clk->hw);
+			kfree(clk);
+		}
+	}
+}
diff --git a/drivers/clk/imx/clk-scu.h b/drivers/clk/imx/clk-scu.h
index b1dfdaf0734e..e8352164923e 100644
--- a/drivers/clk/imx/clk-scu.h
+++ b/drivers/clk/imx/clk-scu.h
@@ -24,6 +24,8 @@ struct clk_hw *__imx_clk_scu(struct device *dev, const char *name,
 			     const char * const *parents, int num_parents,
 			     u32 rsrc_id, u8 clk_type);
 
+void imx_clk_scu_unregister(void);
+
 struct clk_hw *__imx_clk_lpcg_scu(struct device *dev, const char *name,
 				  const char *parent_name, unsigned long flags,
 				  void __iomem *reg, u8 bit_idx, bool hw_gate);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
