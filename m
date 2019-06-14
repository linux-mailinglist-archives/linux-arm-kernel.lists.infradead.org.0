Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AE9464B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:44:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSZmi0Kpff64LHyF3G4pYi5myDQmI79CNurUtOh0wBc=; b=idNwrdXKMbeSoj
	A7B8S8NJvgPUd21nCGf7oOBJsqIz9gQOmIFPko+oKWWUy/1ZoMOpZCxoF7oxBi0d5BwtFYkS/f0hb
	cXJcwm7hm19ogdcTiL3zWSd2pXOpWvrBiC9itsnrTL6RgEHars+0i9hHlq9zA7zK+uL2x2M29c8+L
	z6AG6lZdC+De3e0wVipcYVnVzp4sA5hDDJwale7bzyBFNDFv9IVMTQuDQFJ21OZf5a/TFr0zD4EPy
	1KfWB5JXYoyDMgAe+/ArAWfyXpxaOg8dpcwiWJLGnrtuuLjDOKb2WP6QGLUMKdI4BB0Q5Z9oYNSNv
	Mh4tfz5RJ3jKwOaWXyGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpJu-0000S6-Kz; Fri, 14 Jun 2019 16:44:54 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpIr-00078O-KV
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:43:50 +0000
Received: by mail-pg1-x542.google.com with SMTP id p10so1875108pgn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 09:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kEKdnhKR+/dWWRVZjYYO+x5HGCPCoPobrZ4wln/DJzY=;
 b=pt+MCQrYrr1z9usf53hpmCyEdhtX35GU4v450sx+7ngZfUg9lOUJdWuFI9JOxl8RTp
 CHUPQOKAzK2NXpws6xY7rj+PcC18JYJtjwgryLTh5NTOOLOBJcHS6zygGc3tgYy1fJyE
 efXaUwOts0I1GtXTgS8qdMApryCG8QaDzqmMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kEKdnhKR+/dWWRVZjYYO+x5HGCPCoPobrZ4wln/DJzY=;
 b=bH9CBV7LMF7CiofdR1HXL0kQiNSv6WglHZGDBMnDZvQZwYL3OyPftbWCW6zkhkW8Fd
 VYLsryYpHmXOQQ+x5x5B6sk1tbGLpQbnz3B2wJd8S5ZLof4OVEVJYMQzYuDxOh/QgOm/
 yVUbsD9G12+8w6Kg8XG/KMkDEwO0+ucOShFc5ey9EBeSLGL0Yb9+p9wn++TvdgYdrP/T
 i7v0nen8CFvkul7JgUNy5COjfWAx/m5JZzYYlxP6qekckf5HcJKbXAF118PIcrH8f5Ob
 XhuvuCnhRIjhPlouACdDnXDE1W9J37IMJgjYj9oP44eQSfBdNRTODy4CfVq8xctUaRIg
 W1OQ==
X-Gm-Message-State: APjAAAVca5wc03R0EGI6mCA8B4La4/fT3PpPepPJ5u4fx8VTioq98Ldo
 XrRSKZpe0e/l305uAytwjygD3g==
X-Google-Smtp-Source: APXvYqxVZ/VBMdd1plRYRlRdBu2PAEOFwSdXMjHmnSt33jJGhQ4n+lhUW7eRWumCYAU2L0kC+eo4hA==
X-Received: by 2002:a63:6881:: with SMTP id
 d123mr11058424pgc.201.1560530628964; 
 Fri, 14 Jun 2019 09:43:48 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id 85sm1639583pfv.130.2019.06.14.09.43.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 09:43:48 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH v2 2/9] drm/sun4i: tcon: Add TCON LCD support for R40
Date: Fri, 14 Jun 2019 22:13:17 +0530
Message-Id: <20190614164324.9427-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190614164324.9427-1-jagan@amarulasolutions.com>
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_094349_697166_06D9CF13 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-sunxi@googlegroups.com,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TCON LCD0, LCD1 in allwinner R40, are used for managing
LCD interfaces like RGB, LVDS and DSI.

Like TCON TV0, TV1 these LCD0, LCD1 are also managed via
tcon top.

Add support for it, in tcon driver.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index 9e9d08ee8387..9838913305a0 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -1471,6 +1471,13 @@ static const struct sun4i_tcon_quirks sun8i_a83t_tv_quirks = {
 	.has_channel_1		= true,
 };
 
+static const struct sun4i_tcon_quirks sun8i_r40_lcd_quirks = {
+	.supports_lvds		= true,
+	.has_channel_0		= true,
+	/* TODO Need to support TCON output muxing via GPIO pins */
+	.set_mux		= sun8i_r40_tcon_tv_set_mux,
+};
+
 static const struct sun4i_tcon_quirks sun8i_r40_tv_quirks = {
 	.has_channel_1		= true,
 	.set_mux		= sun8i_r40_tcon_tv_set_mux,
@@ -1501,6 +1508,7 @@ const struct of_device_id sun4i_tcon_of_table[] = {
 	{ .compatible = "allwinner,sun8i-a33-tcon", .data = &sun8i_a33_quirks },
 	{ .compatible = "allwinner,sun8i-a83t-tcon-lcd", .data = &sun8i_a83t_lcd_quirks },
 	{ .compatible = "allwinner,sun8i-a83t-tcon-tv", .data = &sun8i_a83t_tv_quirks },
+	{ .compatible = "allwinner,sun8i-r40-tcon-lcd", .data = &sun8i_r40_lcd_quirks },
 	{ .compatible = "allwinner,sun8i-r40-tcon-tv", .data = &sun8i_r40_tv_quirks },
 	{ .compatible = "allwinner,sun8i-v3s-tcon", .data = &sun8i_v3s_quirks },
 	{ .compatible = "allwinner,sun9i-a80-tcon-lcd", .data = &sun9i_a80_tcon_lcd_quirks },
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
