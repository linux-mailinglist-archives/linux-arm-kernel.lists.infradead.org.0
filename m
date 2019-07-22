Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DED700E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:20:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ufar89+Giq7jXpX1OTgn4mck5apBkihsc+yiLUciAjI=; b=AMAw0MaL8WE0Ui
	e7hupigbHBpsi5QG0Td8f4Oq3uPzACgqg+6ThpGrgYIwtpoKvy1lK7DNKmQGZEF8SoV8PEe94AnyU
	Ajtz7MimV5VKTZuzESagKy8xZmGL5lNSiiB9TgixKreZc3wNFGpyaqt3MYYjZVVm44rpEgyx6zoIL
	Fx3GKcKUHMG1ugIwv2TZtza+DxH7Agfwbn0DtTEEVL1fmwJEwDvXLQFbtac1BoDJHhv8pVXKs3Fz5
	/UWZZ1ICvaUkP4P+2lp6QKn6e3qIrS7+nj9GKk8dKAMAqwCtxVPaR8bZwEAfm7KFbtd2p2Hqt8yqb
	P2t+4gM/HwZGfkaLePGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYEV-0005w7-GA; Mon, 22 Jul 2019 13:20:03 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYCU-0004a4-O0
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:18:00 +0000
Received: by mail-wr1-x441.google.com with SMTP id x4so39354354wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y1ffjQ0IDz3Rx/A0gmq8SxV+cunonTZVAynZexDe78o=;
 b=x1issdWAgb0eS09Lxw7xPwhpwTU/39XeACBh9kB60ut2VxtDWkMyag4EgQnTlwUfcf
 yMqzIL8posvumO6ojHZU+KQZKHkPAw0TxUCc1gmsUz2RVLABK2P9nilaNmQFpxpXZe4R
 558gUEn1aEzsxJgffzJ00EpOjdSOUZtdK4jdgB7FxC7chGee4Ja/xYIG8jJQfLPynNzN
 xInD69jezWLr0edoE1fOOGAGfi4KPZlfm9BWTJ+GRtXqjwwKBtLZI8NDotGACdm1JFnT
 0Kb4dQWEo7m/0EG6jO5yAXsTFfNWyy6543RHwZpFOkLoye+XrXDF09gecVRHlC29kGJU
 nFMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y1ffjQ0IDz3Rx/A0gmq8SxV+cunonTZVAynZexDe78o=;
 b=kLYckOJReGDc8QK7QM/sV8omjHN0xBID4zP7pGPFGHllaH8nh7A8P7ZNyJpjmUamjU
 m48/Eoxgj4pbCm+J8CHnuJDNj6rO0jfq3WfYI5rL2WAL34LYKBSBWLWcB5LjlRn7eeI4
 8lt+pWkU7gaVqOECgOtxwEucdLo/vrS9A11dzz8QMt9eWF6Dgii9AYi9VkzZgegm7iLb
 WT4fg5n4KCuPiZps/IPbj03omODYuGZh3WP+0W4sXgC4jD+D/OrLN6B2II4RFN0UqEuR
 m5UzTTy+6bAssJW8Hximg0KUslEIhVU/aM67syxMCxE+2V0NY1NAWLMZYbN9rCHTxx4c
 6wsg==
X-Gm-Message-State: APjAAAVcff9HPQr/LIEECI43YO1cPZmUPmECHwkgSit/p/BvjTKCJlDx
 129dIdWOxYLl3KBi08fYlkI=
X-Google-Smtp-Source: APXvYqxAM4HVkzwLrfr/Q9QNR2M395lkxfoX//pzPMx9anNZm+rzLlLqHPhKZOS4R2VQWLj7Nv8Zsg==
X-Received: by 2002:a5d:6144:: with SMTP id y4mr76325444wrt.84.1563801472845; 
 Mon, 22 Jul 2019 06:17:52 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id z6sm34156657wrw.2.2019.07.22.06.17.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 06:17:52 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>,
	Kevin Hilman <khilman@kernel.org>
Subject: [RESEND PATCH 01/10] ARM: davinci: enable the clocksource driver for
 DT mode
Date: Mon, 22 Jul 2019 15:17:39 +0200
Message-Id: <20190722131748.30319-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722131748.30319-1-brgl@bgdev.pl>
References: <20190722131748.30319-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_061758_873815_3F853829 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 David Lechner <david@lechnology.com>
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
index 33b00579beff..92ff58be1a43 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -583,6 +583,7 @@ config ARCH_DAVINCI
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
