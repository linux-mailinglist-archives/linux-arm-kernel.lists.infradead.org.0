Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D68C31424BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 09:02:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22Vm4aBjx3JFpvzqxDAqUm/S1J7DXNwfGse9EF7Ol1M=; b=LS3Tfw1LRtmgZ7
	dxEf5qTsFlmt54CkgcsI1TwUIR88EIIia86ttNmM96nAmFl7p6D1ocOnlV+3TTuOOyHna+KPuamYN
	dTNOBA/53YoPgVa8T3CCq0KbkewZ0H/gufnFrKkWIiktSytK/C6p4OWKak3FjN6jv3eT7bArA9n/T
	oWyxh+fskJ9saYLqAuTcUxV0NmGyiKVnsUqgYeBi9S7EhpNKXeowbDvEakDpBvhnGfq58e6jRKkfe
	XOwlW1offs5BHXdwvAk98rRDSuyegg+w4lCXZareZ/0h9DAyB3Gsx3mHAwPJXl9YQ9Ll2jVaTOzot
	iZU9xn4wvq+f+0+6rSEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itS0a-0002Nw-Ep; Mon, 20 Jan 2020 08:02:04 +0000
Received: from mout.perfora.net ([74.208.4.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itS0O-0002N4-UP
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 08:01:57 +0000
Received: from marcel-nb-toradex-int.toradex.int ([31.10.206.124]) by
 mrelay.perfora.net (mreueus001 [74.208.5.2]) with ESMTPSA (Nemesis) id
 0Ma46L-1jCLDy1EsB-00Lp2H; Mon, 20 Jan 2020 09:01:13 +0100
From: Marcel Ziswiler <marcel@ziswiler.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v4 3/3] drm/panel: simple: add display timings for logic
 technologies displays
Date: Mon, 20 Jan 2020 09:01:00 +0100
Message-Id: <20200120080100.170294-3-marcel@ziswiler.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200120080100.170294-1-marcel@ziswiler.com>
References: <20200120080100.170294-1-marcel@ziswiler.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:anI6rwLomoZdt5T5jBL59aV9NQScit0zPIbdt/SagbVH1Gala22
 j+W2jRkUjmcptZDJwQ57IQS6Z6wWSGXjVbvOtb/XqVE23fdMiywzHNUxaDQh43ZGRxZ3NIW
 ZV2ryo/9Ln3um+V+FXj+jpePnDWkrJ7cZMYez+UmxDt6i3nRfp8JooFqbfc9URLUaY5qsBG
 TGPnZdWfOqvnQIqoUfiUA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wsN8s4dxJzk=:nTvDYien5G49OQ8P021V0L
 wtbCUrqEbUU3GoqHgMr1pa49CaIDT26aWsFKQCQo9N/qTczcOUDBEhtxHIpNrqO3TNe5Sj6qS
 A31cnoHf7ohYuBntgUeBmY1pftnRP/vhbIaXBzXUvQRTGkRuhxfjSP6ZNlYccBk7Eh1L0XoQC
 zZ7H5UWcH+8UoOpnwq3A2GUbOzHp1Ui0HrS1Tu3se1BByv/Z8rr4U2g+fiQZrGlFdNYOn3kK7
 OOFS2lMRMI3/PycO+Hl74lYs9ECctDWtA7YwHpSBac65KSnv61zo7DF+uiagjz69PhTuGcFX0
 +cRlxLrTVGppqLbyeofx1CQWO5NHum0oz6Amijka63a/egATDzivKmkfR0Y7OHfFerty7unDk
 Qkyk58VoRTX2ZRzw+K/KVTbsF5nB5ZT4Ey3lbdgxouhPPn+ofx7ah9FyQ/+n4SAJkuauyBrGX
 HLcX/cSB03vZIJ4dWhEibILqwdXInfCMOBcx/JTXuF84LNf/0TeEEHDvwTarnoATQIlnn25s3
 c+f0FXxMhmCl2lCEIfZwK6LR+sQ3o4enjQrigMZNcAhFVR+qYTUB0q++bGqor3r0ygQ8VY6AV
 +ac/CvAnMpOus/BBw5NhrSwJvKpA3m5z9rjpVtlqxrFegfT/U5ZHVdeiwww3IsvPBj/noXfhN
 DohfL19afL7LuMA6/Vq8gWICP3M8cBBF014He4W6P2DWv4xHKiTaBQ94dQ3RP+BSS+9JLkDlv
 d5KiNDesnB/18CwwSLmiMBjR/OtigoW05HoNIJ4twAnaaLdFD66T7Fli9q1XOkM05PHL3F65k
 nT679afWJxp4sjNsQO+dCypv0sGROKF+KusQjl80O8Vo65Bv2trtSGqxoVw4Rtq+htn9tEudV
 hsTSpvbnh+lGmzaKcP1g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_000153_053855_34A6D976 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.197 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.208.4.197 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 dri-devel@lists.freedesktop.org,
 Philippe Schenker <philippe.schenker@toradex.com>, info@logictechno.com,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
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

Changes in v4:
- Added recently made mandatory connector_type information as pointed
  out by Sam.

Changes in v3:
- Fix typo in pixelclock frequency for lt170410_2whc as recently
  discovered by Philippe.

Changes in v2:
- Added Philippe's reviewed-by.

 drivers/gpu/drm/panel/panel-simple.c | 67 ++++++++++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index d6f77bc494c7..a0dd84e11db7 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2107,6 +2107,64 @@ static const struct panel_desc lg_lp129qe = {
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
+	.connector_type = DRM_MODE_CONNECTOR_DPI,
+};
+
+static const struct display_timing logictechno_lt170410_2whc_timing = {
+	.pixelclock = { 68900000, 71100000, 73400000 },
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
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct drm_display_mode mitsubishi_aa070mc01_mode = {
 	.clock = 30400,
 	.hdisplay = 800,
@@ -3417,6 +3475,15 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "logicpd,type28",
 		.data = &logicpd_type_28,
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
