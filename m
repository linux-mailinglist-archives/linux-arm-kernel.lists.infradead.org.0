Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5E15B7BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XV/+2XNIHYJuxIjOfPhU9egZeC7DDE0S5ol0jTMypUI=; b=cKYm9uVlrBUTGf
	v1XuqjNIGq41bxyVc9PyIbaEk8Tz1c9Exglpkk+lpWiC3ENGGsCkT/sXdo+EsXPa2H7g69X5Bx33E
	2C86vBWXAzxJXf6MwSkupeQm78FhMwOUx/HZbE2LwpJhfU1mCbKn+HpYjt0x0+geB8DA9lkZYnKQB
	c6cp/UUJDHe4YiJWTZfBmK9N/oPCpXXdPO5ny55F4Cl9kST6s52CoZSjQyrwWFJHHtZUdXnHnvS/a
	rbbJM1EtzcaQtRq00NYWzJpes718Iu81cKnBvjbYgzh+bWhQh47KD4Vnje0c0IBsFs39G3IBWPZQK
	u5BlTFjJ5oKSUbIceHyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsOz-0004X3-AI; Mon, 01 Jul 2019 09:15:09 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsN9-0003F6-Ke
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:13:18 +0000
Received: by mail-wm1-x343.google.com with SMTP id u8so15011160wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 02:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QF6xtFv2zQ8ZUqjO9Cs7FIQcWQGqk9AuakROnInyaSE=;
 b=lIYZhQL3jTzMkEXGBHTejQuEo2Wg6Z7RjfFgI4uYHafubWHGXRc6G+3127Ldq9Aj1b
 DGM+VLYAo7oKAb+SM81qnIo8he0wpupHrxH+YJ1bu32D/udLAkQHUGXDCMKNkiwztdmr
 UL1t/r1dxSb7cPCvGnE2yL3ZPEBPkcivM+DmX8myy2McJHzaa2T9Fm8m42TOt5j5q9/7
 YKxjVrQD3XhAkTr+IXcWmgW+XxJR5OvgmBKrZnFG2XMJXkFXuuoZCsK9NAYps93yG8t8
 nRDiYAz8hiTqPaDXGfSF6MXla2iU2+7NE4SbYalzr0mDioFbl9yyPpAcaN7IF16ReuVy
 bcAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QF6xtFv2zQ8ZUqjO9Cs7FIQcWQGqk9AuakROnInyaSE=;
 b=tDxblf4jTAEE+SxdNyqTdFiMLAChxcU60xxnD1nW5BWX5ZalZ+oMuRQ8SLe18iXhzW
 A3AeNp5nAMrDV9eyVg5S653oL1L035R/6FxI8xcECvvgED1f1b9jO0b3d2mxUQal9y51
 piE8F8Ypvbu/y6JF3b/iZwK6mfiNGTUdWcX88Zhw3ni7cKofEwNjGEuMVA8FQiiYhNUC
 sbKqCDxM3i51NrRhZHf0kxP2SaB/ZpXU0NJoNtH5Mb5Bow7nMCOQCNu+wGOR/Zdk6q49
 TDuwv2FJvE336FQWrFQr7iDUmrxKboj+n01RUgK8fn6cFj0KAhTgec4nNrn+KvBk7qrX
 af/g==
X-Gm-Message-State: APjAAAVF2dfSYbUEmaONgMwpxBbW2L/xood8ohfyAq4JsCEhjtT394qV
 zHfjcHaCJ+j2BwqHy4FctfBXHQ==
X-Google-Smtp-Source: APXvYqz0R1Me131hk3YNR44WqrLF91l40/ePDko2bzhUb5OlZVcim0JviXo7HbsXJhGIuvbExPl9Cg==
X-Received: by 2002:a05:600c:240e:: with SMTP id
 14mr15893491wmp.30.1561972393857; 
 Mon, 01 Jul 2019 02:13:13 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id i16sm6305659wrm.37.2019.07.01.02.13.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 02:13:13 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT v3 03/14] clk: meson: regmap: export regmap_div ops functions
Date: Mon,  1 Jul 2019 11:12:47 +0200
Message-Id: <20190701091258.3870-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701091258.3870-1-narmstrong@baylibre.com>
References: <20190701091258.3870-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_021315_675070_E702AB12 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The G12A CPU Clock Postmux divider needs a custom div_set_rate() call.

Export the clk_regmap_div_round_rate() and clk_regmap_div_recalc_rate()
to be able to override the default clk_regmap_div_set_rate() callback.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
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
index 1dd0abe3ba91..d22b83fb9bad 100644
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
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
