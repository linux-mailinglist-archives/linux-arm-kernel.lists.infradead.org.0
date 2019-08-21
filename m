Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4302797FF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 18:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xrcZgXcZIEesbFed0CFjE4Qc0pdI24c0Pw1JDonD7hE=; b=SIO4LlBrJ6QntZ
	ShIl3Fd4TJ+JA2q7hH+cwgY4AZVZGVWdM4gLCMk7uoRueA4SbrDx1DvAZvyTYO7KKeZP9Qv3q7rYa
	SqNPA4+2TW+xjdYdcRwpWVfIOHgp2+G3fhGSfEkeuJOukLnSwGPQ4XqY5lSM0Fs12OEnD/lcKkcTu
	HPlZdvNozhDaPKjrA2LGrgJnA80F2INFK1oAoRiB6BQaebkmBG0BMrEn+4R4QtZidubjYqwT4tuRJ
	B0HZRQt6/yiuD9OMdn5KxIagQzm5IQ0cL1VQuiSVrrfuQKbP9ln8bJKSWoZzCzlKZuSXrq45Xsc5Q
	TwXX5/7iOmMHoIxHPsgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0TOY-0004sn-W1; Wed, 21 Aug 2019 16:23:35 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0TOP-0004sT-7a
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 16:23:26 +0000
Received: by mail-lj1-x243.google.com with SMTP id x18so2739510ljh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 09:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xf/6rfwEQrp0EASftgj20EORMnDX6q6RijKIZ+q88Yw=;
 b=ICtotNKToutmkB9nQx4VfVASkgYOePOm5hNb5a50PjlQSPE8U/q7rMyR8+baLwJ3Mh
 CmpM2az23gX4d8pJXVnKdTcEVV5StqRg0ruKCqRAncp2kVvhsU4v3rGns4QcMHPGpGs5
 deDw2MMACqpkGH3EHbsJAgMnM/SgXO8eGr9MFODIg4AmcObsh9VgNuXKDMCs6mH+DPp6
 OlgeHmCNiCs25WSbUJ9eRVzUAUmkug7RfCE7G2UOBfyqv/4fdTT9kN9e1Y0TjSryV7fg
 h9O7TGJclq3r9cvz35xXkPFCC2stimMZxKZjFNm8rBNgSSGlacZrGpFEUCUKk3vUPDFx
 qDeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xf/6rfwEQrp0EASftgj20EORMnDX6q6RijKIZ+q88Yw=;
 b=PrIqhoTmJG4LO24ngS2ZPngPjYUtDKjpYRG4bz+SnI6gaYBtuT/2/IM+mnxfYYSGq8
 L51X7YoEwbpKD/hiMu42WEyUUAfwJELJoUa712K0FV1SDHzZet0NZLsDuxQYysavA3UB
 a0qlnHX/VNuotkd0jaFwOJyadAiYUSYTO/solFJyGzUhrbwCaKMrYRIfahMzYUyTZFqB
 VKND/JVpvWs3mlBvK1Kyr0J2k2hOAestHN+3f0iZ3PKbwLIFVFiBlggcqJwc2bfF9paq
 Ugwcao1BkYVLYbCinl0QLbuzJlB/kcH/a+Ys5RLRyqOPhyGKrmt8aY5E0E1D4BiR2Qlo
 BfAg==
X-Gm-Message-State: APjAAAX2v8P+hc4aJinfl/ZWguXBEMqW+HVYuCXyJ6PeXr0MKBZUDM4G
 3MtODH2gwt/tNsFDO+qg+LI=
X-Google-Smtp-Source: APXvYqw0Y5MwdTrgHht2bigyxlj2q89zbpnhdEqIAMmmgkr3ySoVRKSHKJT1agiTNTA6HqwVbhHygw==
X-Received: by 2002:a05:651c:1a7:: with SMTP id
 c7mr19081216ljn.89.1566404602914; 
 Wed, 21 Aug 2019 09:23:22 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id n9sm1867681ljj.62.2019.08.21.09.23.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 09:23:21 -0700 (PDT)
From: codekipper@gmail.com
To: mripard@kernel.org,
	wens@csie.org,
	linux-sunxi@googlegroups.com
Subject: [PATCH] ASoC: sun4i-i2s: incorrect regmap for A83t
Date: Wed, 21 Aug 2019 18:23:20 +0200
Message-Id: <20190821162320.28653-1-codekipper@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_092325_302008_78DD7B93 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, Marcus Cooper <codekipper@gmail.com>,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, be17068@iperbole.bo.it,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcus Cooper <codekipper@gmail.com>

Fixes: 21faaea1343f ("ASoC: sun4i-i2s: Add support for A83T")
Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index cbc6e59aa089..056a299c03fb 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -1109,7 +1109,7 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
 static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.has_reset		= true,
 	.reg_offset_txdata	= SUN8I_I2S_FIFO_TX_REG,
-	.sun4i_i2s_regmap	= &sun4i_i2s_regmap_config,
+	.sun4i_i2s_regmap	= &sun8i_i2s_regmap_config,
 	.field_clkdiv_mclk_en	= REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 8, 8),
 	.field_fmt_wss		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 2),
 	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 6),
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
