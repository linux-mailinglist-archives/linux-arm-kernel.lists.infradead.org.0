Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECD4B8C13
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 09:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzpdU2/wx15HE0ra2nbxg4O179KD0jcDo1IyhG5bj28=; b=nyTWfN0wi0vfAE
	jvH1962avXo1xJVVtpjhVQKYxCOf7MgVTdXsk2Xktr8XrAGmfUNQpwkO3a8fthdYPCkpGaD9sSf1R
	4YQKFL7JOrtn49pmZp827akQnzAfPArlXJDJWRQEDejys16ytbNMr2XML7lEVWe0+ZhNbNHrzv3L7
	7mTJMY5cRurD/EJM9z33PHzcAHGk/aXWsVsm65fZF2yGuBg6yYC9ZLpF+ut4thYL7FBcrcQnpW1mG
	0yI7/Xs5/mPUzYtXgh8vt+Sun6z+7WbbxA29CXpy55No48UMdu2ZzJ+bTiMJhewqgBfv4cSBX2RUP
	pzE70/e0LsUYMyCWtBpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBDlL-0000WF-2R; Fri, 20 Sep 2019 07:55:31 +0000
Received: from mout.perfora.net ([74.208.4.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBDks-0007iM-Vy
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 07:55:04 +0000
Received: from marcel-nb-toradex-int.cardiotech.int ([81.221.138.184]) by
 mrelay.perfora.net (mreueus001 [74.208.5.2]) with ESMTPSA (Nemesis) id
 0LvjHG-1i7uKf0Dqm-017VAu; Fri, 20 Sep 2019 09:54:29 +0200
From: Marcel Ziswiler <marcel@ziswiler.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v1 2/2] drm/panel: simple: add display timings for logic
 technologies displays
Date: Fri, 20 Sep 2019 09:54:11 +0200
Message-Id: <20190920075411.15735-2-marcel@ziswiler.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190920075411.15735-1-marcel@ziswiler.com>
References: <20190920075411.15735-1-marcel@ziswiler.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:sLEHM5ID9bpkaIBR8unNP/vrUtJPExDKWaW13ABHK2a71XWqLsr
 9qVh9qGuJ6urbc4F+rb9guOpFZI2OTT/ZAACP/2LblYf8A5Rk50zBO7sqeoC8QOqsjYFpD6
 c3JAPZ/k39M5eZxNfowloFsS+vRMB/5bnAUB5rnta/VVlglsy2TQ/fy6X8LuzIcRM8tSn+Y
 Fecd3RLQm40vB+PcKaAyw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rM8OH6nkw0Q=:u7QyUop3rCQyx8mtBudJSK
 sLtrcTa50J82vAPT3ZHfV7s3KdJNwisv4bHEB97pIjmZWTdA85VAi7HpTDrWiHPHvAVsRVhhM
 la2JqoHOW1xPoJkhDkF1D8L/8OJSsC+q88k+apPVW7iDgj7uQKOStPUWwrdOnqDdku+H6Cz8M
 3ZR/6uDkjrnbL099c+FLZ/ISydfZmy8nKmTIWV7kJyd6rJFMDRwKneqsTXXjYWwYfDlsxDu9D
 04vQzA0rZkiro21l11XNtMarayek2+pj1seTBGKwthh1sqCEXboR5SyuWqNJnlKWKUnEkcXg1
 bvXKYT2hQidjQepOSDdp8dU5TJFFJXsj/4T+vyiewWg6KuXj2MP+qrIWEXV8iBEGS5TrlUH0F
 +tWx4H8kT8dyVowBAhBqMTxRy8cWGyni2sxqVgxedA1h2tTZWxp2Nek1r1M4ozFpofirFW8Hv
 PFlKYuvPlb/DFGfeOl4Lxd8+4gM+l+mOovj3PgbBrJII0mE7AEafzAFp7XWWyycMD627ae1v/
 9hb2gXk9Unr/OYgsvL61/WeI+A/nohPspp03pheosvy0rxGIaRs6e8+hzocFt1dapowf/XOOq
 8/P+vUMtH1PxTXUXbh6bTGfJQLbIW4YiugbyRuAHGX40q/gmEPaLbglpjksYv3szmDA2L/FhL
 ye/FpF/uRLrFyg94PW43L5qu4/4wGvK8U/MSdDN15GtIuMwacmMoW1CT16jxhUeT9mOWFURUI
 LyD5/fsSFdfgLFX+Y1GootShu+XClMwIYQyciMb49NqQF1gtwc88ehh9iPAMZ0+14D7Fi5/M9
 zlgA3atxSiRyxKAYWRdNIYal785/I4XDRQrOcqTiZsOBc7wcB7axjgB33n+Ct4rw87O9NVwrG
 w6DBSzdSXnXfDQgFPRhpt4IkN+/Hnn2lfCf4gweZc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_005503_272353_A025D915 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.197 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.208.4.197 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 j.bauer@endrich.com, linux-kernel@vger.kernel.org,
 David Airlie <airlied@linux.ie>, info@logictechno.com,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
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

---

 drivers/gpu/drm/panel/panel-simple.c | 65 ++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 28fa6ba7b767..42bd0de25167 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2034,6 +2034,62 @@ static const struct panel_desc lg_lp129qe = {
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
@@ -3264,6 +3320,15 @@ static const struct of_device_id platform_of_match[] = {
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
