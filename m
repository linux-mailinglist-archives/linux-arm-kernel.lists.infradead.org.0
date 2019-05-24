Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CC929615
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vscw3LIvefTB3FQP69A6d/R4CWehKd4QpxqSLDnieuA=; b=qTTwbqCQ12Pjm0
	uzGZ6MNT0LC6rQt09FWvde/VQ8P0wdHTTqmgeawxJ+PCaunIoXTF0W7XpUKJbcnEPXJ00FHvuMYVj
	aoq8PLHTc7/RF0zV8zNpp1OW3jj+GpZ1uxYj1zm2zgYr6OkN3zQQXiCrN5bNmmNoYFSELsmOK8fKY
	UjlD7gVI/obzqajrm9WNzZ1yw2oK/5+WwnH5184eh2z9JQLN4ClwNWJvRH8+Q8bf2kLigvEBrL9N0
	x2NWZn4THgg8flDZv22Dw4WlJnU9S0VvOSA7o9Ag8lGI7zYE6t6qB+BD1nKm7YfU3J8AtJ/l7EK6l
	oEpFNgIk3JSNrhLO9qQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7eB-0000ji-FJ; Fri, 24 May 2019 10:41:59 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7e1-0000hb-LV
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:41:51 +0000
Received: by mail-pg1-x544.google.com with SMTP id w22so4851579pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 03:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y5swjDHGKG+ezs/+w53g29T0/qBVH9yKlg23nn55c5E=;
 b=U3C+2Pkv2aIG9zWer39/ZGLeS4wd7ty00L8nRwq2xSL9FzpzYmJ8/WtIyJFRadmuQc
 DTP0KxyKCLyYHEAPVI55+6VrkoniAOF48Vl9Wj50Veq/wZPJat9/g22LGvoecBk8SR7s
 r9+EN1shbjhX2kn0bCjSZ2tUp8JHkSf1kS7r8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y5swjDHGKG+ezs/+w53g29T0/qBVH9yKlg23nn55c5E=;
 b=IKYVLBFvWGqxfWccEjgHbbChtLvcbudBWu8WKyTFYi6fzRUyAo8GAmhzZBr+PQMAMm
 Jm54guD8jOcwZQyXRARcSqlB2+8aGdVLOjHaJSTY+yRAQJ3Na2MhmernlalofSDv4rma
 phsmojHvE3OAxv1RoKvzIQSlZb6FQoCoTJj/4MlPueV2oCYOzGq7PPkFzzOp6wAgcHol
 ykB6SgF8+2WwjcjArWeT4JMgGNEQJyz70uURGeU2Jauf9E8H+YMAs9X1CQP0TyAILkFq
 WSmOBH0QS12MoQVT99sfNP43HZ0yHA4Hvjkq5JnVEgXkZbTXMEMQ6bgd8sdOH+jF5Hus
 wqNw==
X-Gm-Message-State: APjAAAUR3J+f+wGdPRmd1C33hzvY4u9r1zh72ctFWJM+zgsQrb1rVVj5
 MXwI7ihIVzfPvQR/pwuSKolbNA==
X-Google-Smtp-Source: APXvYqyvPrCWj4wLzn1Yd+9CbYrQKIVeghMZMryVtTFYZMAHt18ZSgOULimYpUVkB3YXKeqkBNPeBw==
X-Received: by 2002:a63:9d8d:: with SMTP id
 i135mr104296236pgd.245.1558694509078; 
 Fri, 24 May 2019 03:41:49 -0700 (PDT)
Received: from localhost.localdomain ([183.82.227.60])
 by smtp.gmail.com with ESMTPSA id m72sm6550113pjb.7.2019.05.24.03.41.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 03:41:48 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 1/6] drm/sun4i: dsi: Use drm panel_or_bridge call
Date: Fri, 24 May 2019 16:11:10 +0530
Message-Id: <20190524104115.20161-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190524104115.20161-1-jagan@amarulasolutions.com>
References: <20190524104115.20161-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_034149_700009_41399409 
X-CRM114-Status: GOOD (  13.58  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-sunxi@googlegroups.com, Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Right now the driver is finding the panel using of_drm_find_panel,
replace the same with drm_of_find_panel_or_bridge which would help
to find the panel or bridge on the same call if bridge support added
in future.

Added NULL in bridge argument, same will replace with bridge parameter
once bridge supported.

Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 65771e9a343a..ae2fe31b05b1 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -21,6 +21,7 @@
 #include <drm/drmP.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_mipi_dsi.h>
+#include <drm/drm_of.h>
 #include <drm/drm_panel.h>
 #include <drm/drm_probe_helper.h>
 
@@ -964,11 +965,13 @@ static int sun6i_dsi_attach(struct mipi_dsi_host *host,
 			    struct mipi_dsi_device *device)
 {
 	struct sun6i_dsi *dsi = host_to_sun6i_dsi(host);
+	int ret;
 
 	dsi->device = device;
-	dsi->panel = of_drm_find_panel(device->dev.of_node);
-	if (IS_ERR(dsi->panel))
-		return PTR_ERR(dsi->panel);
+	ret = drm_of_find_panel_or_bridge(host->dev->of_node, 0, 0,
+					  &dsi->panel, NULL);
+	if (ret)
+		return ret;
 
 	dev_info(host->dev, "Attached device %s\n", device->name);
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
