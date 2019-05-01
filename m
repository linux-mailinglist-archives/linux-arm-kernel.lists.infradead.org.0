Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A94107D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 14:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XWw7a+kLlmD4MALaEVSYsXxOMEsOIdqIjgi5s+WRCYY=; b=dZ0ETGENc1vDoa
	1x/mEF1Uy3UJ/4ni4PTneOTwt0BgEyFK/N3acdCfL55Z/aGVKGyLrfurHuNdeuNWActUd4xkHvtBk
	dMXOzCKGfcrJylgmlQQXW8e2GlEn1empZBworX+FlJk9BTnWfklhSJeLqkB4br/KtOSkcOs/8NOKb
	b0VWIAwBGEe00eGtVDT63P49eef/tAicFl8B89rzjrXf151ACBh4z5egOovS0pQns0Z71cRIPByUp
	yuySuh31tTZlX87H8BuSeBGf/b9r3oirGnjIlgIZrxy0R7dSnUTRI6zcLGlxO4mGrRVtVJyGVS51P
	VQDyBqiYGgFFYbm68HhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLo92-0000kP-BL; Wed, 01 May 2019 12:15:28 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLo8r-0000jJ-SP
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 12:15:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id z26so4647551pfg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 05:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ImxxJmJZjyprEUOS1cjM4Ta2GXS4CI4CNxI78EJ27HQ=;
 b=BwOW8AiQot0lzdxqOFplQZcvP1cnjIsyBA+ciOZuAAZqCqvmuxA+r809VDSoc6Nxm+
 DgK9efe9hfbxEWRzzK61cZ9vBwUIZxJFiII9DwHZIJ8QD4wL5C+d0hZd/e6PY3TO6BS0
 kItv6s2QKpCPJF6QwRzs5Xaf0efnBpPc2hlNc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ImxxJmJZjyprEUOS1cjM4Ta2GXS4CI4CNxI78EJ27HQ=;
 b=NAf61wgeIvObO155SJZIYqetKVUiQVo/z0Epq+YR2Ee8Djey3vrYWqiigzc4pN1ZqM
 JHvDSbos9z/bLEIll2qy53NrxJ6h30jiwJ40aLjiCECdHmtUiOLmbAYdm4WjUl3Guq0q
 hLbNwJHjGraqZFaFyeQoPniHMZ9nJmT3D9eJzJV7icqpTGulAucmT+aRh7n10L+s45EE
 hSQuWkzyA9+9T47KFBGUJZP2LHk4uY+7nv5PUGvi0+v9n0z/47chbahF0gjRj8mrHJS+
 ihE740G1eKyjTQr8iQZbcHDkV6qsMpx4KTZjj+H6ToQR9LuOEZy6HUkEmgb9R+FY+Vwx
 TFtA==
X-Gm-Message-State: APjAAAWNGN2j2/7xNtZtxYE80vD7P1FEHsbL7wzVbGio2VTSt8DBPDRB
 nDzHP6BMUmsQx6zZwHYVWzYEcg==
X-Google-Smtp-Source: APXvYqyNB0l+GQo7QXQib2EIHiEhvT+0vDtje0/2NwWvm1V+uu1x/xfQ0ZhL3ZmGNupLIEaeNg+Zcw==
X-Received: by 2002:a63:dd58:: with SMTP id g24mr44137179pgj.161.1556712916601; 
 Wed, 01 May 2019 05:15:16 -0700 (PDT)
Received: from localhost.localdomain ([183.82.229.33])
 by smtp.gmail.com with ESMTPSA id e193sm71082978pgc.53.2019.05.01.05.15.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 05:15:15 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/2] drm/panel: simple: Add FriendlyELEC HD702E 800x1280 LCD
 panel
Date: Wed,  1 May 2019 17:44:47 +0530
Message-Id: <20190501121448.3812-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_051519_175974_E50F7F13 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Sam Ravnborg <sam@ravnborg.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
resolution. It has built in Goodix, GT9271 captive touchscreen
with backlight adjustable via PWM.

Add support for it.

Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../display/panel/friendlyarm,hd702e.txt      | 29 +++++++++++++++++++
 drivers/gpu/drm/panel/panel-simple.c          | 26 +++++++++++++++++
 2 files changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt

diff --git a/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt b/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
new file mode 100644
index 000000000000..67349d7f79be
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
@@ -0,0 +1,29 @@
+FriendlyELEC HD702E 800x1280 LCD panel
+
+HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
+resolution. It has built in Goodix, GT9271 captive touchscreen
+with backlight adjustable via PWM.
+
+Required properties:
+- compatible: should be "friendlyarm,hd702e"
+- power-supply: regulator to provide the supply voltage
+
+Optional properties:
+- backlight: phandle of the backlight device attached to the panel
+
+Optional nodes:
+- Video port for LCD panel input.
+
+Example:
+
+	panel {
+		compatible ="friendlyarm,hd702e";
+		backlight = <&backlight>;
+		power-supply = <&vcc3v3_sys>;
+
+		port {
+			panel_in_edp: endpoint {
+				remote-endpoint = <&edp_out_panel>;
+			};
+		};
+	};
diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 9e8218f6a3f2..9db3c0c65ef2 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -1184,6 +1184,29 @@ static const struct panel_desc foxlink_fl500wvr00_a0t = {
 	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
 };
 
+static const struct drm_display_mode friendlyarm_hd702e_mode = {
+	.clock		= 67185,
+	.hdisplay	= 800,
+	.hsync_start	= 800 + 20,
+	.hsync_end	= 800 + 20 + 24,
+	.htotal		= 800 + 20 + 24 + 20,
+	.vdisplay	= 1280,
+	.vsync_start	= 1280 + 4,
+	.vsync_end	= 1280 + 4 + 8,
+	.vtotal		= 1280 + 4 + 8 + 4,
+	.vrefresh	= 60,
+	.flags 		= DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
+};
+
+static const struct panel_desc friendlyarm_hd702e = {
+	.modes = &friendlyarm_hd702e_mode,
+	.num_modes = 1,
+	.size = {
+		.width	= 94,
+		.height	= 151,
+	},
+};
+
 static const struct drm_display_mode giantplus_gpg482739qs5_mode = {
 	.clock = 9000,
 	.hdisplay = 480,
@@ -2634,6 +2657,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "edt,etm0700g0edh6",
 		.data = &edt_etm0700g0bdh6,
+	}, {
+		.compatible = "friendlyarm,hd702e",
+		.data = &friendlyarm_hd702e,
 	}, {
 		.compatible = "foxlink,fl500wvr00-a0t",
 		.data = &foxlink_fl500wvr00_a0t,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
