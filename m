Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B509D575
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 20:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWNEs/0JxGaAyFpnAMskHP8uRyHkutmy0uZClLnT1so=; b=AZEwHqdn42g1z+
	7JjbqJ8nggk/EMhaFKAx5teVINwkGSKw2/7tEuwWbPjiCXYWzBXGJTN00likyVqOiChVKZ9swYOK/
	lfz8E6Zjo8KQUh/+8aKfrKicjztNXHtkzzFXuyVxUEYZRdzJiO7OOfGDGnVdsZQkeNHS1DDWya7H6
	i3MfEIfBy/4P3VqJD/z9t7JdtAvTzq3VF2T/NPIc0yQ8FeWRc9RSLeHt4881on8bkcbhbcTt2iRfi
	J72LeVp8HRYInQg7wad2XbFsTLfNzX3Lhkwr7TBq4ZYdxcHBF5LwzmEeSNQJbUfwu8JAf3DtRkM8q
	01GkzTQHGITCIvw8azOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2JPb-0004Aa-Bl; Mon, 26 Aug 2019 18:08:15 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JP2-0003y6-Fb
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 18:07:42 +0000
Received: by mail-lf1-x143.google.com with SMTP id q27so3387028lfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 11:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/JiaxK/MezpMCfRnwIhrVE4IjsVGzm6Nc+QZ48CrwOY=;
 b=EgvQISlKJ+5es9A7LQNq8YnjzB6ejn9iKFaSRGei+/ko/Yjunes3Znum8wo5UnxF2Z
 Lz3PC6TCzXPQrogqz+mh3pSChnbCcndR6u0HBdD0n+vohJBgqkIZk719s9zvhhuW1HP3
 5HeMxENPm0LECvwvf/t0HXvBT9WgLhQEp5jUp8q4CRaopGDRFdctsx1PR/ttozm+/n/g
 3uYoHXVB8CCSEl3QkoRrbw8UHsTFhX/5x4Lv3+mGx1XPfT8Y+h/AkJN8q1p57iCO8EWv
 4xsX4dL2ZDGxcO6Usje9s1b2Y7lhJoT1lislmHWIKcK9hBu05ewqcKYUkMQvliw5WLy8
 sSFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/JiaxK/MezpMCfRnwIhrVE4IjsVGzm6Nc+QZ48CrwOY=;
 b=hK1eJhQFvf4iTu7H5N97rnCYbPyNZDP5LkjQWyHpZgPF/chxPEe8fSlFnc2BlhUwMj
 9IWzDsF4JIiuJKECEjrs0QVSBJDTonSFRBD4zLfHMgjjkw9x+xfivehqxSfDwyf+iCnI
 Gq3Xt4PbR/gqThvuGBOgIU0LDPeUiGTJeqyjakkuDM9jh3nqf4eLnFhxTx68pEW3p6bM
 ZJjA7wTh0Db4OVLUDkCNbdQ2JdOiXj7Wf8+N1WCECi8BLoR9VBT3ILbj+1X1G3KAfDRz
 97tN3LEZYhORCBKK77GBgid4GDputPJe3+lQejS2u+VpnWtR0tTl8erBdBAGAi2q77Ep
 rExA==
X-Gm-Message-State: APjAAAXW/1OgTBvcWre5DYXuZs+KB5MSxa/OyLCcGxFrnS14Q/zihuT2
 RL/SIX5rPCu4lSoXFre/eug=
X-Google-Smtp-Source: APXvYqzvwQEeLDNp/oEFJY/UIHzL09RuXN5pNsb/Lcsmp9zAEJz0rTV9pQLcZzBHFdtOCEO3bmOhPg==
X-Received: by 2002:ac2:5939:: with SMTP id v25mr11839754lfi.115.1566842858249; 
 Mon, 26 Aug 2019 11:07:38 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id u3sm2215564lfm.16.2019.08.26.11.07.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:07:37 -0700 (PDT)
From: codekipper@gmail.com
To: mripard@kernel.org,
	wens@csie.org,
	linux-sunxi@googlegroups.com
Subject: [PATCH v6 1/3] ASoC: sun4i-i2s: incorrect regmap for A83T
Date: Mon, 26 Aug 2019 20:07:32 +0200
Message-Id: <20190826180734.15801-2-codekipper@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826180734.15801-1-codekipper@gmail.com>
References: <20190826180734.15801-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_110740_518735_3F2968E3 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, Marcus Cooper <codekipper@gmail.com>,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, be17068@iperbole.bo.it,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcus Cooper <codekipper@gmail.com>

The regmap configuration is set up for the legacy block on the
A83T whereas it uses the new block with a larger register map.

Fixes: 21faaea1343f ("ASoC: sun4i-i2s: Add support for A83T")
Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 57bf2a33753e..34575a8aa9f6 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -1100,7 +1100,7 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
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
