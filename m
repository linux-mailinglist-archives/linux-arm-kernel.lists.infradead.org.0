Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CFC78F0D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 17:21:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RYaSDHpFvnsxheT+d3REQUvTZTw9bSgLN++qpfsPUg0=; b=g08/SiuNJ8+BQd
	bASzgkr4lPQxJr/pWZl8o0jPjitaEeJ/1CbWv8besUDT9gZp4aebjjZlGnB2zACkh6W1fdcbMv8ZO
	2om03ls7qyPxhf1S7jG1N5Tbc6hfNGHFcKbMIU2ncIIV2m4yK0H1kKtMXUNOxJsS6h131YoyIfW+s
	x8tJ5AD7WDZQYFn9Ot2A4KKJeCztNGfbk6nIGYGcP7fAoCtEMslJAuRqy0nIFgO9JSBAVGJU4PrWJ
	I2LGnsR73tWZBoXWyFMUAObBLFaN0jYSEWaVdnPyQeCIGPMFrJCnl1AS9XT1mDHMK/s3fzvPy9C3W
	SOucnMnEsh/u/fQYODjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs7T8-0002xQ-SD; Mon, 29 Jul 2019 15:21:46 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs7Sw-0002wW-8A
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 15:21:35 +0000
Received: by mail-lj1-x244.google.com with SMTP id m8so25379019lji.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 08:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PZSxc/hO0ZG18S/DOTA+r5gDlzN8/M+y4psJHtepWPo=;
 b=KRdDo7paGeKGOyp5Sp8o+S0wp9+qaiFYwmskrcsOpqOHQ0VKiKurLc4bRIfnDNC8VJ
 I/k30lJ8g/j8ifMq+tuZBWKGQe3XY64SgjXQHpplkw2GVsWFP646SlCIDyPZYtMmSN/2
 Pskr3sNko8K0TTzGa2sgzm9V+xiK8Yjqpbie8WqVShZx9pUZ+BzVmhIzW6WvyGQgh1kC
 v6UY+s/8uCFvxx2UfjCDIZsXHmDV6x9yKx0JpMeur3epVhHm7LH0fam98RHl2eI9Swlu
 j0WZC6yPsyqB3+dDlK8v6s+Vt67lagm6o7xNlg6XyjkyQVmxa1GH9t8XVGBPrZXpsgHU
 fH/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PZSxc/hO0ZG18S/DOTA+r5gDlzN8/M+y4psJHtepWPo=;
 b=qE7uNprgfIX8BXk+mutSO8b9eIB+qGa4UvVTGz3tHUnRl9T6E7idvrpku4HvQJQ3gg
 BqHOuNjwV6kpsS5dAk4X6TTCjgAvzGYlSBdTzdFJhsD9qbBx1o0t0SI8blWXVxE4wyFf
 g81gxSjJH1Ae55kLVRWx6AphfhBqrGqWMNs9BgyL3M9YVXBl2wOmBJi2WBAKEGrx9XFW
 lBPNv2kjayuetKgZamh3HaYJ3x5Au5ZjMqGhoy00P+tkjg9slHhPxtj10kXFFQcVdebT
 cLSgjpU6vB97Codly0jHYOPvB6vqTXpWFqfU/QlNc9+rObejeZEqABPnsmcM6Axrk2bv
 stUA==
X-Gm-Message-State: APjAAAV4ATbWngD3TfvubXU11fZ79r7qwR3422puPikViegT/EpYpfmh
 cCRqvAJbTemG+gPvut7pxKU=
X-Google-Smtp-Source: APXvYqy+4rx7le3o3En30ctJLBZYf+QGog310rctsNf7/vRm5Y7TokVJe6f2rAPQLbeYocwgHRElcA==
X-Received: by 2002:a2e:9188:: with SMTP id f8mr12769716ljg.33.1564413692232; 
 Mon, 29 Jul 2019 08:21:32 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id f16sm11887474lfc.81.2019.07.29.08.21.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 08:21:31 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH] ASoC: sun4i-i2s: Incorrect SR and WSS computation
Date: Mon, 29 Jul 2019 17:21:30 +0200
Message-Id: <20190729152130.27955-1-codekipper@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_082134_293686_B4602ECF 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marcus Cooper <codekipper@gmail.com>, broonie@kernel.org,
 lgirdwood@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcus Cooper <codekipper@gmail.com>

The A64 audio codec uses the original I2S block but the SR and
WSS computation currently assigned is for the newer block.

Fixes: 619c15f7fac9 (ASoC: sun4i-i2s: Change SR and WSS computation)
Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 9b2232908b65..7fa5c61169db 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -1002,8 +1002,8 @@ static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
 	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
-	.get_sr			= sun8i_i2s_get_sr_wss,
-	.get_wss		= sun8i_i2s_get_sr_wss,
+	.get_sr			= sun4i_i2s_get_sr,
+	.get_wss		= sun4i_i2s_get_wss,
 };
 
 static int sun4i_i2s_init_regmap_fields(struct device *dev,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
