Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 617D880C5D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:17:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=acatAszYMe6/NPZJc+XtB04FbuSWAMosfmwdwkXuwbE=; b=kOtP6U0tnNMeDK
	kw/9X2BAg99f9Ej5qHNkm9xs/ejygxZ6C1Y0S6AQB6bCgsw8/vScH5pTSlv2JiY/nO4zH7j+WnFRt
	4Ox1unsLQ6Fp+nAjBc3KP33O2yhTDjscGJIGvJccYR4QwDwhHrrLrqhbNVjvOQusTP4ezEUZpaBaP
	sLFh4H4kQQrwelURlOnQNM6ImPVO+MQPjPKirI99gToJJrBVgRBE5y6ahuCQGsOb1nNQPPeVSzD1f
	S4TfnGwm5Uiw4rd4i2Ay2esrCxlZc87uwDQpKtthsklI0Hzhej6PQbzUYb9QYSxGB9/JvTJ5Yi4wd
	WTtyDSxD8oELOTAatxsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMwP-0008J6-WC; Sun, 04 Aug 2019 20:17:18 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMwB-0008Bk-8k
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:17:04 +0000
Received: by mail-lf1-x142.google.com with SMTP id b17so56365352lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 13:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XKQ+KJdp8Wv4Lgd7meexm5skjc2BjgchimNFn7JqqdA=;
 b=EMDl7m7xtcbiDX6T4zT9T9Oup48SB92u6hjZvbuUDysrvQ2LKT045bww+uGPRJ/wGS
 Xx9dvfCti+h8c3UbT9/vPUIBcFzKt/YnuegL1QMuENQBV1IDlbyEjCcBPVarMC4LPjqX
 2wJ/ko+exxrT8tGNbUyBXLEa3NdBap2PBiUUsZszcYc1q4mfZqrxZ1V3oXBda0LvlPu1
 nAk6RBnwnq/4JPkevOBldmHhgFYKce/qePV0wDsZ4RcHAs8Kx/0/yWesR12likoYCkG7
 qN1LiIhpYBG1MXL6JIwlhuDKzdtU9xdeprPv16WXN39mw2pQ6uz/KDJoZ0lPydP2x26B
 eZMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=XKQ+KJdp8Wv4Lgd7meexm5skjc2BjgchimNFn7JqqdA=;
 b=kAyiekTAvz+WwwPD4p9dec7Flx5J0rTb3/2g2nEBxrx8BcjAEQtxyOc4VRAq/I8ZHI
 kHj2tBypLwpOxFO3WXnC1hVPlK1D4b6tkKk+VlrCT2ncsnzV/nxyxbNUY+FzLCoHYLnR
 7HRksJy6LMEWDsXXjF+Hf0rxmAdUZezr5LLx3Po+7uerszPqjp4xIqe+I5P09UAnpsrq
 x2jBDYVuMTPIPQUccv5/gEMovqTzN2Nlgn6gGyedsIaQDwX/35MBLCBMbNfIJ0wRBVN1
 jez4a14Uec7XimbxjqKZzi1EoRo9h5iePOPeLSBMtcrF1uhVLQkzpW9j44YFT5pQq0HB
 1h4A==
X-Gm-Message-State: APjAAAX7JDZby3HvqnOLmtTI07N5spmXljWYLLhbzNIn47oQmgfP4Sw5
 t++xJIg0qI7udmmDK5lvYFQ=
X-Google-Smtp-Source: APXvYqyao7EZANem5EL9cjm0IVmoUZr8fWYB9FLYhw/F/m5O3hktZo8Fs57Jvrx6gfI76gcjrnUKZw==
X-Received: by 2002:a19:c711:: with SMTP id x17mr69469503lff.147.1564949821600; 
 Sun, 04 Aug 2019 13:17:01 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 p87sm16540794ljp.50.2019.08.04.13.16.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 13:17:01 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v1 01/16] drm/bridge: tc358767: fix opencoded use of
 drm_panel_*
Date: Sun,  4 Aug 2019 22:16:22 +0200
Message-Id: <20190804201637.1240-2-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190804201637.1240-1-sam@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131703_314960_3F0E6799 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>, Sam Ravnborg <sam@ravnborg.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Kukjin Kim <kgene@kernel.org>,
 Allison Randal <allison@lohutok.net>, Philipp Zabel <p.zabel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, Sascha Hauer <s.hauer@pengutronix.de>,
 Alison Wang <alison.wang@nxp.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>, linux-samsung-soc@vger.kernel.org,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, Shawn Guo <shawnguo@kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Vincent Abriou <vincent.abriou@st.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace open coded version with call to drm_panel_get_modes().

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Andrzej Hajda <a.hajda@samsung.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Jonas Karlman <jonas@kwiboo.se>
Cc: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/gpu/drm/bridge/tc358767.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/bridge/tc358767.c b/drivers/gpu/drm/bridge/tc358767.c
index 42f03a985ac0..cebc8e620820 100644
--- a/drivers/gpu/drm/bridge/tc358767.c
+++ b/drivers/gpu/drm/bridge/tc358767.c
@@ -1312,7 +1312,7 @@ static int tc_connector_get_modes(struct drm_connector *connector)
 {
 	struct tc_data *tc = connector_to_tc(connector);
 	struct edid *edid;
-	unsigned int count;
+	int count;
 	int ret;
 
 	ret = tc_get_display_props(tc);
@@ -1321,11 +1321,9 @@ static int tc_connector_get_modes(struct drm_connector *connector)
 		return 0;
 	}
 
-	if (tc->panel && tc->panel->funcs && tc->panel->funcs->get_modes) {
-		count = tc->panel->funcs->get_modes(tc->panel);
-		if (count > 0)
-			return count;
-	}
+	count = drm_panel_get_modes(tc->panel);
+	if (count > 0)
+		return count;
 
 	edid = drm_get_edid(connector, &tc->aux.ddc);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
