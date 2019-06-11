Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 226093C8CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30u3i51GEIUHFgUxMV9ejx/PdwVnXBP4OaAelzlfIa0=; b=Z+FaOnP4m4KvPG
	ndIcPTlEDXQYZ3tKhvKI1pHUDt1t70bUeGpMQZohVGqvxGSDJtG1Je2z0JZLChRFAnMQAFdNvqmxD
	NLt/dJ9LVb2qc5x4a9Yph5QV1jXhLsrJxm28pLWCXmob9uYF+mqNPqAw1szJG4uR9EhA283AnIV0v
	x8VKq0TxP94bqIQcJF7fhvKDp2fLp5H+ysqL25+Iow96lGQ1/ZS8JzfVZuJ3XYQ7pckc2r+tsePHP
	oNYfD6CBIKDT9S3CqXV2ouhBfmEiyy0OOaSlZmg9kbP9nr8KNyq9oCxOimorPpLnnC5cgRB7PhbnB
	QnxzCoeIInTzkh7DM3pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadwc-0000Bb-4M; Tue, 11 Jun 2019 10:23:58 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadqO-0001h5-Qa
 for linux-arm-kernel@bombadil.infradead.org; Tue, 11 Jun 2019 10:17:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VHkPmAPu/i541enrI5+f4VH5iXFCvOUjhGrjcAgKuGo=; b=1wFMnsaKftulhfmdwV88/uMzov
 cV2HaHC7iFryHsGoseOGWXXlqrxm28UWo7q4SIFRyAqmA80wN7NHIE/FzNCnBIedvQTotz3aKi8MK
 Cz12MQuZrm9aRrn9tKTA5H1K38leRfS6S55VpHZW9dDIOjuGisYxgkYWvh/ohw3CSRUbtlMcLkwBw
 U2fyK+qIVIvnItYLrOOVbv3z7n7aixhRk9arYD/fyh3UljZsyMT9NKVrlgl1+9wwQ+78wN53YcsLa
 3Rbdc/tIdCUBDda4e/5FVSRnrgDCMUXL6A41hPIcu8PNnkoJvKWX7GrY8pxK5gUlHOtdnKxZD+SdM
 MC4fbZDw==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadqL-0003yk-AS
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:17:30 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7EF65217D4;
 Tue, 11 Jun 2019 10:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560248245;
 bh=ADdQyps2/+oLNB/Geo1dIqcg9SQiRrczN9IzzsM2o+I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PqCnYjC5BypVeQLOHOFGuVs583+rbxEXS+J/tLL1dvTAWMqhpN5jFV4Vc5Pr23LnY
 0q3rQFhwS0Xv44Ywsw2P0QxhTx+C0LC15W05bSh+4Vm/qRhqpRuGvROOaIvrGOObcj
 fJIh10LuuvY4lccOsIpFsfso9aoFWqW9TTeIWIAs=
Received: by wens.tw (Postfix, from userid 1000)
 id AA88F60B85; Tue, 11 Jun 2019 18:17:18 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH v2 24/25] clk: sunxi-ng: a80-usb: Use local parent references
 for SUNXI_CCU_GATE
Date: Tue, 11 Jun 2019 18:16:57 +0800
Message-Id: <20190611101658.23855-25-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611101658.23855-1-wens@kernel.org>
References: <20190611101658.23855-1-wens@kernel.org>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Chen-Yu Tsai <wens@csie.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

With the new clk parenting code and SUNXI_CCU_GATE macros, we can
reference parents locally via pointers to struct clk_hw or DT
clock-names.

Convert existing SUNXI_CCU_GATE definitions to SUNXI_CCU_GATE_DATA to
specify the parent clock.

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c | 32 +++++++++++++++---------
 1 file changed, 20 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c b/drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c
index 1d76f24f7df3..23bc11e65539 100644
--- a/drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c
+++ b/drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c
@@ -22,18 +22,26 @@
 
 #include "ccu-sun9i-a80-usb.h"
 
-static SUNXI_CCU_GATE(bus_hci0_clk, "bus-hci0", "bus-usb", 0x0, BIT(1), 0);
-static SUNXI_CCU_GATE(usb_ohci0_clk, "usb-ohci0", "osc24M", 0x0, BIT(2), 0);
-static SUNXI_CCU_GATE(bus_hci1_clk, "bus-hci1", "bus-usb", 0x0, BIT(3), 0);
-static SUNXI_CCU_GATE(bus_hci2_clk, "bus-hci2", "bus-usb", 0x0, BIT(5), 0);
-static SUNXI_CCU_GATE(usb_ohci2_clk, "usb-ohci2", "osc24M", 0x0, BIT(6), 0);
-
-static SUNXI_CCU_GATE(usb0_phy_clk, "usb0-phy", "osc24M", 0x4, BIT(1), 0);
-static SUNXI_CCU_GATE(usb1_hsic_clk, "usb1-hsic", "osc24M", 0x4, BIT(2), 0);
-static SUNXI_CCU_GATE(usb1_phy_clk, "usb1-phy", "osc24M", 0x4, BIT(3), 0);
-static SUNXI_CCU_GATE(usb2_hsic_clk, "usb2-hsic", "osc24M", 0x4, BIT(4), 0);
-static SUNXI_CCU_GATE(usb2_phy_clk, "usb2-phy", "osc24M", 0x4, BIT(5), 0);
-static SUNXI_CCU_GATE(usb_hsic_clk, "usb-hsic", "osc24M", 0x4, BIT(10), 0);
+static const struct clk_parent_data clk_parent_hosc[] = {
+	{ .fw_name = "hosc" },
+};
+
+static const struct clk_parent_data clk_parent_bus[] = {
+	{ .fw_name = "bus" },
+};
+
+static SUNXI_CCU_GATE_DATA(bus_hci0_clk, "bus-hci0", clk_parent_bus, 0x0, BIT(1), 0);
+static SUNXI_CCU_GATE_DATA(usb_ohci0_clk, "usb-ohci0", clk_parent_hosc, 0x0, BIT(2), 0);
+static SUNXI_CCU_GATE_DATA(bus_hci1_clk, "bus-hci1", clk_parent_bus, 0x0, BIT(3), 0);
+static SUNXI_CCU_GATE_DATA(bus_hci2_clk, "bus-hci2", clk_parent_bus, 0x0, BIT(5), 0);
+static SUNXI_CCU_GATE_DATA(usb_ohci2_clk, "usb-ohci2", clk_parent_hosc, 0x0, BIT(6), 0);
+
+static SUNXI_CCU_GATE_DATA(usb0_phy_clk, "usb0-phy", clk_parent_hosc, 0x4, BIT(1), 0);
+static SUNXI_CCU_GATE_DATA(usb1_hsic_clk, "usb1-hsic", clk_parent_hosc, 0x4, BIT(2), 0);
+static SUNXI_CCU_GATE_DATA(usb1_phy_clk, "usb1-phy", clk_parent_hosc, 0x4, BIT(3), 0);
+static SUNXI_CCU_GATE_DATA(usb2_hsic_clk, "usb2-hsic", clk_parent_hosc, 0x4, BIT(4), 0);
+static SUNXI_CCU_GATE_DATA(usb2_phy_clk, "usb2-phy", clk_parent_hosc, 0x4, BIT(5), 0);
+static SUNXI_CCU_GATE_DATA(usb_hsic_clk, "usb-hsic", clk_parent_hosc, 0x4, BIT(10), 0);
 
 static struct ccu_common *sun9i_a80_usb_clks[] = {
 	&bus_hci0_clk.common,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
