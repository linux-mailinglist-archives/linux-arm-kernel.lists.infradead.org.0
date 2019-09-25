Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0EABE8A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 01:00:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93ZERkudWHHjRsjkBu4BpdEbZuw7L/QADkTikSKz7KI=; b=MPkZHdHNNDVSUc
	6lf4nGIHTWZoMAY4/1QehOLXgyyvKMWUvo047XbjnuDwadrqTITvlfCv/uUbrQaYA6B/Os1YCtGa6
	Spn1dhkNS5Cx7cZ9OH8H0C4RXIfCEJnRktG5k5czPL7Ae0+n174EJis+/Th8h8wh3INVwyeUwvbGI
	/lvYT38Io+SsW+ddG429bchTFgL419J/70dBloI+yJcU9P39mf/i1F0k9Xv1byVR0O53gj9LC304N
	wheG3nPjnhW+jC7qp8nDnLBhx8t9Nc14xBe093KPaoCzXZb3hlL1GmvlNewcFbVXxxpW080QOIN0V
	wj0nnGbxOr4OK/4CzYIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDGGc-0003zY-SU; Wed, 25 Sep 2019 23:00:15 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDGFB-0002sX-QV
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 22:58:47 +0000
Received: by mail-pl1-x642.google.com with SMTP id e5so73931pls.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 15:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a8l1h42oL5P23xHtbf5VYzA5ZkeKmzbH6tKjUBSBl+E=;
 b=mZdbN7PU15gvrkxboOz4EvcivX/ux1fVAqsJCq6EgzispzgwuhEsAlz2ZHeBFsy6AF
 nFJVLzl+LytoIKO4/YdZ1xWZH80l5SKrIIa2WxgJD+p+QXWSPvNvoGV2JOLti0PYNVZd
 IpeblEXMS3gfQeMUmm75yJ/NL7jP6a/9DNtx4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a8l1h42oL5P23xHtbf5VYzA5ZkeKmzbH6tKjUBSBl+E=;
 b=fmkbCiKDbpEJuqwpjgGuJOxKxdgtkarib1J9zD+xKbM8O51kPR3Y0ooEnOnoMPgD70
 OLFU5JkS3J9+MEFZHUQWjSEvwf3DY4zlaUcUVkjXyXMygmPVcQeVcWoPx6tUcQP1RbAo
 wJBZOTuNi6Ze1lAUUwIznHW5L6hNdriTQ2n5FXhXQrlFnJP5oY2MCE6QUzzsf3Zdt+Sw
 XiPA2izc3cT2fyCehubbOmpqK19eMqhbuxwGKozRP4RunxVqh7SlSshkAy0NN/5LGD7Z
 z89e/zaiHrHRvGJ/4cxU/l0b0a1J/3Jcm81q/9otV60u2xTLLx2zaBwJfRLoz5XleGLN
 Ntyg==
X-Gm-Message-State: APjAAAXOjYSEroSHA1qCunpiAr9DWeyJaKq6ZQAz89VTquIYZPd6++HT
 FdIwY9nD114OUObImAu3yLuGdg==
X-Google-Smtp-Source: APXvYqzDNs3vEprSzaoe6gRCguGllX+tDvFlstkCquRzzh0Piq6427vQeaol87qaa+E6o95eLxbqbg==
X-Received: by 2002:a17:902:b68e:: with SMTP id
 c14mr539964pls.306.1569452325220; 
 Wed, 25 Sep 2019 15:58:45 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id j24sm76185pff.71.2019.09.25.15.58.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 15:58:44 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 4/4] drm/mtk: add panel orientation property
Date: Wed, 25 Sep 2019 15:58:33 -0700
Message-Id: <20190925225833.7310-5-dbasehore@chromium.org>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
In-Reply-To: <20190925225833.7310-1-dbasehore@chromium.org>
References: <20190925225833.7310-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_155845_895890_B16797F5 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Derek Basehore <dbasehore@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, David Airlie <airlied@linux.ie>,
 Thierry Reding <thierry.reding@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This inits the panel orientation property for the mediatek dsi driver
if the panel orientation (connector.display_info.panel_orientation) is
not DRM_MODE_PANEL_ORIENTATION_UNKNOWN.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 224afb666881..2936932344eb 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -792,10 +792,18 @@ static int mtk_dsi_create_connector(struct drm_device *drm, struct mtk_dsi *dsi)
 			DRM_ERROR("Failed to attach panel to drm\n");
 			goto err_connector_cleanup;
 		}
+
+		ret = drm_connector_init_panel_orientation_property(&dsi->conn);
+		if (ret) {
+			DRM_ERROR("Failed to init panel orientation\n");
+			goto err_panel_detach;
+		}
 	}
 
 	return 0;
 
+err_panel_detach:
+	drm_panel_detach(dsi->panel);
 err_connector_cleanup:
 	drm_connector_cleanup(&dsi->conn);
 	return ret;
-- 
2.23.0.351.gc4317032e6-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
