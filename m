Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C165B50BAE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:17:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tvIE3J7UYFJqTnke2sMchKbXrTwtIpsAUkqlCawrkTc=; b=Rc4QzGX1S0jFYF
	4WFb3R+Ca525/UQ6s2XsaBivvX3OE+pFq9Woy3vPLkh58gerKQMzliQgtS74arNJRe6cz2kjo8P08
	F1xHT2Y+rz+PUorLmwmvpmeWsF2zvc2YfpSKflq+GK+mDjwtw16UTucMEl1CUrtFiAIcaSrTt1wQJ
	cF+I9uT99Qp39ERNgMXnncYxAU5JS0RlLJ+USr48JkBiL4b0oTmiMd5zb8hd3f3xbRlwIDPPZsGIn
	wIyLYeWaH3dLDlqYqkM42ieLibjw5hn43rrhSArsYNBqE0D1I3YYzuvbVFkL5RXvvdQCk/ztr8cT2
	IswgXyDUQnKnTyd6sOGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOr0-0002KT-1o; Mon, 24 Jun 2019 13:17:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOnQ-00082u-H2
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:14:10 +0000
Received: by mail-wr1-x441.google.com with SMTP id f15so3982942wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 06:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i1AJwx99L7FOyjXOzW3yVuzHOgblADWD2c7KtmC/N3c=;
 b=WOySg19uwixtLJcA34iXOVTAvsO3Qw7eg/4J7JqNLGkwewilaFe1+y+jlxscwDQ876
 dvRwKZ5JZPTB1yoVLftIgMN4jeQxDtptUtHagZ/Et6tO1ycxiGn/CmruZsmIMiCoLJEY
 KTF0zwd9AuaAEFxQXQvEWMLHJVFKEhZ0GoW7lyU4ff+JznxNQdHHPTfTStIOZ0/13f+G
 op9eMVHrXho9xnud3GO6aHei8hY9xVc5CDtPT/Tt2fdm8jiY9TK15aHkdVK8yt/ZiYV8
 qV/DurgpQw7hQLCbJDdVjfec/B0KNnKik9bfIZOOp9Xm7ErXTj3MDQleBuixVzAK5KI1
 b/ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i1AJwx99L7FOyjXOzW3yVuzHOgblADWD2c7KtmC/N3c=;
 b=aPX9cU0we+SrP/1FVjkT5/RbEJXQKngyOFWNRapq29RYy0PPLnULlbkEEltboVo2AI
 ft5ZLLTqO8FfUwb7DsNJM+RJykahVHwQJawejERCMlWJTLai+gg3K0k5KGj9MR+P6TRt
 gs88oV+rMxxGMXSbv7E7VW7EmuK9L+lsmiRDQvXkr4eymfSQsPaTt4EZz/sVpn6ws168
 Z5b04cpRndjE7lcvhIEJfQARgPQCJ27P07i051IpbXoMJU6Kzz1Y5dR9llIN5j8z/Fh1
 lNT0xmhe/D2ez8UBP42pwNgl9yOoMc77J+WrZt2TiiaozFpYBt8LzzrqIPhwtQgZmxu7
 R3Ig==
X-Gm-Message-State: APjAAAWFE5lFP2W9QQywAbYf+NzhHduB6WkOm059XzWA1XwYcNh9zUFy
 zBFvvCCmTMEpsjqQq6nmMjIQNw==
X-Google-Smtp-Source: APXvYqwMrGE/b2UQOnAjqoPXTMcUtRBbxCyCrQMb4pPMV12KOWmxfAgxSMS2EEyzVVZXU67ssEcvPA==
X-Received: by 2002:a05:6000:d1:: with SMTP id
 q17mr58315452wrx.40.1561382046572; 
 Mon, 24 Jun 2019 06:14:06 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id y2sm9535526wrl.4.2019.06.24.06.14.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 06:14:05 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH 05/10] ARM: davinci: move timer definitions to davinci.h
Date: Mon, 24 Jun 2019 15:13:46 +0200
Message-Id: <20190624131351.3732-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190624131351.3732-1-brgl@bgdev.pl>
References: <20190624131351.3732-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_061409_059510_DA44F984 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Boards from the dm* family rely on register offset definitions from
arch/arm/mach-davinci/include/mach/time.h. We'll be removing this file
soon, so move the required defines to davinci.h where the rest of such
constants live.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Reviewed-by: David Lechner <david@lechnology.com>
---
 arch/arm/mach-davinci/davinci.h           | 3 +++
 arch/arm/mach-davinci/include/mach/time.h | 2 --
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-davinci/davinci.h b/arch/arm/mach-davinci/davinci.h
index 56c1835c42e5..208d7a4d3597 100644
--- a/arch/arm/mach-davinci/davinci.h
+++ b/arch/arm/mach-davinci/davinci.h
@@ -60,6 +60,9 @@ void davinci_map_sysmod(void);
 #define DAVINCI_GPIO_BASE 0x01C67000
 int davinci_gpio_register(struct resource *res, int size, void *pdata);
 
+#define DAVINCI_TIMER0_BASE		(IO_PHYS + 0x21400)
+#define DAVINCI_WDOG_BASE		(IO_PHYS + 0x21C00)
+
 /* DM355 base addresses */
 #define DM355_ASYNC_EMIF_CONTROL_BASE	0x01e10000
 #define DM355_ASYNC_EMIF_DATA_CE0_BASE	0x02000000
diff --git a/arch/arm/mach-davinci/include/mach/time.h b/arch/arm/mach-davinci/include/mach/time.h
index 1c971d8d8ba8..ba913736990f 100644
--- a/arch/arm/mach-davinci/include/mach/time.h
+++ b/arch/arm/mach-davinci/include/mach/time.h
@@ -11,9 +11,7 @@
 #ifndef __ARCH_ARM_MACH_DAVINCI_TIME_H
 #define __ARCH_ARM_MACH_DAVINCI_TIME_H
 
-#define DAVINCI_TIMER0_BASE		(IO_PHYS + 0x21400)
 #define DAVINCI_TIMER1_BASE		(IO_PHYS + 0x21800)
-#define DAVINCI_WDOG_BASE		(IO_PHYS + 0x21C00)
 
 enum {
 	T0_BOT,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
