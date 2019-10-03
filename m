Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4A8C9726
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 06:06:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yToioF2OJL/N3VKPEN5Y9IeNKpzXqeMHBPlAQ2OKFzc=; b=UDesLu9GA8z4hd
	mS71KU2XDOWItsSCy1zGXRN4HUa7AoXv5dJQdpKds3moIkIMBYxmm8lEcyP9lRjAqaluLvyDQfGdq
	f1DZ5Pj/lVJTtziqxoTLLVhOsEUiUHcY5zgmZzdibMyzGOspjREUzwLaD/uBYAEqJ27kN9CSqr063
	DqZMtnc7DxfBSEXysUgExCjmGHSEim6E0LLjTHAJvAn/JBZA1R4/T9eia+/i/ku3mBFQKAdZlepYo
	G37pF627Zmgwl16hRpVuKYA3l+JkSljjzIIc2TRg/LljfIEba+tUvUCT2H/vNbBi6s+u8qzVc9g1W
	+ebAEI2Lfe7EBX9Zfs8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFsNK-0000YE-BC; Thu, 03 Oct 2019 04:05:58 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFsND-0000X2-3W
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 04:05:52 +0000
Received: by mail-pg1-x544.google.com with SMTP id 23so912106pgk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 21:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ipcV5l1n/8It2aLom5M2l+YXf6MikdW6xOH7ijHIWC4=;
 b=GJ8dCYphiCUor6hJ8Gk2a0LVJjkKGKBK0qYgul5TeGjsdlVTkyabw4iWB5Tf+iw8Ua
 FiN7fu0PJaIxegA5BQ9wp6F5l6rFTNhY5aFK9pAnie4HM6QzrpFmxoq8pnTTVRFeYJAV
 OE4PSBL5YMHVsOurDvxBxxhEypEBCMV34tWV0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ipcV5l1n/8It2aLom5M2l+YXf6MikdW6xOH7ijHIWC4=;
 b=BPpy4v1E8vTUqYi7r1wVZsareG3OrM8fQeqs0b5Ym6U0jTlrnF37gQJRQB8o0VidZL
 zmj1IEIqkPo7fnnHJV6sFznt+6ugQI+uUtcVsKsIDZ4idaNAwOU5z+Gl5dUAj1S7+PF9
 bqEjQ7gMcBLhXt1q0I91hVQiyV+XuhmBJGQTi+8BMts2xm16uT3/4fGE5cJqqKW3SaR1
 fqZ0r3mpnhsCNHp61h9xvSAy/u+j+k3Yf3Cz8UfnSYXNbdEZyGPB4tDosubcoqf51m7M
 Plv0706iOQwxgNs5hgmOnZiUbeXkHLT7+l/YZDWTWpKwaIXmha395w1k0FoTs4uKP/vA
 m0Vg==
X-Gm-Message-State: APjAAAUK5T5jC8LjYVAjfzmU6BSnsUkhXcyHaac26GUlfWFEjfy/tWNe
 wvoG1331EDowzqKI2mKI5gmgdQ==
X-Google-Smtp-Source: APXvYqzWiB8hQkm2uo7S8xni0GVmAx2W9Y1kaKW4dhI8KN2xpmpX/enaUKzWwxDftTpN40iGJ57rhw==
X-Received: by 2002:a62:754a:: with SMTP id q71mr8685426pfc.70.1570075550111; 
 Wed, 02 Oct 2019 21:05:50 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id z5sm954845pgi.19.2019.10.02.21.05.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Oct 2019 21:05:49 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] FROMLIST: drm/bridge: dw-hdmi: Restore audio when setting
 a mode
Date: Thu,  3 Oct 2019 12:05:40 +0800
Message-Id: <20191003040540.180310-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.23.0.444.g18eeb5a265-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_210551_171102_00936555 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Change from v1 to v2:
 - Use audio_lock to protect audio clock.

 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index aa7efd4da1c8..749d8e4c535b 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -1982,6 +1982,17 @@ static void hdmi_disable_overflow_interrupts(struct dw_hdmi *hdmi)
 		    HDMI_IH_MUTE_FC_STAT2);
 }
 
+static void dw_hdmi_audio_restore(struct dw_hdmi *hdmi)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&hdmi->audio_lock, flags);
+
+	hdmi_enable_audio_clk(hdmi, hdmi->audio_enable);
+
+	spin_unlock_irqrestore(&hdmi->audio_lock, flags);
+}
+
 static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
 {
 	int ret;
@@ -2045,7 +2056,7 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
 
 		/* HDMI Initialization Step E - Configure audio */
 		hdmi_clk_regenerator_update_pixel_clock(hdmi);
-		hdmi_enable_audio_clk(hdmi, true);
+		dw_hdmi_audio_restore(hdmi);
 	}
 
 	/* not for DVI mode */
-- 
2.23.0.444.g18eeb5a265-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
