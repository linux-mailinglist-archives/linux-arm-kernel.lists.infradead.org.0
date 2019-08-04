Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2D580C8D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:19:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Z5h/yJ5GUk/Ll4mwj/aW9MiIjDkj2ZjIV2lc3DaSoo=; b=tk4yiiCGOW3HBM
	6Gq2N0cxVKQG6x+6RmuWQD9BUdbxLcZgCJYgZs9pqSFVPuXnDhYF1pMgoAlmnQfJBe0114kWLwib/
	Gq1n5yK4SPMT8f7mxFpBtfxIc6qHOz9Aw4KWAWt9Fe4WUbnIXSfqZ3Fsu1eCmcsImV8CK0QRwRwFG
	+0zLtaKTqG61i7obdZB8tqLH7TptlrRSJiI/k9jCtsXM+OC5H2lLktuxvit0j9Vzkw3WVIK0AL15h
	7xQ8qcqnquJnCqi+qlogiGgmzLwkuIlB49Q8mojXA0snvf9LjFF6Do9Qi+koIY30cX2NWbrfOUEzY
	RIjte6GGEoDK1/ZgdRtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMyZ-0002wD-ND; Sun, 04 Aug 2019 20:19:31 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMwk-0000Wo-US
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:17:41 +0000
Received: by mail-lj1-x241.google.com with SMTP id z28so23210887ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 13:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6MTU39yk5XE3/teu/iygu6ssiL/liUAav6Pm3DHBCYk=;
 b=ZA+/n3H1+MtW9kTQsOeyUTYBdS4nVqs91zmpewRJFA3g7GvGQHLzWjAjOA2KjxXx06
 We5wixz1fYGGRfl4QVFNMFUlpsCTWlYYKqEvsenMNEn+umCLTk9CVcDwep5AWL3nMklw
 BE0U06HBU0suEpm4nBPoJDfJhOJ3w9QwKz6jigew0xkksRe9L00eDSnEM71EoDfCTUPg
 7nrulAhNbAbTHY+edA4Z3Svw2nUDmxkVdABuSiEuGp6HMhZXFqmRCr1nFitHbmU1UlYG
 Zy65eNXTqN6bZkutzJV1YvC+78T9mG4fIKkroPYupOV3oH41jdymZWNkxjqAGh2S3boz
 c+IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=6MTU39yk5XE3/teu/iygu6ssiL/liUAav6Pm3DHBCYk=;
 b=JXv9lxr/CkSiVOKCHiByGQrnpoe+ibng+8TxgkSrBZrebY5pMUZ0rze3869S0z43pF
 3lSwvwVsJ7y+erqZQ6B88R/nc7aHpLKud5cCrRM6NejWmjS8dVxEVbCc3UF9eSipwDfx
 BeTRwkcwb8LCeMWVVcoACHG1l4O91A1dbNWQ+aYKMwKmrGJ+qYhCY0AwSGTFr3klQAdM
 87K0kY+Sq1PzRPhVgStlNk6L262Hg2sIKt01ao2uPQPx/0dQaUfhFzLnsueCMb91ETg9
 T/TJovq0jE/8i26dgaaErwvYzwQWKvs01GpTP/MFoc5+AAvAhiTIk9eZxMwbbgpcpjh5
 wB0w==
X-Gm-Message-State: APjAAAW+l5vBwfFdGEha1HolV4/bg8vo3r54rPEMg6DUPAbBzDWAyJhF
 DWEc+CiIrLWJUotRS8Zm2HQ=
X-Google-Smtp-Source: APXvYqx8atks2YbWr9RifkxwlrpCrnQ0MuWxB3GhHudkPh8VHtkqm1B+XsEC8X6Ec2DIcd1SBSKPlQ==
X-Received: by 2002:a2e:9a58:: with SMTP id k24mr76690634ljj.165.1564949857549; 
 Sun, 04 Aug 2019 13:17:37 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 p87sm16540794ljp.50.2019.08.04.13.17.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 13:17:37 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v1 13/16] drm/panel: drop return code from drm_panel_detach()
Date: Sun,  4 Aug 2019 22:16:34 +0200
Message-Id: <20190804201637.1240-14-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190804201637.1240-1-sam@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131739_020892_4E6FBB25 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

There are no errors that can be reported by this function,
so drop the return code.
Fix the only bridge driver that checked the return result.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Sean Paul <sean@poorly.run>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Cc: Andrzej Hajda <a.hajda@samsung.com>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 3 +--
 drivers/gpu/drm/drm_panel.c                        | 6 +-----
 include/drm/drm_panel.h                            | 2 +-
 3 files changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index f2f7f69d6cc3..22885dceaa17 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1780,8 +1780,7 @@ void analogix_dp_unbind(struct analogix_dp_device *dp)
 	if (dp->plat_data->panel) {
 		if (drm_panel_unprepare(dp->plat_data->panel))
 			DRM_ERROR("failed to turnoff the panel\n");
-		if (drm_panel_detach(dp->plat_data->panel))
-			DRM_ERROR("failed to detach the panel\n");
+		drm_panel_detach(dp->plat_data->panel);
 	}
 
 	drm_dp_aux_unregister(&dp->aux);
diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
index 9946b8d9bacc..da19d5b4a2f4 100644
--- a/drivers/gpu/drm/drm_panel.c
+++ b/drivers/gpu/drm/drm_panel.c
@@ -219,15 +219,11 @@ EXPORT_SYMBOL(drm_panel_attach);
  *
  * This function should not be called by the panel device itself. It
  * is only for the drm device that called drm_panel_attach().
- *
- * Return: 0 on success or a negative error code on failure.
  */
-int drm_panel_detach(struct drm_panel *panel)
+void drm_panel_detach(struct drm_panel *panel)
 {
 	panel->connector = NULL;
 	panel->drm = NULL;
-
-	return 0;
 }
 EXPORT_SYMBOL(drm_panel_detach);
 
diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
index 5e62deea49ba..624bd15ecfab 100644
--- a/include/drm/drm_panel.h
+++ b/include/drm/drm_panel.h
@@ -153,7 +153,7 @@ int drm_panel_add(struct drm_panel *panel);
 void drm_panel_remove(struct drm_panel *panel);
 
 int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector);
-int drm_panel_detach(struct drm_panel *panel);
+void drm_panel_detach(struct drm_panel *panel);
 
 int drm_panel_prepare(struct drm_panel *panel);
 int drm_panel_unprepare(struct drm_panel *panel);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
