Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2E322FDA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDE53rj5Wr3tdNIMgdfhQvTXEvFapcjjsG6Hg0XNYh4=; b=cJ05/N5+PaRNVb
	5MFc1U/f7cSSu8YNQZwTegV7a/2NBHxGZMkHS7kJrq69qrG6SknPSHrMQI1lIVtXaKr+pjy25wGof
	fraAPWA9/yjE+Uz0qRPXKY6J8LLLdJ+j94KJhBBOdz3nFr/LNqJ1epevy9dIf0HAo2Ucjwb4rYbTz
	YI2F2g3dXCBrulfLEF2o1z1NaTR2Txrn0eoGR4Uf9myh9qa+oGIvcLxXdiBMq8NWhU7IuQfv6JPUh
	ihp7dp0I42tNs9mV/Ja6+iK8b1FZyOgCN5+8MReOqXSsbJfyauM4ICByURlrebhmWPeX0QepSOTE1
	gs7gr9G4CIU44XO2uMLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeI2-00048M-TA; Mon, 20 May 2019 09:09:02 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeGs-0002zR-4A
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:08:12 +0000
Received: by mail-pg1-x542.google.com with SMTP id t187so6466786pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 02:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l8/eiiMRzRHMeJJfg+NtIFfqaA+aEUt7A5oo1QrAYME=;
 b=izXs0xnF9WrDgcEPHUWlWp9gc4k0omlI5ON8oHnDXGfiCLU6GPTMi1TD53H72OhRJ9
 07OMMo1ZEK+83bw3/ptHwy7G9/QEAx4InSSgtV6dQkAuKRvQpPcDFEGDovibhbsGZ46q
 q87tXjbcR5kzwiL8RKIASnKXgb7PvMxBB0tQA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l8/eiiMRzRHMeJJfg+NtIFfqaA+aEUt7A5oo1QrAYME=;
 b=K6QQ63p+s6BnCiYXvlROQLqD8p23fmh30HaHbpHnODV4gRHiMe9cFIokkQ3ocq5leo
 0m080zhtxO9xfzM+WP9soqjBY5hPJTszejjbUXMKkkq9btYCPwVwEF6Xu7duTsX1yeOH
 O+WJ4G9s8zcGhxQwrCmER6g+YLvWXT1dgLIZs+xuq+FChv0mf1bPZKqHnkNtxIhkw5rU
 YYl+8NYnwOqlzEKnaDDegasxgn+pLEbA4HUSEhPVKpm4Vzs9vpbW+nKg4GHpf1EHnHct
 SP4rl26ZMa8Z3IXoUh8bmAti4AmjVEpG6r3up3e+G87gv7y3dN6bcX+ZjqNNbGTMQIKS
 i/Zg==
X-Gm-Message-State: APjAAAUHUF61j7BdSdK8DCeWqY7YLkt3gAgY3A1H0+pBuUq16OLgVU+S
 xlmdZClpj4ObMTKaen7WzYToIg==
X-Google-Smtp-Source: APXvYqwLHvSwqQ0wDLSPdTFaZir99tjNhatCm3penvvdzh6SsenDaTxMVKo4xU4l8s1GExXu5p1q5Q==
X-Received: by 2002:a62:51c2:: with SMTP id f185mr18546991pfb.16.1558343269570; 
 Mon, 20 May 2019 02:07:49 -0700 (PDT)
Received: from localhost.localdomain ([183.82.227.193])
 by smtp.gmail.com with ESMTPSA id d15sm51671614pfm.186.2019.05.20.02.07.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 02:07:49 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v10 07/11] drm/sun4i: dsi: Get tcon0_div at runtime
Date: Mon, 20 May 2019 14:33:14 +0530
Message-Id: <20190520090318.27570-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190520090318.27570-1-jagan@amarulasolutions.com>
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_020750_354616_50700713 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bshah@mykolab.com, powerpan@qq.com, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tcon0 divider is used while computing drq edge0 for burst mode
devices, currently driver is using default macro value 4 via
SUN6I_DSI_TCON_DIV.

Unfortunately not all the panel devices are working with this
default divider value 4, so to make future changes on this divider
value get the divider from tcon dot clock at runtime instead of
static macro value.

Tested-by: Merlijn Wajer <merlijn@wizzup.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 8 +++++++-
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h | 2 --
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 1f9ed2642a47..5584e9c2f8bd 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -396,9 +396,15 @@ static u16 sun6i_dsi_get_drq_edge0(struct sun6i_dsi *dsi,
 				   struct drm_display_mode *mode,
 				   u16 line_num, u16 edge1)
 {
+	struct sun4i_tcon *tcon = dsi->tcon;
+	unsigned long dclk_rate, dclk_parent_rate, tcon0_div;
 	u16 edge0 = edge1;
 
-	edge0 += (mode->hdisplay + 40) * SUN6I_DSI_TCON_DIV / 8;
+	dclk_rate = clk_get_rate(tcon->dclk);
+	dclk_parent_rate = clk_get_rate(clk_get_parent(tcon->dclk));
+	tcon0_div = dclk_parent_rate / dclk_rate;
+
+	edge0 += (mode->hdisplay + 40) * tcon0_div / 8;
 
 	if (edge0 > line_num)
 		return edge0 - line_num;
diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
index f2826e3ea165..156523859d82 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
@@ -13,8 +13,6 @@
 #include <drm/drm_encoder.h>
 #include <drm/drm_mipi_dsi.h>
 
-#define SUN6I_DSI_TCON_DIV	4
-
 struct sun6i_dsi {
 	struct drm_connector	connector;
 	struct drm_encoder	encoder;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
