Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E6C2102E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 23:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aoEa2YSGDHdtINI4LL79YC/D+MgjBv+l4GBhgEnRQG4=; b=JVcO6oqXKre4yF
	DWSX1gQO/CFwEx4aBLfhulHT+xkTXpIbB+kXQnibiqvxErTT9a0HUDo7DMGmqj1B1p//dUBICsYl3
	+0rYPmlH2RnOZ1+GkAYXeIRMH/78Bal0agXch555BFsXuE0v9fV0CcCp92JUov+CEGMbF593/Zc5W
	aDvoLfqTMBRQy8HgELb3FcI6iOGdxRIutWuyxOp3QppzINt4i+gOg3PKcKbafuMsRRPC2YxemZhci
	azhbDavkSBXRngAwQXSj7G1FSfSq9RUNUDz1Ks0Z4nK8JopSct8F8bHNvMgXL2SsIYqMTiuJUnaR1
	LQIcn0TS2bZmpeWXiS3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRO7a-0001Kb-7J; Thu, 16 May 2019 21:41:02 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRO7P-0001IX-1s
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 21:40:55 +0000
Received: by mail-pf1-x442.google.com with SMTP id c6so2505957pfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 14:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hVv4kB5Ecy4Nzot5JSmd+w2kmDQzag6YdAwhTawAS+o=;
 b=C2mEaCV5q7RRlPDkTl+jNc69GKmHQGbUzwdCXb4uJuIQRqjiwjE8vEVrEuUybINuD1
 CaXvTTgS7AqB5rKqV9O2SfHGsVPYh/UdIAMeuPT128yOp4EI0fA8af3ZBM+HxlhYaScP
 IQMWJsOKUNzn9FS7aX/h9q0stQ3lFpm6IpUEk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hVv4kB5Ecy4Nzot5JSmd+w2kmDQzag6YdAwhTawAS+o=;
 b=ZtXND2dbhURMGkeNx3CTX/pB0H6Cle2VpVgt5WKgMk4ylA8qrh4UpNy39H74uA01KO
 Ltc5ivl0HqgHJI8gcaZuxAIWQulB8I7CAlQGIwqZBx9qBpJSyC1vu3vZETmoUL+CInDQ
 qN1vkR1OTMzyXJcceOk4Xm8XukcrgVOagzkQWVq8DlOtrCBHM3ynJRtc3qoxwSb5BKZd
 TdOCIPR/NegHR/AO3mAFaBiq2cXIYxpP5F5wfxWckWOlRgTySX2y3ft2yGod/rx+8bt7
 MF6XDhsM0gXV0ZxZxiW5sGWi3r+kD9TF+ZVPOj854fCfy+pSLrSLStzTLp50HxHkZO5X
 hFuw==
X-Gm-Message-State: APjAAAUq/semElKb4YiaOC8Mzfpg966sanuEjAzr3C1Z3kyNTom1qT6D
 3j8jGdpGeCAZXTLyS+PocIV/xw==
X-Google-Smtp-Source: APXvYqyP0E6DNadrM+r5JhT3uOu5deldF8xqqkH34aEOJ4KlNc8FJkCV2ERtDfIFBJk2wFdQq4Is2w==
X-Received: by 2002:a63:d343:: with SMTP id u3mr53012185pgi.285.1558042850353; 
 Thu, 16 May 2019 14:40:50 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id v4sm13127252pff.45.2019.05.16.14.40.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 14:40:49 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH v2 2/2] drm/rockchip: dw_hdmi: Handle suspend/resume
Date: Thu, 16 May 2019 14:40:22 -0700
Message-Id: <20190516214022.65220-2-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190516214022.65220-1-dianders@chromium.org>
References: <20190516214022.65220-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_144053_378950_FECEC9F5 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Rockchip rk3288-based Chromebooks when you do a suspend/resume
cycle:

1. You lose the ability to detect an HDMI device being plugged in.

2. If you're using the i2c bus built in to dw_hdmi then it stops
working.

Let's call the core dw-hdmi's suspend/resume functions to restore
things.

NOTE: in downstream Chrome OS (based on kernel 3.14) we used the
"late/early" versions of suspend/resume because we found that the VOP
was sometimes resuming before dw_hdmi and then calling into us before
we were fully resumed.  For now I have gone back to the normal
suspend/resume because I can't reproduce the problems.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v2:
- Add forgotten static (Laurent)
- No empty stub for suspend (Laurent)

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 4cdc9f86c2e5..beffe44c248a 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -542,11 +542,23 @@ static int dw_hdmi_rockchip_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static int __maybe_unused dw_hdmi_rockchip_resume(struct device *dev)
+{
+	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
+
+	return dw_hdmi_resume(hdmi->hdmi);
+}
+
+static const struct dev_pm_ops dw_hdmi_rockchip_pm = {
+	SET_SYSTEM_SLEEP_PM_OPS(NULL, dw_hdmi_rockchip_resume)
+};
+
 struct platform_driver dw_hdmi_rockchip_pltfm_driver = {
 	.probe  = dw_hdmi_rockchip_probe,
 	.remove = dw_hdmi_rockchip_remove,
 	.driver = {
 		.name = "dwhdmi-rockchip",
+		.pm = &dw_hdmi_rockchip_pm,
 		.of_match_table = dw_hdmi_rockchip_dt_ids,
 	},
 };
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
