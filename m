Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011AF78C97
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 15:17:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5AVp5R/5A0yQTjITDKcyIKkODI7Y0PE0e1ARsSKVtUg=; b=NswPVjpnSZMnTr
	ShX3TVNwBCF3PE1b7MjwRlTrSvoApVJD+lq6tZjiFzdL/YSd4uxu5FIV/S5CE2589XJUHSQasc5x3
	GwlQBlXoObV6P9KZDYnx9K2Xqlp/WWG/d/YhDzfSpech6pCQp3Xtm0E7gYLv9nWwezbnrKFjc+k49
	ojpqywrdeUfrGpxVg4JJ4DHGGz/tL+XuxIuqoP9c+jk9rfc0R/CcYOQMO8Ht+A238nH6SagCPbQWY
	5rYuyxIYDtX3j3pU0rL9Y/EIxVSjFudXNDBP5IqPHZGTDX9WKzuwX/t2+00zrGjuIA34P/kla3DU/
	BNmRIvcpS6BYtN0cu07g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs5X3-0006s6-HE; Mon, 29 Jul 2019 13:17:41 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs5WQ-0006I2-5q
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 13:17:04 +0000
Received: by mail-wm1-x342.google.com with SMTP id x15so53834148wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 06:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ilNgiDVSmGak25pg9L0wagvtwRSAZxVDdm8Be33Ze3o=;
 b=Wfz6C774D3WcLjVSRjjQ9Lw6OAiML+fgZ8SRO9mkuLL3Gzg4MPG1wMAJOBhov2Q2BV
 PIgPQfA7tWuphF1Vx2YdRRrTQU+oZU6Ei2Mx+31nEU93c6KlukMw3bv6jtwjnA6WxOJd
 pxaG8IXHlrJjHAWA5Bv3mNNvJ36r8AgsfIgq2zKOOlZBj4yvhdEek/isUR/HhUxe1A6F
 9Tua4I1IPVpvm1aq/GUu4dyAOpFcpxGBnEEg6oNcLhFWYR5I0KnP6jGS6Nc1DEZ0FcO4
 SxDRZYkCUrrh2836Vcvs3RMfmZqivsJraN2vozaJk7mOJAlZpkendo8TlYJGAAa9tq0q
 chOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ilNgiDVSmGak25pg9L0wagvtwRSAZxVDdm8Be33Ze3o=;
 b=l0xi8+B01jzKVJB6ZUVc8qr533tv57N/dsoOeBhtm0fcM2kQQ53RXbLKly0yyKylr6
 4QQJR5IM/d9S1PbyeuuqjKlpSsbPnHwV8T6J9hS2r2Jt2PagY2wD400QbLA0UcqalOXO
 vbG6L6ydEAkCG7rCKhJLqKg0ebeegemcHtPXpUIehPsLPbcM9qnnw55wSJhVTT9+vfbS
 rEZ6Nr8KmxChG28t4dzFSBHUusXdi1Mt1Vk1a+GFeG45a20z+Bfkt3GVfQVsC5mEPNXg
 i2AjIov8lHJeT5rtkAHsE1WXjybvnLkwJkza9QUz5FW7J9XV7h+7Qly3AW5qSjgOKD9G
 4iDw==
X-Gm-Message-State: APjAAAVhs8swU+tyOzXVeaLql7unvvm1/VlvyW9gbAvEcE0tPyzx/3p4
 HjZ7YTkBAfGzQe3EbshdX9JLlMgs18o=
X-Google-Smtp-Source: APXvYqypMagpK7Rn4o7xdy8pV2mv01YyLBmCblc0Qt5Jzfp6qN3KU/2uEbRbZnALWwoGiWLw3SxERA==
X-Received: by 2002:a7b:c947:: with SMTP id i7mr102925593wml.77.1564406220768; 
 Mon, 29 Jul 2019 06:17:00 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b5sm52520490wru.69.2019.07.29.06.17.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 06:17:00 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH 2/4] clk: meson: regmap: export regmap_div ops functions
Date: Mon, 29 Jul 2019 15:16:54 +0200
Message-Id: <20190729131656.7308-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190729131656.7308-1-narmstrong@baylibre.com>
References: <20190729131656.7308-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_061702_213721_7AAAF95B 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The G12A CPU Clock Postmux divider needs a custom div_set_rate() call.

Export the clk_regmap_div_round_rate() and clk_regmap_div_recalc_rate()
to be able to override the default clk_regmap_div_set_rate() callback.
---
 drivers/clk/meson/clk-regmap.c | 10 ++++++----
 drivers/clk/meson/clk-regmap.h |  5 +++++
 2 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/meson/clk-regmap.c b/drivers/clk/meson/clk-regmap.c
index dcd1757cc5df..26c8c74a8cf0 100644
--- a/drivers/clk/meson/clk-regmap.c
+++ b/drivers/clk/meson/clk-regmap.c
@@ -56,8 +56,8 @@ const struct clk_ops clk_regmap_gate_ro_ops = {
 };
 EXPORT_SYMBOL_GPL(clk_regmap_gate_ro_ops);
 
-static unsigned long clk_regmap_div_recalc_rate(struct clk_hw *hw,
-						unsigned long prate)
+unsigned long clk_regmap_div_recalc_rate(struct clk_hw *hw,
+					 unsigned long prate)
 {
 	struct clk_regmap *clk = to_clk_regmap(hw);
 	struct clk_regmap_div_data *div = clk_get_regmap_div_data(clk);
@@ -74,9 +74,10 @@ static unsigned long clk_regmap_div_recalc_rate(struct clk_hw *hw,
 	return divider_recalc_rate(hw, prate, val, div->table, div->flags,
 				   div->width);
 }
+EXPORT_SYMBOL_GPL(clk_regmap_div_recalc_rate);
 
-static long clk_regmap_div_round_rate(struct clk_hw *hw, unsigned long rate,
-				      unsigned long *prate)
+long clk_regmap_div_round_rate(struct clk_hw *hw, unsigned long rate,
+			       unsigned long *prate)
 {
 	struct clk_regmap *clk = to_clk_regmap(hw);
 	struct clk_regmap_div_data *div = clk_get_regmap_div_data(clk);
@@ -100,6 +101,7 @@ static long clk_regmap_div_round_rate(struct clk_hw *hw, unsigned long rate,
 	return divider_round_rate(hw, rate, prate, div->table, div->width,
 				  div->flags);
 }
+EXPORT_SYMBOL_GPL(clk_regmap_div_round_rate);
 
 static int clk_regmap_div_set_rate(struct clk_hw *hw, unsigned long rate,
 				   unsigned long parent_rate)
diff --git a/drivers/clk/meson/clk-regmap.h b/drivers/clk/meson/clk-regmap.h
index c4a39604cffd..ebf776a32ce3 100644
--- a/drivers/clk/meson/clk-regmap.h
+++ b/drivers/clk/meson/clk-regmap.h
@@ -78,6 +78,11 @@ clk_get_regmap_div_data(struct clk_regmap *clk)
 	return (struct clk_regmap_div_data *)clk->data;
 }
 
+unsigned long clk_regmap_div_recalc_rate(struct clk_hw *hw,
+					 unsigned long prate);
+long clk_regmap_div_round_rate(struct clk_hw *hw, unsigned long rate,
+			       unsigned long *prate);
+
 extern const struct clk_ops clk_regmap_divider_ops;
 extern const struct clk_ops clk_regmap_divider_ro_ops;
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
