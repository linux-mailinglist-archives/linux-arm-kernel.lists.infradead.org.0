Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D67DE8729
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 12:32:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YqTXrphKmGLJPOTw1KXdekoyyj+OqDBqAn4AZZG+hbU=; b=Not0u5FYl/6H5v
	wszryzz66VsAu0Vr2qiP3EiXzZ8lk/WpaKgouNegP+rk16gUXSrhKdFqcySSYF30pLdt0KGwF3UAG
	ZAjU5uPz7atYzPWUV5zll4ZZmk60LDVQT3x+ss4P1XTm23P2E1Nv8rURpHVY4aHauTHVTiI83ABaM
	EL56Ak7453Tm6YSoz35TvZYygTUdev8vQGkUE3Q0f5PE7COFc4gNvDsCp5uQX2a4TRHVKyitySrZj
	N7ZwTqWXfjJmNc4e7ywTK1NsPZ74HXDuMY5YHMDSmSXvcxNTbY/X0Vo5tCPSwrPmjIvNxStWOlt23
	Yjh0/4Z4lyGThtf12XNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPjC-0002WT-0r; Tue, 29 Oct 2019 11:31:58 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPgC-00074W-2h
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 11:28:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572348530; bh=7CvZFllA5Lo3ke7W4E4r8AmPqCtcdtZ72Xnw6OysY14=;
 h=From:To:Cc:Subject:Date:From;
 b=rCaxpPR2UhHDsQQ7Z4TX360K5iP0YBo4qKopDd7yNu0zAFiRBG39FmQ9J+Htaednr
 +MeXaB5cGXQf1+HuM+Q9pUW0qPMz1zRzTeXAWk/vQpOEVEh39u8M7s7xZvekDuPRK7
 JItx9M4N6QwfjCvlpk8RdiZC3Ybj8/1oWHZE2rkc=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com
Subject: [PATCH v2] drm: sun4i: Add support for suspending the display driver
Date: Tue, 29 Oct 2019 12:28:46 +0100
Message-Id: <20191029112846.3604925-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_042852_320502_DC01E646 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>, David Airlie <airlied@linux.ie>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Shut down the display engine during suspend.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
Changes in v2:
- spaces -> tabs

 drivers/gpu/drm/sun4i/sun4i_drv.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun4i_drv.c b/drivers/gpu/drm/sun4i/sun4i_drv.c
index a5757b11b730..c519d7cfcf43 100644
--- a/drivers/gpu/drm/sun4i/sun4i_drv.c
+++ b/drivers/gpu/drm/sun4i/sun4i_drv.c
@@ -346,6 +346,27 @@ static int sun4i_drv_add_endpoints(struct device *dev,
 	return count;
 }
 
+#ifdef CONFIG_PM_SLEEP
+static int sun4i_drv_drm_sys_suspend(struct device *dev)
+{
+	struct drm_device *drm = dev_get_drvdata(dev);
+
+	return drm_mode_config_helper_suspend(drm);
+}
+
+static int sun4i_drv_drm_sys_resume(struct device *dev)
+{
+	struct drm_device *drm = dev_get_drvdata(dev);
+
+	return drm_mode_config_helper_resume(drm);
+}
+#endif
+
+static const struct dev_pm_ops sun4i_drv_drm_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(sun4i_drv_drm_sys_suspend,
+				sun4i_drv_drm_sys_resume)
+};
+
 static int sun4i_drv_probe(struct platform_device *pdev)
 {
 	struct component_match *match = NULL;
@@ -418,6 +439,7 @@ static struct platform_driver sun4i_drv_platform_driver = {
 	.driver		= {
 		.name		= "sun4i-drm",
 		.of_match_table	= sun4i_drv_of_table,
+		.pm = &sun4i_drv_drm_pm_ops,
 	},
 };
 module_platform_driver(sun4i_drv_platform_driver);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
