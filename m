Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B2ACF6EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 12:22:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IuAFbvriuw5oxLa46QYjh7jDE1moz+e+qS8CPolGSuc=; b=QnQBMV6GzJU5Ve
	dkPv16Q2ytiXuGOyy3rL3Zk6cJ4JTyUZEF1Qru37AH6sJzVi3gbYhzR2eWq1O0j/kwOOnpD3RHvfo
	o7y12DWJOhmWwzmSwz9cwRphGxhNaj5RgxUrIIqHH1fvvmRqCf//F1xlyH8Y9RWW0ZgKhFSHy/Fav
	/67dXrpA5853Yde0ilA4je7HChdAqUDXNg+26zylNZ2wlkqomDl59PYgWZPFNZolm6c+ujlB+twMy
	d8SL90Sa64h77KGsN1YqY+jNPUWmv7sUErBZ1Cfv5uT6nmDbbNsLvy2SMVg6dAi+wYaCuETLBnHT/
	0PkWuv1k7MuTi2YAQVRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHmd2-0005cy-G0; Tue, 08 Oct 2019 10:22:04 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHmcr-0005bl-K6
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 10:21:57 +0000
Received: by mail-pl1-x642.google.com with SMTP id d22so8290548pls.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 03:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GeMDvxk000kDXZOF/cVkZFJMD0gb/5P7FfXKteqfPL8=;
 b=cdJSJvCOf5lwlnvWxJxswCx6xNQ3AjanFRiUtsdswxZMfYmCMtj1PGMFewsVic258v
 Obg7GqwttJcCpt7nuw95onf8KC58807n8gbnHZJ/LRcDAza2N53eImEePNyxIg99BHpt
 Ebgr4PpV4SPUtutXxqVqDceBd9fiuEQOlx/sE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GeMDvxk000kDXZOF/cVkZFJMD0gb/5P7FfXKteqfPL8=;
 b=Fx7UbaJDFGC3NRpqNVtKshwzlPsJlR8rWziTUJVUwvh5PGPaJsfn3rhEehbIGGDHVU
 nb14dGR4gmkpXSaQl18IDwWKcYr5aFJMD8erePdCIfde1sp8xMvTEfKpXJKcVi1B/KCE
 AoBAGL8MWbUO5XoIpg0gNO34fyqlYdTHfFzv0kOMz5iVm7qQYWbUP5Kq+1rL4RXDLpsn
 ostcleNlahCaal4LlTja3GqDqCoiXV89rKWJRDIkhVvBjkprkCFIOvArb6gG/Q+6E+Y6
 r3rwnbmbP8bSQM/Ks1fps+PoOSlmJIADnUk4g2SUTtMTgabnSGsfnMpsz8TXnKFe4t0G
 m5vQ==
X-Gm-Message-State: APjAAAWF+j+iQp9Fs7LEKPxi1Q90+LOeLazHdYh80FIRGpzNAvEa653l
 9Z6U1eZCSrVSRzFMMRRWirkcJw==
X-Google-Smtp-Source: APXvYqw2a0XI5XUbrLM3Qio4U723/Y5fi8MXrTnqZEIoVScPrqDX2SVFu2OcatshFfvpyWcA9OlBRA==
X-Received: by 2002:a17:902:7895:: with SMTP id
 q21mr33495295pll.94.1570530112854; 
 Tue, 08 Oct 2019 03:21:52 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id b9sm15111763pfo.105.2019.10.08.03.21.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Oct 2019 03:21:52 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3] drm/bridge: dw-hdmi: Restore audio when setting a mode
Date: Tue,  8 Oct 2019 18:21:45 +0800
Message-Id: <20191008102145.55134-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_032153_697554_517825B8 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, tzungbi@chromium.org,
 alsa-devel@alsa-project.org, Jonas Karlman <jonas@kwiboo.se>,
 Neil Armstrong <narmstrong@baylibre.com>, dianders@chromium.org,
 dri-devel@lists.freedesktop.org, Jaroslav Kysela <perex@perex.cz>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Daniel Kurtz <djkurtz@chromium.org>, Yakir Yang <ykk@rock-chips.com>,
 dgreid@chromium.org, Cheng-Yi Chiang <cychiang@chromium.org>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Kurtz <djkurtz@chromium.org>

When setting a new display mode, dw_hdmi_setup() calls
dw_hdmi_enable_video_path(), which disables all hdmi clocks, including
the audio clock.

We should only (re-)enable the audio clock if audio was already enabled
when setting the new mode.

Without this patch, on RK3288, there will be HDMI audio on some monitors
if i2s was played to headphone when the monitor was plugged.
ACER H277HU and ASUS PB278 are two of the monitors showing this issue.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
Signed-off-by: Daniel Kurtz <djkurtz@chromium.org>
Signed-off-by: Yakir Yang <ykk@rock-chips.com>
---
 Change from v2 to v3:
 - Remove spinlock around setting clock.

 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index a15fbf71b9d7..af060162b0af 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -2054,7 +2054,7 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
 
 		/* HDMI Initialization Step E - Configure audio */
 		hdmi_clk_regenerator_update_pixel_clock(hdmi);
-		hdmi_enable_audio_clk(hdmi, true);
+		hdmi_enable_audio_clk(hdmi, hdmi->audio_enable);
 	}
 
 	/* not for DVI mode */
-- 
2.23.0.581.g78d2f28ef7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
