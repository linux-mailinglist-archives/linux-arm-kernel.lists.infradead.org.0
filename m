Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F78EFA4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 06:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gSaAfjDmlXBaIT9Fpe8TOSEbwRFIOjUtPFoEgMkHLY4=; b=mE2WMbnZlDRYE6cczeFucOYoFm
	WDqqT0y7dHKFaTDRk1qtgG9cina6Jv5NSuSi7i7e2dXJR0heKH7BiXo/l37oDOWIXXF4Ftk0MjzMw
	P0wtvWuuOtdEpjCljNJQAva0WKAu5jvUnPWwmX7llAbthmAbdhPsfhXEeKipN3tcCC2zP2mYcRBJn
	OvtmUDcAyFATHAvSv7R+xnNzVNtI8fs1BLHcEklesAxYwkH2j1Z1zUlvV5j6GNq1n3gox4WZbrQ9a
	lZtyIRmEU/GMvfggQEoq5uEuGbUwJfry/DbmD9zqo6ECspVGFGy+ZFEyo0QjpiBysA+6pEdt6ivfZ
	1yAzcl2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLKR4-0002Mn-Vk; Tue, 30 Apr 2019 04:32:06 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLKQV-0001sZ-CF
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 04:31:34 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7885F1A0192;
 Tue, 30 Apr 2019 06:31:28 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7A69C1A00DF;
 Tue, 30 Apr 2019 06:31:19 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9A6AD402C0;
 Tue, 30 Apr 2019 12:31:08 +0800 (SGT)
From: Chuanhua Han <chuanhua.han@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, leoyang.li@nxp.com
Subject: [PATCH 2/3] i2c: imx: I2C Driver IBC and SCL Divider for MUL=2 and
 MUL=4
Date: Tue, 30 Apr 2019 12:32:41 +0800
Message-Id: <20190430043242.29687-2-chuanhua.han@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190430043242.29687-1-chuanhua.han@nxp.com>
References: <20190430043242.29687-1-chuanhua.han@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_213131_692220_82C88C3A 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, sumit.batra@nxp.com, eha@deif.com,
 Chuanhua Han <chuanhua.han@nxp.com>, linux-kernel@vger.kernel.org,
 linux@rempel-privat.de, wsa+renesas@sang-engineering.com, linux-imx@nxp.com,
 kernel@pengutronix.de, u.kleine-koenig@pengutronix.de, l.stach@pengutronix.de,
 festevam@gmail.com, peda@axentia.se, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

NXP Layerscape SoC have up to three MUL options available for all
divider values,we choice of MUL determines the internal monitor rate
of the I2C bus (SCL and SDA signals).

The current kernel driver supports MUL=1 by default ,but doesn't have
the IBC and SCL Divider entries in vf610_i2c_clk_div for MUL=2  and
MUL=4,so we need to add the corresponding support.

Signed-off-by: Sumit Batra <sumit.batra@nxp.com>
Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
---
 drivers/i2c/busses/i2c-imx.c | 71 +++++++++++++++++++++++++++++++++++-
 1 file changed, 69 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 42fed40198a0..ac5a334b7339 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -38,6 +38,7 @@
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/of_dma.h>
+#include <linux/of_address.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/platform_data/i2c-imx.h>
 #include <linux/platform_device.h>
@@ -156,6 +157,44 @@ static struct imx_i2c_clk_pair vf610_i2c_clk_div[] = {
 	{ 3840, 0x3F }, { 4096, 0x7B }, { 5120, 0x7D }, { 6144, 0x7E },
 };
 
