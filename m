Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D80BB1163C9
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Dec 2019 21:55:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0scoVDep/tDcCz4Cpzoxyuv2y75dcy6wZo/f9/RoqVU=; b=dLjIqZGd76PZQw
	MCpx7CtdgnHIviMRvhNrq1ANkh25UhRamSmpGKWuLquK50d3ktHGsE9nQUgZE74zAP6nGr/nEvkNq
	B77UUH32xmfVg62OdVDkDMbvxsXsn9yXaDQD2+wEGBwaaiuMEz5IJ64kB+8rFIc6Rj8DGBiC5x93U
	7qWSY3k5hRyGFcqj53xOTAUd3SlaSBwm/3Ni8X1vH8/tXQ+sBCbZ1FcTes2v9a4dZbz55xTmdTSBc
	B/XIMOXVZdi8XeDLWxmLqz8uqwUceQsGmQDp8sx3pP3OHPqEJzUdmuS7QjWQjCZ6L77V2L18tPjDL
	vCjOLXsyDRO0r26PLbmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie3aq-0006YO-Lm; Sun, 08 Dec 2019 20:55:52 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie3aT-0006M4-B3; Sun, 08 Dec 2019 20:55:30 +0000
X-Originating-IP: 88.190.179.123
Received: from localhost (unknown [88.190.179.123])
 (Authenticated sender: repk@triplefau.lt)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id DE367C0003;
 Sun,  8 Dec 2019 20:55:22 +0000 (UTC)
From: Remi Pommarel <repk@triplefau.lt>
To: Neil Armstrong <narmstrong@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Yue Wang <yue.wang@Amlogic.com>
Subject: [PATCH 2/2] PCI: amlogic: Use PCIe pll gate when available
Date: Sun,  8 Dec 2019 22:03:20 +0100
Message-Id: <20191208210320.15539-3-repk@triplefau.lt>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191208210320.15539-1-repk@triplefau.lt>
References: <20191208210320.15539-1-repk@triplefau.lt>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_125529_531425_DD21C602 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-pci@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Remi Pommarel <repk@triplefau.lt>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to get PCIe working reliably on some AXG platforms, PCIe pll
cml needs to be enabled. This is done by using the PCIE_PLL_CML_ENABLE
clock gate.

This clock gate is optional, so do not fail if it is missing in the
devicetree.

Signed-off-by: Remi Pommarel <repk@triplefau.lt>
---
 drivers/pci/controller/dwc/pci-meson.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pci/controller/dwc/pci-meson.c b/drivers/pci/controller/dwc/pci-meson.c
index 3772b02a5c55..32b70ea9a426 100644
--- a/drivers/pci/controller/dwc/pci-meson.c
+++ b/drivers/pci/controller/dwc/pci-meson.c
@@ -89,6 +89,7 @@ struct meson_pcie_clk_res {
 	struct clk *mipi_gate;
 	struct clk *port_clk;
 	struct clk *general_clk;
+	struct clk *pll_cml_gate;
 };
 
 struct meson_pcie_rc_reset {
@@ -300,6 +301,10 @@ static int meson_pcie_probe_clocks(struct meson_pcie *mp)
 	if (IS_ERR(res->clk))
 		return PTR_ERR(res->clk);
 
+	res->pll_cml_gate = meson_pcie_probe_clock(dev, "pll_cml_en", 0);
+	if (IS_ERR(res->pll_cml_gate))
+		res->pll_cml_gate = NULL;
+
 	return 0;
 }
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
