Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A721374EEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 15:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29kNDBl/O8B5Kl15C95HOO8JcGWLyy9UR9QkY56sqlM=; b=D9GA7c04FZx8rZ
	3DvG0W6702wuSoPA6CetiJPpST3arXm7wIZ+Pmp2wMUmbX/GGxQb0YCvGCM3LOR4T6/riXXsWHa7F
	XR6SILCvlPGbIbBBG0WTW/ZpNHX1ArC68ipX3iL7N+0lKsGVZanJmLtHjvSH/yrGdvqEakQ4VlDcp
	NR775KmGkZ8Y4/3nLOOs4TjVrsQ0m3WWeH6KhPimNhDnz5i3jl/or38TYeFT271d9/21ilWjVHdJm
	PYctnDgHsN2ZV4NiAXJz0euSETgKNJt++ZN265fRSCPfvlmVyI/mC+4EqskKvwH10BJAa+8b5RD0t
	XN0jhkiCnLkNgGltRkSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdaL-0003wt-MS; Thu, 25 Jul 2019 13:15:05 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdYT-0002kQ-J7
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 13:13:11 +0000
Received: by mail-wm1-x342.google.com with SMTP id g67so40606430wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 06:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WPFUtxJDXKra9fqJ0rdgv7MWa5JnMhUuO280IUrtqLM=;
 b=OWEjS7Hf1Kk56zL7T/30GFyMXn6LUQKT6Ts67SfuOj67mvRUIrf4EyBnH0R2RBATWt
 qxQu0AHjxM6cKbcwz7nSqeQ8w/cIT51lxpcfrgGn1B3VJyD1R6dcigM1uO+rfVyDYAWn
 qn58p0EyOqw1zgDvQz+NfS7ZpkZ5uSFzmPnlWXafFOoxhrxk9K9G9HNMOgpveXOsvvAz
 7DWqkBRXFZaQZeamMHaJfN1N4ViJ0Yf9u5IR8jFaNN7KA2l9jsNpHYywHVI4FZrORkQP
 8CkWLwHGyp4qHToMT+0GTGYDR5OAW8+SzzisjCl8fYnu8kDiMJDe+TlOCgK1bBNYQOlL
 nO6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WPFUtxJDXKra9fqJ0rdgv7MWa5JnMhUuO280IUrtqLM=;
 b=TBqfvdZwT7aMrv45XFd/h9DWogS+0N6bM7cX9nWeWHlRrRJRE9JNKdp+UdQMJ9EtXK
 uK518KvWxa+KlkSpmoIGwprJu4ak1egzPYBCIhINZNNmTGrn2fDNy65fGhS4Bx1jWCac
 N+u8Wv21GxnAGikaDHRTGOS8u5KEPvICZvu01CvMPR3aOlYb6l8T4pJgd4hJuxc1KCzp
 Lb7VFZCu8Wd0x95sdVSTgF4am1KwQpEvobBJ+p+E70lVRIltQgJINblc1KpOGdNQ8+Sy
 yhwwP/SB7RZ77yEXGsAbw2QYmbHX1o0SKDlRqwALsB4KPxzDFHvA93/BSo5FuTlLMSH3
 jyxA==
X-Gm-Message-State: APjAAAU8+zNEsnrcf7ZOd2Zo0Tp1rqMa0aRy6qdw693ux+bDdNz+ixOs
 bRwxczAvO1mkrVzaGSZ5ph0=
X-Google-Smtp-Source: APXvYqwDivgfLYdB0sN1gN2PO4Z6g44XVRn1LUpNdsylFxeXh0Y0+CckexauNmiwoeRBfnFoB8M5CA==
X-Received: by 2002:a1c:9696:: with SMTP id y144mr79410440wmd.73.1564060388417; 
 Thu, 25 Jul 2019 06:13:08 -0700 (PDT)
Received: from localhost.localdomain ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id
 z7sm47119735wrh.67.2019.07.25.06.13.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 06:13:07 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, David Lechner <david@lechnology.com>
Subject: [PATCH v2 5/5] ARM: multi_v5_defconfig: make DaVinci part of the ARM
 v5 multiplatform build
Date: Thu, 25 Jul 2019 15:12:57 +0200
Message-Id: <20190725131257.6142-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190725131257.6142-1-brgl@bgdev.pl>
References: <20190725131257.6142-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_061309_644490_63E193A5 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Add all DaVinci boards to multi_v5_defconfig.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/configs/multi_v5_defconfig | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/configs/multi_v5_defconfig b/arch/arm/configs/multi_v5_defconfig
index 201237002c65..bd018873e47a 100644
--- a/arch/arm/configs/multi_v5_defconfig
+++ b/arch/arm/configs/multi_v5_defconfig
@@ -14,6 +14,18 @@ CONFIG_ARCH_ASPEED=y
 CONFIG_MACH_ASPEED_G4=y
 CONFIG_ARCH_AT91=y
 CONFIG_SOC_AT91SAM9=y
+CONFIG_ARCH_DAVINCI=y
+CONFIG_ARCH_DAVINCI_DM644x=y
+CONFIG_ARCH_DAVINCI_DM355=y
+CONFIG_ARCH_DAVINCI_DM646x=y
+CONFIG_ARCH_DAVINCI_DA830=y
+CONFIG_ARCH_DAVINCI_DA850=y
+CONFIG_ARCH_DAVINCI_DM365=y
+CONFIG_MACH_SFFSDR=y
+CONFIG_MACH_NEUROS_OSD2=y
+CONFIG_MACH_DM355_LEOPARD=y
+CONFIG_MACH_MITYOMAPL138=y
+CONFIG_MACH_OMAPL138_HAWKBOARD=y
 CONFIG_ARCH_MXC=y
 CONFIG_MACH_MX21ADS=y
 CONFIG_MACH_MX27ADS=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