+static struct imx_i2c_clk_pair mul2_i2c_clk_div[] = {
+	{ 40,   0x40 }, { 44,   0x41 }, { 48,   0x42 }, { 52,   0x43 },
+	{ 56,   0x44 }, { 60,   0x45 }, { 68,   0x46 }, { 80,   0x47 },
+	{ 56,   0x48 }, { 64,   0x49 }, { 72,   0x4A }, { 80,   0x4B },
+	{ 88,   0x4C }, { 96,   0x4D }, { 112,  0x4E }, { 136,  0x4F },
+	{ 96,   0x50 }, { 112,  0x51 }, { 128,  0x52 }, { 144,  0x53 },
+	{ 160,  0x54 }, { 176,  0x55 }, { 208,  0x56 }, { 256,  0x57 },
+	{ 160,  0x58 }, { 192,  0x59 }, { 224,  0x5A }, { 256,  0x5B },
+	{ 288,  0x5C }, { 320,  0x5D }, { 384,  0x5E }, { 480,  0x5F },
+	{ 320,  0x60 }, { 384,  0x61 }, { 448,  0x62 }, { 512,  0x63 },
+	{ 576,  0x64 }, { 640,  0x65 }, { 768,  0x66 }, { 960,  0x67 },
+	{ 640,  0x68 }, { 768,  0x69 }, { 896,  0x6A }, { 1024, 0x6B },
+	{ 1152, 0x6C }, { 1280, 0x6D }, { 1536, 0x6E }, { 1920, 0x6F },
+	{ 1280, 0x70 }, { 1536, 0x71 }, { 1792, 0x72 }, { 2048, 0x73 },
+	{ 2304, 0x74 }, { 2560, 0x75 }, { 3072, 0x76 }, { 3840, 0x77 },
+	{ 2560, 0x78 }, { 3072, 0x79 }, { 3584, 0x7A }, { 4096, 0x7B },
+	{ 4608, 0x7C }, { 5120, 0x7D }, { 6144, 0x7E }, { 7680, 0x7F },
+};
+
+static struct imx_i2c_clk_pair mul4_i2c_clk_div[] = {
+	{ 80,    0x80 }, { 88,    0x81 }, { 96,    0x82 }, { 104,   0x83 },
+	{ 112,   0x84 }, { 120,   0x85 }, { 136,   0x86 }, { 160,   0x87 },
+	{ 112,   0x88 }, { 128,   0x89 }, { 144,   0x8A }, { 160,   0x8B },
+	{ 176,   0x8C }, { 192,   0x8D }, { 224,   0x8E }, { 272,   0x8F },
+	{ 192,   0x90 }, { 224,   0x91 }, { 256,   0x92 }, { 288,   0x93 },
+	{ 320,   0x94 }, { 352,   0x95 }, { 416,   0x96 }, { 512,   0x97 },
+	{ 320,   0x98 }, { 384,   0x99 }, { 448,   0x9A }, { 512,   0x9B },
+	{ 576,   0x9C }, { 640,   0x9D }, { 768,   0x9E }, { 960,   0x9F },
+	{ 640,   0xA0 }, { 768,   0xA1 }, { 896,   0xA2 }, { 1024,  0xA3 },
+	{ 1152,  0xA4 }, { 1280,  0xA5 }, { 1536,  0xA6 }, { 1792,  0xAA },
+	{ 1280,  0xA8 }, { 1536,  0xA9 }, { 1920,  0xA7 }, { 2048,  0xAB },
+	{ 2304,  0xAC }, { 2560,  0xAD }, { 3072,  0xAE }, { 3584,  0xB2 },
+	{ 2560,  0xB0 }, { 3072,  0xB1 }, { 3820,  0xAF }, { 4096,  0xB3 },
+	{ 4608,  0xB4 }, { 5120,  0xB5 }, { 6144,  0xB6 }, { 7680,  0xB7 },
+	{ 5120,  0xB8 }, { 6144,  0xB9 }, { 7168,  0xBA }, { 8192,  0xBB },
+	{ 9216,  0xBC }, { 10240, 0xBD }, { 12288, 0xBE }, { 15360, 0xBF },
+};
+
 enum imx_i2c_type {
 	IMX1_I2C,
 	IMX21_I2C,
@@ -234,6 +273,24 @@ static struct imx_i2c_hwdata vf610_i2c_hwdata = {
 
 };
 
+static struct imx_i2c_hwdata mul2_i2c_hwdata = {
+	.devtype                = VF610_I2C,
+	.regshift               = VF610_I2C_REGSHIFT,
+	.clk_div                = mul2_i2c_clk_div,
+	.ndivs                  = ARRAY_SIZE(mul2_i2c_clk_div),
+	.i2sr_clr_opcode        = I2SR_CLR_OPCODE_W1C,
+	.i2cr_ien_opcode        = I2CR_IEN_OPCODE_0,
+};
+
+static struct imx_i2c_hwdata mul4_i2c_hwdata = {
+	.devtype                = VF610_I2C,
+	.regshift               = VF610_I2C_REGSHIFT,
+	.clk_div                = mul4_i2c_clk_div,
+	.ndivs                  = ARRAY_SIZE(mul4_i2c_clk_div),
+	.i2sr_clr_opcode        = I2SR_CLR_OPCODE_W1C,
+	.i2cr_ien_opcode        = I2CR_IEN_OPCODE_0,
+};
+
 static const struct platform_device_id imx_i2c_devtype[] = {
 	{
 		.name = "imx1-i2c",
@@ -1058,6 +1115,7 @@ static int i2c_imx_probe(struct platform_device *pdev)
 	void __iomem *base;
 	int irq, ret;
 	dma_addr_t phy_addr;
+	u32 mul_value;
 
 	dev_dbg(&pdev->dev, "<%s>\n", __func__);
 
@@ -1077,11 +1135,20 @@ static int i2c_imx_probe(struct platform_device *pdev)
 	if (!i2c_imx)
 		return -ENOMEM;
 
-	if (of_id)
+	if (of_id) {
 		i2c_imx->hwdata = of_id->data;
-	else
+		ret = of_property_read_u32(pdev->dev.of_node,
+					   "mul-value", &mul_value);
+		if (!ret) {
+			if (mul_value == 2)
+				i2c_imx->hwdata = &mul2_i2c_hwdata;
+			else if (mul_value == 4)
+				i2c_imx->hwdata = &mul4_i2c_hwdata;
+		}
+	} else {
 		i2c_imx->hwdata = (struct imx_i2c_hwdata *)
 				platform_get_device_id(pdev)->driver_data;
+	}
 
 	/* Setup i2c_imx driver structure */
 	strlcpy(i2c_imx->adapter.name, pdev->name, sizeof(i2c_imx->adapter.name));
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
