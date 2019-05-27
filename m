Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC73A2ADCC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 06:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6kqWx4Yctn8rABzAUXmigvERmLe3xiJOeJ4OGVTuAa0=; b=c8d8c6QBuEND19
	tI0WJDLvsR4SJp8iXaupEogwRGGK8/ugkayeEgrxtYHdY+Qk+SABtWVbbGBKRSyXEAQOePl08blVf
	ANqc1KXdCM3FiUvlP/jA41BnxeItCc0euFxbKGtnsNVFfTO83j4Lgudf5E2A9tJMLM5rEk8XpYbx2
	uZ34KA3u9qYYYzq8oxlTcTspFy0qIeDeiEchCJVMGbkhWbKEI6+leJZ7k1mnXNgR//OP2eeiCjYla
	vL8DDzRtkrh+tFzWQht4EF2bC3JtR1iiFHqca0dC+OlcN5L/PZHj1mFi9SWCOSR+5hlETistKgTYh
	4N4kc+MBDwPbW0GM8Uag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV7by-0007xp-BA; Mon, 27 May 2019 04:51:50 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV7bg-0007i4-9p
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 04:51:36 +0000
Received: by mail-pl1-x641.google.com with SMTP id go2so6534852plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 21:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lqtXYGK6k+BsF6lFW0Ln3+MfttYOEkXamBERmqOmC5Y=;
 b=HF/zJF0QdICLy7NJ4bW6FA9TCLsUv3ADJGYPEPuA3By1u7Y8V2Rl/zlVDy2sdKk81o
 IbxnGSFNNx2FgwLaedCVxPoaF9ANY3vK9P0MF5dAYMhvATfvsyTjwFBSMA0sEktklVak
 GoJSPLBV+x21zj7b9LVfsAHc8PGNEre2C1GFU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lqtXYGK6k+BsF6lFW0Ln3+MfttYOEkXamBERmqOmC5Y=;
 b=R/+RVOc5QlbFHjInVugAruQNCOHV8kXKAl3BXcYO2ACPb1etdCJLAfOP/Y8d785B0U
 Y4QtQmjKMiT5Qb0QiaIQ1wbxX0kFwf8Yh3+zbSVSv8A0fMUpsOLWD2m5vilnSbRYqKsZ
 OZOnT0fZLY0iEYJhG31jz2UlDXX+DLW1he4fS46NYWp2Is3k/JyE8D/jV+V4+swmAyP2
 iWegnC9AaLUVzvqlDqsq+/DcsZz66ii1xeaoTRkk1MVmxEiOVt7eiiV+VurUPisceT9b
 fxZ9EorK332iBQ7dXiqDLJrm/geslQh+QBSrJ58kNg3EvgxrJNPCochogOOPuECFfqHP
 eL0Q==
X-Gm-Message-State: APjAAAWdWAv1XKLOMUKmIuHO3dN98y4ipXCoW5ZMQYLd1sOSBwvDt9wC
 dXmFDKxQo9TIBOwXmFr728aCqcqYL9VV8w==
X-Google-Smtp-Source: APXvYqx3i22O/tAoY6zgk8Ct9ltJx/aRFrpHG2CUs0/G8ATOoqFQULNscuyQ9TI0cY5+0fUmhDePyw==
X-Received: by 2002:a17:902:8303:: with SMTP id
 bd3mr77262990plb.240.1558932691335; 
 Sun, 26 May 2019 21:51:31 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id t18sm8082745pgm.69.2019.05.26.21.51.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 26 May 2019 21:51:30 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] drm: mediatek: fix unbind functions
Date: Mon, 27 May 2019 12:50:52 +0800
Message-Id: <20190527045054.113259-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527045054.113259-1-hsinyi@chromium.org>
References: <20190527045054.113259-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_215132_784881_5FCEC2C4 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

move mipi_dsi_host_unregister() to .remove since mipi_dsi_host_register()
is called in .probe.

detatch panel in mtk_dsi_destroy_conn_enc(), since .bind will try to
attach it again.

Fixes: 2e54c14e310f ("drm/mediatek: Add DSI sub driver")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index b00eb2d2e086..c9b6d3a68c8b 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -844,6 +844,8 @@ static void mtk_dsi_destroy_conn_enc(struct mtk_dsi *dsi)
 	/* Skip connector cleanup if creation was delegated to the bridge */
 	if (dsi->conn.dev)
 		drm_connector_cleanup(&dsi->conn);
+	if (dsi->panel)
+		drm_panel_detach(dsi->panel);
 }
 
 static void mtk_dsi_ddp_start(struct mtk_ddp_comp *comp)
@@ -1073,7 +1075,6 @@ static void mtk_dsi_unbind(struct device *dev, struct device *master,
 	struct mtk_dsi *dsi = dev_get_drvdata(dev);
 
 	mtk_dsi_destroy_conn_enc(dsi);
-	mipi_dsi_host_unregister(&dsi->host);
 	mtk_ddp_comp_unregister(drm, &dsi->ddp_comp);
 }
 
@@ -1179,6 +1180,7 @@ static int mtk_dsi_remove(struct platform_device *pdev)
 
 	mtk_output_dsi_disable(dsi);
 	component_del(&pdev->dev, &mtk_dsi_component_ops);
+	mipi_dsi_host_unregister(&dsi->host);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
