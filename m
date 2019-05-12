Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEB01ADD3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 20:42:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+oBgshsd/zQY3WJH/mHKSI06aVI57kjH/lwW8sRoWo=; b=TIJpxlHHdLVJFz
	mjAWTfJMWo6RrTrGX2QtvzhOWZZ4Dy1/m2u7GbE6nuIGsoW7/dWNWQyboej7EQZmdov+lB9bw2Iz9
	oRW2fPF4sMCFKom6mvt1VPkteqNOXN5YGO3BN4g4TRXsIHhutMm+x23L6Igg5UGU2wL+2lC5FLDVV
	gdumjR6VjXYtt/r92VtaBAN+sqDMSnIve9Kf7l55TSc1AdQz/tS8uPtgOQ2v0g4La1DCOa2hWB0tV
	Ci3eq1hYHpBOb5tM2VLMPZPNYNELKmroDbBtO41HNTxoEy+rfqOLZQlnDfTtMUCo7FKT6QnoYyRMm
	yNsVJd6ChPEty4EzOHOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPtQC-00084H-Fs; Sun, 12 May 2019 18:42:04 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPtPv-0007sf-Bv
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 18:41:48 +0000
Received: by mail-pg1-x543.google.com with SMTP id j26so5562980pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 11:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=McU3A/Y2+KH8KsiZ+LTp3qJ8zWb4gZuzV4pCEGTBglg=;
 b=SVFjdqYSyAPhETD5SmYAsNRKu3Wf4F+fbW/+KnD9toKXS3ehMbEWA4cauoMEyZxVM3
 W2/GPER2Zd9IkEVZf4W6g+lCw7bp/90c1izCMNumL1PsfyDh3Gl4sCCtp3yuJGmOxFrt
 ZpuHyTiZqAZYxxZSvyBL74T/y6FkIJ8C9XDws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=McU3A/Y2+KH8KsiZ+LTp3qJ8zWb4gZuzV4pCEGTBglg=;
 b=YV/ZnfxEt1V4nsw8MY95wlbzNYaQoT3y5Qw8xnZbN08J0EQ3qM3QntfwphBuBZmkq0
 gLCwaJSYsJD68y8WbI5L90frNtJl4j5zLQjfDhUsJYCchpkOVA8NRe8WXX3u2Nn2BTdl
 D/6Vc8kNIJnOxxQhYjA3JfNMnkt0jTAWtfrWzhJ5GXLpnlp96r/AxFNtDeg4fuCYxk/D
 bg2YM0C++u+D2VnuwBoPoLqhuFhpL4Qa8CDCiCHzSFVmdglo8pLN9G0vW+2tZ1i6KDla
 PjO1tLuNfVPK6uifwiDQ7X+5LEPyt4s4Fq2vdQIK8UQRJx2SwOct9g495TfGVcXGN2CA
 msuw==
X-Gm-Message-State: APjAAAVkaWxtdP5xbZ1IoWk2wZiFW5wYI40+yRLyaZ1G1BLet4/fDUoY
 IoLujO8Af4WmhymcKGIU/OhzlQ==
X-Google-Smtp-Source: APXvYqymxOYGSIxI7rUWYYOmlL1YU/UTYVdKySGM7lGUdp7qmHIxhsd9GhZCn1HJuCfA9pBG34sdAQ==
X-Received: by 2002:a63:f754:: with SMTP id f20mr26935381pgk.162.1557686506891; 
 Sun, 12 May 2019 11:41:46 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id 37sm11041291pgn.21.2019.05.12.11.41.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 11:41:46 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v10 1/2] drm/sun4i: sun6i_mipi_dsi: Fix hsync_porch overflow
Date: Mon, 13 May 2019 00:11:26 +0530
Message-Id: <20190512184128.13720-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190512184128.13720-1-jagan@amarulasolutions.com>
References: <20190512184128.13720-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_114147_445535_961D7C85 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-sunxi@googlegroups.com, Jagan Teki <jagan@amarulasolutions.com>,
 michael@amarulasolutions.com, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Loop N1 instruction delay for burst mode devices are computed
based on horizontal sync and porch timing values.

The current driver is using u16 type for computing this hsync_porch
value, which would failed to fit within the u16 type for large sync
and porch timings devices. This would result in hsync_porch overflow
and eventually computed wrong instruction delay value.

Example, timings, where it produces the overflow
{
	.hdisplay       = 1080,
	.hsync_start    = 1080 + 408,
        .hsync_end      = 1080 + 408 + 4,
        .htotal         = 1080 + 408 + 4 + 38,
}

It reproduces the desired delay value 65487 but the correct working
value should be 7.

So, Fix it by computing hsync_porch value separately with u32 type.

Fixes: 1c1a7aa3663c ("drm/sun4i: dsi: Add burst support")
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 6ff585055a07..bfa7e2b146df 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -457,8 +457,9 @@ static void sun6i_dsi_setup_inst_loop(struct sun6i_dsi *dsi,
 	u16 delay = 50 - 1;
 
 	if (device->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {
-		delay = (mode->htotal - mode->hdisplay) * 150;
-		delay /= (mode->clock / 1000) * 8;
+		u32 hsync_porch = (mode->htotal - mode->hdisplay) * 150;
+
+		delay = (hsync_porch / ((mode->clock / 1000) * 8));
 		delay -= 50;
 	}
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
