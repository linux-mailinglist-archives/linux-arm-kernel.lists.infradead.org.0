Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4E7E7B96
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 22:43:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qSg5IfuqN2cFCIm+k2ya9oH2CODKD9E3f++Qd3FzdjQ=; b=TmX6pvbycU/8In
	CW9M2I8s7ddRBjfPQQ1K8XoIRnx+018c5C266pE54v8ANWRqK92uO9i0mmUF9JVd5D7i4cnO54Qk9
	lbj58PyTG14Yc9b+Y+TxoxadvcHpKd8x8LczS8inCW39On9BVoCHdcFzbun5OUtb2BpAotzetsO+g
	mPSq3BKGNlpkdA740qkUViXsDRPEAtmMeX77ITZ9X+pFciLbjkAoiIC15fJ9ZwopD0PmeTFeX9XI9
	8rjn34gPHWP6nl8lN8WcXGBXapyTQEkYJ6KppCq89r+m8ND7L/lRwqdFRX3YtMZiycw3OfRZDrwOB
	/1ckAkE3Uot0tCIYEebQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPCnS-0006DM-9c; Mon, 28 Oct 2019 21:43:30 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCnI-0006CX-Jn
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 21:43:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572298996; bh=fyyQI3ItgxBYKXPEf2uaXYMvRSi0utH9LPQLNQj2NLA=;
 h=From:To:Cc:Subject:Date:From;
 b=KbPLKdZFai12AyFY45X80z5E+QhMa46RXM0QVHLZUZlaNqwF63nvs1lAM2jvRpNcn
 QVxdtaUXAgGe2Q1k6XKnqdq2KMbsbwd+oyh3MfMCrTl5ykVgM8svGUdAeX8LFecO37
 8Vuq2LIvNlMXEGP8iQMDW16fZgDZ1tMyBIfPHZyw=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com
Subject: [PATCH] drm: sun4i: Add support for suspending the display driver
Date: Mon, 28 Oct 2019 22:43:13 +0100
Message-Id: <20191028214313.3463732-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_144320_978452_D8D54D52 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
+        struct drm_device *drm = dev_get_drvdata(dev);
+
+        return drm_mode_config_helper_suspend(drm);
+}
+
+static int sun4i_drv_drm_sys_resume(struct device *dev)
+{
+        struct drm_device *drm = dev_get_drvdata(dev);
+
+        return drm_mode_config_helper_resume(drm);
+}
+#endif
+
+static const struct dev_pm_ops sun4i_drv_drm_pm_ops = {
+        SET_SYSTEM_SLEEP_PM_OPS(sun4i_drv_drm_sys_suspend,
+                                sun4i_drv_drm_sys_resume)
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
