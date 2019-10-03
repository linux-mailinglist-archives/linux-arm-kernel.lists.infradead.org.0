Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5619C9736
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 06:14:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TzR2Ans7xBsRIAQXQmT2ZcimSIMpOytlZkWgrNc4vB8=; b=tPAxfSPeMmt7qN
	YQx2mAIJTcvjeMY/uX9r6+a4zY2axEZrxGwi1rYBmFQExWcLbkVw7mAqbcj9oGnPG2wFWkLD/kLzd
	u6VfmJ2B1+Lu54Pvu38furbmut6sGVBU/dZbD2h9a1VXfTblHzTPKEuLkFz1rb7Hz8yE/1cUh9IRg
	7X31AystTumDnY+34mPRmBaa8lk0v+HjCjutxVCtHW950zuzrhDaJ6+JVAwJGWL1LUOEkWnPTjRmi
	SpUO41G5NcBHeZnkf8hrUABvZip8Pxsx5Ad8m66pCmjs9sLEHWFjcw/BhMTD9iKPeMafM25YtfUPq
	3oBdEOSqgMOyja1Rt18A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFsVw-0002jA-EN; Thu, 03 Oct 2019 04:14:52 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFsVp-0002iG-NS
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 04:14:47 +0000
Received: by mail-pg1-x544.google.com with SMTP id a3so876475pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 21:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FMBWBObY5TAg6ccjViv94lsR9vhyqh//qqXjnxybPn4=;
 b=XqXsTJWVRpZea6TA7FBFgnhTI63A2/g03nfSRRb33FkaY5eHoSUvNUKEOdIMbnpkbB
 Pecea+Q0A331rSFnGj2eJ25IBgyIygcpzhSbOdlVrje4TCo89GmFdQxR3an9e70yYyn9
 A+wMolfWeeZXTHrgo82zxfTc7I+G9zjh+5wFk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FMBWBObY5TAg6ccjViv94lsR9vhyqh//qqXjnxybPn4=;
 b=nLbLsXSosXyt4cNtHU9QOiQljZ7LfEUDTUHd+3/3av9OGEH0La22AyBowgxAWN6jlP
 VLvYIZwdN9mbF71oWRdUewiKzVvqbOqz0TzduU+KLO9myAiI2WjEGBt4ko8v4dTjy1mz
 X0YxAhJG5w1/j+vYwjAfkXkJEcKVwtComsF3pcJTHmBhjLkUOHkK9ebBYgylRlt1ae2L
 uLaL6Y9V/ESF4oSwwRZIPTz+5241gMY6GiRCqwempcZN9W8qsu6SyTc1mhPe638ap4F8
 W20jPssCRj2HHV+Z7rDHLVM1M83PTnB+Y9YNbHgPVXYCP/yyJrkljzm26Hr2RG9r0XfX
 6XtQ==
X-Gm-Message-State: APjAAAWazm/CfTmTE/ax4TGqFYBIlNd/qfusufKdZinvV6v9p/1x4cjK
 Fpq2ox3/lrTO1OHaIA8OkjVA4w==
X-Google-Smtp-Source: APXvYqz6+m0BHndgOBBpcbuerLKGK0gYMwBss4tu7T/iC6fV04yrpAecbt/bgBysta04HsJtKsYn4A==
X-Received: by 2002:a63:1c09:: with SMTP id c9mr7498204pgc.347.1570076084849; 
 Wed, 02 Oct 2019 21:14:44 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id q42sm718700pja.16.2019.10.02.21.14.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Oct 2019 21:14:44 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 RESEND] drm/bridge: dw-hdmi: Restore audio when setting a
 mode
Date: Thu,  3 Oct 2019 12:14:38 +0800
Message-Id: <20191003041438.194224-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.23.0.444.g18eeb5a265-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_211445_789446_0A2E6958 
X-CRM114-Status: GOOD (  13.11  )
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
  - Fix the patch title.

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
