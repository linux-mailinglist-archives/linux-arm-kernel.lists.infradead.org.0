Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD57139DB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 00:58:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o03vq96SZ3fDfBcEpaccC0HlxT4w2ixlU7/VqPl9opY=; b=cv/GMlja59tZio
	+p88A+PAGGaboFpOKPGEj3EpE0kiSXDkW7d1+kKdSQ7l5/yQRTTPIM04Ss6To4PYoSppHDM1ynh+H
	gXJIquG4Ju1QAXV1d0Y9O4AGOFZC1hdSsh8seqkyYEx5TY362nXENMdBNkxAgwBuV8TuMr7j/DNw2
	jvglf6nqupzIi7J9cOXNc5gZkzqk9XtIWoT21O56g7yIYBgghmOwg9eGGPylvQ5uEX6dDz6vXkslG
	ek6ExsEePMurS2qpazIYlD62mrr58ipqBXc73aMbH+38rfm92wiavGNSSjtj5sQtO1nDGopTi0gJ9
	2DE1bcdH/Pd5Kanj+nuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir9bP-00025r-Hh; Mon, 13 Jan 2020 23:58:35 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir9bF-00023Q-N0
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 23:58:28 +0000
Received: by mail-pg1-x544.google.com with SMTP id z124so5470883pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 15:58:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=sfnFG8e6nHigZXZN5d7e6J5tkHrTk899V9nU3cvnsOY=;
 b=0vBlllStm9mOrXOAr1XhyfKaRCaeUpg/XFWlQ/TWvziZCS1Tz9tFvurgG3+QMRHS0Q
 OwX/4/N4uD+a3RccFsP28Yfqm6HvgZKANot6WTGF3hY6eCXvdij2B//cZrBIwnOAkxxB
 GEkUFxYoyvNYfaNiKKeTqdgdiceePB7dSNqFRUoLIWX1drWgHySfyGQuWAKIBUB/yY2/
 B80vkesO+ZxF9tSLB5vQ3mo6Lbg0EpuEcatpzGA1ZnmeuSvTAzcxdssZbPLbIM1clLzj
 2gqlsyy+8OzS58jfGkV4gBll31docavPFTgz/obavl4hfUaWE5hSvFcieJShC6xfF3E1
 GnlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=sfnFG8e6nHigZXZN5d7e6J5tkHrTk899V9nU3cvnsOY=;
 b=OBrlfOwOTWifUhGoFo2bV+rMsWxHuo7wG8F0Pm/dgJltcSgBe0x/D0Mnc61K92ToXN
 UdZ9w9xsLkYWBWg0RdQfxH5l9ewvzc1oXOe9VyFoHb2VMznkYeerHnSZ5yyFjFlyXW5l
 fnpQMrJIR89d87zx2fjPQQ+r48JU2sBlQQ3mKnQ+cp5Pv4kAbpQcxMVe1l2EikxLqImS
 zTqJ27j3jG2G/7TT955PWWy6HBWbpUKGua+Tc22PffwC9XW/ZnTIao4BfF5cpxk4wTyT
 JGAzKBT1wLh4919++7ilq/ntQ3kday3B01v8CRBpMEHOj0kaAiPe8PedgeOfSB0JP4TC
 dPrA==
X-Gm-Message-State: APjAAAVQI+P9vHPraUuIeo7zk85q43cY1tVygE8Yva9sHwbbjeakK6M2
 6SdqItpzHuWBu/M7ozkzX4iwUQ==
X-Google-Smtp-Source: APXvYqzcKTYuoBZD23MxRDG95Yd4tEBaIsV3SsXXss9L/4KgTglYpyZOqhYJ4sBi4QIVEPmWfn8PvQ==
X-Received: by 2002:a62:6401:: with SMTP id y1mr21824825pfb.18.1578959904796; 
 Mon, 13 Jan 2020 15:58:24 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id h3sm15355583pfo.132.2020.01.13.15.58.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Jan 2020 15:58:24 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: soc@kernel.org
Subject: [GIT PULL] arm64: dts: Amlogic updates for v5.6
Date: Mon, 13 Jan 2020 15:58:23 -0800
Message-ID: <7hsgkidi3k.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_155825_749046_B31D0EFB 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-dt64

for you to fetch changes up to be63807524ddfd4c2e87ffd6cf2de8e7617d4832:

  arm64: dts: meson: add audio fifo depths (2020-01-08 10:52:12 -0800)

----------------------------------------------------------------
arm64: dts: Amlogic updates for v5.6
- new boards: libretech-pc (S912 and S905D versions)
- new board: Videostrong KII Pro
- A1: add reset controller

----------------------------------------------------------------
Jerome Brunet (4):
      arm64: dts: meson: gxl: add i2c C pins
      dt-bindings: arm: amlogic: add libretech-pc bindings
      arm64: dts: meson: add libretech-pc boards support
      arm64: dts: meson: add audio fifo depths

Maxime Jourdan (1):
      arm64: dts: meson-g12-common: add video decoder node

Mohammad Rasim (3):
      dt-bindings: Add vendor prefix for Videostrong
      dt-bindings: arm: amlogic: add Videostrong KII Pro bindings
      arm64: dts: meson-gxbb: add support for Videostrong KII Pro

Neil Armstrong (1):
      arm64: dts: meson-sm1: add video decoder compatible

Qianggui Song (1):
      arm64: dts: meson: a1: add pinctrl controller support

Xingyu Chen (1):
      arm64: dts: meson: add reset controller for Meson-A1 SoC

 Documentation/devicetree/bindings/arm/amlogic.yaml     |   3 +
 Documentation/devicetree/bindings/vendor-prefixes.yaml |   2 +
 arch/arm64/boot/dts/amlogic/Makefile                   |   3 +
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi              |  25 ++
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi             |   6 +
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi      |  23 ++
 arch/arm64/boot/dts/amlogic/meson-g12.dtsi             |   6 +
 arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi | 375 ++++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts     |  78 +++++
 .../boot/dts/amlogic/meson-gxl-s905d-libretech-pc.dts  |  16 +
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi             |   9 +
 .../boot/dts/amlogic/meson-gxm-s912-libretech-pc.dts   |  62 ++++
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi             |  12 +
 13 files changed, 620 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxl-s905d-libretech-pc.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxm-s912-libretech-pc.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
