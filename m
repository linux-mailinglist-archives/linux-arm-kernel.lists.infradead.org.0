Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8843588F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 10:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=alGIFykk4zrIyeeM/2OZBB81xp6pvkhBFkBLAG6aXZk=; b=ARu60KbwDffsKv
	RpoCh27tPh8IJncfDM8lNYi+NIpxA8ksOSUC2MuCx7fHztfQXAKQlRNWsk83MDLvdCqdbsyOG4NRq
	N1g2MuHkJpBjMco8M+Iw8eAoQ8CnHzv6LdLWexLznCl+MWsPfn48hpNWdxFOcyVKSRoZqit1sPkYq
	fqQcxwWgG6I17TZab41edSqbRP680c1/lNehAEP4sx3UZzRZkMc4NNv0sGhDvMOfq5agY2kgZDwfx
	kIYdlm3FMmBsuoy+NX9ADfwfag1Mp7yRoPCVH4wTkOa1JxyXemXFZK4ioFPWgdNYu+usIYQROzvUN
	e6cn8MGnHZ8sg6+dxZPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRMi-00018u-97; Wed, 05 Jun 2019 08:33:48 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRMa-00017l-7u
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 08:33:41 +0000
Received: by mail-wr1-x442.google.com with SMTP id m3so2704283wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 01:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vdptXZpu4LSX12pCYwIuZQ7IZAANQVexuK981Stg0C8=;
 b=ALAHy9QmYv7XXWye+P3GXr5WU1UBM7bpcAsb7JjMhGfhzFK3WTSgq/gW44X6s9DOOU
 Gw8HELrnNrL9ZOQJmWNOqcViKXL7Sd5viTsVA0Q5MLVLthX6g58h35/3DmaK2HPZzhhD
 sje7iHdviQdSy+B6RipLN3FM/ZGi/OGTDeMW/LLtCHO3pEaDn9BXkyJFbNgNdrS3PHt+
 /3/jMj2U55oO5OsWSC7R7Ca48Z64cAhsmLCy6essSLonYiZTtEPIudofmZIksO1TMmNf
 V/Z9D2Vv22H/lyRMEl2a24fB5kF7oMk30DEakRsmq5XN2pFxO7VScBTMlTSG7p8I8SYM
 k5YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vdptXZpu4LSX12pCYwIuZQ7IZAANQVexuK981Stg0C8=;
 b=mNfpZmy7FWY/79fRc3xsaZ8RNRYH5WUdItayb490C3sbNzywRNNRAUwggw0ZJijpQx
 r11yQr7EsG/gD2WOnrx6P678FimnGUUqTthoxmJ+j8xSb0OdIgt5udojASxoBSH18tAW
 nBP4xOCzvrPq1p2GPL5r6ww9kqZ7Vwzqec9CWShRMusjzoD2+1s2ekiQWPGn8f9dIS57
 0JLPVJLrVjUyF+RZw+PpcznzTDrofOju9BvKL9/ouJCY9gXz0cdgrXLVp+zuCgznmSaE
 wOaDdzEnbRICl9Q6BO8K6TlWvV5/ytuqVJuufgQdNETo6icvR7qBHUlr67Kp6DesHNwA
 xD8Q==
X-Gm-Message-State: APjAAAXCXsSGlcbk494zLIIktNCu/zRaw5ygBbSWrrKg737Jdc6ydtuf
 ki6VTbrIAO0tPMPe0WlfLEG3sVeK4IA=
X-Google-Smtp-Source: APXvYqyotqt2GSUVfKt41uOpAW3PK5kR7ACoXfTM+FsjWd3orDAWwl5xXL8dCNOr84ImWYJtqfdXbQ==
X-Received: by 2002:a5d:5186:: with SMTP id k6mr7551716wrv.30.1559723618540;
 Wed, 05 Jun 2019 01:33:38 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id b5sm15274471wrx.22.2019.06.05.01.33.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 01:33:37 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>
Subject: [RFC v3 0/2] clocksource: davinci-timer: new driver
Date: Wed,  5 Jun 2019 10:33:32 +0200
Message-Id: <20190605083334.22383-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_013340_414211_DD4F906A 
X-CRM114-Status: GOOD (  13.10  )
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
X-Mailman-Version: 2.1.21
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

This is another version of the new davinci clocksource driver. After much
discussion this contains many changes to simplify and improve the driver.

v1 -> v2:
- changed the format of the copyright notice
- removed all mentiones of the periodic timer setting
- added caching of the TCR register value so that its updating doesn't
  require a read
- split the timer configuration for clock events into the
  set_state_oneshot() and set_state_shutdown() callbacks

v2 -> v3:
- tim34, if used, should run in periodic mode for clocksource, now fixed
- dropped all the configuration variables from struct davinci_clockevent
  as clockevent always uses tim12
- dropped caching of the TCR register with the following reasoning: on
  systems using tim34 for clocksource, the TCR register is only touched
  by the clock driver and we know that we need to keep tim34 in periodic
  mode; on da830 the RTOS running on the DSP may modify the TCR register
  but we on the other hand never change its settings when only using tim12
- subsequently the whole routine for TCR updating was dropped
- dropped the shift variable from most places
- added separate routines for initializing clocksource for da830 and all
  other systems
- sprinkled a bunch of comments all over the driver to explain things
  that caused confusion before

Bartosz Golaszewski (2):
  clocksource: davinci-timer: add support for clockevents
  clocksource: timer-davinci: add support for clocksource

 drivers/clocksource/Kconfig         |   5 +
 drivers/clocksource/Makefile        |   1 +
 drivers/clocksource/timer-davinci.c | 370 ++++++++++++++++++++++++++++
 include/clocksource/timer-davinci.h |  44 ++++
 4 files changed, 420 insertions(+)
 create mode 100644 drivers/clocksource/timer-davinci.c
 create mode 100644 include/clocksource/timer-davinci.h

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
