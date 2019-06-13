Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CAF44B54
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 20:54:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QtMWX7X0w/rVOpmGpm0lJ/CQcdpC6Jh79qywJfvigZk=; b=TKB2ekwP+xIQVO
	eiMokTZAqzeVT2c4/az2uBktM9Z3FGKNfeySoAYvTwiq3yF54EWM0pk4T9RtWZbvIe/gzJPGfCuH/
	yoZGCOguGGshzAJM2jX+GH9bpVRl+H+YIRMo9x2cRXVPwhshJWVu5xWkV85wlQ0PjQ0WrfMrt/v54
	GrAVj1jDTanTqoaGjdNc5jPVdYBz1MqsufMZ5vT1CzXODlnPqeFiQFJeLhmv+xJ4CpZk6RAacrcf4
	O0leG2yFNr2Y0nz/x56hCvVKEDWIAJkS9N9oolAIsDyUo66RU0lrcgfwMzvKMivXExkiPOBQozERO
	Q6reI9pdWtMwurgWNl+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbUrx-00062D-W2; Thu, 13 Jun 2019 18:54:42 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbUrG-0005fU-0H
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 18:53:59 +0000
Received: by mail-pf1-x441.google.com with SMTP id 81so12369417pfy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 11:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z0BqE/PvwTCOuDfT7ziZnBtJoPRweQQwkvxwrMq6Xa0=;
 b=aiVm+Ij7KcL3D/0YWJ8nXlH+dgfcDlsdPwTvVK7cZVI0JKLrd/YYhm2+Cq76YkYLL5
 +phoUjSXOTIFC6r/5BNh/LSGecRqCp5OmsC+IYPu1fqgZLYit3+9HgiLNkwfgHCj0V7q
 RmkSuKtICHPNKPfeEpAIaKJAo9jVsCTYxn+ek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z0BqE/PvwTCOuDfT7ziZnBtJoPRweQQwkvxwrMq6Xa0=;
 b=Y+UZ/dMupGzkeFWi3ukFl8PamV7iwNOpRl036GKaABzskDDQvrOKxi51s8dBouaCEM
 3+oIYuhIgCHrnsVD9hNnfM6CMyUF2IfDqfEuB6p9V6sF1ERWIMOV2XkzfnqTfy4Q6mOk
 4grPEZUXlMoO5ZkIQqLEjnXtNR83abLI15JVqjOQRwPSBOxlTTcCHttN6tZoH0wIu323
 8FI/b1ALVkR55yl9ilUTaV6NyWRYZkuukGYhSQAetZ0QZZ3k1ywS7goHsc9hL8N4G1wd
 OGI0Ktz1wgbyJC0lhs2LYkHnMxS1VIfySYA6WWmldQCXGJdsJqQXFfCiIV6BTC0dGfQF
 GuGA==
X-Gm-Message-State: APjAAAW7jFXJdu2Y2+1lCoi5atiXwotjDZIlzPELuCrkmP73eIW1d8uJ
 VXGGhxXOR8KgSX/JG3uiI3di8w==
X-Google-Smtp-Source: APXvYqwjcj/D4tJfxviPJ3DAP+ga6noWng4Pb876f1LgU512Tm5hDPwAQYW1f6WUhPSgbRzbYQRvtw==
X-Received: by 2002:a17:90a:a10f:: with SMTP id
 s15mr7164601pjp.30.1560452036899; 
 Thu, 13 Jun 2019 11:53:56 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id p43sm946314pjp.4.2019.06.13.11.53.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 11:53:56 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH 2/9] drm/sun4i: tcon: Add TCON LCD support for R40
Date: Fri, 14 Jun 2019 00:22:34 +0530
Message-Id: <20190613185241.22800-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190613185241.22800-1-jagan@amarulasolutions.com>
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_115358_089972_4B8F69A7 
X-CRM114-Status: GOOD (  10.83  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index 9e9d08ee8387..8553066e7bed 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -1471,6 +1471,12 @@ static const struct sun4i_tcon_quirks sun8i_a83t_tv_quirks = {
 	.has_channel_1		= true,
 };
 
+static const struct sun4i_tcon_quirks sun8i_r40_lcd_quirks = {
+	.supports_lvds		= true,
+	.has_channel_0		= true,
+	.set_mux		= sun8i_r40_tcon_tv_set_mux,
+};
+
 static const struct sun4i_tcon_quirks sun8i_r40_tv_quirks = {
 	.has_channel_1		= true,
 	.set_mux		= sun8i_r40_tcon_tv_set_mux,
@@ -1501,6 +1507,7 @@ const struct of_device_id sun4i_tcon_of_table[] = {
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
