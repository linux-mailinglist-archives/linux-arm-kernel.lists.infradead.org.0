Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A740F50BA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5onO6pP0o2wdAPGFEZSmHtAD5NPqgS7zuT/p6Dx61g=; b=XSzcLVjm/SLc33
	eusu9XVa8G6QS7+ydwvswo8gyRpdbRWk+pse25r9c145YxLiwGOG32cMBE0+Etnwf4PXOfdoiBt5s
	XTRYpXRvpsu96BM8xsXX1qebFPS7MpJojRX9/Z2iCybAkjemRP2O9aGpS1RgihfUtfxuONWATtB5c
	eCCGwhg8QD1vJXUWuLbRYRopp8DmujzAsibPlGmDAw6EOjDkCjdnMhgWsPoABQU9NGZnJi80krEPN
	WeHjZsZvE3aj4WNwGrSENxGpQ1HCqv0PuumPEP/Uc8Jni9pUh42/EXGX/41L8yC1HHUAoTe1KxiQr
	G+SPPpSuTx+CfQYdN1Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOq1-0001pB-IM; Mon, 24 Jun 2019 13:16:49 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOnN-00081l-FO
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:14:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id x17so13845394wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 06:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hwJfFyhhvRsina5sbst5ytafYocQofbOLZV0dXVMw8Y=;
 b=znbgMB7xt0WVpnamMVqZHdETd0ihHMGExjiUFxlp3G9YizldIBWaQef0fCDjATzk7M
 EVTNoxTKq+/igSlV4eX9kX+hEUS9N8gviLhbBXIMEurndfUIAME4iXOSfbPhtBWwwgFr
 Qnsv7C8vw6GwxS935vlQak9VAGoXE3F6YYw2V7fU708c7KvCjZcug4DhXWNM3YeJdnC5
 KnuUwMLAQ2J07qlSzuv+vRBoOPpso5tDyyXGui+DwMINLsYfZgxbp8Y374tnO6iDrn+C
 DVI6mIuH/FqflhIHSjw9RBPJWEA3PbGLIoN9Qz/N8xpv2uqCaF8E49mt8TprrgUYgTVK
 jp5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hwJfFyhhvRsina5sbst5ytafYocQofbOLZV0dXVMw8Y=;
 b=FSUJ5wOHmIr42ZFwkXmNwLbaU78u6Spg5GVpxVLDy8bGpam7632YIMls18lbK1ex3q
 ZfPMWNbUF8GQP3wQGR/2QkiJ+BeW0FU7CISIXFUsxgGvch+mdI9FvJPCOJT7rkvz0yT+
 uQfw4GSACu1p4OZtrnJoWseq0/cZ/VvhgFbx+2XbCNG7HX2sJXdiepI9O/pBTMVb15Mi
 ofg84bZbZ1EO07UAHnwlzHINeqUsa9YQoOYRsGipziexXJOtxrJS/9bAja5Y2y8MWGuL
 Emno1aw6K5QmOUqYkdWXnZe0XoVEpRwzM9BtdACpeZgPqsaF2j0DtRpXt1RORag/tQBj
 Wcnw==
X-Gm-Message-State: APjAAAUfmr/aWvp41lO+liZjxNk/sIsVeAjlcCO6wBH9M11doZvgAtGW
 05Mi342X7PVZt033I9Yi3cijiQ==
X-Google-Smtp-Source: APXvYqz6IEyF22X4CA4PFAUz9/IJDUYISVDGCvMm/IKKad7O/BeUf/my1+zJNFPwjydPUUXwUBk4xg==
X-Received: by 2002:a5d:53c2:: with SMTP id a2mr59111958wrw.8.1561382043483;
 Mon, 24 Jun 2019 06:14:03 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id y2sm9535526wrl.4.2019.06.24.06.14.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 06:14:02 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH 02/10] ARM: davinci: WARN_ON() if clk_get() fails
Date: Mon, 24 Jun 2019 15:13:43 +0200
Message-Id: <20190624131351.3732-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190624131351.3732-1-brgl@bgdev.pl>
References: <20190624131351.3732-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_061405_538962_3147942D 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

