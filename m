Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EA81B2A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 11:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nCJ+gY1+kD65LOoWR50YudRZydPVgA4mSfznt1IN8I4=; b=Utst4hzKRFo8EB
	LXZ1FHJhncZthiGjuifiGyet32awOZb6Y1OcEN4k+xdxmDaiDvCNZTdtA9/XMu038BxIakejlOIPL
	bvboufrnSTF2hiH9ZjTjg5HdkLviCKyy8WsMAAetFyxW/RE3Wr4FS2HUVQ/rhaRpYV4uIm5dGg5pS
	g1VkS1E6Jh+H2tRMUQS63QerhJeidNzkHY1pviUiJ560fybf/xyA2vp0JQZcIBy9QY+zVy6QDk39D
	AU8hrUGcKAIMbSXrIBLh05e+GuHYhHdhBmNAZ8eKPuOQyv7fc4AwHpvG0Uq3IhncjrqyPFZkvsMd/
	iSxcO+REl6ywQ0tfzK/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ747-0005DF-IR; Mon, 13 May 2019 09:16:11 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ73v-0005AG-Ud
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 09:16:01 +0000
Received: by mail-wr1-x442.google.com with SMTP id c5so14308321wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 02:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UzIz/OqhDW/aA2hwotioqmyYDuvBlglmy6CuzpgH6sA=;
 b=sbkFKWThl7SS5AJ0CygWfFeJN0O3kIB0+t9Vbb1WtqGtQop4D5UImzY3w/2zHaMszb
 i2J54jvYjY1fOlF5bA35RWmnT98jFKLSLvIVLSoO8PP7D/ve/VhZTo9Fimdobt4oUfxj
 m3qq17QF4zEeIsIs6qRq8mwYn0tpc2oCkLBj67jRJQr0z3IsE0KK+xb/bLvr4OTQ25Yd
 TQJIUmCvXxM0oUoDJa0Q6k8FlYO168/Gr9T74jKF2s0r9JAXBQ2YZGvd90GfTBMB+NwJ
 5R9/9u5Rl+S6WAEuxnfUAfG+bb0Vhht4Z7X7nKNIvwjnhJSabOZHL5GqZ43vGh9ohjih
 NK5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UzIz/OqhDW/aA2hwotioqmyYDuvBlglmy6CuzpgH6sA=;
 b=hpAR/TJTRkaPcBJMqSnjCnNsT3FxS6e698AGzp2ElAAZ3kKtjf1wFc0BU7vvxJ86xt
 2JgHxrbZ7BL15buOBxm4oas0hcdAGT3I24/40fT1H6KuFLqez2yu3+PB5TE1O9ZkNHYz
 jlQRdZWAzesarVb6HU698zFrhbo3J75QUecwXf26g76/0NUANsaRPf3YyIYPfraF3YMT
 JTY1Z48WJ8f3weVTaCAShetU5UcGmI1Z57fESvYa4kCxulRVTN4wuir9ax0IFj7JbOs8
 /tyISndKcOHc9VChguBi/qIdyB5K/AQR4LpR7A2NmbZrEkVYMCClm1f/NM7v3Ugamu9R
 +fow==
X-Gm-Message-State: APjAAAXMHJtsPvTejULY1biXyxfcal8ZZ7G+mJKPAE1GZBkBg7OychUa
 UQcjPsR7U1B1MYOzwOT/3WeyUw==
X-Google-Smtp-Source: APXvYqwNxZZ6JRa6sE/oBLQu/a8gQ1CyT8Fbo4TsPCi5L/1sJXP8vvCMf7wXzFjAVlU30do7KcyBFg==
X-Received: by 2002:adf:f44b:: with SMTP id f11mr93972wrp.128.1557738958141;
 Mon, 13 May 2019 02:15:58 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id g10sm10795091wrq.2.2019.05.13.02.15.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 May 2019 02:15:57 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: ulf.hansson@linaro.org,
	khilman@baylibre.com
Subject: [PATCH 0/3] mmc: meson-gx: add ddr-access-quirk support
Date: Mon, 13 May 2019 11:15:45 +0200
Message-Id: <20190513091548.16674-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_021600_033401_1D622AFA 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, baylibre-upstreaming@groups.io,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On the Amlogic G12A SoC family, (only) the SDIO controller fails to access
the data from DDR, leading to a broken controller.

Add the amlogic,ddr-access-quirk property so signal this particular
controller has this bug and needs a quirk to work properly.

But each MMC controller has 1,5KiB of SRAM after the registers, that can
be used as bounce buffer to avoid direct DDR access from the integrated
DMAs (this SRAM may be used by the boot ROM when DDR is not yet initialized).

The quirk is to disable the chained descriptor for this controller, and
use this SRAM memory zone as buffer for the bounce buffer fallback mode.

The performance hit hasn't been evaluated, but the fix has been tested
using a WiFi AP6398S SDIO module, and the iperf3 Bandwidth measurement gave
55.2 Mbits/sec over a 63 Hours long test, with the SDIO ios set as High-Speed
at 50MHz clock. It gave around 170 Mbits/sec as SDR104 and 200MHz clock.

Neil Armstrong (3):
  dt-bindings: mmc: meson-gx: add ddr-access-quirk property
  mmc: meson-gx: add ddr-access-quirk
  arm64: dts: meson-g12a: add ddr-access-quirk property to SDIO
    controller

 .../bindings/mmc/amlogic,meson-gx.txt         |  4 ++
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |  1 +
 drivers/mmc/host/meson-gx-mmc.c               | 65 +++++++++++++++----
 3 files changed, 57 insertions(+), 13 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
