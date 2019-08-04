Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 227EE80C85
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPz9gRewKFODLrKuTdAiZkM+tOP90bcyzGFwUm2W/AM=; b=ocP0JGfkieWvJv
	5EEwZZ7XcV3l/nEJED3xz2y8PFxDkQC0vp3Elqxsx2fKQkvN8baEQXuU8FHLwRw2bqtl8K5mk/GP0
	jBjNhx1GgqOksz/6f/rz0a7EhlRJ6cUgql5RNHFGv2eZZ2c7Iypy7OiY20S6Wg99juE7uY1SuWVh3
	0zVe/duYkrTjz1wrWnsJGb33syM51c5x8qUYbpXHkUyik+mgKTiFiIe9NtiWfTKcFZD1INbzi7wQG
	86LYY+cxV5Oa6SSkj+pkKI49PC/saxm2YGoPZGetqxS8cayVsIV082guxNgufy/XdMwxwc/FsBJqD
	0ZV50dJg10BmBxuJkXKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMxK-00017r-SB; Sun, 04 Aug 2019 20:18:14 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMwS-00006e-1I
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:17:21 +0000
Received: by mail-lj1-x244.google.com with SMTP id t28so77424919lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 13:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yel48h0qo2wbp0mM+rNqpesYnmUiIUwuFRYEGRdGqyc=;
 b=RhcmWOYNugg3RhzTq+cei+ZzJ5PbMDYuydezLvh4SzkEdVGuUstINi6mF3JdxqSgHE
 vt/tTDGSa1SEDKK2uctzf8Q7x2lA/At+dJJvONXAfw1PG5quso6A1CYppTRQmjq2Mztz
 8+QesDo5Y3z8q6FOM3FS99qDTyn9eq0bJZAAqangO3/ERv+ON6doIPb4/KiuSEd+wtXi
 tJ+Td+ky5MuQfpIn1AOxC7vWgtQI6QRzHg+odjRtEyUsSQvmNFrXrQU7NFPkrkmguzMt
 nJHPyyRqYLsguHOCJz+yVza9xugy775zludTZthdBmnpUbY+21C3bNWQ8WuAZTw3PPVj
 S+AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=yel48h0qo2wbp0mM+rNqpesYnmUiIUwuFRYEGRdGqyc=;
 b=UuJ6WUUCNXHW/uiST84XsPN74FkfWjJjwWRO8LoM/ZP5MFr7H1yE1P/u1aA3hmAFwq
 Isqa3RcKHCn1p4fUAjcTz+e6h+RBVeoKRHUYJCqhbPPqUx/hDHrW2yo8Vy2XaISMfSFB
 bXuILoQ65KWs9ac7TWdv8fMuEnRI0bhu3aF2dsLWu05//62ZuuFDAnGFVoYYn4uiCdw3
 1zUL42brGtIAYfT4rsB4PBzJ04cMSk+MPzzHWK04TWMxpEsU5voeAH/3F1tJ22BAZjSt
 RoL+YIVdTnJtH/W57Xm9XGDb3/rVTVTlM9+WUj9bZfrjxseSQgC2mGtsM/sqfjY7d4mt
 dT/g==
X-Gm-Message-State: APjAAAWAGHLT3u5RsoMfe0xSm1wIZk8h/FKWdpE5vWvz6Fqg+MCos0ny
 OXAv9Iw69NylXsZL6+Fxz1E=
X-Google-Smtp-Source: APXvYqxdGxd0F02kFmQDzjnepawHElytfS6OgwAwlzDKWRLVxKsqajzgR4P7dB62VuLk5D8PL5TcOg==
X-Received: by 2002:a2e:88d3:: with SMTP id a19mr29864312ljk.32.1564949838298; 
 Sun, 04 Aug 2019 13:17:18 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 p87sm16540794ljp.50.2019.08.04.13.17.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 13:17:17 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v1 06/16] drm/msm: fix opencoded use of drm_panel_*
Date: Sun,  4 Aug 2019 22:16:27 +0200
Message-Id: <20190804201637.1240-7-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190804201637.1240-1-sam@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131720_088621_C9F0379E 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

Use the function drm_panel_get_modes().

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Alexios Zavras <alexios.zavras@intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Allison Randal <allison@lohutok.net>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Enrico Weigelt <info@metux.net>
---
 drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c
index ecef4f5b9f26..0e21252fd1d6 100644
--- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c
+++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c
@@ -55,7 +55,7 @@ static int mdp4_lvds_connector_get_modes(struct drm_connector *connector)
 	if (panel) {
 		drm_panel_attach(panel, connector);
 
-		ret = panel->funcs->get_modes(panel);
+		ret = drm_panel_get_modes(panel);
 
 		drm_panel_detach(panel);
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
