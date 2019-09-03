Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A2AA60D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 07:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YmtrivySqjy0MG6geBEEFwzEdp4mzyMIFXGmV8X6IFU=; b=aSb26ez3glHzHK
	+SOClhHtr4CaLdRiVk+QLLuN0pXA9z43sdMFgH3ulxywXxvY2m5vnJi8I5D46mFwwuVps1WK37zfZ
	QldaAYfCfT8UgKq2I2TlaHHB6uKVaK1Xqjw3LF3HpPJrf0LtN/Rye57U1Af9bw1bK67lHGFlT1eMK
	OL5UE7wvr7xKKbtOeSsASk1mA2nZUpFJyNwNwTxRStqLGw4/AlCb8wxDg8fMP7/Fa4zixI68jC9Oa
	GNz1D4wLckOICeki9y6QwR/wmqC7kazz38PwqkgS1pHTr450r81o+A5g6CUk/vzWNtujhllddJO2h
	r9W/mLxy5K5QiwELvWXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i51j1-0007Ig-97; Tue, 03 Sep 2019 05:51:31 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i51ij-0007Hb-Bz
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 05:51:14 +0000
Received: by mail-pg1-x543.google.com with SMTP id x15so8488945pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 22:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TkPI7O1fVqnq6R/nJ+Pnt20RhQ4GXULllM+CXg8v034=;
 b=K51UO9D1aK3b/3+8I8RJfUnmD0e4/8iXNOPu94gB7YnCEMvStQ4ALdBjUCj5CQCsNK
 A1DXvkowreIHI/5gRRYxx9ZT8oZJq7skjn5YAvwNNDBhdy2b+89gjVkJPFxELRiAGCpH
 Er4/qOP3ASoq2/XBObfI2FaPdQjTHx5bnKmU8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TkPI7O1fVqnq6R/nJ+Pnt20RhQ4GXULllM+CXg8v034=;
 b=FcreShT7HOFWXJYaem/BWii8VxtZU3u5Edad9aQVhawOo3YnZ6P9jH/7jfZvf9i0ME
 uY2wcraPI1Dt8ECtoC+jlhodh2lpoZXLabxp/6I5bGTaMSgGs1uddfWuK33u5sxyxdbU
 Hm5apP8+5xKoxOkbuDtDAUXorGrgxJjkfvizaSVeniTRYfjh64moCpvSOO1RedmId30z
 BoAHUarr2sZ0i4hRgJ3fEUHvsXnjDzsjRQYt0RbJIDpPcMiTuABatwMFbCGeBssGrPp2
 /CQf0J3fsqpXE315wPiAoXj6TnKpZQL7nzkOBVlg3pDJbLnqeHIQqE0X+4MyUlDOivPB
 SwwQ==
X-Gm-Message-State: APjAAAVBGv1uAOfn/rV86bX6gjL517RChVEHbDTY6kvF6/BvUFU7gU/2
 u6HCFUDVLhMozv9hqu9ze+/5LNiFdBo=
X-Google-Smtp-Source: APXvYqy+o0Y8D6HEyRM06kw7O9+KYZ0JH6HO+T0Xt4tKvQ5MDBFAx9QHtwodeC4EErYbNCsjkWMd+g==
X-Received: by 2002:a63:2a08:: with SMTP id q8mr28160269pgq.415.1567489872170; 
 Mon, 02 Sep 2019 22:51:12 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id g24sm6508687pfo.178.2019.09.02.22.51.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Sep 2019 22:51:11 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] drm: bridge/dw_hdmi: add audio sample channel status setting
Date: Tue,  3 Sep 2019 13:51:03 +0800
Message-Id: <20190903055103.134764-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_225113_416279_BDAC1253 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alsa-devel@alsa-project.org, tzungbi@chromium.org, zhengxing@rock-chips.com,
 kuninori.morimoto.gx@renesas.com, a.hajda@samsung.com, airlied@linux.ie,
 kuankuan.y@gmail.com, jeffy.chen@rock-chips.com, dianders@chromium.org,
 dri-devel@lists.freedesktop.org, cain.cai@rock-chips.com,
 linux-rockchip@lists.infradead.org, eddie.cai@rock-chips.com,
 Laurent.pinchart@ideasonboard.com, daniel@ffwll.ch,
 Yakir Yang <ykk@rock-chips.com>, enric.balletbo@collabora.com,
 dgreid@chromium.org, sam@ravnborg.org, linux-arm-kernel@lists.infradead.org,
 cychiang@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yakir Yang <ykk@rock-chips.com>

When transmitting IEC60985 linear PCM audio, we configure the
Audio Sample Channel Status information of all the channel
status bits in the IEC60958 frame.
Refer to 60958-3 page 10 for frequency, original frequency, and
wordlength setting.

