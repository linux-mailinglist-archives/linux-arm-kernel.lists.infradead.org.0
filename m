Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35125FFBE6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 23:15:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s5XcfN/feg/m2ien3Xwv9ZKC+Sw3WPvTTVVOCNLg+5c=; b=bK87eODg/NA0tI
	e2T1b23WRCTwCNPIQ0/vQsl0xCbLCc3bPqI+UVNkx9+ix7AEU5PjgPKZ9+ymPlebsI7Dl1CpsmJCf
	FcDJjbWnWHbU6BlCziCzZN0euarsNX7rnnKsWWf5y1aRo3x/Tw+xlwlMq88BTouMwvNqdpWI/3udQ
	UFTOsktGqQw18r6XyVAFCAQu8H5dP5rGQtvdLiYZum7AhT6mW9SqagZnzuq13lTA7tKMmjInVVX+W
	91/w0nOTRoGr3kTLsBUyGa4e4ok1Vgwm9oC0LAcYR5W5rF5ICjR/HWPnp069qr8h9bOfJdZBgHw4k
	QfXvbrwQjNGYVlSyfAUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWSpF-000527-By; Sun, 17 Nov 2019 22:15:21 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWSon-00044s-FE
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 22:14:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574028889;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=OTBQfgiMgiFDMKt/EGwPBC5FtoOl9EQykalo6VCqi+Y=;
 b=E03H/zTCAKW63MsJu49G5N/ikAyk6BNeMZI1w/fCuFHST0mn6wFRfrALxofbK5fWB0
 T32z4cJYOqqRQNF7S3QsSO9gRstph3g44KaiJFEVlZVq1SWatCqU5HlRkL1HXQGY0tNC
 A60WFIrX6XqoCYBPyYEKSeuWPZUnlJfPHp21nPUoTt9v4551XwkiE/7OZ+VmF8ZNcMMM
 n+ukTWAyC3TQNyN7Ukow4dBXbn/JLYPGHPVUkbeROHhUQD1J4AEiervGB4/XxUjSfkiG
 U39A8s8T+PIjiHFbpYznZz/gCgI7aqprfxNs2O7tHj+5UtwOrUJWTLYDrpRy9X6wvpQy
 A5PA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXsMvvtBRRPA=="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 44.29.0 AUTH)
 with ESMTPSA id e07688vAHMEebBO
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Sun, 17 Nov 2019 23:14:40 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Lee Jones <lee.jones@linaro.org>
Subject: [PATCH 2/2] mfd: ab8500-core: Add device tree support for AB8505
Date: Sun, 17 Nov 2019 23:10:53 +0100
Message-Id: <20191117221053.278415-2-stephan@gerhold.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191117221053.278415-1-stephan@gerhold.net>
References: <20191117221053.278415-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_141453_661630_37B67A1E 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

AB8505 support was never fully converted to the device tree.
Most of the MFD cells for AB8505 lack an "of_compatible",
which prevents them from being configured through the device tree.

Align the definition of the AB8505 MFD cells with the ones for AB8500,
and add device tree compatibles. Except for GPIO and regulators the
compatibles are equal to those used for AB8500 because the hardware
does not differ much.

Finally, change db8500_prcmu_register_ab8500() to check for the AB8505
device tree node additionally, and probe it if it is found.

Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 drivers/mfd/ab8500-core.c  | 14 ++++++++++++--
 drivers/mfd/db8500-prcmu.c | 26 ++++++++++++++++++++------
 2 files changed, 32 insertions(+), 8 deletions(-)

