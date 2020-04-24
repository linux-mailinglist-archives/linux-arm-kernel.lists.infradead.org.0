Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD941B7AA5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:52:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8DLKtRzLN1tWif+KoekwQJnup2H7fBiurHyj5dZ5v8g=; b=Rf4K4zlvXwtiYO
	d7oCJKb0eFttBAAzh+z4FwcB1x/bznm24Np4oF7kMhscpNQxUPau+9gLOUAZfojxYzUWa9d9vco22
	ix/ImlKLxyoZVcvDz5Xkgn2jfOZcdoJkP5jOQhbNZr8muSgg3byFf6A8l6ywGHN1RAJVjdIP/t0LB
	D9cXu5HMejtyHIaUQ8TjEYa3E2Q7U4fMIuSI7EED0DybXaiNph7A6EAKhAwfLqCQZPN8KLvxWjvE4
	oK56ZNkWLxSUakumbwG5SK4KQZKKpI1rAeHA3WLSkUhVBEpFzwZrfVGV7k8MS5CYAyaY0/qEXsQBx
	HVAX7AqXoBJh98ILhC2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0dA-00042t-Ji; Fri, 24 Apr 2020 15:52:44 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0My-0007oU-BU; Fri, 24 Apr 2020 15:36:02 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 10269334;
 Fri, 24 Apr 2020 11:35:58 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=gFHaVwmXarkqP
 cB3RyF+e3O/1vaX9+yW/7kak31Bpq4=; b=sfhdm+1t7ELNMj+Ur68F3lc7PZqqI
 AOm1DSHDu/l/2Gk67hvb6m17M9B4m/h0soYafyDLw+1JHRZXxcNbNSp07YDXyfIs
 PFDn1rO3bhU1BfUfUtGdlyjHUHe6YluxcYDwUzi2swH6znnCr+ii9RMkRteSAHJb
 7j/MNMLr5lFuS1ReVJKX2A5hu/qNN9mny4N55/sWMpNmZThZfwpZm35HSlmovwL+
 I9KG1aOxljSbYouo5QVsKuJ02nKZjM/GqPoM6+yOeQZeoJzwzLrumj0iazPw9afR
 t64wmks9dRH1TkXBXdbUHWv3M/PxMPnZKXE8JymJxDhX0kbdJCUb3Qmvg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=gFHaVwmXarkqPcB3RyF+e3O/1vaX9+yW/7kak31Bpq4=; b=yIktkNjP
 IUAqxvYJrYerFJq7sOZn4v64pRc4dHTEaZhyrUFNwYTzAjX+txOmdEUbH+RLgOa9
 /nxXfRG/gfJAbC7i+tMNq0NJm0wLDJFqVfnPOifK2A3drNkvuOR68yrCZ5SxhERX
 icqk7VHX5piOqCCOnh5TKzOzzJQD3gdDB9f4QSF/IIaQIJsfi8Y/lf651nx/TIM/
 0XIOHkpzY33NUD8bxNihQDH7T5gcs+22uLGUc4QzL7r4+mg3yUyfZK/flAycRnTB
 bxLUGvQTaP/J+tk3p1a2vLjr0CWIs1KoUTxjG/zUKnAYQ5RySfKNZXeiSCIicPO6
 OyVrKzIPJMuvuw==
X-ME-Sender: <xms:XQejXl5yseylMA5ngZh6kt5oyhAWVJX0aXl0FV2XzxNh0nUJ_hFJOg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 eprhgtuggvvhdrnhhrnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhord
 htvggthh
X-ME-Proxy: <xmx:XQejXr5baxiSofJPrz0rT8u2p4mCFPUWWjsiaKSM8nMY2J23ITolYA>
 <xmx:XQejXpN6DfEYcJ_tkK6LQtEmUX0xGc49eSSaTpBPbASBzAxqoHZT2w>
 <xmx:XQejXsfJx7s0YYryfA1RCWYvAXEDyXX0UjBbdksSAKOkzOE6wWD4eA>
 <xmx:XQejXqT3SRXLh4DTEKJaNh5i77401Ry6HG30s1eAx783fSj7kXoAQM1tVq4>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 448453065DA6;
 Fri, 24 Apr 2020 11:35:57 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 25/91] clk: bcm: Add BCM2711 DVP driver
Date: Fri, 24 Apr 2020 17:34:06 +0200
Message-Id: <a1efabae8d7df30c987bff10544c2071e906e07a.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083600_597890_AB9C7CA0 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/Kconfig           |   1 +-
 drivers/clk/bcm/Makefile          |   1 +-
 drivers/clk/bcm/clk-bcm2711-dvp.c | 127 +++++++++++++++++++++++++++++++-
 3 files changed, 129 insertions(+)
 create mode 100644 drivers/clk/bcm/clk-bcm2711-dvp.c

diff --git a/drivers/clk/bcm/Kconfig b/drivers/clk/bcm/Kconfig
index 8c83977a7dc4..03bbd8040451 100644
--- a/drivers/clk/bcm/Kconfig
+++ b/drivers/clk/bcm/Kconfig
@@ -4,6 +4,7 @@ config CLK_BCM2835
 	depends on ARCH_BCM2835 || ARCH_BRCMSTB || COMPILE_TEST
 	depends on COMMON_CLK
 	default ARCH_BCM2835 || ARCH_BRCMSTB
+	select RESET_SIMPLE
 	help
 	  Enable common clock framework support for Broadcom BCM2835
 	  SoCs.
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
