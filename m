Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 674E1A4DEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 05:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h0RPofpLhsUIKLHp1GOP+2Y0IIA6RLFwb0ld8karpqM=; b=ku3+MqEpMxVgjz
	RkR/8p2A+smQcrPMzv6X6IH7cG0LCk7ExwAfaz9S8Lqihz8YYRkLNaAxW2wiPJzW7mlV6H6m5c4si
	xe86/Ai4Li0uQbem96r6qmwuO9gVSiYpH7O23l6g/AVCdnWHl+0i/RKYQuOq//xyAhBVZte1ItnBa
	KFBVhrLzz9PwTI0Pk2w5hz1S+nz7dCwf6YEtHW+YFjZ23oI97pRwrTBrxGXaPInTh/SHVbijk5Xqi
	y3nWBoUNEeelEAkOh1y6I5Ux3prj8kYT/S799dftzk5+LZGz0CetbQTnlN1FJBoJaeLNBi5gFVuL0
	DgCD9aIk85mh7Wr+izdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4dR1-0007ZR-BH; Mon, 02 Sep 2019 03:55:19 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4dQY-0007PA-7l
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 03:54:51 +0000
Received: by mail-pf1-x442.google.com with SMTP id w16so8210603pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Sep 2019 20:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OH1ekUs0bAkwdIcXuhIeBy1Fe7rzwyed9i4anOS+QSk=;
 b=D9yjCxOsKpxC2MY18oXKvPMh45HPOOO/2e6rqJimjQ57JSKfThLSfjFt2TWGoleJYA
 E0AElnWelyQ7JaAGl2mZzXl5pOrn4anpOQ00XxONWEggwisR/j5HvuSMs+qD8B5HkkrJ
 pDcjEHJYYMW/VQhxlYQREAnlnIwtdaxV6E5qw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OH1ekUs0bAkwdIcXuhIeBy1Fe7rzwyed9i4anOS+QSk=;
 b=YHfPHP9vIdXFdWJvDCZRb/jROgm86iMVVHtjOldixKF6ojkxIenmZ1Y5iLz3Qsl9AH
 IOImX0JwQ3aPCtGWbZJ4Fw8wezJ5XS3SZQQpyamy85jNjDY+EL/6lqPwq0cPX1bjNIGT
 RAl9XR7m9R55/mSGBu9IHV8R5z4e9DdQarX0hgt8QZmKRNeuJz/JCTMDNvRiBzkBWii9
 cYUMK02IInRGyVrrlazJWkQbdMNiluXmTErE92gs1jIm+5uwQmrRax2Q13WBQFkUbik9
 PUShCLvcY3XHmlI84wmbiOPrWqr4rueURhfBE7S8MQ7DhS15c1rucsnpg4FkqXV5w1zC
 4mIw==
X-Gm-Message-State: APjAAAUgIPWQnjbv6FuJT/e4/18/yXOvh/jXsnUTFTcMzAAqePgblFV7
 FIhf/KV9BKxqXHuh9ElrAcnJOPhMSkc=
X-Google-Smtp-Source: APXvYqyLLTVcLzaki/zpgHyUnP83/ENMttMFuYtnXoMrj+6ZqRMI+e1TuQ0iyviYJx0zTEuLTNFtzg==
X-Received: by 2002:a63:f401:: with SMTP id g1mr24388291pgi.314.1567396489069; 
 Sun, 01 Sep 2019 20:54:49 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id y16sm14382217pfn.173.2019.09.01.20.54.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Sep 2019 20:54:48 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] drm: dw-hdmi-i2s: enable audio clock in audio_startup
Date: Mon,  2 Sep 2019 11:54:35 +0800
Message-Id: <20190902035435.44463-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_205450_314577_D96C03B1 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 jeffy.chen@rock-chips.com, dianders@chromium.org,
 dri-devel@lists.freedesktop.org, cain.cai@rock-chips.com,
 linux-rockchip@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>,
 eddie.cai@rock-chips.com, Laurent.pinchart@ideasonboard.com, daniel@ffwll.ch,
 enric.balletbo@collabora.com, dgreid@chromium.org, sam@ravnborg.org,
 linux-arm-kernel@lists.infradead.org, cychiang@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the designware databook, the sequence of enabling audio clock and
setting format is not clearly specified.
Currently, audio clock is enabled in the end of hw_param ops after
setting format.

On some monitors, there is a possibility that audio does not come out.
Fix this by enabling audio clock in audio_startup ops
before hw_param ops setting format.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Jonas Karlman <jonas@kwiboo.se>
Tested-by: Douglas Anderson <dianders@chromium.org>
---
 Changes from v1:
 1. Move audio_startup to the front of audio_shutdown.
 2. Fix the indentation of audio_startup equal sign using tab.
 3. Rebase the patch on linux-next/master.
 4. Add Reviewed-by and Tested-by fields from dianders@chromium.org.
 5. Add Reviewed-by field from jonas@kwiboo.se.

 drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
index 1d15cf9b6821..34d8e837555f 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
@@ -109,6 +109,14 @@ static int dw_hdmi_i2s_hw_params(struct device *dev, void *data,
 	hdmi_write(audio, conf0, HDMI_AUD_CONF0);
 	hdmi_write(audio, conf1, HDMI_AUD_CONF1);
 
+	return 0;
+}
+
+static int dw_hdmi_i2s_audio_startup(struct device *dev, void *data)
+{
+	struct dw_hdmi_i2s_audio_data *audio = data;
+	struct dw_hdmi *hdmi = audio->hdmi;
+
 	dw_hdmi_audio_enable(hdmi);
 
 	return 0;
@@ -153,6 +161,7 @@ static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
 
 static struct hdmi_codec_ops dw_hdmi_i2s_ops = {
 	.hw_params	= dw_hdmi_i2s_hw_params,
+	.audio_startup  = dw_hdmi_i2s_audio_startup,
 	.audio_shutdown	= dw_hdmi_i2s_audio_shutdown,
 	.get_eld	= dw_hdmi_i2s_get_eld,
 	.get_dai_id	= dw_hdmi_i2s_get_dai_id,
-- 
2.23.0.187.g17f5b7556c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
