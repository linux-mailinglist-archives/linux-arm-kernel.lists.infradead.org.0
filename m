Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEF716B00C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 20:13:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72IKNEEgFJbRx4pVP5ULrqj3CLoDPdWON38x7dSJ2+8=; b=A9n4FLE7NsBgSE
	ts1X0ZNHkJzaAtNlBzL+tvdCaBEAiqFSjgL8mn9R69u3dnJYmkw7GsSQhDkk5/dxTeh/yHluXj1Uy
	oSJWSRWQIMV8rsBZX1dzoE9uY0tyUkc2guTfgYyoqjqi0SqCKoHKq2Y780CrnQ6Zxkk7II1hh7SZj
	5XlkLNLbkga+YgzOBt3lSljg9zG3R9W/vDDiYwgf/HeD12iVd/AZr4EePWxjfCBLZzbRhP1/mM6kH
	fo4eKvvy7qF9f8mCNQg1fk8LEVHc/JmRD2r4VXg/ZoBHWi55nn6FQB7SpEM8ObevtVoqq54QudckJ
	lUpPJpRgOBqBFgVhpMvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6JA1-000136-T1; Mon, 24 Feb 2020 19:12:57 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6J9o-00011t-KF
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 19:12:46 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 7ED158162;
 Mon, 24 Feb 2020 19:13:27 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 1/3] drm/omap: Prepare DSS for probing without legacy platform
 data
Date: Mon, 24 Feb 2020 11:12:28 -0800
Message-Id: <20200224191230.30972-2-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200224191230.30972-1-tony@atomide.com>
References: <20200224191230.30972-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_111244_706750_38E913D7 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Jyri Sarha <jsarha@ti.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to probe display subsystem (DSS) components with ti-sysc
interconnect target module without legacy platform data and using
devicetree, we need to update dss probing a bit.

In the device tree, we will be defining the data also for the interconnect
target modules as DSS really is a private interconnect. There is some
information about that in 4460 TRM in "Figure 10-3. DSS Integration" for
example where it mentions "32-bit interconnect (SLX)".

The changes we need to make are:

1. Parse also device tree subnodes for the compatible property fixup

2. Update the component code to consider device tree subnodes

Cc: dri-devel@lists.freedesktop.org
Cc: Jyri Sarha <jsarha@ti.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---

This is needed for dropping DSS platform data that I'll be posting
seprately. If this looks OK, can you guys please test and ack?

---
 drivers/gpu/drm/omapdrm/dss/dss.c             | 25 ++++++++++++++++---
 .../gpu/drm/omapdrm/dss/omapdss-boot-init.c   | 25 +++++++++++++------
 2 files changed, 39 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/omapdrm/dss/dss.c b/drivers/gpu/drm/omapdrm/dss/dss.c
--- a/drivers/gpu/drm/omapdrm/dss/dss.c
+++ b/drivers/gpu/drm/omapdrm/dss/dss.c
@@ -1339,9 +1339,15 @@ static int dss_component_compare(struct device *dev, void *data)
 	return dev == child;
 }
 
+struct dss_component_match_data {
+	struct device *dev;
+	struct component_match **match;
+};
+
 static int dss_add_child_component(struct device *dev, void *data)
 {
-	struct component_match **match = data;
+	struct dss_component_match_data *cmatch = data;
+	struct component_match **match = cmatch->match;
 
 	/*
 	 * HACK
@@ -1352,7 +1358,17 @@ static int dss_add_child_component(struct device *dev, void *data)
 	if (strstr(dev_name(dev), "rfbi"))
 		return 0;
 
-	component_match_add(dev->parent, match, dss_component_compare, dev);
+	/*
+	 * Handle possible interconnect target modules defined within the DSS.
+	 * The DSS components can be children of an interconnect target module
+	 * after the device tree has been updated for the module data.
+	 * See also omapdss_boot_init() for compatible fixup.
+	 */
+	if (strstr(dev_name(dev), "target-module"))
+		return device_for_each_child(dev, cmatch,
+					     dss_add_child_component);
+
+	component_match_add(cmatch->dev, match, dss_component_compare, dev);
 
 	return 0;
 }
@@ -1395,6 +1411,7 @@ static int dss_probe_hardware(struct dss_device *dss)
 static int dss_probe(struct platform_device *pdev)
 {
 	const struct soc_device_attribute *soc;
+	struct dss_component_match_data cmatch;
 	struct component_match *match = NULL;
 	struct resource *dss_mem;
 	struct dss_device *dss;
@@ -1472,7 +1489,9 @@ static int dss_probe(struct platform_device *pdev)
 
 	omapdss_gather_components(&pdev->dev);
 
-	device_for_each_child(&pdev->dev, &match, dss_add_child_component);
+	cmatch.dev = &pdev->dev;
+	cmatch.match = &match;
+	device_for_each_child(&pdev->dev, &cmatch, dss_add_child_component);
 
 	r = component_master_add_with_match(&pdev->dev, &dss_component_ops, match);
 	if (r)
diff --git a/drivers/gpu/drm/omapdrm/dss/omapdss-boot-init.c b/drivers/gpu/drm/omapdrm/dss/omapdss-boot-init.c
--- a/drivers/gpu/drm/omapdrm/dss/omapdss-boot-init.c
+++ b/drivers/gpu/drm/omapdrm/dss/omapdss-boot-init.c
@@ -183,9 +183,24 @@ static const struct of_device_id omapdss_of_fixups_whitelist[] __initconst = {
 	{},
 };
 
+static void __init omapdss_find_children(struct device_node *np)
+{
+	struct device_node *child;
+
+	for_each_available_child_of_node(np, child) {
+		if (!of_find_property(child, "compatible", NULL))
+			continue;
+
+		omapdss_walk_device(child, true);
+
+		if (of_device_is_compatible(child, "ti,sysc"))
+			omapdss_find_children(child);
+	}
+}
+
 static int __init omapdss_boot_init(void)
 {
-	struct device_node *dss, *child;
+	struct device_node *dss;
 
 	INIT_LIST_HEAD(&dss_conv_list);
 
@@ -195,13 +210,7 @@ static int __init omapdss_boot_init(void)
 		return 0;
 
 	omapdss_walk_device(dss, true);
-
-	for_each_available_child_of_node(dss, child) {
-		if (!of_find_property(child, "compatible", NULL))
-			continue;
-
-		omapdss_walk_device(child, true);
-	}
+	omapdss_find_children(dss);
 
 	while (!list_empty(&dss_conv_list)) {
 		struct dss_conv_node *n;
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
