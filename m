Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B4DAF7E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 10:27:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CsOYp8bx3mk+MrfrUXyywrofyY1nUMQiTMd6LoDAVYU=; b=dmdKUsNKIFGk/B
	wa4AKxWytSWvjy683U8Sehbzf/eb0mRvLp+CjuPIWjuyT3ajIIXkOWrDoTGZ98Kg4Vz2/GeQLgqJ2
	Jj481kAiDx6WAdEDxAtiJwS5Al8qm3kUv54Br+Rwk+IijdDYtQWx3j+HeAHiXJ/MdN7wW0rmVi9fX
	ePj9BLqqwdr7KsqTUl5aP9JE+ciPi/JOXaQ2ZS15OYsNCYQl0eGLF2vw4li4YUKE+L/09hmFUwPlt
	VWlSIrDEWbwSEUDPyzozIfnw+UvgzsUO9mVqBuuPoE/StMfgnU7ya6WhcncVd4Aw0w1p+072+eI76
	08/uIspgsHMNT5wyTd0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7xyU-0007om-Bo; Wed, 11 Sep 2019 08:27:38 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7xxq-0007Tw-Ea
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 08:27:00 +0000
Received: by mail-pg1-x544.google.com with SMTP id u17so11145275pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 01:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4r0nmZkQSsR2gJHf1JrXB09YJMiVgOB3zCW5D3saotk=;
 b=SkDdQyZvW4zi69+lyo92l0Kk3Thw/bwocTopP9fFph6zyBMtEB/3j1KLDMRUxqxdz8
 +GfX2YdSkpKSLb2PvhEGCOF4NwPA/U6Y1kiPxadIOSTS6TyJZFma9bzPGLj2n8QbL23D
 Hr+J8YoPtLhznecB9zPycHkXrnWu5k+PMPJ+M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4r0nmZkQSsR2gJHf1JrXB09YJMiVgOB3zCW5D3saotk=;
 b=PMxdYxLa23GBoboE/tWXFQys1NNY5f/02tP9VROH5+O5wdG4/V7145GBCzGDQxxRJx
 dCjir+DSpEImRWlsRefeNprEDiRnx3APg3gKNQEEzZLrYIzimpGyAEg5AJ6f0acSNsgk
 KixpHZL0xgmKb3oiiqP6/1PW1JYDvZVViUWfBoCqbDZmdNdypppJrc6p39j615oCkLZ2
 Nhmq4uLVztfKUcu+SSaNbG96Ek19qKzIKZn4bcNLnsA6B0s2YZDNh54dgsco6CjtJbuI
 oZ317Nja+F0jmpM+5Z7iySNNedVbFG9X+FavWqv2HCR5bbPV81RCSChMnOqo6ytfiULV
 PyuQ==
X-Gm-Message-State: APjAAAW080z73g7KmRVsEOkgqLtwZ9dQcX0683pHo9FZX/ki/+EQLuPr
 XDpZtdyI3zCFByY2IVM1eSEXxg==
X-Google-Smtp-Source: APXvYqyu86LR1qJn3qdq+8oCOL+6X9M/yekQdNO+TlGPFuebwd792sRf58JYMVY/Ym+ipZH+zK0xSA==
X-Received: by 2002:a63:487:: with SMTP id 129mr4981704pge.14.1568190416941;
 Wed, 11 Sep 2019 01:26:56 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id t12sm22798655pfe.58.2019.09.11.01.26.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Sep 2019 01:26:55 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3] drm: bridge/dw_hdmi: add audio sample channel status
 setting
