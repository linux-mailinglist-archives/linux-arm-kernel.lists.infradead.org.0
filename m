Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E43118CCE7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 12:25:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4rHsD4dCqgrAkUWgh2eSziQS/p5E2Qg/TWCzRfYhtg=; b=Oa35lelvFRfSvJ
	d9DkNJKqbb0fDePPFfonGGWhU7a15vL9RAhpCen7nQpYb0ZqATUow/rliwMdWmKiU7iVrvnQex4Ju
	g+OI0YtOIHQc1M8myRfbdvydAJgWTYD9G+c0401JUTEHaNQuKDY6s2l/VmTs2cjwTLkM9/XQ248s+
	W1/n+9JzM5NcOR3mHsP3hjEJio5oB2PsQ9XGhxEUdFcLpwQwBGMQ0A59m7Tb6mMPKcBuAyfdjRQFY
	vgpqv5H4upPH8MMQR3X4gd9JmMWIwactOPV6j2sOgADfgH88n//NwNojhYtQO8D+0kRInHy27aRJb
	Tb1uqP8CbdGwMG1pahdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFFmH-0007JF-9L; Fri, 20 Mar 2020 11:25:25 +0000
Received: from web0081.zxcs.nl ([2a06:2ec0:1::81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFFm9-0007Id-DB
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 11:25:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=pascalroeleven.nl; s=x; h=Content-Transfer-Encoding:MIME-Version:References
 :In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D4dn5xv1jw6ViZLrXaslqz7DLr1R4Uo+6Hf42tlM8Q4=; b=FLBfp2e7/0Qa/v9Fudx1ORiNXS
 JV+b8iUSNJpkJrzaIwwkiQopeQZ+qTCveHWN3jx4RM6ab+/t3NQGBbkFlRIRjB8I06dicoCwxg94+
 Rxip8VdkQ9gwM9dkTnjZfm3c5Kup10Dq9TyzHtlpbSUwQjY7DdnXbcIUtgAH2vo5bFyqx/rToICcM
 H/QkNaDtbsI9ZgsJc2vKz6wjl2t7/DFcV5PT4JVHpfJRy7yKAxY8ZjHUIHjx0/Gi+/YS0p5dB4n15
 nWOWUmVJF0qlafkbZgdUtvdLVDlGANH8YIyLGioeIzA2hYZLUt268RZIFCiPlFqDOr51b4r5p+IlT
 V0bpqgJw==;
Received: from ip565b1bc7.direct-adsl.nl ([86.91.27.199]:57936
 helo=localhost.localdomain)
 by web0081.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <dev@pascalroeleven.nl>)
 id 1jFFm3-0011ci-4I; Fri, 20 Mar 2020 12:25:11 +0100
From: Pascal Roeleven <dev@pascalroeleven.nl>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Subject: [PATCH v2 2/5] drm: panel: Add Starry KR070PE2T
Date: Fri, 20 Mar 2020 12:21:33 +0100
Message-Id: <20200320112205.7100-3-dev@pascalroeleven.nl>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200320112205.7100-1-dev@pascalroeleven.nl>
References: <20200320112205.7100-1-dev@pascalroeleven.nl>
MIME-Version: 1.0
X-Authenticated-Id: dev@pascalroeleven.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_042517_587180_CF437467 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-sunxi@googlegroups.com, Pascal Roeleven <dev@pascalroeleven.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The KR070PE2T is a 7" panel with a resolution of 800x480.

KR070PE2T is the marking present on the ribbon cable. As this panel is
probably available under different brands, this marking will catch
most devices.

As I can't find a datasheet for this panel, the bus_flags are instead
from trial-and-error. The flags seem to be common for these kind of
panels as well.

Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>
---
 drivers/gpu/drm/panel/panel-simple.c | 29 ++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index e14c14ac6..b3d257257 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2842,6 +2842,32 @@ static const struct panel_desc shelly_sca07010_bfn_lnn = {
 	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
 };
 
+static const struct drm_display_mode starry_kr070pe2t_mode = {
+	.clock = 33000,
+	.hdisplay = 800,
+	.hsync_start = 800 + 209,
+	.hsync_end = 800 + 209 + 1,
+	.htotal = 800 + 209 + 1 + 45,
+	.vdisplay = 480,
+	.vsync_start = 480 + 22,
+	.vsync_end = 480 + 22 + 1,
+	.vtotal = 480 + 22 + 1 + 22,
+	.vrefresh = 60,
+};
+
+static const struct panel_desc starry_kr070pe2t = {
+	.modes = &starry_kr070pe2t_mode,
+	.num_modes = 1,
+	.bpc = 8,
+	.size = {
+		.width = 152,
+		.height = 86,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct drm_display_mode starry_kr122ea0sra_mode = {
 	.clock = 147000,
 	.hdisplay = 1920,
@@ -3474,6 +3500,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "shelly,sca07010-bfn-lnn",
 		.data = &shelly_sca07010_bfn_lnn,
+	}, {
+		.compatible = "starry,kr070pe2t",
+		.data = &starry_kr070pe2t,
 	}, {
 		.compatible = "starry,kr122ea0sra",
 		.data = &starry_kr122ea0sra,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
