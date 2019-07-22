Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1568970197
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gKh7XjLYZiVxeDuGCk8t881mm3nzJm8yY1bxZgroXrk=; b=Ro34QqjrKM5aTV
	qNa74i6hDxj6BT3oYuR0XZnr9rEW0Q/M0IAXvL7Szq+pHT2LImJmi8mmuBYGMzU2JfSTEPD6zYMkm
	OPCToPEKIqZ4iPY5KW7he9dxl5Pw1/FxHxJ+L7B6vATnarI9Q8B1R70vai6dai6fK0seZAXAci13D
	j2Z4BDV+Fxs4ndgzNeFCHn/X3sjtunOSinw1t7lbea+XFyZLYjJlStyGeiMCKUok/NcWLusxbzZKD
	PD7AbAyTzV1qGBPxp4jFE8ruN2LFHURPh3K5Co5mrXhk7fAJgUkr5vzSJKB6hGKmlFePmf8IMfoU/
	pON8ykHVXFyF/d5HvxVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYeB-0003nA-6h; Mon, 22 Jul 2019 13:46:35 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYcK-0001Py-VY
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:44:42 +0000
Received: by mail-wr1-x444.google.com with SMTP id n9so39561071wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6OE2vgUPZ5yWbUkDxF2/EfNu3Dftuv+SUPLz3txgSn0=;
 b=jDRY8s9DB/0Rdp9EuXO3MDPJTyhubw2FhY+I8rkA7gKejbLftYHvixid1ZPoPkn7ts
 A9Nt0ELbEQ+/mnmPAbuZJmaKi0ux4J1MO9XL/EyAnVRDeRvZfwqvUc++Ubl3EYf8e3Sy
 5kQgt3VZWaBETd569WwmaFNrKER5ta73sPjxhbRBvYk4TMIt9TU1tH/jJx/xRDpxl6ND
 cqVIo0A69rGe/3GNQFG+6aa4luSVqjzMBWjvzxHiwouptlDVdrwOcKzz1Xa7JljTKa+m
 /AEYM3KnHHCq1RbWGM9tJ6BQTPX5Jy7r16BNc/owfeuNU3e+zArBIS8uq8uVLMstI3w2
 M4Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6OE2vgUPZ5yWbUkDxF2/EfNu3Dftuv+SUPLz3txgSn0=;
 b=gli+WPxbEePKKX5wjza+ryZ9EYTfTDHEVOfATi5fvLk0c+nIrM7HFoCV2gnx5ezqkw
 mQR805hXUaPH0x6ropoShM00ygSwatrKSDYAbGLFjn18d8hOmmyFO+axw0KWrdtwab9b
 zle2S6XX/SZl6HAsKpbQgmlrHI4zPSv14vdyKmOlJXdhwBrORnOsnuWxckYeBwzZFCcy
 BeDTrTKnShTTUqNsJf9/QyKCS1yPlrYlCPcW7eY+KgLfUzj8rUx6dO7hpRcM0muS28hX
 l3p7dWwTAGRXhiOs4sVKMk4iWkVi76lZCoK7zw4tU5toxgeQWsQCXTfSvzBRQTXyJmpu
 lqRQ==
X-Gm-Message-State: APjAAAVZpzChzkGQ69SRVD7oVUqYxKVRIoYvf6GkvIa/9fXn1lKU9d68
 vayY5S8F8OS3SBAjf31O8kJ556BN
X-Google-Smtp-Source: APXvYqwvf5snwzuBm1QlzKK/QuN97vn9/tXDk4UIUnMrk9mGyCSxLMLSb1VOWE60YCYGqOxJSBkzkg==
X-Received: by 2002:adf:f246:: with SMTP id b6mr47585965wrp.92.1563803079035; 
 Mon, 22 Jul 2019 06:44:39 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id p6sm40652484wrq.97.2019.07.22.06.44.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 06:44:38 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 0/9] ARM: davinci: da850-evm: remove more legacy GPIO calls
Date: Mon, 22 Jul 2019 15:44:14 +0200
Message-Id: <20190722134423.26555-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_064441_130511_B1C30F82 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This is another small step on the path to liberating davinci from legacy
GPIO API calls and shrinking the davinci GPIO driver by not having to
support the base GPIO number anymore.

This time we're removing the legacy calls used indirectly by the LCDC
fbdev driver.

First two patches enable the GPIO backlight driver in
davinci_all_defconfig.

Patch 3/12 models the backlight GPIO as an actual GPIO backlight device.

Patches 4-6 extend the fbdev driver with regulator support and convert
the da850-evm board file to using it.

Last three patches are improvements to the da8xx fbdev driver since
we're already touching it in this series.

v1 -> v2:
- dopped the gpio-backlight patches from this series as since v5.3-rc1 we
  can probe the module with neither the OF node nor platform data
- collected review and ack tags
- rebased on top of v5.3-rc1

Bartosz Golaszewski (9):
  ARM: davinci: refresh davinci_all_defconfig
  ARM: davinci_all_defconfig: enable GPIO backlight
  ARM: davinci: da850-evm: model the backlight GPIO as an actual device
  fbdev: da8xx: add support for a regulator
  ARM: davinci: da850-evm: switch to using a fixed regulator for lcdc
  fbdev: da8xx: remove panel_power_ctrl() callback from platform data
  fbdev: da8xx-fb: use devm_platform_ioremap_resource()
  fbdev: da8xx-fb: drop a redundant if
  fbdev: da8xx: use resource management for dma

 arch/arm/configs/davinci_all_defconfig  |  27 ++----
 arch/arm/mach-davinci/board-da850-evm.c |  90 +++++++++++++-----
 drivers/video/fbdev/da8xx-fb.c          | 118 +++++++++++++-----------
 include/video/da8xx-fb.h                |   1 -
 4 files changed, 141 insertions(+), 95 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