Date: Wed, 11 Sep 2019 16:26:46 +0800
Message-Id: <20190911082646.134347-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.23.0.162.g0b9fbb3734-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_012658_660505_BBF80D4F 
X-CRM114-Status: GOOD (  12.14  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, kuninori.morimoto.gx@renesas.com,
 Neil Armstrong <narmstrong@baylibre.com>, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, cain.cai@rock-chips.com, a.hajda@samsung.com,
 Laurent.pinchart@ideasonboard.com, Yakir Yang <ykk@rock-chips.com>,
 sam@ravnborg.org, Jerome Brunet <jbrunet@baylibre.com>,
 zhengxing@rock-chips.com, linux-rockchip@lists.infradead.org,
 dgreid@chromium.org, cychiang@chromium.org, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, jeffy.chen@rock-chips.com,
 eddie.cai@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, dianders@chromium.org,
 daniel@ffwll.ch, enric.balletbo@collabora.com, kuankuan.y@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yakir Yang <ykk@rock-chips.com>

When transmitting IEC60985 linear PCM audio, we configure the
Aduio Sample Channel Status information in the IEC60958 frame.
The status bit is already available in iec.status of hdmi_codec_params.

This fix the issue that audio does not come out on some monitors
(e.g. LG 22CV241)

Note that these registers are only for interfaces:
I2S audio interface, General Purpose Audio (GPA), or AHB audio DMA
(AHBAUDDMA).
For S/PDIF interface this information comes from the stream.

Currently this function dw_hdmi_set_channel_status is only called
from dw-hdmi-i2s-audio in I2S setup.

Signed-off-by: Yakir Yang <ykk@rock-chips.com>
Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---

Change from v2 to v3:
1. Reuse what is already set in iec.status in hw_param.
2. Remove all useless definition of registers and values.
3. Note that the original sampling frequency is not written to
   the channel status as we reuse create_iec958_consumer in pcm_iec958.c.
   Without that it can still play audio fine.

 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  1 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     | 20 +++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.h     |  2 ++
 include/drm/bridge/dw_hdmi.h                  |  1 +
 4 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
index 34d8e837555f..20f4f92dd866 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
@@ -102,6 +102,7 @@ static int dw_hdmi_i2s_hw_params(struct device *dev, void *data,
 	}
 
 	dw_hdmi_set_sample_rate(hdmi, hparms->sample_rate);
+	dw_hdmi_set_channel_status(hdmi, hparms->iec.status);
 	dw_hdmi_set_channel_count(hdmi, hparms->channels);
 	dw_hdmi_set_channel_allocation(hdmi, hparms->cea.channel_allocation);
 
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index bd65d0479683..aa7efd4da1c8 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -582,6 +582,26 @@ static unsigned int hdmi_compute_n(unsigned int freq, unsigned long pixel_clk)
 	return n;
 }
 
+/*
+ * When transmitting IEC60958 linear PCM audio, these registers allow to
+ * configure the channel status information of all the channel status
+ * bits in the IEC60958 frame. For the moment this configuration is only
+ * used when the I2S audio interface, General Purpose Audio (GPA),
+ * or AHB audio DMA (AHBAUDDMA) interface is active
+ * (for S/PDIF interface this information comes from the stream).
+ */
+void dw_hdmi_set_channel_status(struct dw_hdmi *hdmi,
+				u8 *channel_status)
+{
+	/*
+	 * Set channel status register for frequency and word length.
+	 * Use default values for other registers.
+	 */
+	hdmi_writeb(hdmi, channel_status[3], HDMI_FC_AUDSCHNLS7);
+	hdmi_writeb(hdmi, channel_status[4], HDMI_FC_AUDSCHNLS8);
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_set_channel_status);
+
 static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
 	unsigned long pixel_clk, unsigned int sample_rate)
 {
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
index 6988f12d89d9..fcff5059db24 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
@@ -158,6 +158,8 @@
 #define HDMI_FC_SPDDEVICEINF                    0x1062
 #define HDMI_FC_AUDSCONF                        0x1063
 #define HDMI_FC_AUDSSTAT                        0x1064
+#define HDMI_FC_AUDSCHNLS7                      0x106e
+#define HDMI_FC_AUDSCHNLS8                      0x106f
 #define HDMI_FC_DATACH0FILL                     0x1070
 #define HDMI_FC_DATACH1FILL                     0x1071
 #define HDMI_FC_DATACH2FILL                     0x1072
diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
index cf528c289857..4b3e863c4f8a 100644
--- a/include/drm/bridge/dw_hdmi.h
+++ b/include/drm/bridge/dw_hdmi.h
@@ -156,6 +156,7 @@ void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense);
 
 void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate);
 void dw_hdmi_set_channel_count(struct dw_hdmi *hdmi, unsigned int cnt);
+void dw_hdmi_set_channel_status(struct dw_hdmi *hdmi, u8 *channel_status);
 void dw_hdmi_set_channel_allocation(struct dw_hdmi *hdmi, unsigned int ca);
 void dw_hdmi_audio_enable(struct dw_hdmi *hdmi);
 void dw_hdmi_audio_disable(struct dw_hdmi *hdmi);
-- 
2.23.0.162.g0b9fbb3734-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
