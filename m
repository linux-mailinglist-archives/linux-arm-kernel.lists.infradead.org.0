Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C840917586D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 11:33:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+ps6McW+xPqXscWw10d6pfCyrda4bqFdS4VqM/WL8Ak=; b=DX6WdAGOMTsf1D/ZUw53fVT2iT
	nF0G8I5sMIjP000msjqHFHpZEOgahdTkq8n5cN+kMkvAKhs5vaT8UtcoBBdA8HmFYCxqwDQySnCxY
	UBP8YfXIfbZ7knxTIFqR9QM3ATbF1kzW2N3q8/orCUD1bW9YkXZgp/FK6bqT2ugZ6sGyD1PK13NRd
	jgqFbAi8SrAQmg0MBXGjE3BnXgiTPv0sKZgVwWxQdZ5tFFDb/0T3hx1Fu+C8qe+tvYhksR/17mn8S
	hfKpKgKz83uc6VcAVQWgde89qLhyYyeXrx23JYvWdk5L+kgvNkUK4P2JzXvq0rYPmY1WigYEyysTU
	e0tHYyFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8iOE-0003Xn-3Q; Mon, 02 Mar 2020 10:33:34 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8iNF-0002bX-MG
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 10:32:35 +0000
Received: by mail-lj1-x242.google.com with SMTP id q23so11148068ljm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 02:32:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=a42O4KV4bEmBFQrB6svb5MCsREuatuBAEWKoVrmbJO0=;
 b=cWTcWZAIYzjyX4csJQI8qpY9zS6H5etvZc0N+Mrjfy88j2LDsNnKBZ2r9ZOt7c0ee1
 Z3l7UAHxFeonp5mJo00Zi1tUpr3Q/MWTk56CuJWDaegT83D6Bi0DGPOjReSz7hCi6jBE
 D1//q/27Sh7NMHJX5zt+R9JW3R799Sc4ccu9n1NERTb5xBYG8OxenY6BJ6X/M4AGPh8W
 9DWOReMKA3aRztFwCRoDvEgY7PBSzMnehaXPgokPEiuCHiVc22zv0RugHl5TZ9VdZx/I
 PGFVb8zFCYwHgI8Jlgq+dw1zf0KLMSd/EOqh3KN/r12jgXFGrbk7J3MxjBTxjPXTxY2F
 pPsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=a42O4KV4bEmBFQrB6svb5MCsREuatuBAEWKoVrmbJO0=;
 b=mA3ffH/1XRyWk7jWYlAfHKxJomGDIaMMMOZCVkd04YCkeK4hZ8nYQsx5bqc6O5OXoR
 ldN7szKbgEdORd7X92UWAZnh2KYZem8d9zUPssRAk6d1sC/ijow4P8kapoT7nlnFUM4p
 bZ0Ean9KiMroMixTg//E1SQkmMyrAEkGE3eFOGrQ6X2CG6N2TYMItFiE02ws+Wal4OAE
 DxyRKqqeh1Sg+Bq04kKxx3BgCMeJXmZlf77yRPJWKs/Z/g44fJt6+PRlBaav5K3To/6y
 M/MYZUtBYnSFlPsaRqcqTYNHnJfRLBwoaPWjBO/4t9K8FjF0k1B7TF70mrqRy3V3Iw3P
 KxHg==
X-Gm-Message-State: ANhLgQ0RpHyNmapx6USlr+UVxWsHEDcSjrXOBFre8/gQMX1ZRRjKtnfV
 iHjIQJBNGn4Ltzw1kfxgMrA=
X-Google-Smtp-Source: ADFU+vvy4hEeA0Fk8eWL+molTfrJlcJGZig6kMdWtN2clniYcBX6YHZQdFlQSI1P0cwNHUtitZvmcQ==
X-Received: by 2002:a05:651c:cf:: with SMTP id
 15mr11454597ljr.288.1583145151835; 
 Mon, 02 Mar 2020 02:32:31 -0800 (PST)
Received: from localhost.localdomain ([149.255.131.2])
 by smtp.gmail.com with ESMTPSA id n21sm3895328lfh.2.2020.03.02.02.32.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 02:32:31 -0800 (PST)
From: Roman Stratiienko <r.stratiienko@gmail.com>
To: jernej.skrabec@siol.net,
	mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v4 4/4] RFC: drm/sun4i: Process alpha channel of most bottom
 layer
Date: Mon,  2 Mar 2020 12:31:38 +0200
Message-Id: <20200302103138.17916-5-r.stratiienko@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200302103138.17916-1-r.stratiienko@gmail.com>
References: <.>
 <20200302103138.17916-1-r.stratiienko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_023233_737342_3364CF68 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [r.stratiienko[at]gmail.com]
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
Cc: airlied@linux.ie, Roman Stratiienko <r.stratiienko@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner display engine blender consists of 3 pipelined blending units.

PIPE0->\
        BLD0-\
PIPE1->/      BLD1-\
PIPE2->------/      BLD2->OUT
PIPE3->------------/

This pipeline produces incorrect composition if PIPE0 buffer has alpha.
Correct solution is to add one more blending step and mix PIPE0 with
background, but it is not supported by the hardware.

Use premultiplied alpha buffer of PIPE0 overlay channel as is.
In this case we got same effect as mixing PIPE0 with black background.

Signed-off-by: Roman Stratiienko <r.stratiienko@gmail.com>

---

v4:
- Initial version, depends on other unmerged patches in the patchset.
---
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 2 +-
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
index dd6145f80c36..d94f4d8b9128 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
@@ -106,7 +106,7 @@ static void sun8i_ui_layer_update_alpha(struct sun8i_mixer *mixer, int channel,
 	regmap_update_bits(mixer->engine.regs,
 			   SUN8I_MIXER_BLEND_PREMULTIPLY(bld_base),
 			   SUN8I_MIXER_BLEND_PREMULTIPLY_EN(zpos),
-			   SUN8I_MIXER_BLEND_PREMULTIPLY_EN(zpos));
+			   zpos ? SUN8I_MIXER_BLEND_PREMULTIPLY_EN(zpos) : 0);
 }
 
 static int sun8i_ui_layer_update_coord(struct sun8i_mixer *mixer, int channel,
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index e6d8a539614f..68a6843db4ab 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -108,7 +108,7 @@ static void sun8i_vi_layer_update_alpha(struct sun8i_mixer *mixer, int channel,
 	regmap_update_bits(mixer->engine.regs,
 			   SUN8I_MIXER_BLEND_PREMULTIPLY(bld_base),
 			   SUN8I_MIXER_BLEND_PREMULTIPLY_EN(zpos),
-			   (mixer->cfg->is_de3) ?
+			   (zpos != 0 && mixer->cfg->is_de3) ?
 				SUN8I_MIXER_BLEND_PREMULTIPLY_EN(zpos) : 0);
 
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
