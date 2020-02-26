Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1860F16F94E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 09:12:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pjezg2eBVUZyXclyd85ezSxR08wks+q8A4EL9XqNFV8=; b=RFmzpGxaCKDN3Z
	TKB9iB1O5CpLIOo6BJ5GeTFZUYua2bsR/5wdIkFR8fHe0NtrBQBgr9UFC3bn7vAR4ElOOPsqyiY/U
	sSFoABabi3ubYjB5EsEFderIxHy3jM1GCiATMOVuVlQUCp+RBUOrZ0BRaeCfZHQwQ+TC1XczMZi7K
	3XAWciGmtAuQ0Fc+gjavhcSmThyAtlQ6dsXPA4Hs4tprQ4d1n4JaaPj/aoigY2QgcBGm3ZoTjSf67
	lYjS0cBqOBMPxzeebuHILvAdrgyxP4euSXXQdM7ufztwwR60nibOMdsv9qjDABojmkq8B5MTZqdOH
	0ZaZ5qKKNoBg4Cc0s4tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6rnj-00022y-Es; Wed, 26 Feb 2020 08:12:15 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6rmK-0000tn-HT
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 08:10:49 +0000
Received: by mail-pf1-x444.google.com with SMTP id x185so1062134pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 00:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2c6a2wUIf1607PZkN1rZk+L4ET6oyW/A+dmD8ze92gI=;
 b=l/TW+lXATIXM17aGIZ9zrNTKWKrYbTiLzzjCckt2sYGCNOgBJIAM/09gAYIyO8Ix1n
 UHbe88pAp1n0plvmre5V5bbjfK092LKIqAYUkzsgoJS7/2xUSMZgE5o2q6j40HA9jjre
 FF8uZvB+fx7B6YmX6nxlrWe2JsyENeFsB23HdsKTAR2dEJOG0eVZaT0pJNwkmq0+XMJC
 c9jFO1zsFW7hO9kM7570YJrU/mpImzvlnR4RWJMtjUx3BXAFto3xHr0udkFVc1dm8Tg0
 Ip4cwJcKanfhov2dNsyjvshdovNKgTGIdSWpGBGikwWBexhz01R0zL94DTwVMPuTLhGV
 /+nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2c6a2wUIf1607PZkN1rZk+L4ET6oyW/A+dmD8ze92gI=;
 b=AFqJOlne6XiqyfXbe7Qg6mrk2SdVqJ7iExvkHRxNVYmdxUbR/6yRhvzOZQSVBtKC5i
 TmW2u4Q8eZPHYreKvOIUWITey052Zg4u9hGHB3rMw7Av/4qxpWNPtkFqzZfU7XRxu98o
 CGp2OcESKg6Ut1utUOOlHQrkxQCAKOG9z7/J5db2Ia8pCEzog0sZXpgIY4VSkT8+trYy
 WcqYWGslvZVqZM/Vdc/26b2UTKBa6wqGA8lwIZ8hdr/UmSELSpEf6BVvU08zKfxoF/1B
 75us7suZtGwlG5X7xkj/8QUNiraZ4UQF4XTR7cywE+zar2l5vCrFG2751fJZrx9xW5+1
 w3oQ==
X-Gm-Message-State: APjAAAUZZE/KK0NMOoMfAeeMMg5NlS/caB+zFkrqz5jH670/oibneZxJ
 h4YLd4JzSbuB9egyQmmLO68=
X-Google-Smtp-Source: APXvYqy00/8d+Wer4Z0MFSOy0sPlhrq7zbo/TdsWVeXFTKfHPPar8rV+DBjhxAWH91y4lWNMO4S3Pw==
X-Received: by 2002:a63:ec0c:: with SMTP id j12mr2609426pgh.78.1582704647920; 
 Wed, 26 Feb 2020 00:10:47 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id v7sm1679230pfn.61.2020.02.26.00.10.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 00:10:47 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Torsten Duwe <duwe@suse.de>, Icenowy Zheng <icenowy@aosc.io>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Stephan Gerhold <stephan@gerhold.net>, Mark Brown <broonie@kernel.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 5/6] drm/panel: simple: Add NewEast Optoelectronics CO.,
 LTD WJFH116008A panel support
Date: Wed, 26 Feb 2020 00:10:10 -0800
Message-Id: <20200226081011.1347245-6-anarsoul@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226081011.1347245-1-anarsoul@gmail.com>
References: <20200226081011.1347245-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_001048_596182_84BBBB6A 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds support for the NewEast Optoelectronics CO., LTD
WJFH116008A 11.6" 1920x1080 TFT LCD panel.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 drivers/gpu/drm/panel/panel-simple.c | 48 ++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index e14c14ac62b5..4292e3e3a461 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2224,6 +2224,51 @@ static const struct panel_desc netron_dy_e231732 = {
 	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
 };
 
+static const struct drm_display_mode neweast_wjfh116008a_modes[] = {
+	{
+		.clock = 138500,
+		.hdisplay = 1920,
+		.hsync_start = 1920 + 48,
+		.hsync_end = 1920 + 48 + 32,
+		.htotal = 1920 + 48 + 32 + 80,
+		.vdisplay = 1080,
+		.vsync_start = 1080 + 3,
+		.vsync_end = 1080 + 3 + 5,
+		.vtotal = 1080 + 3 + 5 + 23,
+		.vrefresh = 60,
+		.flags = DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
+	}, {
+		.clock = 110920,
+		.hdisplay = 1920,
+		.hsync_start = 1920 + 48,
+		.hsync_end = 1920 + 48 + 32,
+		.htotal = 1920 + 48 + 32 + 80,
+		.vdisplay = 1080,
+		.vsync_start = 1080 + 3,
+		.vsync_end = 1080 + 3 + 5,
+		.vtotal = 1080 + 3 + 5 + 23,
+		.vrefresh = 48,
+		.flags = DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
+	}
+};
+
+static const struct panel_desc neweast_wjfh116008a = {
+	.modes = neweast_wjfh116008a_modes,
+	.num_modes = 2,
+	.bpc = 6,
+	.size = {
+		.width = 260,
+		.height = 150,
+	},
+	.delay = {
+		.prepare = 110,
+		.enable = 20,
+		.unprepare = 500,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
+	.connector_type = DRM_MODE_CONNECTOR_eDP,
+};
+
 static const struct drm_display_mode newhaven_nhd_43_480272ef_atxl_mode = {
 	.clock = 9000,
 	.hdisplay = 480,
@@ -3399,6 +3444,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "netron-dy,e231732",
 		.data = &netron_dy_e231732,
+	}, {
+		.compatible = "neweast,wjfh116008a",
+		.data = &neweast_wjfh116008a,
 	}, {
 		.compatible = "newhaven,nhd-4.3-480272ef-atxl",
 		.data = &newhaven_nhd_43_480272ef_atxl,
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
