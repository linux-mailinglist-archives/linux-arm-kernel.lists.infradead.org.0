Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E704E12FE44
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 22:19:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6+M1/Xe339LYt01xG/chEFGxstvSMhsXBE3bkZDaUhc=; b=Sv+
	62ivDN1r6ufIj8MmgJubGLc6Bg4BoZ7wwJ8snL4vGdzfSzqp+vOV6WBlecfypiJlvpGwKBl679sHt
	gGsRbZN/80KfDILyB5aaFIJlNaRE8PspUfvcp4C3b+HjQ7BrAXGbT4Qqf+T5JMY6AxOow4b8hDEJ8
	/EsFEZos2m4Wf+DTFI3rfMNfwCSDYUA3CYti+O45JjZ/BBdd8WNO+45uHi7Mb5GXGPSr8ZZ8wqgZH
	WuGFK4hsPgxsB08BwUY9lMdCeu/Wd7xHCr3t0+gCbIJlZ+U+vpfQINZ5UhRRmCWpMQpoOgJLkeOTW
	DONVfnqfmWkY6+SuB/HWortb0XO/VvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inUMK-0005w7-Ec; Fri, 03 Jan 2020 21:19:52 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inULj-0005QY-Bc
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 21:19:16 +0000
Received: by mail-lj1-x244.google.com with SMTP id h23so45119956ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 13:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globallogic.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Pcy26vAFryVufR6iah3Cz6DzS4v146tdiFC6eZgHfpw=;
 b=Ro7d1Rb2XfZUPny5iHS7M6G4mMWZsWQkDt3mq/qzNZ4XlGUVTfqLy72PCANZ0c4duB
 jv8O8AqUUKGigh/N3ztiINWsugq7IxoQaqieFBLWqxxtcbO3wAzxCiJ6kJvyABsESXzS
 AxOnstvdOC8fx/wKtDfb4m97gUd4qJB4YPvvlQ0y8gL8EIMiIhUoVL8IqEswtFGYmCs/
 z7nLVfVB4Z2MKpFHG33fX65kIg2RQY+t3ZO7EcQOwqOJq/AUk6kuJ5O6yzX9rNg0H4n8
 7JxBh6nrA90TAfGZ68IDQZZZLQOfSZaM5L8lv6MUw6JbhZjHUJvh5YglLrI0buTMns3I
 L82w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Pcy26vAFryVufR6iah3Cz6DzS4v146tdiFC6eZgHfpw=;
 b=OuzCa2BGnpS6bvhQi/g+bHpPmvJdFmj/LGZqBrNvcsdfxi+WAfpyQwh0KR+I84WsDh
 vPk6x3wNQ5Tvs5KAlNu6UdD3juX02mg6OUQtdy8ibh9rqMKB36t/OI5lRvenorMgpEG4
 KyDia2f3vaIs6upl6PpZdNtpju6ixfBDbqlgu3dUT0Xj2NFCe9W67olScQDfBIzb95Fi
 GTfjv7pIT0r8xtAFD4xa2jrThJOhFBpEj99+rgtqKQqpm/m7Je9mUPaYdV7YT6Jt3Zw8
 kdgh3m5wAoRWW1G/pTQ+88LWHTSLajaFLIjmDY5X2ucemoFNvJVq5WUTTcuqYunz0b+q
 TxTQ==
X-Gm-Message-State: APjAAAWjUaJkm9qLNfm6GzGhWR4Lq2dHUxf+VXZPb0CvcS2jE2OgpLth
 R0+/LtbqyHZ2YnF/IcX698fFCQ==
X-Google-Smtp-Source: APXvYqycQrpbkGFvM2ianZgH2VEUnxOneZBSi6h6ThLUUNlzVzXlDqn3VgkF6JwHys+i0Gj9b5zfFA==
X-Received: by 2002:a2e:7405:: with SMTP id p5mr54050383ljc.34.1578086352951; 
 Fri, 03 Jan 2020 13:19:12 -0800 (PST)
Received: from virtualhost-PowerEdge-R810.synapse.com ([195.238.92.107])
 by smtp.gmail.com with ESMTPSA id e9sm18107683ljp.75.2020.01.03.13.19.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 13:19:12 -0800 (PST)
From: roman.stratiienko@globallogic.com
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jernej.skrabec@siol.net
Subject: [PATCH v3 1/2] drm/sun4i: Add alpha property for sun8i UI layer
Date: Fri,  3 Jan 2020 23:19:00 +0200
Message-Id: <20200103211901.44201-1-roman.stratiienko@globallogic.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_131915_427048_3BAEC843 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reviewed-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
v2: Initial commit by mistake
v3:
- Picked `reviewed-by` line
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
