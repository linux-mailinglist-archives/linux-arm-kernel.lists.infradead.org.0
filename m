Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3BD2DA9A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oaj2RMr3lo6JKbMYn4K+AAGBIIjvdhjIilNuuZ3Df4M=; b=Llef9xEwtc2DQI
	fl6rZfa3F1Kq68CSpblZ3Gt4jwmtMXUm29TGAisEiGpOGOb4CO4Ss1sjQavDyWBNSMAYOLHUMNsiO
	8sO5kfKWnSmx+8L6zGZswoZxU42wlTnOZ1WKFrEZA9o4Y8vwyzziIlm9duB9miI8TqyKm0f+TpTR5
	cVx5FAi16LTrUAdXbC7lA189pXEKak7E9mQAru4hyOgxWxxHdba4Wd4xbw+uaAnfYF0cncebzfEns
	0Fh9hID+yYsxTolAr92oSXlSlymTMwtaO7EJUHWowDHjpkdfAs0iF34JKa2be8xE3Wj7b+EC7UKFf
	oGqP23shGGJFpHZhj0vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvns-0000pM-Ra; Wed, 29 May 2019 10:27:28 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvnF-0000E3-4z
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:26:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id q17so1339213pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 03:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zkf9FoxdryyDt1X+5P+GJSoX1FiD3J3GXj2LP0N8rdU=;
 b=KrJR7S9O4TEFHPeGH3rkqlofANGLf5xPlPIkRdAwYAC4yHaXwn/r/L5YxrLyP6L7K5
 qaAvmgB0+oizqOfAJqwCXO6Bb570+HJHpI4ecYCXN0wEWCx0ClL1x6NMDWXAVOfvHBRR
 rfpWfc3r/oA8m007TQhh7sV5qE4QAleSuWEsI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zkf9FoxdryyDt1X+5P+GJSoX1FiD3J3GXj2LP0N8rdU=;
 b=C7uZGme8ZYm5sKyKse2Lxif62CfZWA6uaaBUE+NyxYULOukfomt9QOpY5c6QwWwSDA
 o30duqE/tyE8az+D2/YAg/I35KePAhrF1XK9N9c/peskvVKIAJ8JFzbD2VmKnzDz0aJC
 GHPqhwPxE0ZJ3nkZG0X/DxYcOdVYGPkrZLcQR/tliY5F7zb5/i7njCNl+W0Teq/mJ/Kc
 wEMNxMrO3h3O4rjteCCUgpvi3Rl6zYKjXvFMiRNVJsPh02HudsjgHL5KpQdStzJ5Oe5m
 9PDNhI+MfODGrVJUgvil+X3vYvz5RV4WDzooGFO07SV3/hY7Es+nEG+z3QIbI/gxk60G
 4wOQ==
X-Gm-Message-State: APjAAAUb/GTztwQ/lI5ixonaXQ8+fdrDuEBpM21mh5+515Pb75BHgS9K
 i7y0brIkWv0Mm6JxVn9/WrKKrcC55NB7AA==
X-Google-Smtp-Source: APXvYqwnrc9pdx47YY9TRS/DoiPhrNWvI1W5hjidPKQ2diP8prk0BV504pPU4kJBaFleNW4weG407w==
X-Received: by 2002:a62:d244:: with SMTP id
 c65mr111971351pfg.173.1559125608082; 
 Wed, 29 May 2019 03:26:48 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id e12sm18992183pfl.122.2019.05.29.03.26.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 29 May 2019 03:26:47 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/4] drm: mediatek: call drm_atomic_helper_shutdown() when
 unbinding driver
Date: Wed, 29 May 2019 18:25:54 +0800
Message-Id: <20190529102555.251579-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190529102555.251579-1-hsinyi@chromium.org>
References: <20190529102555.251579-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_032650_017954_1AA08A65 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

shutdown all CRTC when unbinding drm driver.

Fixes: 119f5173628a ("drm/mediatek: Add DRM Driver for Mediatek SoC MT8173.")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index e7362bdafa82..8718d123ccaa 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -311,6 +311,7 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 static void mtk_drm_kms_deinit(struct drm_device *drm)
 {
 	drm_kms_helper_poll_fini(drm);
+	drm_atomic_helper_shutdown(drm);
 
 	component_unbind_all(drm->dev, drm);
 	drm_mode_config_cleanup(drm);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