diff --git a/drivers/mfd/ab8500-core.c b/drivers/mfd/ab8500-core.c
index bafc729fc434..6db7969101d6 100644
--- a/drivers/mfd/ab8500-core.c
+++ b/drivers/mfd/ab8500-core.c
@@ -718,17 +718,20 @@ static const struct mfd_cell ab8505_devs[] = {
 #ifdef CONFIG_DEBUG_FS
 	{
 		.name = "ab8500-debug",
+		.of_compatible = "stericsson,ab8500-debug",
 	},
 #endif
 	{
 		.name = "ab8500-sysctrl",
+		.of_compatible = "stericsson,ab8500-sysctrl",
 	},
 	{
 		.name = "ab8500-regulator",
+		.of_compatible = "stericsson,ab8505-regulator",
 	},
 	{
 		.name = "abx500-clk",
-		.of_compatible = "stericsson,abx500-clk",
+		.of_compatible = "stericsson,ab8500-clk",
 	},
 	{
 		.name = "ab8500-gpadc",
@@ -736,25 +739,32 @@ static const struct mfd_cell ab8505_devs[] = {
 	},
 	{
 		.name = "ab8500-rtc",
+		.of_compatible = "stericsson,ab8500-rtc",
 	},
 	{
 		.name = "ab8500-acc-det",
+		.of_compatible = "stericsson,ab8500-acc-det",
 	},
 	{
 		.name = "ab8500-poweron-key",
+		.of_compatible = "stericsson,ab8500-poweron-key",
 	},
 	{
 		.name = "ab8500-pwm",
+		.of_compatible = "stericsson,ab8500-pwm",
 		.id = 1,
 	},
 	{
 		.name = "pinctrl-ab8505",
+		.of_compatible = "stericsson,ab8505-gpio",
 	},
 	{
 		.name = "ab8500-usb",
+		.of_compatible = "stericsson,ab8500-usb",
 	},
 	{
 		.name = "ab8500-codec",
+		.of_compatible = "stericsson,ab8500-codec",
 	},
 	{
 		.name = "ab-iddet",
@@ -1276,7 +1286,7 @@ static int ab8500_probe(struct platform_device *pdev)
 
 static const struct platform_device_id ab8500_id[] = {
 	{ "ab8500-core", AB8500_VERSION_AB8500 },
-	{ "ab8505-i2c", AB8500_VERSION_AB8505 },
+	{ "ab8505-core", AB8500_VERSION_AB8505 },
 	{ "ab9540-i2c", AB8500_VERSION_AB9540 },
 	{ "ab8540-i2c", AB8500_VERSION_AB8540 },
 	{ }
diff --git a/drivers/mfd/db8500-prcmu.c b/drivers/mfd/db8500-prcmu.c
index 57ac58b4b5f3..26d967a1a046 100644
--- a/drivers/mfd/db8500-prcmu.c
+++ b/drivers/mfd/db8500-prcmu.c
@@ -3060,30 +3060,44 @@ static const struct mfd_cell db8500_prcmu_devs[] = {
 static int db8500_prcmu_register_ab8500(struct device *parent)
 {
 	struct device_node *np;
-	struct resource ab8500_resource;
+	struct resource ab850x_resource;
 	const struct mfd_cell ab8500_cell = {
 		.name = "ab8500-core",
 		.of_compatible = "stericsson,ab8500",
 		.id = AB8500_VERSION_AB8500,
-		.resources = &ab8500_resource,
+		.resources = &ab850x_resource,
 		.num_resources = 1,
 	};
+	const struct mfd_cell ab8505_cell = {
+		.name = "ab8505-core",
+		.of_compatible = "stericsson,ab8505",
+		.id = AB8500_VERSION_AB8505,
+		.resources = &ab850x_resource,
+		.num_resources = 1,
+	};
+	const struct mfd_cell *ab850x_cell;
 
 	if (!parent->of_node)
 		return -ENODEV;
 
 	/* Look up the device node, sneak the IRQ out of it */
 	for_each_child_of_node(parent->of_node, np) {
-		if (of_device_is_compatible(np, ab8500_cell.of_compatible))
+		if (of_device_is_compatible(np, ab8500_cell.of_compatible)) {
+			ab850x_cell = &ab8500_cell;
 			break;
+		}
+		if (of_device_is_compatible(np, ab8505_cell.of_compatible)) {
+			ab850x_cell = &ab8505_cell;
+			break;
+		}
 	}
 	if (!np) {
-		dev_info(parent, "could not find AB8500 node in the device tree\n");
+		dev_info(parent, "could not find AB850X node in the device tree\n");
 		return -ENODEV;
 	}
-	of_irq_to_resource_table(np, &ab8500_resource, 1);
+	of_irq_to_resource_table(np, &ab850x_resource, 1);
 
-	return mfd_add_devices(parent, 0, &ab8500_cell, 1, NULL, 0, NULL);
+	return mfd_add_devices(parent, 0, ab850x_cell, 1, NULL, 0, NULL);
 }
 
 /**
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
