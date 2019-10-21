Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE622DE7BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ttSk0ag4Xtp/tmQjJ1sZQQBist3V6XBP4ntaFssJOi4=; b=AgUA0y4AyUoI/K
	hmr7NgXqkgg9C8OHqeIsJadPDVcOWvupm/0KV2e2+fJFE5fDZ9Si1TWCR6hvXXHnPYlSjMBqXnp+K
	o7ZkvbmOIWHolpKJ/oA0Ad/0OGMwdkanROlsCZr4Gg/Vekfg2rHFXlM5B3iLDW5fSgiVCmDTetTiq
	8lvuZhOd64Nx20lbIF4FEfP8T7rbZwV0+XGheu1BgMsZ9aaYDwobdzpIJ7hyHSDkh+YWpop4oictj
	rlppm/mWLhhJZfE2TT8SA6xnzedQPG3yw38plB4NDULoj2gZ6sRPBNG77qZTEqERqVlmw6tkh4JEV
	oYkEI63rq3boimBQlHXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTnU-0003Eu-Jg; Mon, 21 Oct 2019 09:16:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTmV-0002gN-JQ
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:15:18 +0000
Received: by mail-wr1-x442.google.com with SMTP id z9so12993786wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 02:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jRWM1ov/iskQxb+UDVHRjatwtmu3Y1ySBHQ/mr63srY=;
 b=iSovWQ76UjmCftKFJbXaN1S9tgVirSzR2wf54seLBeUq05Tdptc99TIkl8UHIJIsTx
 E8j5wU7SI7JpaIfHgkDc2q1gBaPi/kP7Fy8iYCtJ8nbcrS0829bNjGX8EF3sXYB6+vdy
 L9Owc5kpCkH+ErjcLT5IylGzsulI2ChbXupb/9l6l/PPfXrUBR5q/vjSIVnOkIrSy0AJ
 +8CBf0FibOMnKUSYOX+MMZS9s/xFw5+qvtakq10Ze3DD3EbXItoa/hjCauhc5xgBW9IM
 XETQMakM662m7yaIlGownhIh0YZHu3fUEU2+wdE6jzgiRNU+VZlZDJac2r3cXSduTD8V
 BXIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jRWM1ov/iskQxb+UDVHRjatwtmu3Y1ySBHQ/mr63srY=;
 b=ES96iWBcSfJOVEul5X4wpY3T3RUoyy6TkL5QnXYVM9IyB1m6a2JR4H39QQ7gGRtTg/
 7y29qAMCD1b7jGvlP7uw6ro7Xtqi6Chmc7SgRomUiLksjFvCaalrenSF7WHEK7f4wcit
 FtCqgJLzXXBEWARzJ0ZCXGWUBQsleXDePQL9JQ7Dt1mm8MB3qaiC1doqH3VtFqX0FUOm
 ijs6PNUqvObTad06jCUJGw/Ll0uIwFkpteNUFmJflRYuV2PmsaPu7OnuymUP9cyzEb+m
 FVbTmEoB8wE5H1pgDU6YVreI91jlu7GEEdq8hllIhZkTMRnYMjYqQ3yw7y5AU6Le4A3W
 jxGg==
X-Gm-Message-State: APjAAAXfCQR6gEu7htnxK2Fvs1gRhun3BX7bK+MJjAxXmMfVKQRs485n
 YpTe46HUSBKBO5BCxql78NevcQ==
X-Google-Smtp-Source: APXvYqwv4vYzn5AU7M8iqjKunnXBBpWfvjgMY6voo0owV+4UMwcjdHKEx+EizXbR5EU9XWVYvymV4g==
X-Received: by 2002:adf:e302:: with SMTP id b2mr17729852wrj.298.1571649314188; 
 Mon, 21 Oct 2019 02:15:14 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t13sm20281595wra.70.2019.10.21.02.15.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 02:15:13 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 3/9] drm/meson: store the framebuffer width for plane commit
Date: Mon, 21 Oct 2019 11:15:03 +0200
Message-Id: <20191021091509.3864-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191021091509.3864-1-narmstrong@baylibre.com>
References: <20191021091509.3864-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_021515_635911_E55BA644 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 ayan.halder@arm.com, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Also store the framebuffer width in the private common struct
to be used by the AFBC decoder module driver when committing the AFBC
plane.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_drv.h   | 1 +
 drivers/gpu/drm/meson/meson_plane.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
index 820d07bdd42a..3287282450a9 100644
--- a/drivers/gpu/drm/meson/meson_drv.h
+++ b/drivers/gpu/drm/meson/meson_drv.h
@@ -52,6 +52,7 @@ struct meson_drm {
 		uint32_t osd1_addr;
 		uint32_t osd1_stride;
 		uint32_t osd1_height;
+		uint32_t osd1_width;
 		uint32_t osd_sc_ctrl0;
 		uint32_t osd_sc_i_wh_m1;
 		uint32_t osd_sc_o_h_start_end;
diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
index ed543227b00d..5e798c276037 100644
--- a/drivers/gpu/drm/meson/meson_plane.c
+++ b/drivers/gpu/drm/meson/meson_plane.c
@@ -305,6 +305,7 @@ static void meson_plane_atomic_update(struct drm_plane *plane,
 	priv->viu.osd1_addr = gem->paddr;
 	priv->viu.osd1_stride = fb->pitches[0];
 	priv->viu.osd1_height = fb->height;
+	priv->viu.osd1_width = fb->width;
 
 	if (!meson_plane->enabled) {
 		/* Reset OSD1 before enabling it on GXL+ SoCs */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
