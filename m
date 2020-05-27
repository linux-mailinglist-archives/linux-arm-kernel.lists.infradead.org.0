Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E87F1E4904
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:01:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFC/b6TCqco02Z0GOQDuq5j5aCfojngg93l/ELzjeGo=; b=bKnojPmq//cHfW
	4RENTQ8ipoBkBK66cuhz3YSyZw9mHfjD9oKaTUZD84HnWoC7LDYrxT5Gldz79YZ5/NxH5u7SD4TNt
	CAjru4oXQkdjvFg3R1Ry50R+WrRGqxQSAVUzsKLqG63+a+32ZMCJo9fO4lcJUGgIP0ntrdulXVy0h
	Bj/qvHpCNSZIZ/i6gXjRnASh+V+UPvnHUkoRTINv8aROantoDbmpf9p6MDotT98xa0/jKCJXybxXS
	4an+HVrLT4e3+G5d83CI0AZsq60BjUVHTXMkgCqrCy0pP0yGFZ2i5yNNCL1HtVYorExcKFd33TqQx
	gCmxEArFMIAzXf7RGYRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyU7-0004dR-Ir; Wed, 27 May 2020 16:00:51 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJ2-0005xq-9c; Wed, 27 May 2020 15:49:26 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 80EF6581FF0;
 Wed, 27 May 2020 11:49:23 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:49:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=JS2UKqRBYPadW
 vDMXsMwdmCOk/vh+t2B16LPXJpi9Ps=; b=Nj0JRBg0iY8fzLsKwLcvMLUdYTJjv
 2cdBT/hXX4w7p0QipcKLmlguVouTTGfHCH033T8oZag3qRW1kuPempSYfMpCUnbZ
 qb8XdX4fw1/JoT7DWKO2y01L2GCC3p2yEDv1/Umn4FIwTrg8sSagLasShJF6HF8F
 oQM88zECePTw2qf3HTMt0+GzufzE8lKwK2KvxVfGAUguxeXC0ch0ApiX60yRS7v9
 CcN6ZG6RJtUtHG7FKeMyiloiUqycf2D1tPyia5HC1nbhfa4TO16TSmVQK3HF7XFB
 jvv9pcB+M6ErC8RcqcYFcWJs4Kh7z+A0lwAM5T+Odmig5zyfB4GB6Ew1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=JS2UKqRBYPadWvDMXsMwdmCOk/vh+t2B16LPXJpi9Ps=; b=AbeO0tAo
 NaodgRmxdhYn10Eufk/75eknWlBSIzTTbBvcdDHIeatxtA/UTpLbzTDVGXuAMlaP
 ZiDItfAVP7bjqlOTKZJif2M1BPwk3cFgXyc0FN5HxzwaRA4Z/9EhrZ1oF8F0f0JJ
 4Bi4hZUaCXWSrCjLJ8WKFgooseYH9T1GeVsOFX+lmp8KVyKud9jWSOPuKMIwmJ3W
 S6ov4F1BPeHz/eQ8pK2YLzBuCFIPv3piz1IomDyZqvjLjY+w3K+7S53eVFjPaMXK
 pn7svUl6prAbCitYbfkAUYJxoNqqgKS1IkEUKiGK2Ci+x1X7Rmc5VR7YWMmDuuGK
 d9YeM4A8UpxOxA==
X-ME-Sender: <xms:A4zOXvQUbCpL073Nzl95SPp88_wkm31NN89u6e_cCzPvQS70TzAsDQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdevjeduiedtuddtteeuiefgiedukeevjeevuddttddvtdefkedvleeufeej
 leeknecuffhomhgrihhnpehrtgguvghvrdhnrhenucfkphepledtrdekledrieekrdejie
 enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgig
 ihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:A4zOXgxAvlsdVZLvxvwLd1OZDBMrlQzp6OtxJgzfkFGg88XNQSVXNQ>
 <xmx:A4zOXk1l_GeoaFpQ-27l1C_0DQDjRq_X9SxqgnTLXDugTzK9ThnK2w>
 <xmx:A4zOXvC7WXfdpyWqIwtSOJz5ItkOuGQdvbEYOWgfSH6vqtkeWF_Cjw>
 <xmx:A4zOXpYj9AYGu4u2KrWr5R0rIljRDNm2LwOcdEeLGitYjDgBabz9eA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 221A2328005D;
 Wed, 27 May 2020 11:49:23 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 004/105] clk: bcm: Add BCM2711 DVP driver
