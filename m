Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D055DDF7A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 23:46:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=167eifJQ7qMmiGl3f4A0+wF5mLtaXGLeYatGk1SxMoc=; b=FK4QYQRtdd6+i9
	8mVvEQ08M0zWMX4kgadi3FUfcVSDeQJSbkesnQBbL4jdiIMWswvQAkW9Y8ebf2HpsqKy3igdhTt2h
	RqD30hyuQbE1fnQj93WjJyFf/8WuyYZInbmimThFhOW+HsAiYyCeE9k/SRNICLsSWHToaOwffHyqk
	KaLviNYvrgpn+BAI9gJHf7LI4SFco3OjGoSh9ZK+mXOAlZP1WOYNfbKh2dAia3+BsUbjyXvrtwUQE
	gaioyZ1fi46ieRlsowKcMPArFvRUPisXmxGQQiW1ZmwAw/siQnfb4oSxy4MjfYMb9GwPaDdFkbJ6J
	hFoBtZv+7N6u0hx3IPIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMfVq-0000rM-PG; Mon, 21 Oct 2019 21:46:50 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMfV0-0000D0-6m; Mon, 21 Oct 2019 21:46:00 +0000
Received: by mail-oi1-f195.google.com with SMTP id b25so793033oib.7;
 Mon, 21 Oct 2019 14:45:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TsrtW/3IwxExUlY3NAEem6qIu9cq5ThxwAPMPnLEB1M=;
 b=j6uwDb0aBUOnKVp3/h323Eze5VhQ5ZFno80BjVTxkX0TCLvTVGXb1f9NUjkK0RZPZO
 J2eYPblsRxIWVJXk6kP99Sw0hojiYXdJGxsvo2WtoDK33evkIOWo/WZE0ku6rvzuKNpc
 1K9ZbAWz+cmxEqSDFWOHgl4mqVHattFq4vqtlvdZZ9yRlGAcCt1PPrdLzjJSTFiVJ5qU
 snMsImW5ipHDOQ13xY6seBNj9KoJMs2EPZZc1xmIyNj0dGb+5+qijXg6lqGu/t6A82q5
 F/vHuc7p2TcEJ6HgxD2CsbZDyCKNhUVheNDtms+Da+vql7D9rO7OV3GLXo6Fg3apSskI
 vUKA==
X-Gm-Message-State: APjAAAUE+NMtPb7/r7bfrwjJZTw1Xmi5T2IomSjP1Oef19mcb057t1C1
 Pd8mfyVuoqb4WnHXhXE9yw==
X-Google-Smtp-Source: APXvYqzlUvmVTKM2zNkWI5ewyGDS0Ga/AUXcXwnS+qOaifG3c/ZJADZnnQIk2JtuB+GHcDhGYasXJg==
X-Received: by 2002:a54:4182:: with SMTP id 2mr188880oiy.148.1571694357143;
 Mon, 21 Oct 2019 14:45:57 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u130sm4122676oib.56.2019.10.21.14.45.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 14:45:56 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 2/6] drm: Introduce DRM_MODE_DUMB_KERNEL_MAP flag
Date: Mon, 21 Oct 2019 16:45:46 -0500
Message-Id: <20191021214550.1461-3-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191021214550.1461-1-robh@kernel.org>
References: <20191021214550.1461-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_144558_271114_4817FE14 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>, Sandy Huang <hjc@rock-chips.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Yannick Fertre <yannick.fertre@st.com>, Kevin Hilman <khilman@baylibre.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Xinliang Liu <z.liuxinliang@hisilicon.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>, CK Hu <ck.hu@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chen Feng <puck.chen@hisilicon.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Philippe Cornu <philippe.cornu@st.com>, Vincent Abriou <vincent.abriou@st.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rongrong Zou <zourongrong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce a new flag, DRM_MODE_DUMB_KERNEL_MAP, for struct
drm_mode_create_dumb. This flag is for internal kernel use to indicate
if dumb buffer allocation needs a kernel mapping. This is needed only for
CMA where creating a kernel mapping or not has to be decided at allocation
time because creating a mapping on demand (with vmap()) is not guaranteed
to work. Several drivers are using CMA, but not the CMA helpers because
they distinguish between kernel and userspace allocations to create a
kernel mapping or not.

Update the callers of drm_mode_dumb_create() to set
drm_mode_dumb_create.flags to appropriate defaults. Currently, flags can
be set to anything by userspace, but is unused within the kernel. Let's
force flags to zero (no kernel mapping) for userspace callers by default.
For in kernel clients, set DRM_MODE_DUMB_KERNEL_MAP by default. Drivers
can override this as needed.

Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Sean Paul <sean@poorly.run>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/gpu/drm/drm_client.c       | 1 +
 drivers/gpu/drm/drm_dumb_buffers.c | 5 ++++-
 include/uapi/drm/drm_mode.h        | 2 ++
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_client.c b/drivers/gpu/drm/drm_client.c
index d9a2e3695525..dbfc8061b392 100644
--- a/drivers/gpu/drm/drm_client.c
+++ b/drivers/gpu/drm/drm_client.c
@@ -264,6 +264,7 @@ drm_client_buffer_create(struct drm_client_dev *client, u32 width, u32 height, u
 	dumb_args.width = width;
 	dumb_args.height = height;
 	dumb_args.bpp = info->cpp[0] * 8;
+	dumb_args.flags = DRM_MODE_DUMB_KERNEL_MAP;
 	ret = drm_mode_create_dumb(dev, &dumb_args, client->file);
 	if (ret)
 		goto err_delete;
diff --git a/drivers/gpu/drm/drm_dumb_buffers.c b/drivers/gpu/drm/drm_dumb_buffers.c
index d18a740fe0f1..74a13f14c173 100644
--- a/drivers/gpu/drm/drm_dumb_buffers.c
+++ b/drivers/gpu/drm/drm_dumb_buffers.c
@@ -97,7 +97,10 @@ int drm_mode_create_dumb(struct drm_device *dev,
 int drm_mode_create_dumb_ioctl(struct drm_device *dev,
 			       void *data, struct drm_file *file_priv)
 {
-	return drm_mode_create_dumb(dev, data, file_priv);
+	struct drm_mode_create_dumb *args = data;
+
+	args->flags = 0;
+	return drm_mode_create_dumb(dev, args, file_priv);
 }
 
 /**
diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
index 735c8cfdaaa1..02712f46b94c 100644
--- a/include/uapi/drm/drm_mode.h
+++ b/include/uapi/drm/drm_mode.h
@@ -796,6 +796,8 @@ struct drm_mode_crtc_page_flip_target {
 	__u64 user_data;
 };
 
+#define DRM_MODE_DUMB_KERNEL_MAP	(1<<0)	/* For internal kernel use */
+
 /* create a dumb scanout buffer */
 struct drm_mode_create_dumb {
 	__u32 height;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
