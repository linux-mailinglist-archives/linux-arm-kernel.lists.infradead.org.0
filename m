Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6AE4B2BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 09:11:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lSxRUogLOxT505rGr+jsoPqGRElkgC3I+qPFlv1KsdM=; b=kqP
	A1oS8inCTuR+3hyXHPXoXEeBeZWkaOJ5V2F0LPJwNQWh9v14RDmdmSgBGQjP43HM0bKi/2O2/UKkW
	oR7D9KmsnqFQHK1dKQO7wbv4OY6V0Bs9rgCkRbobGPogh/0rS/WsPpx6I1eT5v7toHOLugei6hcNn
	I7oDJVfQjFr3zdVXgEuqLyfwV/0YUL6hNgp08nauYldHtaWbiAfXE0skyhYVVqQvj8sRM6aFVsWrj
	UWnQ3y6847+8mllgk+9SAZRHEFGlreCN2SyciDTDHB1a3b7VdG42S8Sp06pkZIe1vYb0CyWO0umTK
	6IJ8+iWrexISP8+X6qvKmvL9TnaL7Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdUkX-0005rl-9E; Wed, 19 Jun 2019 07:11:17 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdUkG-0005r2-Uj
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 07:11:02 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3FBA61A05A1;
 Wed, 19 Jun 2019 09:10:58 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2B68A1A05A3;
 Wed, 19 Jun 2019 09:10:52 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6BD8D402F0;
 Wed, 19 Jun 2019 15:10:44 +0800 (SGT)
From: Anson.Huang@nxp.com
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 abel.vesa@nxp.com, ccaione@baylibre.com, leonard.crestez@nxp.com,
 aisheng.dong@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] clk: imx: Remove __init for imx_register_uart_clocks() API
Date: Wed, 19 Jun 2019 15:12:39 +0800
Message-Id: <20190619071240.38503-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_001101_139235_438259F2 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
and they need to call imx_register_uart_clocks() API, so
imx_register_uart_clocks() API should NOT be in .init section.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clk/imx/clk.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
index f241189..76457b2 100644
--- a/drivers/clk/imx/clk.c
+++ b/drivers/clk/imx/clk.c
@@ -123,8 +123,8 @@ void imx_cscmr1_fixup(u32 *val)
 	return;
 }
 
-static int imx_keep_uart_clocks __initdata;
-static struct clk ** const *imx_uart_clocks __initdata;
+static int imx_keep_uart_clocks;
+static struct clk ** const *imx_uart_clocks;
 
 static int __init imx_keep_uart_clocks_param(char *str)
 {
@@ -137,7 +137,7 @@ __setup_param("earlycon", imx_keep_uart_earlycon,
 __setup_param("earlyprintk", imx_keep_uart_earlyprintk,
 	      imx_keep_uart_clocks_param, 0);
 
-void __init imx_register_uart_clocks(struct clk ** const clks[])
+void imx_register_uart_clocks(struct clk ** const clks[])
 {
 	if (imx_keep_uart_clocks) {
 		int i;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
