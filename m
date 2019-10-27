Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB296E6308
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 15:27:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRNrBjWAkweEG59/hVCWeljckxecXVrSr25HXC2DTVQ=; b=uGNRW9FjGsgc16
	fNeHYXgbUiDbRECY8RBRNUmm8FN1KLJxSauW2mPZjAgZF06mtsq0WGtho7QeCLPz/tOwjJfpy5a+1
	2TM0gEyLUO4MUA2qw018PdNFY0t3r7zPdGbqpNsHws8BL98TYLHRPPikVljGkkZRDoZ4wck5qRD73
	FupI1vphsqHBW1kJ9tV656jNUOyGwtaCM4OnNzxxRfqR00Bg2DUD3sDs1GNgBQgHjvjNsocXfN/eI
	r8ctsz30U+duf0dqpQNMTF6PHMxGL1BSEEBEwGbYR0nioUouOY6EYsmEikDtrrDDfjpvgr39Da4p1
	sS9uEFvEbjmICGoX8ddA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOjVg-0003Rb-0F; Sun, 27 Oct 2019 14:27:12 +0000
Received: from mout.perfora.net ([74.208.4.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOjVX-0003QY-4S
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 14:27:04 +0000
Received: from marcel-nb-toradex-int.toradex.int ([31.10.206.124]) by
 mrelay.perfora.net (mreueus001 [74.208.5.2]) with ESMTPSA (Nemesis) id
 0LfzPZ-1heeJU0fs3-00pfdc; Sun, 27 Oct 2019 15:26:27 +0100
From: Marcel Ziswiler <marcel@ziswiler.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v2 2/3] drm/panel: simple: add display timings for logic
 technologies displays
Date: Sun, 27 Oct 2019 15:26:08 +0100
Message-Id: <20191027142609.12754-2-marcel@ziswiler.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191027142609.12754-1-marcel@ziswiler.com>
References: <20191027142609.12754-1-marcel@ziswiler.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:3DquW+3hHT9LpViOmCrHnA2GnPQhQ1Qr+998CD0WzszqQ+evuJ6
 8N18jw92t9xhoo34PzGX0BmZoviWeITsGgQ+RXCqUtZtB1peCwX97YNdDLlzOrW/bNoIz/o
 YkLjROo1BdthaURJHNK1J4keiLBfOR5rl9ZZEuLdgN+SNHF4n8HnBivo4FWxMlDyAZAgm6c
 RimNBiJgr9Fw1olCTIA+g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6vpPbtUJFrc=:XCDyEzNp5FoYZtJZG8B5Bq
 T5B9vJX4yEfQNCfXNECPQg79lspGRfbQ/XRdFQ46VUsUPneoJ9/6zyrZ7pzhkzgWGe8UvTlyn
 U9dLgX6ZrY+8W9k8tU7vlbQwpARC12jEFC/NA4vMnrksJxgcx6IvzXJgkQ3fKzkkXoOGnqQEA
 wx369B8ytI93dmkbC4uzIXjglOSJsBjYoLcOnHTvyKgNtSVc+KnKn1iwauoC1ftJTSSniTJpo
 77D/QWXqWEt9XkMF5BrRSFrp6C+IjOOR5AP+avWf9ddtzOCL2fFwdJ4bq3eBR2ujuzot4CUxE
 q/p2n2OQKA3TwVILXIY3QljtYvXUg6IEQW7riZJi1AusOplD9hgjQ6zQOFZJ9KIe9fB8h2FnL
 1jjL0IN7/ML3WKIrMxR8VS2cotG1gP8bUbtljkUY1ZV8SIbME4lC89oQuKJkd6gkZGN3IVE+T
 wsidPovGZbPkrXLoln1/OxP6K6gXvp+dERX8fPJA1R360gzr6AtKmh+MkAVR5QFrtWwF0MbPH
 hpGaS/6TDNdIobh0R87c4fMmGOuIvb/OE70YUvaDbkaj/ifkemcsGp4nu+bv45xDcYreMngPS
 Jba6uKjxQxvgv13DCzcDk6Xt+YcDy5omXl8xuY6m5m4zLeBdq6zeiarZEfSDPY0LnQnJPk/Ie
 S34I9tnmdJCclSuz9eKmQYbIbbi1a+yifTb88DP6BGZ+s61cwQHwMtfGRlMgwOh6rWS/fCalL
 J6/Gs9hjAj81t2SxuKSJwSZxYog9HLpns/k2z3cR+2x1DJvi0bU+tjvxGauEf8x9CjlgdyUAy
 1d2WzvZNo3jywpflHHg8EPCj99D2ncCJXVpVN0WkBtwSy72fQ985e8u/amVWOrHLr+2prNDQR
 Tmo5qgPmTDWHcuQR8dHcU1CbeNpMpncY/yxKptrOg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_072703_249582_D3D22D0F 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.194 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.208.4.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 j.bauer@endrich.com, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>, info@logictechno.com,
 Thierry Reding <thierry.reding@gmail.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Add display timings for the following 3 display panels manufactured by
Logic Technologies Limited:

- LT161010-2NHC e.g. as found in the Toradex Capacitive Touch Display
  7" Parallel [1]
- LT161010-2NHR e.g. as found in the Toradex Resistive Touch Display 7"
  Parallel [2]
- LT170410-2WHC e.g. as found in the Toradex Capacitive Touch Display
  10.1" LVDS [3]

Those panels may also be distributed by Endrich Bauelemente Vertriebs
GmbH [4].

[1] https://docs.toradex.com/104497-7-inch-parallel-capacitive-touch-display-800x480-datasheet.pdf
[2] https://docs.toradex.com/104498-7-inch-parallel-resistive-touch-display-800x480.pdf
[3] https://docs.toradex.com/105952-10-1-inch-lvds-capacitive-touch-display-1280x800-datasheet.pdf
[4] https://www.endrich.com/isi50_isi30_tft-displays/lt170410-1whc_isi30

Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Reviewed-by: Philippe Schenker <philippe.schenker@toradex.com>

---

Changes in v2:
- Added Philippe's reviewed-by.

 drivers/gpu/drm/panel/panel-simple.c | 65 ++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 5d487686d25c..546770116096 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2047,6 +2047,62 @@ static const struct panel_desc lg_lp129qe = {
 	},
 };
 