Date: Wed, 27 May 2020 17:47:34 +0200
Message-Id: <6615a61b8af240e3d10f8890e4b2462ccdaac9b9.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084924_494210_583CAE9B 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The HDMI block has a block that controls clocks and reset signals to the
HDMI0 and HDMI1 controllers.

Let's expose that through a clock driver implementing a clock and reset
provider.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: linux-clk@vger.kernel.org
Cc: devicetree@vger.kernel.org
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/Kconfig           |  11 +++-
 drivers/clk/bcm/Makefile          |   1 +-
 drivers/clk/bcm/clk-bcm2711-dvp.c | 127 +++++++++++++++++++++++++++++++-
 3 files changed, 139 insertions(+)
 create mode 100644 drivers/clk/bcm/clk-bcm2711-dvp.c

diff --git a/drivers/clk/bcm/Kconfig b/drivers/clk/bcm/Kconfig
index 8c83977a7dc4..784f12c72365 100644
--- a/drivers/clk/bcm/Kconfig
+++ b/drivers/clk/bcm/Kconfig
@@ -1,4 +1,15 @@
 # SPDX-License-Identifier: GPL-2.0-only
+
+config CLK_BCM2711_DVP
+	tristate "Broadcom BCM2711 DVP support"
+	depends on ARCH_BCM2835 ||COMPILE_TEST
+	depends on COMMON_CLK
+	default ARCH_BCM2835
+	select RESET_SIMPLE
+	help
+	  Enable common clock framework support for the Broadcom BCM2711
+	  DVP Controller.
+
 config CLK_BCM2835
 	bool "Broadcom BCM2835 clock support"
 	depends on ARCH_BCM2835 || ARCH_BRCMSTB || COMPILE_TEST
diff --git a/drivers/clk/bcm/Makefile b/drivers/clk/bcm/Makefile
index 0070ddf6cdd2..2c1349062147 100644
--- a/drivers/clk/bcm/Makefile
+++ b/drivers/clk/bcm/Makefile
@@ -6,6 +6,7 @@ obj-$(CONFIG_CLK_BCM_KONA)	+= clk-kona-setup.o
 obj-$(CONFIG_CLK_BCM_KONA)	+= clk-bcm281xx.o
 obj-$(CONFIG_CLK_BCM_KONA)	+= clk-bcm21664.o
 obj-$(CONFIG_COMMON_CLK_IPROC)	+= clk-iproc-armpll.o clk-iproc-pll.o clk-iproc-asiu.o
+obj-$(CONFIG_CLK_BCM2835)	+= clk-bcm2711-dvp.o
 obj-$(CONFIG_CLK_BCM2835)	+= clk-bcm2835.o
 obj-$(CONFIG_CLK_BCM2835)	+= clk-bcm2835-aux.o
 obj-$(CONFIG_CLK_RASPBERRYPI)	+= clk-raspberrypi.o
