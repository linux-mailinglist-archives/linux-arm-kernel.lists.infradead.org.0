Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 701D14F371
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 05:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQs5+HrGEGZxd9RDXzyX6r4lNHBk4+uH9Ql12D/BgGU=; b=JscE8DjfzEwazg
	4zXY++/wzjwTDjrbRV/mn1xPqhqtqNQJ9Pu8veru3FGscTw/0/a5IEX4hFLszjtcExBI1X4swO0qP
	KkS0FP+h0s2udIonaMV9e03FFMLQqoyoiA4YdLduXz9JSZvIhCSRezjeUDZIUDkv8J0uad5o6g2UZ
	89P2kAtj5Fw2hdK+rSO3QGzXmD2Qx6r3QA5my5RsHEuZm1JqCJL/YhNHPV4QnERJOic9b7A/t5geV
	tPTAkeWJpPJMMvohNDOEvslh+E1xCR8jqleWgLbD9aXhMnyamquYj6GEjDbO3skKUWFq4ZGFyJ1YU
	HbQvj7skORBCGTikhvww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heWvK-0002s9-Tu; Sat, 22 Jun 2019 03:42:42 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heWu0-0001o0-4E
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 03:41:21 +0000
Received: by mail-pg1-x544.google.com with SMTP id 145so4255759pgh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 20:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4i2YSPugXI0nrqp33kMy8Y944Y94lb5ecy4lCGMxEsQ=;
 b=niGTS4FI/C687+sa3kKLIMPE58L7G7E5nctX9I6CtYN8GELqO1dmYNy3W+bytP3lM2
 7jJLiBQxNMTmWuycDio83VjqRBYXENo40QGJV77eJIpEvs05teclhe/XR8ex/VpLgaDx
 lNQopJYpNYfOR+08BHj2q1c/NuSF1p8+Ua8Lg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4i2YSPugXI0nrqp33kMy8Y944Y94lb5ecy4lCGMxEsQ=;
 b=Bx4I7RPZQbdAKEA+J0J3a6TIXVzgki9Bp+E/+Qaz2MLNB45MgrztT+pa7qepaBW0/3
 m6N4lbAXjxy3e4j4Aqeg5GRshM/+3Rbzz8MS1he8CfaKwwXkUY8MkFs+2Fp5DsJOhb7/
 YhqduNx1nyqxmYDsf9/hfeKzyBJYXEE6jdgxWmGWfMP3ROlemCcr9Bcsmjs2WHIxmboL
 A9kT9Fx4LvdQ6W9lXTKxjaC2CcVQFgJfe90XqjyLgfHz0UNe/JFQFPqoRysEi4teeHwV
 MCag36vwXB2HOCpBLK3UT6w9widY7RGBKCExr5fwy86UkCGgsQwsk4jwcTszVpR/E/qi
 qMTA==
X-Gm-Message-State: APjAAAW4xzDecj9kM6uxdydX8gvDNrqb0n8PSjszPLSoc9x0suqVBVYf
 lm9GKjwGIHXqH4gTTZVZZVB+1g==
X-Google-Smtp-Source: APXvYqzslQDI58gAtC55+8w+gQS8zY9PascQUVg5lYBeYsEo3d9ImRfo5a3yRY89wZxYrkoWlqCAMQ==
X-Received: by 2002:a17:90b:d8f:: with SMTP id
 bg15mr10778249pjb.65.1561174875712; 
 Fri, 21 Jun 2019 20:41:15 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id u128sm4756688pfu.26.2019.06.21.20.41.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 20:41:15 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/4] drm/mtk: add panel orientation property
Date: Fri, 21 Jun 2019 20:41:05 -0700
Message-Id: <20190622034105.188454-5-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190622034105.188454-1-dbasehore@chromium.org>
References: <20190622034105.188454-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_204120_191853_22AF04E7 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 4a0b9150a7bb..08ffdc7526dd 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -782,10 +782,18 @@ static int mtk_dsi_create_connector(struct drm_device *drm, struct mtk_dsi *dsi)
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
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
