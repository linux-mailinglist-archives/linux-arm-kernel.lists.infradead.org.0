Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB56129FEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 11:04:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iQlH+MzVmAmKUYpoWg52aSOUtDeJeW8H4he2jPrxfio=; b=rqMGfQYCa9m31Q
	47ObMlqegjo6e0G4avbcr5pWqKzlCpe5rr423Ty8EKgdaxdTPqMlgpjCZOHRNuVka5QGr5fJLrx8T
	wklvvUYjxktzeFHO32gvvw/YD87DYL0W9La9vc9HdzSKU5HBzbkCS6iv0/GGIyaAmLRRfIme7bTwY
	97QP/hmDrUKTRkMtMGpWTajV1ux285k6caA3oVLKzh3HAr3uqp/Qe+Jo9MrPOrC+PzGJWaYT61Aju
	4ekel0MNUWXnuHHBGRtWr23L2Me8If5llpF3CsEZgqttY/YJkDE6bpqWwi0T7WRKQCzT33C/V8bB4
	g/MQ4e1zxb0cI2SmWQSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijh2i-0005y7-CY; Tue, 24 Dec 2019 10:03:56 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijh2M-0005x5-Ga
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 10:03:35 +0000
Received: by mail-wr1-x441.google.com with SMTP id w15so6753681wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 02:03:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0ZsZKg1YffuHIcf56+MEUis8ScLI3mY9i8Ph7Sk75GI=;
 b=MqNoyAvZ3bGV01kIgcBYs1dNiN581FYUQQc5XaPPAIQrRYR8jRjcW5+NOmrQLnXOMy
 +rAdfSiseXRONB7FOkhf3d2UzhrhonApn8hApIqDWdT3mMkVA5qtjmzHize2rHJq6hjh
 x5Gypq5oQKI0hV9OgmDdUDui/m/s+7/fEenqycRCKy4Yj4mgkR+GxPr4/AJiaCecatAg
 gxLmy1Fmsh7QSvkVHgzctxYdMS6cJFILWzYj2oSBN5RZtO47skOpMwIH0g8ytPcq8Xtg
 RDFRBsnqmmUfF4hVtceBDuXn8lfTiN+q8SPTGf5Nr5H45LD+39BRm+KcvoIf1gD3uBFD
 Ivyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0ZsZKg1YffuHIcf56+MEUis8ScLI3mY9i8Ph7Sk75GI=;
 b=rQL4ExQdDBH0Xr1+kbs4178mVtjuZfX8kI6afz5C66+T+nEUrnapcXBZqvzcLjjep9
 z1HWUxWoErmenKxSuHK1Gv5OSq+bW4wl09aUQhM1ZoZ1nw7ua1dT6rV1+trsSvrP5mJp
 I46vPnNtiB3/I1La6rdNUyPYdGYnn6f4BEsdC6VJFXq1OX/j8geWW2ZTqBPK58LyKzF+
 qch+jsnumKCIWDEGHxdlVg3YLmbGKzqXY4QolWfOEKeq3sI/IWA8GJrhSdemJIbKHDiI
 WznhIVINXTI5sQYkMnGCXnZUYN8qaST3OOBAKegYfg1vDIADi32OWJL53bKhzxsWU/nS
 LEjA==
X-Gm-Message-State: APjAAAXV5Jc2wBg4l9arGVGxaY70Mym8OgmQ9EMQ8Pu3SKRJGpejP+5C
 4qgJ7FVUUD6rILTChScMDr5Z4w==
X-Google-Smtp-Source: APXvYqxnYJvSlllHtbmLwHwhMKGkVlozEQqfStZhaKxgmu+TbXc2bIVZQuE3KOYfHzT0kcTJo5Ol/Q==
X-Received: by 2002:a5d:6305:: with SMTP id i5mr35261141wru.119.1577181812545; 
 Tue, 24 Dec 2019 02:03:32 -0800 (PST)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id a184sm2164048wmf.29.2019.12.24.02.03.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 02:03:31 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH v2 0/3] ARM: davinci: convert dm365 to using the new
 clocksource driver
Date: Tue, 24 Dec 2019 11:03:25 +0100
Message-Id: <20191224100328.13608-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_020334_572744_7FE86A05 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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

Hi Sekhar,

I'm resending this (with fixes) as other solutions have failed and I
think that this is a correct thing to do after all. In the end: with
this patch we do bring the clock to a defined state before enabling it.

Let me know what you think about it.

---

This is a follow-up to the big series converting DaVinci to using
a proper clocksource driver. Last time we couldn't merge the entire
series because of a bug that only appears on dm365 Soc when using
ancient u-boot.

This series contains a workaround for this problem, a patch finally
converting the platform as well as a removal of all obsolete code.

v1 -> v2:
- simplify patch 1/3 by using a boolean flag instead of caching the
  value bits for TIM34

Bartosz Golaszewski (3):
  clocksource: davinci: only enable tim34 in periodic mode once it's
    initialized
  ARM: davinci: dm365: switch to using the clocksource driver
  ARM: davinci: remove legacy timer support

 arch/arm/mach-davinci/Makefile              |   3 +-
 arch/arm/mach-davinci/devices-da8xx.c       |   1 -
 arch/arm/mach-davinci/devices.c             |  19 -
 arch/arm/mach-davinci/dm365.c               |  22 +-
 arch/arm/mach-davinci/include/mach/common.h |  17 -
 arch/arm/mach-davinci/include/mach/time.h   |  33 --
 arch/arm/mach-davinci/time.c                | 400 --------------------
 drivers/clocksource/timer-davinci.c         |  13 +-
 8 files changed, 25 insertions(+), 483 deletions(-)
 delete mode 100644 arch/arm/mach-davinci/include/mach/time.h
 delete mode 100644 arch/arm/mach-davinci/time.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