Currently the timer code checks if the clock pointer passed to it is
good (!IS_ERR(clk)). The new clocksource driver expects the clock to
be functional and doesn't perform any checks so emit a warning if
clk_get() fails. Apply this to all davinci platforms.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Reviewed-by: David Lechner <david@lechnology.com>
---
 arch/arm/mach-davinci/da830.c  | 4 ++++
 arch/arm/mach-davinci/da850.c  | 4 ++++
 arch/arm/mach-davinci/dm355.c  | 4 ++++
 arch/arm/mach-davinci/dm365.c  | 4 ++++
 arch/arm/mach-davinci/dm644x.c | 4 ++++
 arch/arm/mach-davinci/dm646x.c | 4 ++++
 6 files changed, 24 insertions(+)

diff --git a/arch/arm/mach-davinci/da830.c b/arch/arm/mach-davinci/da830.c
index e6b8ffd934a1..220e99438ae0 100644
--- a/arch/arm/mach-davinci/da830.c
+++ b/arch/arm/mach-davinci/da830.c
@@ -751,6 +751,10 @@ void __init da830_init_time(void)
 	da830_pll_init(NULL, pll, NULL);
 
 	clk = clk_get(NULL, "timer0");
+	if (WARN_ON(IS_ERR(clk))) {
+		pr_err("Unable to get the timer clock\n");
+		return;
+	}
 
 	davinci_timer_init(clk);
 }
diff --git a/arch/arm/mach-davinci/da850.c b/arch/arm/mach-davinci/da850.c
index 77bc64d6e39b..dcf3536c46bc 100644
--- a/arch/arm/mach-davinci/da850.c
+++ b/arch/arm/mach-davinci/da850.c
@@ -681,6 +681,10 @@ void __init da850_init_time(void)
 	da850_pll0_init(NULL, pll0, cfgchip);
 
 	clk = clk_get(NULL, "timer0");
+	if (WARN_ON(IS_ERR(clk))) {
+		pr_err("Unable to get the timer clock\n");
+		return;
+	}
 
 	davinci_timer_init(clk);
 }
diff --git a/arch/arm/mach-davinci/dm355.c b/arch/arm/mach-davinci/dm355.c
index c6073326be2e..a38a3648345b 100644
--- a/arch/arm/mach-davinci/dm355.c
+++ b/arch/arm/mach-davinci/dm355.c
@@ -743,6 +743,10 @@ void __init dm355_init_time(void)
 	dm355_psc_init(NULL, psc);
 
 	clk = clk_get(NULL, "timer0");
+	if (WARN_ON(IS_ERR(clk))) {
+		pr_err("Unable to get the timer clock\n");
+		return;
+	}
 
 	davinci_timer_init(clk);
 }
diff --git a/arch/arm/mach-davinci/dm365.c b/arch/arm/mach-davinci/dm365.c
index 2f9ae6431bf5..8062412be70f 100644
--- a/arch/arm/mach-davinci/dm365.c
+++ b/arch/arm/mach-davinci/dm365.c
@@ -784,6 +784,10 @@ void __init dm365_init_time(void)
 	dm365_psc_init(NULL, psc);
 
 	clk = clk_get(NULL, "timer0");
+	if (WARN_ON(IS_ERR(clk))) {
+		pr_err("Unable to get the timer clock\n");
+		return;
+	}
 
 	davinci_timer_init(clk);
 }
diff --git a/arch/arm/mach-davinci/dm644x.c b/arch/arm/mach-davinci/dm644x.c
index 1b9e9a6192ef..7a6b5a48cae5 100644
--- a/arch/arm/mach-davinci/dm644x.c
+++ b/arch/arm/mach-davinci/dm644x.c
@@ -679,6 +679,10 @@ void __init dm644x_init_time(void)
 	dm644x_psc_init(NULL, psc);
 
 	clk = clk_get(NULL, "timer0");
+	if (WARN_ON(IS_ERR(clk))) {
+		pr_err("Unable to get the timer clock\n");
+		return;
+	}
 
 	davinci_timer_init(clk);
 }
diff --git a/arch/arm/mach-davinci/dm646x.c b/arch/arm/mach-davinci/dm646x.c
index 62ca952fe161..97fe533726e9 100644
--- a/arch/arm/mach-davinci/dm646x.c
+++ b/arch/arm/mach-davinci/dm646x.c
@@ -663,6 +663,10 @@ void __init dm646x_init_time(unsigned long ref_clk_rate,
 	dm646x_psc_init(NULL, psc);
 
 	clk = clk_get(NULL, "timer0");
+	if (WARN_ON(IS_ERR(clk))) {
+		pr_err("Unable to get the timer clock\n");
+		return;
+	}
 
 	davinci_timer_init(clk);
 }
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