diff --git a/drivers/clk/bcm/clk-bcm2711-dvp.c b/drivers/clk/bcm/clk-bcm2711-dvp.c
new file mode 100644
index 000000000000..c1c4b5857d32
--- /dev/null
+++ b/drivers/clk/bcm/clk-bcm2711-dvp.c
@@ -0,0 +1,127 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright 2020 Cerno
+
+#include <linux/clk-provider.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/reset-controller.h>
+#include <linux/reset/reset-simple.h>
+
+#define DVP_HT_RPI_SW_INIT	0x04
+#define DVP_HT_RPI_MISC_CONFIG	0x08
+
+#define NR_CLOCKS	2
+#define NR_RESETS	6
+
+struct clk_dvp {
+	struct clk_hw_onecell_data	*data;
+	struct reset_simple_data	reset;
+};
+
+static const struct clk_parent_data clk_dvp_parent = {
+	.index	= 0,
+};
+
+static int clk_dvp_probe(struct platform_device *pdev)
+{
+	struct clk_hw_onecell_data *data;
+	struct resource *res;
+	struct clk_dvp *dvp;
+	void __iomem *base;
+	int ret;
+
+	dvp = devm_kzalloc(&pdev->dev, sizeof(*dvp), GFP_KERNEL);
+	if (!dvp)
+		return -ENOMEM;
+	platform_set_drvdata(pdev, dvp);
+
+	dvp->data = devm_kzalloc(&pdev->dev,
+				 struct_size(dvp->data, hws, NR_CLOCKS),
+				 GFP_KERNEL);
+	if (!dvp->data)
+		return -ENOMEM;
+	data = dvp->data;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	dvp->reset.rcdev.owner = THIS_MODULE;
+	dvp->reset.rcdev.nr_resets = NR_RESETS;
+	dvp->reset.rcdev.ops = &reset_simple_ops;
+	dvp->reset.rcdev.of_node = pdev->dev.of_node;
+	dvp->reset.membase = base + DVP_HT_RPI_SW_INIT;
+	spin_lock_init(&dvp->reset.lock);
+
+	ret = reset_controller_register(&dvp->reset.rcdev);
+	if (ret)
+		return ret;
+
+	data->hws[0] = clk_hw_register_gate_parent_data(&pdev->dev,
+							"hdmi0-108MHz",
+							&clk_dvp_parent, 0,
+							base + DVP_HT_RPI_MISC_CONFIG, 3,
+							CLK_GATE_SET_TO_DISABLE,
+							&dvp->reset.lock);
+	if (IS_ERR(data->hws[0])) {
+		ret = PTR_ERR(data->hws[0]);
+		goto unregister_reset;
+	}
+
+	data->hws[1] = clk_hw_register_gate_parent_data(&pdev->dev,
+							"hdmi1-108MHz",
+							&clk_dvp_parent, 0,
+							base + DVP_HT_RPI_MISC_CONFIG, 4,
+							CLK_GATE_SET_TO_DISABLE,
+							&dvp->reset.lock);
+	if (IS_ERR(data->hws[1])) {
+		ret = PTR_ERR(data->hws[1]);
+		goto unregister_clk0;
+	}
+
+	data->num = NR_CLOCKS;
+	ret = of_clk_add_hw_provider(pdev->dev.of_node, of_clk_hw_onecell_get,
+				     data);
+	if (ret)
+		goto unregister_clk1;
+
+	return 0;
+
+unregister_clk1:
+	clk_hw_unregister_gate(data->hws[1]);
+
+unregister_clk0:
+	clk_hw_unregister_gate(data->hws[0]);
+
+unregister_reset:
+	reset_controller_unregister(&dvp->reset.rcdev);
+	return ret;
+};
+
+static int clk_dvp_remove(struct platform_device *pdev)
+{
+	struct clk_dvp *dvp = platform_get_drvdata(pdev);
+	struct clk_hw_onecell_data *data = dvp->data;
+
+	clk_hw_unregister_gate(data->hws[1]);
+	clk_hw_unregister_gate(data->hws[0]);
+	reset_controller_unregister(&dvp->reset.rcdev);
+
+	return 0;
+}
+
+static const struct of_device_id clk_dvp_dt_ids[] = {
+	{ .compatible = "brcm,brcm2711-dvp", },
+	{ /* sentinel */ }
+};
+
+static struct platform_driver clk_dvp_driver = {
+	.probe	= clk_dvp_probe,
+	.remove	= clk_dvp_remove,
+	.driver	= {
+		.name		= "brcm2711-dvp",
+		.of_match_table	= clk_dvp_dt_ids,
+	},
+};
+module_platform_driver(clk_dvp_driver);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
