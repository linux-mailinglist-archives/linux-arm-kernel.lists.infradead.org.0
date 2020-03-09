Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8913517DEFB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 12:47:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K8xxgNTNmiwafIEWwTe2uOI9UAOkDLRrNRxLRZoXQnI=; b=m1BtnRzF6RQIiHbfWE1GrprSvx
	YG6fBk2JiyEn9VvHb0yiEpQr3oj257C3ttg2Gt/2IeyvgPoylfpCUl+uLSxeOcWyC6Oqa/1DqC80k
	dHbSadFghu5OPH8fwvF09Kv72jpbfnhMemgMWsryMGXgnlMdgDoKc8QXqdowPrJAilhVD/8dCUixt
	xe7K+OuMBdHcgfE/V7uN3TqKlwa0YCh++bepoXz2F12TxhDO1fs+/A85cNsCjXVo+uLBW7tr6BBxk
	AgkVRNoT6GLLj/LIG/j9os/0JGBkogc7UR6cqtetzMPFqRLFsY3/grB5DVTGz6lDCZc+Yxt6xuERu
	/ohoMS9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBGse-0003ZH-6M; Mon, 09 Mar 2020 11:47:32 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBGs7-0003AA-1H
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 11:47:00 +0000
X-IronPort-AV: E=Sophos;i="5.70,533,1574089200"; d="scan'208";a="41172727"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie6.idc.renesas.com with ESMTP; 09 Mar 2020 20:46:58 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id 204C2421A42B;
 Mon,  9 Mar 2020 20:46:54 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Subject: [PATCH 2/2] media: i2c: ov5645: Switch to assigned-clock-rates
Date: Mon,  9 Mar 2020 11:46:13 +0000
Message-Id: <1583754373-16510-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583754373-16510-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1583754373-16510-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_044659_215465_447CF544 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-kernel@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch switches to assigned-clock-rates for specifying the clock rate.
The clk-conf.c internally handles setting the clock rate, as a result
setting the clk rate from the driver is dropped.

Correspondingly imx6qdl-wandboard.dtsi which references to ov5645 has been
updated to use assigned-clock-rates in the same patch to avoid bisect
failures.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm/boot/dts/imx6qdl-wandboard.dtsi | 3 ++-
 drivers/media/i2c/ov5645.c               | 9 ++-------
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
index c070893..71f5f75 100644
--- a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
@@ -126,7 +126,8 @@
 		reg = <0x3c>;
 		clocks = <&clks IMX6QDL_CLK_CKO2>;
 		clock-names = "xclk";
-		clock-frequency = <24000000>;
+		assigned-clocks = <&clks IMX6QDL_CLK_CKO2>;
+		assigned-clock-rates = <24000000>;
 		vdddo-supply = <&reg_1p8v>;
 		vdda-supply = <&reg_2p8v>;
 		vddd-supply = <&reg_1p5v>;
diff --git a/drivers/media/i2c/ov5645.c b/drivers/media/i2c/ov5645.c
index a6c17d1..2aa2677 100644
--- a/drivers/media/i2c/ov5645.c
+++ b/drivers/media/i2c/ov5645.c
@@ -1094,7 +1094,8 @@ static int ov5645_probe(struct i2c_client *client)
 		return PTR_ERR(ov5645->xclk);
 	}
 
-	ret = of_property_read_u32(dev->of_node, "clock-frequency", &xclk_freq);
+	ret = of_property_read_u32(dev->of_node, "assigned-clock-rates",
+				   &xclk_freq);
 	if (ret) {
 		dev_err(dev, "could not get xclk frequency\n");
 		return ret;
@@ -1107,12 +1108,6 @@ static int ov5645_probe(struct i2c_client *client)
 		return -EINVAL;
 	}
 
-	ret = clk_set_rate(ov5645->xclk, xclk_freq);
-	if (ret) {
-		dev_err(dev, "could not set xclk frequency\n");
-		return ret;
-	}
-
 	for (i = 0; i < OV5645_NUM_SUPPLIES; i++)
 		ov5645->supplies[i].supply = ov5645_supply_name[i];
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
