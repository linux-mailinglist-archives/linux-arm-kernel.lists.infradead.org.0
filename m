Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA7480C87
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ErEGvlX3AB8WH3RPZalRD+WKO5LZiTjazrh9uRZirRM=; b=U3bg9tRynivPVM
	dJ7MF0uXOU64q7vaBwH5FImBpGizLPeyevSa5NIQ5bnq88drhFwHmeGzGyekwqnkj2LTFQ90c/yu9
	I4AcE9qfhmrH3fyvAtHs1wdJuZE0WijqA/uQxQUam1ViyFu3XqqWcyIXZ+10v/blbCueb32RL5UXQ
	fKqgAIXwe1zuEgEC2TdZNIjoskbbgAXKsGZp5ty1vk7q0g+jkHvtIVHOw3Khxo8xoZqvTiQnIfDw2
	gfAvLS/OcLKcSh90RYB8js/w1WOMjPPuiA75Gqcyhe7TGIjHUu197JrH9Ft0cd3N5q2WoX9YDvBQV
	FkYz7yDigkxzsh56HPxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMxj-0001kq-6Q; Sun, 04 Aug 2019 20:18:39 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMwY-0000Ea-2l
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:17:27 +0000
Received: by mail-lf1-x143.google.com with SMTP id s19so56360853lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 13:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s4/lZRelptHc104CnII3uRWlwirvAGTIUK7NUlarcVo=;
 b=hWmKbfmQQIVJxZRPfrherAkt3SNEI7zhPoih2CPXgPp9jEQCRH+yG/dl/c4qYD3qd5
 BQI3l70sYIQvQDJ9NIAS65Ozt5RyiuzKOYLtizitbR4GCGx+pB+ZedWJqT2vpMYOCLTp
 B5ECOtlrzZvDWx8KKENhQ9ldmy5PzoDHXyDkM7hz673pvh90w4XxURDWocdf0c8Y137Z
 SALN0A2sGAt6p2c2hcNPXagGlykyVJPMLdz2sy5ITY0lYhMstc5IOEAz5RiiBgYmiBvA
 10rXPPBW/fAA2pN/XyW63cSzbrBUTCCPu9UWF0Xyu2c4EqeaYded+97H70L3wbNH98Wb
 2yyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=s4/lZRelptHc104CnII3uRWlwirvAGTIUK7NUlarcVo=;
 b=NqTMtzhUvUFWwpef75RvuHnqaruiyRuLNJdHcKxtcLXGILse2G/Sqrd9bhFLHer5VJ
 TSxRNGD5Li5nNfJqdHVPIMvOTIq1agjVdFlQ3eClqX1bgWQQ5ca9mgfRzI5K7L+nwLng
 TICQ9Lt5ohdJRede9+wakmGgm1quohwYu0vx/ZFUCu6V5yxytgLS+5wdMOLiDW2+A32n
 LdtTXvcw+8l8E3e9wdRPB6nnmrLgqgq0kyUQhE79VkxkmCu5A6xke0jvt9zvGQl7B7io
 FN/797y4PTaoh01bMcf9CzcRqW//++tbV1Sk/YEvYFV0lrdas86wRgV7czc3sskoEOkx
 dTlQ==
X-Gm-Message-State: APjAAAXo+uOmKrL0ktAj7hmCYrVGcgyFCFV/jDiWK3LKa4Z9soWjfiWo
 b3+4YHufVjXrz9vqy4ZIfK8=
X-Google-Smtp-Source: APXvYqxkQf3a/qXtHlYJbVGarQ0L/TPLy9TUhSmBsSYBja6fNZHhdSSpkgaaQyEfjze7v8D/ne+SQQ==
X-Received: by 2002:a19:6d02:: with SMTP id i2mr4308705lfc.191.1564949844127; 
 Sun, 04 Aug 2019 13:17:24 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 p87sm16540794ljp.50.2019.08.04.13.17.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 13:17:23 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v1 08/16] drm/sti: fix opencoded use of drm_panel_*
Date: Sun,  4 Aug 2019 22:16:29 +0200
Message-Id: <20190804201637.1240-9-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190804201637.1240-1-sam@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131726_164555_60C2E654 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

Use the drm_panel_(enable|disable|get_modes) functions.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Cc: Vincent Abriou <vincent.abriou@st.com>
---
 drivers/gpu/drm/sti/sti_dvo.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/sti/sti_dvo.c b/drivers/gpu/drm/sti/sti_dvo.c
index 9e6d5d8b7030..e55870190bf5 100644
--- a/drivers/gpu/drm/sti/sti_dvo.c
+++ b/drivers/gpu/drm/sti/sti_dvo.c
@@ -221,8 +221,7 @@ static void sti_dvo_disable(struct drm_bridge *bridge)
 
 	writel(0x00000000, dvo->regs + DVO_DOF_CFG);
 
-	if (dvo->panel)
-		dvo->panel->funcs->disable(dvo->panel);
+	drm_panel_disable(dvo->panel);
 
 	/* Disable/unprepare dvo clock */
 	clk_disable_unprepare(dvo->clk_pix);
@@ -262,8 +261,7 @@ static void sti_dvo_pre_enable(struct drm_bridge *bridge)
 	if (clk_prepare_enable(dvo->clk))
 		DRM_ERROR("Failed to prepare/enable dvo clk\n");
 
-	if (dvo->panel)
-		dvo->panel->funcs->enable(dvo->panel);
+	drm_panel_enable(dvo->panel);
 
 	/* Set LUT */
 	writel(config->lowbyte,  dvo->regs + DVO_LUT_PROG_LOW);
@@ -340,7 +338,7 @@ static int sti_dvo_connector_get_modes(struct drm_connector *connector)
 	struct sti_dvo *dvo = dvo_connector->dvo;
 
 	if (dvo->panel)
-		return dvo->panel->funcs->get_modes(dvo->panel);
+		return drm_panel_get_modes(dvo->panel);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