This fix the issue that audio does not come out on some monitors
(e.g. LG 22CV241)

Signed-off-by: Yakir Yang <ykk@rock-chips.com>
Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 59 +++++++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.h | 20 ++++++++
 2 files changed, 79 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index bd65d0479683..34d46e25d610 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -582,6 +582,63 @@ static unsigned int hdmi_compute_n(unsigned int freq, unsigned long pixel_clk)
 	return n;
 }
 
+static void hdmi_set_schnl(struct dw_hdmi *hdmi)
+{
+	u8 aud_schnl_samplerate;
+	u8 aud_schnl_8;
+
+	/* These registers are on RK3288 using version 2.0a. */
+	if (hdmi->version != 0x200a)
+		return;
+
+	switch (hdmi->sample_rate) {
+	case 32000:
+		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_32K;
+		break;
+	case 44100:
+		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_44K1;
+		break;
+	case 48000:
+		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_48K;
+		break;
+	case 88200:
+		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_88K2;
+		break;
+	case 96000:
+		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_96K;
+		break;
+	case 176400:
+		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_176K4;
+		break;
+	case 192000:
+		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_192K;
+		break;
+	case 768000:
+		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_768K;
+		break;
+	default:
+		dev_warn(hdmi->dev, "Unsupported audio sample rate (%u)\n",
+			 hdmi->sample_rate);
+		return;
+	}
+
+	/* set channel status register */
+	hdmi_modb(hdmi, aud_schnl_samplerate, HDMI_FC_AUDSCHNLS7_SMPRATE_MASK,
+		  HDMI_FC_AUDSCHNLS7);
+
+	/*
+	 * Set original frequency to be the same as frequency.
+	 * Use one-complement value as stated in IEC60958-3 page 13.
+	 */
+	aud_schnl_8 = (~aud_schnl_samplerate) <<
+			HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_OFFSET;
+
+	/* This means word length is 16 bit. Refer to IEC60958-3 page 12. */
+	aud_schnl_8 |= 2 << HDMI_FC_AUDSCHNLS8_WORDLEGNTH_OFFSET;
+
+	hdmi_writeb(hdmi, aud_schnl_8, HDMI_FC_AUDSCHNLS8);
+}
+
 static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
 	unsigned long pixel_clk, unsigned int sample_rate)
 {
@@ -620,6 +677,8 @@ static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
 	hdmi->audio_cts = cts;
 	hdmi_set_cts_n(hdmi, cts, hdmi->audio_enable ? n : 0);
 	spin_unlock_irq(&hdmi->audio_lock);
+
+	hdmi_set_schnl(hdmi);
 }
 
 static void hdmi_init_clk_regenerator(struct dw_hdmi *hdmi)
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
index 6988f12d89d9..619ebc1c8354 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
@@ -158,6 +158,17 @@
 #define HDMI_FC_SPDDEVICEINF                    0x1062
 #define HDMI_FC_AUDSCONF                        0x1063
 #define HDMI_FC_AUDSSTAT                        0x1064
+#define HDMI_FC_AUDSV                           0x1065
+#define HDMI_FC_AUDSU                           0x1066
+#define HDMI_FC_AUDSCHNLS0                      0x1067
+#define HDMI_FC_AUDSCHNLS1                      0x1068
+#define HDMI_FC_AUDSCHNLS2                      0x1069
+#define HDMI_FC_AUDSCHNLS3                      0x106a
+#define HDMI_FC_AUDSCHNLS4                      0x106b
+#define HDMI_FC_AUDSCHNLS5                      0x106c
+#define HDMI_FC_AUDSCHNLS6                      0x106d
+#define HDMI_FC_AUDSCHNLS7                      0x106e
+#define HDMI_FC_AUDSCHNLS8                      0x106f
 #define HDMI_FC_DATACH0FILL                     0x1070
 #define HDMI_FC_DATACH1FILL                     0x1071
 #define HDMI_FC_DATACH2FILL                     0x1072
@@ -706,6 +717,15 @@ enum {
 /* HDMI_FC_AUDSCHNLS7 field values */
 	HDMI_FC_AUDSCHNLS7_ACCURACY_OFFSET = 4,
 	HDMI_FC_AUDSCHNLS7_ACCURACY_MASK = 0x30,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_MASK = 0x0f,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_192K = 0xe,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_176K4 = 0xc,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_96K = 0xa,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_768K = 0x9,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_88K2 = 0x8,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_32K = 0x3,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_48K = 0x2,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_44K1 = 0x0,
 
 /* HDMI_FC_AUDSCHNLS8 field values */
 	HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_MASK = 0xf0,
-- 
2.23.0.187.g17f5b7556c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
