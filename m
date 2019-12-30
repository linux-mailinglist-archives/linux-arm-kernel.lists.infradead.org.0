Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9744212D31B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 19:09:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FZ6wU3BsPtOrkdI8D2Nyi+fgYOaGy0ly7nlJEvP+0xU=; b=Zy/
	g9UqQyZxUqlnYfB1PQIMi6YtAtXbpKMcZlxr22rhZVrShqdDzPUlLpeL2pf9++NojCYwDXdDQI1zP
	O5d8QhjZVCcuXKIn0iAjut8CngA1Ll01PPLWnvBV2pVt3u1GnwVvwuJxRTLnDWrYNW1CoyxT/4edj
	2sRNX1tjr2kweLQx4U8YyYmUy64uPCbUjgy0cuHWwrdp0Mhfby3FGjxg7EaHPhC6lAQCdbCrlQmBj
	j1T+sgoVeVOId+wSRooSiLOoY2yt5q5fWUL9eG23/kJpezSA3JriCBmr4BpXjLMbwsDVzwBRhEMJ8
	2HxoBxZxV5yxxkhX7WHb02tfJ5BQabA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilzTY-0001vn-CK; Mon, 30 Dec 2019 18:09:08 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilzTL-0001un-8H
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 18:08:56 +0000
Received: by mail-lj1-x242.google.com with SMTP id y4so19753221ljj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 10:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globallogic.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=E4Vkq84W+k/iQgl5ZIdKywzczQJOG4gyJYT5o4ig5QE=;
 b=glm3amCpKfaFdtg0Vjtjos+t+rEodY5b14v3ASUNKqlmROOWjizDmW+GNah4gWmKL4
 kGW9tRrF/fixq/FiStRbySI3eIgC1t6cbyogm9cz/c3TZJsRsF4pjzgQoM4cZ9fgT24P
 eWHpruxGbM/cUlqSPA68HWz94QDy5qCns4pvSMywwFazcNabvTRJTpiawbzYoOy1g8wx
 25CXzzplFf2d/TgwLoYp+KTeD1pzPEFzywxHZRz8LszEmzNhtEiiJiDDKa0vL4S55sHr
 wzQ0Rajabq4+9bgcCR4uAw0FXCpE58vQbQVPZnZgwF9HldXKQNGqQJa5+lowNlX9qNlm
 o/Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=E4Vkq84W+k/iQgl5ZIdKywzczQJOG4gyJYT5o4ig5QE=;
 b=KFsx/uskE5Co80uUwUHAoumVCkd55Y34NzW39utBnjprusKVljQrRBem5LX3hKxBjM
 Ilfj6GrzRAq1tbsJ8iZZxKTDwgx3sPV+e7uqxDlOE/i+x4Pt0n5pV4uKUaMPJezA2Ki2
 6JB1prW1nwPth4efg5dXCUAX7ZzB9qkicbkX7E5o9JrZgAG4WVZG+I3aISPu7FJlxpsr
 WBhJQKv1MA3jVSKkBJKdBbtBJora+dsSLxZBJb2L1joEGI1cmo4LEOh4k+Z9TnlLNeKo
 6A4naPO8ZhkBT7Y+cRiZDUtWgzsFzl7+1pw0sJ9iTPcWVu4jP8E0x5Ac7F9xvIBI2+er
 nbYA==
X-Gm-Message-State: APjAAAUdRBWLssYFbw7/mWg+fmXTiXhVeUC0qgg4/HFmHRxRx+A88ctz
 /72pSbbO8uff32qGPjI8qp4gbw==
X-Google-Smtp-Source: APXvYqxf2SXvw5eL5pvZ5dxM3bsOpzB8pE9LizeZsTmQNv9szGCWS938X92XSc8bEFwyUt0tKDOXoA==
X-Received: by 2002:a2e:9f47:: with SMTP id v7mr18234971ljk.124.1577729333023; 
 Mon, 30 Dec 2019 10:08:53 -0800 (PST)
Received: from virtualhost-PowerEdge-R810.synapse.com ([195.238.92.107])
 by smtp.gmail.com with ESMTPSA id q26sm18861980lfc.52.2019.12.30.10.08.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 10:08:52 -0800 (PST)
