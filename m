Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A02E9C2B76
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 03:00:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cvLn1jWADcUu2fMfT3ZkkFM82TrxegBLaTUrIKtypAY=; b=tffOfClCr0v6MA
	3H42jS9vlJtVYkEwdrjEezpITJxSdfmYZJhILT8ir37RQj0lkNdEdJ4pGpNpF7PnZxfjnw7gvc4xE
	Rx0Wj5cO3B4Y8Tpf7gh8v6fiwzaXVfwczJfTyG+e/Wz6Fd2yESgNEvuByQPelBJNNfvIiX8JxU5NG
	efP9QBulI1h6JZsSh0VUDGVCzwU4hKhhQVqYZ8NMhWC7f10se4fNZOAM/Qzh9q38tVmSIn2kvRH+N
	C5rtcpUF0GWA9wWYAIYu3En2ScNNvQG+caqGc0skOtXNU4GLICNZYWxZp77wX8PjnzutyPeNwH5fv
	B5APNyI7Ss3k+TNZg0vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF6Wy-00026v-Dz; Tue, 01 Oct 2019 01:00:44 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF6Wo-00024e-27
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 01:00:35 +0000
Received: by mail-pg1-x544.google.com with SMTP id z12so8397300pgp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 18:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E6c31Z8bqLagiMFjesWQuytu80YEed1XWODDuNsW24s=;
 b=epI3ugdyCvOb4zVNWfia360x2V+v1fm0AgFUCheJyZoUPJVy8ggRSIGIk4NaAVbcs8
 glkEUdVmFN63+q25+HfwPVyF7/WpBLgRjU2E3olV+ADe28YhCAQg+TX6TAKvCx31/fjd
 mDk4bYpvHaWJVnZyiYSSnbKK3bGoR5ynIr//c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E6c31Z8bqLagiMFjesWQuytu80YEed1XWODDuNsW24s=;
 b=qFtuBgFZiAKP6aJcKfeyt+ksWTUnnHYQa8Vchf4AuuPdN6SO0qBMIA0TT829a5K6TR
 6XqnzExHpAH2bYOKh4bIXtw3sOecOUpIHC2JacA4s8na2m0dh9Zve8tjhnEH2fy8nJ1T
 KAQfb2qlyMTb5MUwe9kuF7WVMNojucu50twTc60+8wpWAncIRtJlgiThsKlV6yOi5X1x
 BykeLSVV4nmBhxHF1ZcMJxLvT4O0ZR5iHRSdKWWXuxXctoWp9VywVxmYZyb3ccgTUs9K
 NLTf/II2VItcr185yJ8UhuW+G08s1B+MAn5gyLX2jsfqJotLLgrB1dcGbbCNgm2HsEnn
 YhLw==
X-Gm-Message-State: APjAAAWi1C5fLM98DDDUPFi1foBn//UypcJB6oDmLrBscI5zH4KmIHMU
 I0KZQUc89eetb0jzGf2HC4Wx1w==
X-Google-Smtp-Source: APXvYqxIwQ/Z/NG15bD/vJSTi2QXMxa4a8imVSlOMCNDTKdY/6Mm2LE1FlsEyH4TWT/43exPRAlWBQ==
X-Received: by 2002:a63:1950:: with SMTP id 16mr28046453pgz.213.1569891631964; 
 Mon, 30 Sep 2019 18:00:31 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id 62sm13146047pfg.164.2019.09.30.18.00.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Sep 2019 18:00:31 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] drm/bridge: dw-hdmi: Restore audio when setting a mode
Date: Tue,  1 Oct 2019 09:00:20 +0800
Message-Id: <20191001010020.122134-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.23.0.444.g18eeb5a265-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_180034_128615_179C6971 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index aa7efd4da1c8..c60e951122c9 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -1982,6 +1982,15 @@ static void hdmi_disable_overflow_interrupts(struct dw_hdmi *hdmi)
 		    HDMI_IH_MUTE_FC_STAT2);
 }
 
+static void dw_hdmi_audio_restore(struct dw_hdmi *hdmi)
+{
+	mutex_lock(&hdmi->audio_mutex);
+
+	hdmi_enable_audio_clk(hdmi, hdmi->audio_enable);
+
+	mutex_unlock(&hdmi->audio_mutex);
+}
+
 static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
 {
 	int ret;
@@ -2045,7 +2054,7 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
 
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
