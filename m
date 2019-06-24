Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D77DD50BA2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7gUnBdjznnfmoheBh/8XI0+xB94kE/itSz7AwYrpso8=; b=We7zutHwM9zlEE
	GL+zYvWdP6/zqLN0m4gHLOi/eEQC7F+8OgBsFgFMA9UCg+gbneOK9XCdlbwNjsjma+0iO8cwkYTt6
	FpUpIpjWdUEOgRg8e11bouDK7glaxAlxPL8RKJw0EHxtWfO+lbbS2UDKhreihr8F6nr7scrHNVRC9
	soSPaR7ph6nAfOt4bOmGGpPEl17LLY43Lt+SmaJtl+oAnn8fRvChHWiitTKsQrr6LHpMt7gIg4cOp
	5oVP7f6bJrSWDOucGk9BHdtHezwhMt3z/+Pxv3i7RxGkQtTFe3KX2Ue5e/7EJHbpjygnUNUGWleRL
	iI451sb0b9LqT38HXAjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOpB-0000tG-24; Mon, 24 Jun 2019 13:15:57 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOnM-00081i-7v
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:14:06 +0000
Received: by mail-wm1-x342.google.com with SMTP id h19so14249434wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 06:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hgoJkj0j+DeXgOTwWsaQ9czRgkH7ct8k79BzMkAo21I=;
 b=ahro5UIyPK+V1/+XQ2wF7f8dq6Vslp14qbgOTRuMo9dats4tus9ss1qzOMDpHq7YZW
 JxRpH74WRxkquoVN9IdhpOk2FO+VJhm40EotHiWfXWXpk8ZQxqj1wfCZeamdcI36zIJB
 u/UxYzud+mnd2X/n2spcFq24O66oodb9QUTTxnLG3UQF/Df5C7V6zWiBe3n2s5ZBjn1y
 FcZCNiMXQHTZjty72LH/la2kkoabnM2vx/uRTIOIVaxHPG0QoXTktQiTMd5yHfoBOgJD
 fV0AMIoIZk3SINq02FJLkol+S8VW8JByvnWRU9LPAzM3b7oYBMj2t50d7JTVMW2Ohk8p
 XFaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hgoJkj0j+DeXgOTwWsaQ9czRgkH7ct8k79BzMkAo21I=;
 b=NvVKa7Pg2TXOp57ZCYxQyiFl1l3Fx2T2ZlH20+h/emosk6H8VGHoDtZF+DK0RvrvUl
 dlVJWvgpmXGyEIxbrYJEtS4KowhH9XG6xlkUJj0FLM6YJ/kMCIkYX8y6s86gsAS819Zb
 /dEQAe/AbjR/j7+w5Min0IbB9bXfyrud52BeEYo/mEZjT6ExVeeFOVOx5uWBod5zFG2a
 wKsNgoratookHryaK4cEug5IEqRkKBg8y31M8GV7XNuk/B9/WrKfCAyQ2xMmO2BtoYBs
 cFHvJN0fRoMyEZzvopoEuIaybPJlo1VYv1+hjoSQ3b1Ur1hwlE9cP0LbtolXMzF3R7Zc
 CPiQ==
X-Gm-Message-State: APjAAAXx7d6UFcpdSEBiwkSFMe0+WJqsGo4O2Z1QIqIli3PCFEI8muf1
 eJg7Wenu/NoRGB6mYTbnL9JDTQ==
X-Google-Smtp-Source: APXvYqwgIQca7idKo9ymapE3T5OO8x8pqigBLy9eB93kM1E6PWHv6ixEWkOsB241y9HTz4OBWoSVzA==
X-Received: by 2002:a1c:6a06:: with SMTP id f6mr15926580wmc.159.1561382042502; 
 Mon, 24 Jun 2019 06:14:02 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id y2sm9535526wrl.4.2019.06.24.06.14.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 06:14:01 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH 01/10] ARM: davinci: enable the clocksource driver for DT mode
Date: Mon, 24 Jun 2019 15:13:42 +0200
Message-Id: <20190624131351.3732-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190624131351.3732-1-brgl@bgdev.pl>
References: <20190624131351.3732-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_061404_559938_B5F411C1 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Switch all davinci boards supporting device tree to using the new
clocksource driver: remove the previous OF_TIMER_DECLARE() from
mach-davinci and select davinci-timer for ARCH_DAVINCI.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Reviewed-by: David Lechner <david@lechnology.com>
---
 arch/arm/Kconfig             |  1 +
 arch/arm/mach-davinci/time.c | 14 --------------
 2 files changed, 1 insertion(+), 14 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8869742a85df..9fa546ec6c1c 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -588,6 +588,7 @@ config ARCH_DAVINCI
 	select ARCH_HAS_HOLES_MEMORYMODEL
 	select COMMON_CLK
 	select CPU_ARM926T
+	select DAVINCI_TIMER
 	select GENERIC_ALLOCATOR
 	select GENERIC_CLOCKEVENTS
 	select GENERIC_IRQ_CHIP
diff --git a/arch/arm/mach-davinci/time.c b/arch/arm/mach-davinci/time.c
index 5a6de5368ab0..740410a3bb6a 100644
--- a/arch/arm/mach-davinci/time.c
+++ b/arch/arm/mach-davinci/time.c
@@ -398,17 +398,3 @@ void __init davinci_timer_init(struct clk *timer_clk)
 	for (i=0; i< ARRAY_SIZE(timers); i++)
 		timer32_config(&timers[i]);
 }
-
-static int __init of_davinci_timer_init(struct device_node *np)
-{
-	struct clk *clk;
-
-	clk = of_clk_get(np, 0);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	davinci_timer_init(clk);
-
-	return 0;
-}
-TIMER_OF_DECLARE(davinci_timer, "ti,da830-timer", of_davinci_timer_init);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
