Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5F96ABAD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 17:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z7DQ/PIWQ1cZKhs0w/Asg9akzlx5r79GiC631n6ch6A=; b=D4XAvHBgQhZ1gWLMbUFEXKwEXj
	B0iSrQbQXcuovHPHzA9z496JULyWPnCPkVlo9xHYrGnFeJYuqgk59iSXgx60V1w6z7Y76GgfErafo
	D9m9sIIEo/KfT/CASCc8Vs+boyUZVS7rtgsOqinEjyCQShnaklv2wAdDbyiWHDSUSHvJZvVv90SXi
	zLo0M+NpgxvBuN3TJv2ilnkVGgqZOQJXn+nG8yU8VHuB+++qtEhSsvN/kM5M29yNS1p4vQH1rKpoP
	e4NZAZL6zkcJXtt2JN0+ClNcowfZlGEa/rwuyKAIZIJ9G5N2jWUuGHTf3PPL/m1EKXzTzSFE4ngFg
	k0A4EkEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPL5-0008H0-Ni; Tue, 16 Jul 2019 15:25:59 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPIW-0005AV-Pr
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 15:23:24 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 977C31A0120;
 Tue, 16 Jul 2019 17:23:19 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BF9511A0071;
 Tue, 16 Jul 2019 17:23:14 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1D8E640302;
 Tue, 16 Jul 2019 23:23:07 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH v3 09/11] clk: imx: lpcg: allow lpcg clk to take device pointer
Date: Tue, 16 Jul 2019 23:01:03 +0800
Message-Id: <1563289265-10977-10-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
References: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_082321_095648_7EAC19C9 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

Used to support runtime pm.

Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v3: new patch
---
 drivers/clk/imx/clk-lpcg-scu.c |  8 ++++----
 drivers/clk/imx/clk-scu.h      | 23 ++++++++++++++++++++---
 2 files changed, 24 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/imx/clk-lpcg-scu.c b/drivers/clk/imx/clk-lpcg-scu.c
index a73a799..3c092a0 100644
--- a/drivers/clk/imx/clk-lpcg-scu.c
+++ b/drivers/clk/imx/clk-lpcg-scu.c
@@ -80,9 +80,9 @@ static const struct clk_ops clk_lpcg_scu_ops = {
 	.disable = clk_lpcg_scu_disable,
 };
 
-struct clk_hw *imx_clk_lpcg_scu(const char *name, const char *parent_name,
-				unsigned long flags, void __iomem *reg,
-				u8 bit_idx, bool hw_gate)
+struct clk_hw *__imx_clk_lpcg_scu(struct device *dev, const char *name,
+				  const char *parent_name, unsigned long flags,
+				  void __iomem *reg, u8 bit_idx, bool hw_gate)
 {
 	struct clk_lpcg_scu *clk;
 	struct clk_init_data init;
@@ -106,7 +106,7 @@ struct clk_hw *imx_clk_lpcg_scu(const char *name, const char *parent_name,
 	clk->hw.init = &init;
 
 	hw = &clk->hw;
-	ret = clk_hw_register(NULL, hw);
+	ret = clk_hw_register(dev, hw);
 	if (ret) {
 		kfree(clk);
 		hw = ERR_PTR(ret);
diff --git a/drivers/clk/imx/clk-scu.h b/drivers/clk/imx/clk-scu.h
index a2c6b42..84efda3 100644
--- a/drivers/clk/imx/clk-scu.h
+++ b/drivers/clk/imx/clk-scu.h
@@ -24,6 +24,10 @@ struct clk_hw *__imx_clk_scu(struct device *dev, const char *name,
 			     const char * const *parents, int num_parents,
 			     u32 rsrc_id, u8 clk_type);
 
+struct clk_hw *__imx_clk_lpcg_scu(struct device *dev, const char *name,
+				  const char *parent_name, unsigned long flags,
+				  void __iomem *reg, u8 bit_idx, bool hw_gate);
+
 static inline struct clk_hw *imx_clk_scu(const char *name, u32 rsrc_id,
 					 u8 clk_type)
 {
@@ -42,7 +46,20 @@ static inline struct clk_hw *imx_clk_scu2(const char *name, const char * const *
 		return __imx_clk_scu(NULL, name, parents, num_parents, rsrc_id, clk_type);
 }
 
-struct clk_hw *imx_clk_lpcg_scu(const char *name, const char *parent_name,
-				unsigned long flags, void __iomem *reg,
-				u8 bit_idx, bool hw_gate);
+static inline struct clk_hw *imx_clk_lpcg_scu_dev(struct device *dev, const char *name,
+						  const char *parent_name, unsigned long flags,
+						  void __iomem *reg, u8 bit_idx, bool hw_gate)
+{
+	return __imx_clk_lpcg_scu(dev, name, parent_name, flags, reg,
+				  bit_idx, hw_gate);
+}
+
+static inline struct clk_hw *imx_clk_lpcg_scu(const char *name, const char *parent_name,
+					      unsigned long flags, void __iomem *reg,
+					      u8 bit_idx, bool hw_gate)
+{
+	return __imx_clk_lpcg_scu(NULL, name, parent_name, flags, reg,
+				  bit_idx, hw_gate);
+}
+
 #endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
