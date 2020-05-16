Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6DE1D6077
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 12:58:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WAqA6pGVe6y0Jn/VOoegTjDosHqTHqr374sNKb6sc5U=; b=m9hrVAZvI5lTLg
	eed6tmc7DfRaQbSx9XCwsLDQSF2GR+NgDuXc57MReUoCgchq4ZJaImGKkb/Vuoc+MOKg3IkRL9kmr
	Y8HXCXIhA6UJK/JnIyDaKgC0+h2Ktw4Heo0o5/s2gW06PIbWrEOSDkYj4J3/bYzYPxVyvSdAQjnYM
	DQKWNn3qRFd4sinIl/M2Px9TRKHL/zmXbdEUCmVDj4oND2clV4bnhub0A0BA6+QiyxIuSYm6kUJUY
	9mKEq04tT2ujRudNABc5wR4IOalfVQG7qZbmA0GIC5FuZTr7iKMoqWXIPifUgNCpyoQ16On8QClwn
	+atZe2jW0zp70gsHW24w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZuVz-0005Ns-79; Sat, 16 May 2020 10:57:59 +0000
Received: from smtp07.smtpout.orange.fr ([80.12.242.129]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZuVq-0005Ml-VM
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 10:57:52 +0000
Received: from localhost.localdomain ([93.22.148.0]) by mwinf5d14 with ME
 id fNxd2200K00kvqt03Nxeb5; Sat, 16 May 2020 12:57:43 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 16 May 2020 12:57:43 +0200
X-ME-IP: 93.22.148.0
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: inki.dae@samsung.com, jy0922.shim@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, airlied@linux.ie, daniel@ffwll.ch,
 kgene@kernel.org, krzk@kernel.org
Subject: [PATCH v2] drm/exynos: dsi: Remove bridge node reference in error
 handling path in probe function
Date: Sat, 16 May 2020 12:57:36 +0200
Message-Id: <20200516105736.269669-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_035751_299543_A0A06B4A 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.129 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.129 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'exynos_dsi_parse_dt()' takes a reference to 'dsi->in_bridge_node'.
This must be released in the error handling path.

In order to do that, add an error handling path and move the
'exynos_dsi_parse_dt()' call from the beginning to the end of the probe
function to ease the error handling path.
This function only sets some variables which are used only in the
'transfer' function.

The call chain is:
   .transfer
    --> exynos_dsi_host_transfer
      --> exynos_dsi_init
        --> exynos_dsi_enable_clock  (use burst_clk_rate and esc_clk_rate)
          --> exynos_dsi_set_pll     (use pll_clk_rate)

While at it, also handle cases where 'component_add()' fails.

This patch is similar to commit 70505c2ef94b ("drm/exynos: dsi: Remove bridge node reference in removal")
which fixed the issue in the remove function.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
A Fixes tag could be required, but I've not been able to figure out which
one to use.

v2: move around 'exynos_dsi_parse_dt' instead of adding many gotos
    handle component_add failures
---
 drivers/gpu/drm/exynos/exynos_drm_dsi.c | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_dsi.c b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
index 902938d2568f..a9d24402fabf 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_dsi.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
@@ -1759,10 +1759,6 @@ static int exynos_dsi_probe(struct platform_device *pdev)
 	dsi->dev = dev;
 	dsi->driver_data = of_device_get_match_data(dev);
 
-	ret = exynos_dsi_parse_dt(dsi);
-	if (ret)
-		return ret;
-
 	dsi->supplies[0].supply = "vddcore";
 	dsi->supplies[1].supply = "vddio";
 	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(dsi->supplies),
@@ -1823,11 +1819,25 @@ static int exynos_dsi_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	ret = exynos_dsi_parse_dt(dsi);
+	if (ret)
+		return ret;
+
 	platform_set_drvdata(pdev, &dsi->encoder);
 
 	pm_runtime_enable(dev);
 
-	return component_add(dev, &exynos_dsi_component_ops);
+	ret = component_add(dev, &exynos_dsi_component_ops);
+	if (ret)
+		goto err_disable_runtime;
+
+	return 0;
+
+err_disable_runtime:
+	pm_runtime_disable(dev);
+	of_node_put(dsi->in_bridge_node);
+
+	return ret;
 }
 
 static int exynos_dsi_remove(struct platform_device *pdev)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
