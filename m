Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2111700DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tvIE3J7UYFJqTnke2sMchKbXrTwtIpsAUkqlCawrkTc=; b=ioKdj8aY3itp5p
	cddRScv4GbzAGcvQZutM54tpYP5FDcb3DkXYharSPKUT5KNRycJ0a+hC5IcChp2NkQLHEkgfIvD72
	sRdxCtGwAnRPdbyGjFvpv2vezFczOgtqqAc4rhAbgtK9dEzFba9JMieb/6YXShm/NIG3qETNNeCOr
	T1rRiE2jlTQ4lMy8OdPTjCeebx7wckaS2CualrT9cpgnDhS/I+ge5yc78KRpt/TNxSMkVchzDkkRP
	zSZNeKmMZz6pg4j0Q+lhc4DmsYeXp6Leo1vIeZDDOiSUDElzLdjojoipJGNPOuqjgZzbH/unctSH0
	khR3rkccBsglwpuG8vFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYDp-0005TS-Bu; Mon, 22 Jul 2019 13:19:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYCU-0004lY-5z
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:18:00 +0000
Received: by mail-wr1-x442.google.com with SMTP id n4so39456866wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i1AJwx99L7FOyjXOzW3yVuzHOgblADWD2c7KtmC/N3c=;
 b=pIoC9oM2SJ5bTQ+eRC7d6ReZipWlFuv8mhyOuLWGmoiM8hihjKDbcYzk6hANScrgJN
 rW05dvNGO4vHZr4dMUEDVyGjjjkB2g5tV8ivnNDEywzlkYWYyP/3Vlq6BTNwMjUcC6DY
 stoKLsBEJ9Kpf12vzhujsvcYIhPxHMZfEuKIPQBcLMVeL32Lml1EKxjHmsp6ic+ayM0X
 R6xwxui+6Mp9JKkkz1/pKDBpveHOE12dVpW70c1oXe+UbW+C4k8HFEDPISpAj+uiGS1i
 BpS1re/U9WlWq6XGrylr1Xep7OvA/lahP+EhtkjgH1pAZ3T4a+2opzxxmr/W+wrv/oCB
 QmXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i1AJwx99L7FOyjXOzW3yVuzHOgblADWD2c7KtmC/N3c=;
 b=V6EyRRlZAWXh0edFlx2OYAuJqkjCbbLpJVAX4L7djXbTBrJs9004Hwg5kESxMopLo+
 oiLpKr1BeX1WS0M3+u16xWyRHdCCggJ6k6P2DMt3vp5sT9AlhvNu2Ehr9Q9mWqdLWXjs
 uCCU5BwLIuU5SGyUKGr5feM5diZS2nsSweN3d5aIpgbTjxPyuy78Z8XdxOLpbZn80gZn
 AO0V/dKTtiuPhcg4SJixmY0ykMy5/iafm4uim8bH58pR+tr909GKAq0Lszt8W/NFNPnd
 ltBPlQM5F31aV6M0V7DACQLT4QuGcTJlQYB9y33eVCV3XQg0Rv6rJwDpphRtmcFccce6
 zZYA==
X-Gm-Message-State: APjAAAUeaTURy5jFNZg4qHTqH3dVTgz/Ei83ZlaI0wvaDBhY/UCvyYM0
 +HsD9Z7TLGcxC4+egOPI7A8=
X-Google-Smtp-Source: APXvYqz3On9bPHv79/RsBc+0dwicwKP6apaQW2ZmacAnsdUnKzLS+lJLsX2BS/W4UpcSrcRApRCn9g==
X-Received: by 2002:a5d:4e4d:: with SMTP id r13mr25919456wrt.295.1563801477023; 
 Mon, 22 Jul 2019 06:17:57 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id z6sm34156657wrw.2.2019.07.22.06.17.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 06:17:56 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>,
	Kevin Hilman <khilman@kernel.org>
Subject: [RESEND PATCH 05/10] ARM: davinci: move timer definitions to davinci.h
Date: Mon, 22 Jul 2019 15:17:43 +0200
Message-Id: <20190722131748.30319-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722131748.30319-1-brgl@bgdev.pl>
References: <20190722131748.30319-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_061758_482899_879E2307 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
