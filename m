Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B191812AE8D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 21:37:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=551GPxY0ZVHPTD6uwqQZKPiJhRklePMRYdK9DhrqQjc=; b=E81E4z4u1qAUYU
	e7lyE91G+rY2qsDvsHfKDbQEfUqHBJSNJxuSzII3wHLQpvqpmWE5MrTiZQVoEUMUfBBvztmx57xGY
	HhBfUSXRFYPMkiin/h5XscBHmE5wVbqRiKJlc+tKozzORGfZPwLvoAXKZANYEenXa/WvIWnfTMSBY
	jS0iOSy9MSlzSMmp/0Utmk4esPkWgWWkqXn/hBEr5z5c7Hl+stmG0Vk0HLUSr+AJ1rlUn/0Oh4Lrb
	tquDskricJarjUGOWsppMdTJODSIQ1yT4cyE+fJLFPFf0r7xGOsCxfOjWzYviJL8u0buSHCnwdlZd
	LCrdhv4e6aRwcSiCeKzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikZt9-0005Qo-R0; Thu, 26 Dec 2019 20:37:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikZsg-00058g-UG; Thu, 26 Dec 2019 20:37:16 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so6648323wmc.2;
 Thu, 26 Dec 2019 12:37:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BlpoftZGGt5ZxOkzr3Ne9r9WJXqLw/2Ls5n+O9xqa34=;
 b=TXs0SardSpGDFiz51f0yVTJjcIODkle3g80fyVa23yKt5iYDgaTARfMq5JqsWOYcui
 I0JWzavDBYEDVd/pZWQffFwZitdT62trvturTiFl1DbZf8dNd9hbEtIYWe0R5YHeuu8f
 g0xpHZwRUmAQFuK5M23+3b6MnlvJJEw9u+1hhitRu51ByYFg777JWBBNPng3WUoMsUZ/
 cdtAKSaZwkU46Nt8w3SIojkAYAGmSsAYqcFeK0UM8Jnohtdd2BCMrnfM9+NJP6Y1/KmC
 8yhQAW8mu1n01I7STIjjolKGOsCSm4yjumqawxwTZChQpViGIZj0HDhu3C/XQOqADZls
 7T1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BlpoftZGGt5ZxOkzr3Ne9r9WJXqLw/2Ls5n+O9xqa34=;
 b=H6q9yMBihpk0VhgtppOnGhnTRcDO/EDRyQAQ17MoKtrz80+GSJ6BQSEpdGM44DeHU5
 1xZQivpbvVR2LTL26Hc5MPmjXZbCJi5cT7udMgGtvpCnLd08DWx1rps/tqJTQjcAimA8
 zYa4oeiDDFCIdx0zgQxTfxcpoGrrhICvFkaElk6yjApGRgjif6mvldiaZRrxuYp8aygK
 0bRo9mqfzV5S2Qz0yzYpD64MBogCHk3jbhwLvW4qU46bIIOHnkr/RtHf++ixY9LaUq7X
 3ZejdUhvCz0tmkigFlySmg3UjE8iUcv3G2T34ayHNbNJF76xQZxFSty9OlJSQYQAHCpe
 loGA==
X-Gm-Message-State: APjAAAWCUfrd2TCJ3V2m0qmROYe5GhxWXho2ue8ufj1f0nFPfenPzICx
 3lbyr0h/TnPzyrTws/yfsmU=
X-Google-Smtp-Source: APXvYqxExgvLmz+gPYWg6NWhbJXHwBZLfEIvVZDWTQrIG6tV/S5JlL+7XfMsoQbMEZbc/nVRgwahbA==
X-Received: by 2002:a7b:c4cc:: with SMTP id g12mr16019186wmk.68.1577392632618; 
 Thu, 26 Dec 2019 12:37:12 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id q3sm32911665wrn.33.2019.12.26.12.37.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 12:37:12 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: andrew@lunn.ch, f.fainelli@gmail.com, linux-amlogic@lists.infradead.org,
 jianxin.pan@amlogic.com
Subject: [RFC v1 1/2] net: stmmac: dwmac-meson8b: use FIELD_PREP instead of
 open-coding it
Date: Thu, 26 Dec 2019 21:36:54 +0100
Message-Id: <20191226203655.4046170-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191226203655.4046170-1-martin.blumenstingl@googlemail.com>
References: <20191226203655.4046170-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_123714_970623_47611ADC 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use FIELD_PREP() to shift a value to the correct offset based on a
bitmask instead of open-coding the logic.
No functional changes.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
index 0e2fa14f1423..1483761ab1e6 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
@@ -5,6 +5,7 @@
  * Copyright (C) 2016 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/clk-provider.h>
 #include <linux/device.h>
@@ -32,7 +33,6 @@
 #define PRG_ETH0_CLK_M250_SEL_SHIFT	4
 #define PRG_ETH0_CLK_M250_SEL_MASK	GENMASK(4, 4)
 
-#define PRG_ETH0_TXDLY_SHIFT		5
 #define PRG_ETH0_TXDLY_MASK		GENMASK(6, 5)
 
 /* divider for the result of m250_sel */
@@ -261,7 +261,8 @@ static int meson8b_init_prg_eth(struct meson8b_dwmac *dwmac)
 					PRG_ETH0_INVERTED_RMII_CLK, 0);
 
 		meson8b_dwmac_mask_bits(dwmac, PRG_ETH0, PRG_ETH0_TXDLY_MASK,
-					tx_dly_val << PRG_ETH0_TXDLY_SHIFT);
+					FIELD_PREP(PRG_ETH0_TXDLY_MASK,
+						   tx_dly_val));
 
 		/* Configure the 125MHz RGMII TX clock, the IP block changes
 		 * the output automatically (= without us having to configure
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