+static const struct display_timing logictechno_lt161010_2nh_timing = {
+	.pixelclock = { 26400000, 33300000, 46800000 },
+	.hactive = { 800, 800, 800 },
+	.hfront_porch = { 16, 210, 354 },
+	.hback_porch = { 46, 46, 46 },
+	.hsync_len = { 1, 20, 40 },
+	.vactive = { 480, 480, 480 },
+	.vfront_porch = { 7, 22, 147 },
+	.vback_porch = { 23, 23, 23 },
+	.vsync_len = { 1, 10, 20 },
+	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
+		 DISPLAY_FLAGS_DE_HIGH | DISPLAY_FLAGS_PIXDATA_POSEDGE |
+		 DISPLAY_FLAGS_SYNC_POSEDGE,
+};
+
+static const struct panel_desc logictechno_lt161010_2nh = {
+	.timings = &logictechno_lt161010_2nh_timing,
+	.num_timings = 1,
+	.size = {
+		.width = 154,
+		.height = 86,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH |
+		     DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE |
+		     DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE,
+};
+
+static const struct display_timing logictechno_lt170410_2whc_timing = {
+	.pixelclock = { 68900000, 71100000, 7340000 },
+	.hactive = { 1280, 1280, 1280 },
+	.hfront_porch = { 23, 60, 71 },
+	.hback_porch = { 23, 60, 71 },
+	.hsync_len = { 15, 40, 47 },
+	.vactive = { 800, 800, 800 },
+	.vfront_porch = { 5, 7, 10 },
+	.vback_porch = { 5, 7, 10 },
+	.vsync_len = { 6, 9, 12 },
+	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
+		 DISPLAY_FLAGS_DE_HIGH | DISPLAY_FLAGS_PIXDATA_POSEDGE |
+		 DISPLAY_FLAGS_SYNC_POSEDGE,
+};
+
+static const struct panel_desc logictechno_lt170410_2whc = {
+	.timings = &logictechno_lt170410_2whc_timing,
+	.num_timings = 1,
+	.size = {
+		.width = 217,
+		.height = 136,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH |
+		     DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE |
+		     DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE,
+};
+
 static const struct drm_display_mode mitsubishi_aa070mc01_mode = {
 	.clock = 30400,
 	.hdisplay = 800,
@@ -3287,6 +3343,15 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "lg,lp129qe",
 		.data = &lg_lp129qe,
+	}, {
+		.compatible = "logictechno,lt161010-2nhc",
+		.data = &logictechno_lt161010_2nh,
+	}, {
+		.compatible = "logictechno,lt161010-2nhr",
+		.data = &logictechno_lt161010_2nh,
+	}, {
+		.compatible = "logictechno,lt170410-2whc",
+		.data = &logictechno_lt170410_2whc,
 	}, {
 		.compatible = "mitsubishi,aa070mc01-ca1",
 		.data = &mitsubishi_aa070mc01,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
