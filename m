Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC9F1B8E20
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 11:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SC+uKho1xEwba/P1MzIwBnojI/IxAckpQpDOmOXDxaU=; b=O4FWfubIj1Y99M
	JlcznHsmnKo38ZnK3zxH8Ad33yrzk+LoeUTEDvv3RaXCxDJOtCNaA0N+yDQBguxNs7s5e0Z5Or0sL
	2mrb02jo8W3nqHYzX15ral+GGragsqwm3Ns+iNLWW4mMgwIcVr4/RiZY+9v8HecqmsNiWdc8hQzMY
	JkcJbJg4JA8F4ai4ZaAbyBg6jWH0Z/GGfk8wuBuNXxzjzzQBl5GMjZSrOoQgFaCVxRyJ4CT+s/enC
	kEZvwQgpef+JnZVcfIdk2S0fsISo3xYUs6OKcfQZTRobV9LOxRFroiKSKP5DdDEYjudQIMNoTIbhO
	9RY0Rz/dpTC7jaHqYqCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSdAr-0000hV-0g; Sun, 26 Apr 2020 09:02:05 +0000
Received: from mail-m17613.qiye.163.com ([59.111.176.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSdAh-0000fX-0T
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 09:01:57 +0000
Received: from ubuntu.localdomain (unknown [157.0.31.122])
 by mail-m17613.qiye.163.com (Hmail) with ESMTPA id 89EBD48263D;
 Sun, 26 Apr 2020 17:01:48 +0800 (CST)
From: Bernard Zhao <bernard@vivo.com>
To: Inki Dae <inki.dae@samsung.com>, Joonyoung Shim <jy0922.shim@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drm/exynos: make pointer to const data const type
Date: Sun, 26 Apr 2020 02:01:42 -0700
Message-Id: <20200426090142.21251-1-bernard@vivo.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZT1VLTEhCQkJDQ0pMT09IQ1lXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ODI6Aww4ITg#LEkeKRwqLgwO
 NREaFBFVSlVKTkNMQ0JKTEtDQ01DVTMWGhIXVRkeCRUaCR87DRINFFUYFBZFWVdZEgtZQVlKTkxV
 S1VISlVKSUlZV1kIAVlBSUNDSTcG
X-HM-Tid: 0a71b5b8a36f93bakuws89ebd48263d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_020155_209161_D728DDA3 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.13 listed in list.dnswl.org]
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
Cc: opensource.kernel@vivo.com, Bernard Zhao <bernard@vivo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Maybe keep pointer which points to global const string data
in const type is better, make sure not change const data.

Signed-off-by: Bernard Zhao <bernard@vivo.com>
---
 drivers/gpu/drm/exynos/exynos_drm_dsi.c | 2 +-
 drivers/gpu/drm/exynos/exynos_drm_mic.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_dsi.c b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
index e080aa92338c..f60d99c85ac9 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_dsi.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
@@ -211,7 +211,7 @@
 
 #define OLD_SCLK_MIPI_CLK_NAME "pll_clk"
 
-static char *clk_names[5] = { "bus_clk", "sclk_mipi",
+static const char *const clk_names[5] = { "bus_clk", "sclk_mipi",
 	"phyclk_mipidphy0_bitclkdiv8", "phyclk_mipidphy0_rxclkesc0",
 	"sclk_rgb_vclk_to_dsim0" };
 
diff --git a/drivers/gpu/drm/exynos/exynos_drm_mic.c b/drivers/gpu/drm/exynos/exynos_drm_mic.c
index f41d75923557..a86abc173605 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_mic.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_mic.c
@@ -88,7 +88,7 @@
 
 #define MIC_BS_SIZE_2D(x)	((x) & 0x3fff)
 
-static char *clk_names[] = { "pclk_mic0", "sclk_rgb_vclk_to_mic0" };
+static const char *const clk_names[] = { "pclk_mic0", "sclk_rgb_vclk_to_mic0" };
 #define NUM_CLKS		ARRAY_SIZE(clk_names)
 static DEFINE_MUTEX(mic_mutex);
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
