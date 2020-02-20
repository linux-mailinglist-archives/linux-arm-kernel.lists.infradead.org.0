Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C046B16595D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 09:37:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERsapS8A+13TjY7tHIdlkgvhSPqC3GX4/fT+fQ4Ohf0=; b=ibH4vSEjYaKCL/
	W4YuCONK/0WA1wlxsBlP6PRxnG7d29HgZcBwmF5Ztudcvpkd46ISD7/ctqS+YbGaHOztUWp0+IT4d
	ozBT6myYX4zFn63ArTNaLMoaol4OAE7bYgRhG5/3CAG91ldDL35nY4zYRfXHcnAzRAD69YpxZDwG0
	j9GB5yMbNJjjz2W7ROb1hSXSm01zWtiQhgox0oqbinOU89xecrwdHFlhRY0lTxcORVa9Lo92e1ovl
	HAK7UVIjiT10PlFDlmZGlsZJ6QT5SKfNHSjM6MKHTG1LTo+xaOqqNfaL+vnyqq3n1J2hZdgoApKy4
	lcpwD/UBL5RxLVWDC6vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4hKf-0001LG-Q1; Thu, 20 Feb 2020 08:37:17 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4hJP-0000EW-Bs
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 08:36:00 +0000
Received: by mail-pl1-x644.google.com with SMTP id c23so1274787plz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 00:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y/c4HnHL8fMAg6Wo4pqS2IgOW97h7pKxh9Qxew+UstU=;
 b=jVRLDXHVy8oHPRXfBedHbTNAtkdvnd1bwk1Yk+NWpCm/JqBBDPwJ9SwMP2gddlZHrj
 eiH61428+Mx0koFTtoxOq/ed6ErAnMpwyX7WLDs6BsLZWPf8+L676n0n1mW0E5emvZfg
 F5+aCZiyNd8sYg4PTwDKiHu1mijlAYUvJpQz8nfG+2V/L6IjmvnzJCAi1B4rQjr4h4ez
 r/SovY9JQefHPaXoUPLbLifoW/vfy8NtG2zCQMpExwlSLys2m17/ALM8umf1gXJFw2Fv
 XFKAnroF69zdiP1fKBrCMTnf3hFwupOuxRSAJXIh8RaLVOk97vdz7/LqzngPSP3SZPVA
 uHnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y/c4HnHL8fMAg6Wo4pqS2IgOW97h7pKxh9Qxew+UstU=;
 b=fdFUm5RUbfMNddoLyoWIZkMGkm2qFRbrySOh1QdVmX3CJIHyVQ9Z+uvkumhr0xJj8n
 LhHWzAnigRh4qlyZsQteuO5J0q8Vy1TZfDNHyNfp9nNbyepXiOS1vBh1DydNppCcaE7X
 aqJyHil65PHiTixfCkvcYfRARuLhRYwftm0cBDrtZHvEFkh1QBTDjAvRqLyEHPfnxl6/
 nsUVytz6N05d9xOoajBRm0YcfbsRBhkO3g9RJ53/FaBWmTNVCrqXNJQbpwlxLnkon+zi
 KqbhO5H/DBZwPVShmzs4u4VNFvni7/yNfzjInGhPSTr7Z21NVZ4u2XLg/SaKf3+hL7Yz
 97pA==
X-Gm-Message-State: APjAAAVQor3B7QZKGcyXYJRFjoi5xs4hjsAk2c/6mbSZWLd6dXuSM+3z
 /+ZEHFQkeGowbOMX0cJSAiM=
X-Google-Smtp-Source: APXvYqyYpW3EXASVj7XV5DEOPQswxo7hRbJnjHbgKCDrhVP4i9xGeNsgJjGu3JKIdyetfAZGHkiGCg==
X-Received: by 2002:a17:90a:a48c:: with SMTP id
 z12mr2330695pjp.38.1582187758576; 
 Thu, 20 Feb 2020 00:35:58 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id l13sm2319038pjq.23.2020.02.20.00.35.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 00:35:58 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Icenowy Zheng <icenowy@aosc.io>, Torsten Duwe <duwe@suse.de>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>, Mark Brown <broonie@kernel.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/6] drm/panel: simple: Add NewEast Optoelectronics CO.,
 LTD WJFH116008A panel support
Date: Thu, 20 Feb 2020 00:35:07 -0800
Message-Id: <20200220083508.792071-6-anarsoul@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200220083508.792071-1-anarsoul@gmail.com>
References: <20200220083508.792071-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_003559_440185_332E5D0B 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds support for the NewEast Optoelectronics CO., LTD
WJFH116008A 11.6" 1920x1080 TFT LCD panel.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 drivers/gpu/drm/panel/panel-simple.c | 47 ++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index e14c14ac62b5..aa04afaf3d26 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2224,6 +2224,50 @@ static const struct panel_desc netron_dy_e231732 = {
 	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
 };
 
+static const struct drm_display_mode neweast_wjfh116008a_modes[] = {
+{
+	.clock = 138500,
+	.hdisplay = 1920,
+	.hsync_start = 1920 + 48,
+	.hsync_end = 1920 + 48 + 32,
+	.htotal = 1920 + 48 + 32 + 80,
+	.vdisplay = 1080,
+	.vsync_start = 1080 + 3,
+	.vsync_end = 1080 + 3 + 5,
+	.vtotal = 1080 + 3 + 5 + 23,
+	.vrefresh = 60,
+	.flags = DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
+}, {
+	.clock = 110920,
+	.hdisplay = 1920,
+	.hsync_start = 1920 + 48,
+	.hsync_end = 1920 + 48 + 32,
+	.htotal = 1920 + 48 + 32 + 80,
+	.vdisplay = 1080,
+	.vsync_start = 1080 + 3,
+	.vsync_end = 1080 + 3 + 5,
+	.vtotal = 1080 + 3 + 5 + 23,
+	.vrefresh = 48,
+	.flags = DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
+} };
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
@@ -3399,6 +3443,9 @@ static const struct of_device_id platform_of_match[] = {
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
