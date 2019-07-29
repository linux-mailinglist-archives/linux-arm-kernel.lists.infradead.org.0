Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C559779339
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 20:40:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BtfZSJMguTtjA+p2f49dZapigq0+ZqklBIojcBNOfpc=; b=CO20KbgrK4k6zR
	fcGUSrS1BZ4vxyPtH9fmHtC9OaQAedN9e4rl5ONhV6yo3pC7ZOQdYfCf+AHpFXuLlnR/Qi0fDDXx8
	xRgfoQ0UXTBjtuACD26fXpaLT5ROUdqHLsnaX56HNyrok1wYufQhYYe4m+Qvtc4Ijg9xA6o56uVEq
	mRQsQivqoMLIITrL9z3hTmDhMWm2SyC7GnflcFW6b7ceEmnbcVZs1EnOHxUuhFSNJuCvW+vYWuDxE
	ZcmAI6sqWh1Hq1sEOZNxb30nABQFyvpiYMEAcIUDkflKfyL6Q00oUhCulDI5xYntOMHGY+2kjyqyv
	i+vNh/K+Nx3jh3zMwn2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsAZi-0003jD-Iu; Mon, 29 Jul 2019 18:40:46 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsAZP-0003fp-C4
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 18:40:29 +0000
Received: by mail-wr1-x441.google.com with SMTP id x4so9788598wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 11:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bkXWhG7MXe6STbKu1qqb3L1jlh1sGkN515kybH+rXAo=;
 b=CqHs7d9nti1w2rKX27XPzF2MS6YxULAmpUuD2Y0dgR3P+vs40IZlW1yVmzTvCE86Rm
 kxGKvKaFf1eJpxPRI9W9BuTHuTsfffO3zUjBznhceuVfgFf/bg11+vhwVYbumzLTCymr
 R4Ilw4euEfRoZgScQ9SbW+CiYPK/Fv/rq3KyHVJPZgMGNYZZJsOgZA70YJ8BT7eLg1lU
 AsXi3BND5nEDTC47udYJRv0/oWr7wZ3od4OsDJnplw4M4Ue6zoS+bm7e1VlMhaHurRcA
 UJQzXRiNPK/YDvw2HpIu5YDpktc8irJV7TkpW7xfPKSdt+lazPUR7svNyFSHeniUe8Y/
 MAOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bkXWhG7MXe6STbKu1qqb3L1jlh1sGkN515kybH+rXAo=;
 b=S6moeIQLSk2rir1LGlewPdF5Ngb82xmHu/IUgG1JvRAF7XSl0mI5pm6TskALtrHnvR
 Ot0j4NTcILl657/wCIWeKU//wwEqnCqwCFOmVTinWGo3W+rqZm79RLQxdz7vn/od+RR5
 nbBsMCCBry8HXazu8Meh8lrJh4Ss1Pexb3R72lwqyY1YTGgLcI/WnpJVFXL6WehG8qok
 jYD66Fr+o1clO/Om7IFgIoWYXysJhTNDJfWPAhibEHt6wpKsp3R9sfWoO9HFJNgx4dh4
 rqrtquCpeAsulLPjVz5+6FajDwV8gWWELiWBzOykl8W3EtOvcAMhVUawvdOhuMHWBOm3
 MFcw==
X-Gm-Message-State: APjAAAW9tnReX2aq1SUptiiSV8bT7Xu/obQLLGJwNMw691cbdgAPmh2D
 A9hqHoLzRl/GLYycN9CvYR2TWA==
X-Google-Smtp-Source: APXvYqxSXQkF9cDxt8gMbHRF3vNlc51YWMrI43me2BpQRaRCIl9YH6NCkwxRiT3W61EJWzFoljIGRw==
X-Received: by 2002:a5d:50c2:: with SMTP id f2mr27809694wrt.106.1564425625466; 
 Mon, 29 Jul 2019 11:40:25 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:f78c:d00:1570:f96d:dab8:76ae])
 by smtp.gmail.com with ESMTPSA id g8sm60735790wmf.17.2019.07.29.11.40.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 11:40:24 -0700 (PDT)
From: Carlo Caione <ccaione@baylibre.com>
To: srinivas.kandagatla@linaro.org, khilman@baylibre.com,
 narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
 jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 0/5] Rework secure-monitor driver
Date: Mon, 29 Jul 2019 19:39:36 +0100
Message-Id: <20190729183941.18164-1-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_114027_487820_CEE909C0 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Carlo Caione <ccaione@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The secure-monitor driver is currently in really bad shape, not my 
proudest piece of code (thanks Jerome for pointing that out ;). I tried 
to rework it a bit to make it a bit more tolerable.

I needed to change a bit the APIs and consequently adapt the only user 
we have, that is the nvmem/efuses driver. To not break bisectability I 
added one single commit to change both the drivers.

The remaining commits are cosmetic and DTS/docs fixes.

Carlo Caione (5):
  nvmem: meson-efuse: Move data to a container struct
  firmware: meson_sm: Mark chip struct as static const
  nvmem: meson-efuse: bindings: Add secure-monitor phandle
  firmware: meson_sm: Rework driver as a proper platform driver
  arm64: dts: meson: Link nvmem and secure-monitor nodes

 .../bindings/nvmem/amlogic-efuse.txt          |  6 ++
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi    |  1 +
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |  1 +
 drivers/firmware/meson/meson_sm.c             | 96 +++++++++++++------
 drivers/nvmem/meson-efuse.c                   | 70 +++++++++-----
 include/linux/firmware/meson/meson_sm.h       | 15 +--
 6 files changed, 128 insertions(+), 61 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
