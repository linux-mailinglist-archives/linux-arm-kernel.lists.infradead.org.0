Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 319C6554AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:36:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=soud2dReT+vftpKKCF8P1HA7zS11HpZ+EEud2E2IuRo=; b=gQL+dz5T+MWUVD
	Ez/syLoWgEJ2arCNbSZmxgBPbUqCRceS9EORQz2p9EWtL9+fY9Y2KuJAAUQXQ2qqivpF4s6iXhdsM
	c/48Bo9wOKwrZ1vDMN9V79GJmBKDWIUxPYAXU+dacPCM4mJFW/aTdAMe3cPnHIN8yQrMfXaQ2kOmx
	sqRjWOxGtPhwpXWIuvGliK5ZnWmoTyc13NcW8zDQ8XydUP9vge+gExTJiYXO+EONtDVFdc8qwLdwK
	tDqtc1QzrEUcPoCmLI68jOGGVsCTewsG2f5myI0pMj0nACJc0TdwYmSsK0p64xgWx5KphLt6lbQvE
	xj1eRbSM4ePha7TI9Mmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoQU-0001v6-Sz; Tue, 25 Jun 2019 16:36:10 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoPF-0001tj-Bn
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:34:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id v14so18634983wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RNjXZTa0eehs8U6TXIJ1xtY97Iu/6Eek+y81QQNtjK4=;
 b=B8LuQu66bgMmpBHn0CbN+gVJmLWy3c3N7z8bxuh0JXGKTw6PWfsSrpdrk5mrFYRvmt
 CeUcFrYqeCPgbiCJ+jIiEUE2NbmgnQFalb/wUcSM8ab3BddXyQ02/10RO9om9ObUS8VI
 sGVmk+ffQ8YrqfA7m/lbU2K1B/9/tczAwT7KMOOrh4Sd13TAzAhT66t4CKX4s9yQH1PU
 l8BYKVJU3d61u7wZ4h/eYquVn0tk1mbumj6t91PAzxrKbo2uiCe1uu/MMQkGxLylJ/5D
 zHz02i20yGrgLom/qdpFn5k25qlFJq2s36M/p6mmBeIaxkvGXx1yijivOajz10lQ2ZDo
 hrMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RNjXZTa0eehs8U6TXIJ1xtY97Iu/6Eek+y81QQNtjK4=;
 b=bGbreQwA5rmcEYfd7QeMLzFfptX8VF8KCa3pDUhoy8TKHxMJUygr34szOSiajbwlHF
 Qm0ayQvyeiqgqVb0ICT8YiMFP4ivDShoiXGPjPvArtYH3cms5lSzFjiWNIRjdEya/0Zf
 Xpq+Nag62qtb31dy5gUPGkdprpmyCntQhZTTlgQFzjT85GPymM6geRJVW2RgrhwkMtKY
 1kuXGMa6B8OVoPXV5UOYSTP0QSxVutgodYQ4QLhG+SNq1Ok/EXaCgmGyYS7sj17+bJdK
 86oDbdFSMK7LlwzlC46t+C8WudQz4zSCcnzDkB/y5ukf/1Z6glJCCHkMSldZRYqn54it
 9zCw==
X-Gm-Message-State: APjAAAWg5fEqIN+CnlK2RtWU/GLyZdhdLfl3JRSIf15yefgOs/HBStbI
 Bbw4mtXoiv0ARavJxaCSwmTMMQ==
X-Google-Smtp-Source: APXvYqwGZ61fCCBpD9shDosEmPm3n3rtBVEJAron1RaBsQFJZuBhiFZxaTmMz81yYUZI1bSgnfdGEg==
X-Received: by 2002:a5d:5446:: with SMTP id w6mr106263069wrv.164.1561480491732; 
 Tue, 25 Jun 2019 09:34:51 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id g8sm2683795wme.20.2019.06.25.09.34.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 09:34:51 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 00/12] ARM: davinci: da850-evm: remove more legacy GPIO calls
Date: Tue, 25 Jun 2019 18:34:22 +0200
Message-Id: <20190625163434.13620-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_093453_993749_E7107CE1 
X-CRM114-Status: GOOD (  10.80  )
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
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org
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

The first three patches modify the GPIO backlight driver. The first
of them adds the necessary functionality, the other two are just
tweaks and cleanups.

Next two patches enable the GPIO backlight driver in
davinci_all_defconfig.

Patch 6/12 models the backlight GPIO as an actual GPIO backlight device.

Patches 7-9 extend the fbdev driver with regulator support and convert
the da850-evm board file to using it.

Last three patches are improvements to the da8xx fbdev driver since
we're already touching it in this series.

Bartosz Golaszewski (12):
  backlight: gpio: allow to probe non-pdata devices from board files
  backlight: gpio: use a helper variable for &pdev->dev
  backlight: gpio: pull the non-pdata device probing code into probe()
  ARM: davinci: refresh davinci_all_defconfig
  ARM: davinci_all_defconfig: enable GPIO backlight
  ARM: davinci: da850-evm: model the backlight GPIO as an actual device
  fbdev: da8xx: add support for a regulator
  ARM: davinci: da850-evm: switch to using a fixed regulator for lcdc
  fbdev: da8xx: remove panel_power_ctrl() callback from platform data
  fbdev: da8xx-fb: use devm_platform_ioremap_resource()
  fbdev: da8xx-fb: drop a redundant if
  fbdev: da8xx: use resource management for dma

 arch/arm/configs/davinci_all_defconfig   |  28 +++---
 arch/arm/mach-davinci/board-da850-evm.c  |  90 ++++++++++++-----
 drivers/video/backlight/gpio_backlight.c |  67 +++++--------
 drivers/video/fbdev/da8xx-fb.c           | 118 +++++++++++++----------
 include/video/da8xx-fb.h                 |   1 -
 5 files changed, 165 insertions(+), 139 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
