Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20778183B22
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 22:13:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xHrtuQKS7guu5xwj/CbnoEIFX9y13E6x/S4UQPm2mZ0=; b=Sj6atzs8ewDssfW6ikHnRyHIOS
	aYLbHWtjb8sXF0oB4Rod8KBrAcEwlq5lHpqX+tguJA2LMxKX0agFOqFLatASch1t2PuDBpEi9yWjG
	xxNJy6EbVt0makFkvTka0bIhdVnp3/WE0wjo1bAZzVU8R36YT5KYGcmL9dOYQIAb1mYhVzheVbnJf
	/SbF6PtW3Gpazq+AhC3DNuRQTz3oGF0tCm9NweuzwnFdCAHaU7yqDw78BIjzKug/0OlPKdiAKJ+c3
	T20uUt95G4t0upYkh+SSeKVVXsNnIaoAoEcFocl0q5JWej0/2FLZ/rpU/1WkhvAFc5RHT0GSJxMHj
	D5p2bqEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCV8x-00067a-37; Thu, 12 Mar 2020 21:13:27 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCV8e-0005sk-AU
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 21:13:09 +0000
X-IronPort-AV: E=Sophos;i="5.70,546,1574089200"; d="scan'208";a="41514819"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie6.idc.renesas.com with ESMTP; 13 Mar 2020 06:13:03 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id 4102B400C095;
 Fri, 13 Mar 2020 06:13:00 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 NXP Linux Team <linux-imx@nxp.com>, Magnus Damm <magnus.damm@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v2 2/3] media: i2c: ov5645: Switch to assigned-clock-rates
Date: Thu, 12 Mar 2020 21:12:31 +0000
Message-Id: <1584047552-20166-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584047552-20166-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1584047552-20166-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_141308_481852_9E88398E 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.172 listed in list.dnswl.org]
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
 drivers/media/i2c/ov5645.c | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/media/i2c/ov5645.c b/drivers/media/i2c/ov5645.c
index a6c17d1..6cd16c5 100644
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
@@ -1094,10 +1095,17 @@ static int ov5645_probe(struct i2c_client *client)
 		return PTR_ERR(ov5645->xclk);
 	}
 
-	ret = of_property_read_u32(dev->of_node, "clock-frequency", &xclk_freq);
+	ret = of_property_read_u32(dev->of_node, "assigned-clock-rates",
+				   &xclk_freq);
 	if (ret) {
-		dev_err(dev, "could not get xclk frequency\n");
-		return ret;
+		/* check if deprecated property clock-frequency is defined */
+		ret = of_property_read_u32(dev->of_node, "clock-frequency",
+					   &xclk_freq);
+		if (ret) {
+			dev_err(dev, "could not get xclk frequency\n");
+			return ret;
+		}
+		set_clk = true;
 	}
 
 	/* external clock must be 24MHz, allow 1% tolerance */
@@ -1107,10 +1115,12 @@ static int ov5645_probe(struct i2c_client *client)
 		return -EINVAL;
 	}
 
-	ret = clk_set_rate(ov5645->xclk, xclk_freq);
-	if (ret) {
-		dev_err(dev, "could not set xclk frequency\n");
-		return ret;
+	if (set_clk) {
+		ret = clk_set_rate(ov5645->xclk, xclk_freq);
+		if (ret) {
+			dev_err(dev, "could not set xclk frequency\n");
+			return ret;
+		}
 	}
 
 	for (i = 0; i < OV5645_NUM_SUPPLIES; i++)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
