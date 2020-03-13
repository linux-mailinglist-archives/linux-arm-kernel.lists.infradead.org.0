Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 183801850C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 22:13:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IinmFlkX86xdbgC43jBIPN8zXyFMnmuCFTSBxyb6Af8=; b=hfL9w6J+W3pXR0xHFYftPlte6w
	dRYhUDiOAuJmehV8UDl+3LfzpGI+GB2t38QQ6g4C3/uZcX+o4dmxlaHqB6XS+dzJ5yD7nwZxZKmov
	0/44kh/aD/M5uRE54EGIBrm5E6pNcmTrPDYB1pJt0bXNMd/TKilKRdde97hxSzbi7RecUkQQsvJGg
	C+q5PeBEH9c9feguEwNx3G78rzCuAdGtnq+WVhuoxq1GY1StbU6swtVgbSejW6/6e3b9ZUwmehG/w
	IqU2t2ux25uKVsrluS2Qv1HaN23cf//wH2dYmKsbDxEFsQ7HQ9Ey+xsKGFqHB05RnreKWyTR5KL+K
	eHxmrc/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCrca-0007Hm-JR; Fri, 13 Mar 2020 21:13:32 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCrby-0006pu-3h
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 21:12:55 +0000
X-IronPort-AV: E=Sophos;i="5.70,550,1574089200"; d="scan'208";a="41835038"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie5.idc.renesas.com with ESMTP; 14 Mar 2020 06:12:52 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id 1541B40E09D5;
 Sat, 14 Mar 2020 06:12:47 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 NXP Linux Team <linux-imx@nxp.com>, Magnus Damm <magnus.damm@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v3 2/4] media: i2c: ov5645: Switch to assigned-clock-rates
Date: Fri, 13 Mar 2020 21:12:32 +0000
Message-Id: <1584133954-6953-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_141254_279311_4E349BBF 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.171 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch switches to assigned-clock-rates for specifying the clock rate.
The clk-conf.c internally handles setting the clock rate when
assigned-clock-rates is passed.

The driver now sets the clock frequency only if the deprecated property
clock-frequency is defined instead assigned-clock-rates, this is to avoid
breakage with existing DT binaries.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/media/i2c/ov5645.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/media/i2c/ov5645.c b/drivers/media/i2c/ov5645.c
index a6c17d1..4fbabf3 100644
--- a/drivers/media/i2c/ov5645.c
+++ b/drivers/media/i2c/ov5645.c
@@ -1055,6 +1055,7 @@ static int ov5645_probe(struct i2c_client *client)
 	struct device_node *endpoint;
 	struct ov5645 *ov5645;
 	u8 chip_id_high, chip_id_low;
+	bool set_clk = false;
 	unsigned int i;
 	u32 xclk_freq;
 	int ret;
@@ -1094,12 +1095,18 @@ static int ov5645_probe(struct i2c_client *client)
 		return PTR_ERR(ov5645->xclk);
 	}
 
-	ret = of_property_read_u32(dev->of_node, "clock-frequency", &xclk_freq);
-	if (ret) {
-		dev_err(dev, "could not get xclk frequency\n");
-		return ret;
+	/* check if deprecated property clock-frequency is defined */
+	ret = of_property_read_u32(dev->of_node, "clock-frequency",
+				   &xclk_freq);
+	if (!ret) {
+		ret = clk_set_rate(ov5645->xclk, xclk_freq);
+		if (ret) {
+			dev_err(dev, "could not set xclk frequency\n");
+			return ret;
+		}
 	}
 
+	xclk_freq = clk_get_rate(ov5645->xclk);
 	/* external clock must be 24MHz, allow 1% tolerance */
 	if (xclk_freq < 23760000 || xclk_freq > 24240000) {
 		dev_err(dev, "external clock frequency %u is not supported\n",
@@ -1107,12 +1114,6 @@ static int ov5645_probe(struct i2c_client *client)
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
