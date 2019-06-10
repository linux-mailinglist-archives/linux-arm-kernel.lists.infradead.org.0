Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EED3AEA1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 07:35:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uPN7uj7cKXX6BW6Y/t5lNQEjEGl++ezEbZUL7urzYXk=; b=nvh
	iwl5IyMjzFu9mdvSB95X8S5dJg6csmX/31TOdA5yIXtnE1eNJq30QJuqm4KvG8WjJhtM1vBffk0hK
	z9mXy/b4/qfIXIM0ozIgKYiumj0DP2ETzmNsHYFbhiHIUHTko89MQzqwriE5vM7pMwIKLU/Yarhdg
	BDMIeVCMtbdi/YMrdQxzMgbtRWYbD3LKVlub6u4YvHXJW+afS/9FO3Rosy0NwVgkdxzJJo5i9BPzP
	af4ugmO69NOAWnXMnaTge8WSChCh8D7FH8w6onpA2Ls0YXQttjUkeg2UPfReT+8TfaNFFMndZhtgx
	HfxYN29vb/JK1KIegeTfTJ7ob4Xzo/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haCxc-0003Tl-VW; Mon, 10 Jun 2019 05:35:13 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haCxL-0003T7-8y
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 05:34:56 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 283922006F3;
 Mon, 10 Jun 2019 07:34:53 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A95312006ED;
 Mon, 10 Jun 2019 07:34:46 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 78C39402D2;
 Mon, 10 Jun 2019 13:34:38 +0800 (SGT)
From: Anson.Huang@nxp.com
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 abel.vesa@nxp.com, l.stach@pengutronix.de, ccaione@baylibre.com,
 leonard.crestez@nxp.com, aisheng.dong@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] clk: imx: Remove __init for imx_check_clocks() API
Date: Mon, 10 Jun 2019 13:36:33 +0800
Message-Id: <20190610053634.14339-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_223455_456188_9F94BBD1 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

Some of i.MX SoCs' clock driver use platform driver model,
and they need to call imx_check_clocks() API, so
imx_check_clocks() API should NOT be in .init section.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clk/imx/clk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
index 9cd7097..b1416b2 100644
--- a/drivers/clk/imx/clk.c
+++ b/drivers/clk/imx/clk.c
@@ -23,7 +23,7 @@ void __init imx_mmdc_mask_handshake(void __iomem *ccm_base,
 	writel_relaxed(reg, ccm_base + CCM_CCDR);
 }
 
-void __init imx_check_clocks(struct clk *clks[], unsigned int count)
+void imx_check_clocks(struct clk *clks[], unsigned int count)
 {
 	unsigned i;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
