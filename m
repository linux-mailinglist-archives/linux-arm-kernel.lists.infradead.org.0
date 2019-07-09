Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB47263E2C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 01:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Msy70CMySgbs+iIzL0OyPC+qwFOZqNGNc6ji1hG0jVM=; b=aJduHxoGHi8h+3
	bTSft953JWrPi+T7l7bUcev7gR32jV1xy8mD87vtklUoZbYapOm55ykEm3Ra7jmSwXkW8LlLa/IwJ
	Ks+C6I0iQ3c5+9/bZwE0J+PnHG+tMKkZDhksoIzlOLOyJBf9hMnIwYEC3YG6Nm4cfgS+SQ+YQ/d/j
	b4iqTWjZ+z16NFOtvdQ+ElvoNSl2KU+64Hm0IBLElq3WG2j/2b5+fVGOBhfBrBM1ClGCer+rQG8dQ
	0yJTU84zhgThUUNZUANc4IruLgcJOv0dkFOFjxLlFFAIMIPBhToTtjfxyQ/WRcfkPkO0zE2aHRck1
	QxkxHX1UVYdabD2Ul0QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkz60-0003hd-Cc; Tue, 09 Jul 2019 23:00:24 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkz4V-0001rE-9R
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 22:58:52 +0000
Received: by mail-pf1-x443.google.com with SMTP id b13so96354pfo.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 15:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vxC6cpJeD3A10tWWsNE37FjIALjzLREnlwwa6KDygFo=;
 b=hgBbzEABxs7OXnFPXxgw+hBQbbosBbo3oIFVVUgack6wrAgD9EpA6j8IAnhPv/nmsg
 HxQtZQgSRAJ8j0VZ/P1GhFATwxMZrprisR1ZbqbxyGz1yw0FWE+j+Wn6tPvNW0oBsgaV
 TMI/Q62D/gi+qE7S4rjIAyrABuWOpGp/YcvbE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vxC6cpJeD3A10tWWsNE37FjIALjzLREnlwwa6KDygFo=;
 b=qBNSb5IiXXnEBHs609M8+IqazeSzZBlWzae7lEuXVvA/6PSbp4aW+zSr7BUQdlanBm
 /DHpWa0/pwvpWwdkbHnZf+GDhY/HHToOT14KQz3iNeKvzH0gf7vKnFxsXMwQPxleiPb/
 MdgND8MB6qZI4YraLvK2Rn3duYf9c8L88rKnIXS3ROQNoBM8u+wRahcNF6FhDBnYNY3o
 IMWFGZd5IF++nlC1KnvP/PDboiu7GRHjKK3fxeujYpREinKpMo7z4z+FkG7ILpEFFjGS
 fYP5sgzMT4/JEItA9z2HRWmMDkLZom13p5ZLm9HkOu7eAZu1Yz4hqRqYh+JOXPDfJSzR
 xDBw==
X-Gm-Message-State: APjAAAWhczi+gaWOvkA9ymqtfgmXIcaFMHc3jMd97psK49K1I06PHNFe
 s5vzcLWdxDQZ1u1M67P0zXJC0g==
X-Google-Smtp-Source: APXvYqzEJUghZ7BR1gJ+atCuB5+tVeanvCWxZCyfJoN8hz0hJTeLI9RJdRfEe2CX2edCyU0wh4hH1w==
X-Received: by 2002:a17:90a:37e9:: with SMTP id
 v96mr2817103pjb.10.1562713130418; 
 Tue, 09 Jul 2019 15:58:50 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id 201sm152939pfz.24.2019.07.09.15.58.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 15:58:49 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v6 4/4] drm/mtk: add panel orientation property
Date: Tue,  9 Jul 2019 15:58:40 -0700
Message-Id: <20190709225840.144038-5-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190709225840.144038-1-dbasehore@chromium.org>
References: <20190709225840.144038-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_155851_429278_30C35C0E 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
index b91c4616644a..2920458ae2fb 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -790,10 +790,18 @@ static int mtk_dsi_create_connector(struct drm_device *drm, struct mtk_dsi *dsi)
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