From: roman.stratiienko@globallogic.com
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jernej.skrabec@siol.net
Subject: [PATCH v2 1/2] drm/sun4i: Add alpha property for sun8i UI layer
Date: Mon, 30 Dec 2019 20:08:41 +0200
Message-Id: <20191230180842.13393-1-roman.stratiienko@globallogic.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_100855_295923_1B1DC631 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: Roman Stratiienko <roman.stratiienko@globallogic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Roman Stratiienko <roman.stratiienko@globallogic.com>

DE2.0 and DE3.0 UI layers supports plane-global alpha channel.
Add alpha property to the DRM plane and connect it to the
corresponding registers in mixer.

Signed-off-by: Roman Stratiienko <roman.stratiienko@globallogic.com>
---
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 29 ++++++++++++++++++++++++++
 drivers/gpu/drm/sun4i/sun8i_ui_layer.h |  5 +++++
 2 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
index c87fd842918e..4343ea9f8cf8 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
@@ -72,6 +72,27 @@ static void sun8i_ui_layer_enable(struct sun8i_mixer *mixer, int channel,
 	}
 }
 
+static void sun8i_ui_layer_update_alpha(struct sun8i_mixer *mixer, int channel,
+					int overlay, struct drm_plane *plane)
+{
+	u32 mask, val, ch_base;
+
+	ch_base = sun8i_channel_base(mixer, channel);
+
+	mask = SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA_MODE_MASK |
+		SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA_MASK;
+
+	val = SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA(plane->state->alpha >> 8);
+
+	val |= (plane->state->alpha == DRM_BLEND_ALPHA_OPAQUE) ?
+		SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA_MODE_PIXEL :
+		SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA_MODE_COMBINED;
+
+	regmap_update_bits(mixer->engine.regs,
+			   SUN8I_MIXER_CHAN_UI_LAYER_ATTR(ch_base, overlay),
+			   mask, val);
+}
+
 static int sun8i_ui_layer_update_coord(struct sun8i_mixer *mixer, int channel,
 				       int overlay, struct drm_plane *plane,
 				       unsigned int zpos)
@@ -288,6 +309,8 @@ static void sun8i_ui_layer_atomic_update(struct drm_plane *plane,
 
 	sun8i_ui_layer_update_coord(mixer, layer->channel,
 				    layer->overlay, plane, zpos);
+	sun8i_ui_layer_update_alpha(mixer, layer->channel,
+				    layer->overlay, plane);
 	sun8i_ui_layer_update_formats(mixer, layer->channel,
 				      layer->overlay, plane);
 	sun8i_ui_layer_update_buffer(mixer, layer->channel,
@@ -365,6 +388,12 @@ struct sun8i_ui_layer *sun8i_ui_layer_init_one(struct drm_device *drm,
 
 	plane_cnt = mixer->cfg->ui_num + mixer->cfg->vi_num;
 
+	ret = drm_plane_create_alpha_property(&layer->plane);
+	if (ret) {
+		dev_err(drm->dev, "Couldn't add alpha property\n");
+		return ERR_PTR(ret);
+	}
+
 	ret = drm_plane_create_zpos_property(&layer->plane, channel,
 					     0, plane_cnt - 1);
 	if (ret) {
diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.h b/drivers/gpu/drm/sun4i/sun8i_ui_layer.h
index f4ab1cf6cded..e3e32ee1178d 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.h
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.h
@@ -40,6 +40,11 @@
 #define SUN8I_MIXER_CHAN_UI_LAYER_ATTR_FBFMT_MASK	GENMASK(12, 8)
 #define SUN8I_MIXER_CHAN_UI_LAYER_ATTR_FBFMT_OFFSET	8
 #define SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA_MASK	GENMASK(31, 24)
+#define SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA(x)		((x) << 24)
+
+#define SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA_MODE_PIXEL		((0) << 1)
+#define SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA_MODE_LAYER		((1) << 1)
+#define SUN8I_MIXER_CHAN_UI_LAYER_ATTR_ALPHA_MODE_COMBINED	((2) << 1)
 
 struct sun8i_mixer;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
