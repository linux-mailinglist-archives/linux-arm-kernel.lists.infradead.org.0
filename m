Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6B532B8D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 11:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iq7NRUhx4fF/jX/MxxEl51hxseDaF7WWVW1LtdGdv9Y=; b=cHG/5orWcCp0gC
	r+Ce1pBK3OCIxgM/p5lcvzNhg4Nzwsy+EUnYibAqXl6x4dUQb+Kfc55b/TEMeSQIGkIQ1Hl1do5o8
	8mGwwIY1bz/cDygcibTHLHyPgRwmLGefqq5osV8OctrsgFyGHlN4kT3qLo4b8pD7gE/nq2nS2kT8X
	q9INWBBMhqXhIlu5ckiNzhlH1bvtBC5KOTlMlQt5DrD9v+8zN/x31ZuG9sxpMXFmCMnF12fzGOd1W
	ieDe3hwyJWsZQNKxlgDm++cGMTL+LRn/tuXH1ISMnOgJPzDKfl3V4L4e+ko/KwrSKoD4AcDF0jzcA
	vP3GPT6llXRG/GEYNHKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXizA-0008Mw-NC; Mon, 03 Jun 2019 09:10:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXiz0-0008KZ-9m
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 09:10:24 +0000
Received: by mail-wm1-x343.google.com with SMTP id 16so5886571wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 02:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nQvczT9rgRgEoiOd9jOJm49nuBwwy90Cz49p7tEEfqk=;
 b=iz3NBvtvi6AeY1DsmYRuQyHSYP3gCHFihFbV9pM4ae0V95Lbk4fl4UbaaV6F5aqenS
 ba9PLk99CAS7dhepZLUIybSceHSPz7WW0POoDTjqg4beEA4ge0z60kqIWsrNlVLO4W22
 gNKdvwAH+r7KuWWA6rWHAgHBPx/7UytDtmg4b+DCyIw1PEgzOdmHU0EAGIClTc/pwVHF
 rbXMw9dudAx/+mjfV0dQTs9YIFdQoFw5D4bUZSrHpBIMC2AsOVGcXyaTb5x+bvL9pdkR
 uA9BqN8/mbV+bS47/2pcjD0qtuBL8A0wb2VEpSMbqZiv3eMqyoPA8tIVquoFLBBMTwA6
 xuow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nQvczT9rgRgEoiOd9jOJm49nuBwwy90Cz49p7tEEfqk=;
 b=TkXaHfE0MRCvhag53E5fK0lLO4HgOeHJ3CxPncyiDs/kjJZGTh2fCLqxI5iqDdUt0z
 ooT6HGmKa7ikLeOMf/X33QqAQeL41zxyyDU9d3jvSh4SHTa2E20X/SP6cQN+kj3dxQmA
 vXjjiQ/JEmju8TIvRj8qW7LcSL1uYks+bdxCkCzV/Xl1pRNhsxALVc+RCZrAPrCNgymk
 C+CIJIdgyRTh3y/j1YYB7UmwiRXl49YO+hbsOOsaAopKOgPFPUGP5AGd7GA+1Pko5FVB
 BCd97BW5T9PlskPfLha+P6Tbp4CUo7b3VSwv0onAF/R9yOfj22mEsYNs0JFmdJubczzN
 ET8w==
X-Gm-Message-State: APjAAAVT8BRetvVJFQDIoy01O3BEIOpQdt71RO5BnTWxyVOWRyMVmMHT
 n0dBflYbNk6XGueyAmdc/YtoYg==
X-Google-Smtp-Source: APXvYqzY8Tog/IwFDWz+dNeTw9ZVgosoUZm310PR6zlHI7aI6TLrpXW6T95uCS7iMfYlOHWJd6RD7w==
X-Received: by 2002:a1c:9602:: with SMTP id y2mr14245367wmd.115.1559553020661; 
 Mon, 03 Jun 2019 02:10:20 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id e15sm10676809wme.0.2019.06.03.02.10.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 03 Jun 2019 02:10:20 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v5 0/3] arm64: Add initial support for Odroid-N2
Date: Mon,  3 Jun 2019 11:10:05 +0200
Message-Id: <20190603091008.2382-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_021022_348229_5E67E3F8 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds basic support for :
- Amlogic G12B, which is very similar to G12A
- The HardKernel Odroid-N2 based on the S922X SoC

The Amlogic G12B SoC is very similar with the G12A SoC, sharing
most of the features and architecture, but with these differences :
- The first CPU cluster only has 2xCortex-A53 instead of 4
- G12B has a second cluster of 4xCortex-A73
- Both cluster can achieve 2GHz instead of 1,8GHz for G12A
- CPU Clock architecture is difference, thus needing a different
  compatible to handle this slight difference
- Supports a MIPI CSI input
- Embeds a Mali-G52 instead of a Mali-G31, but integration is the same

Actual support is done in the same way as for the GXM support, including
the G12A dtsi and redefining the CPU clusters.
Unlike GXM, the first cluster is different, thus needing to remove
the last 2 cpu nodes of the first cluster.

Dependencies :
- Patch 1, 2 : YAML rewrite of amlogic.txt bindings at [7]
- Patch 3 : None since clock + g12b bindings has been acked

Changes since v4 at [9]:
- Fix regulators for USB Host

Changes since v3 at [8]:
- Dropped arm,armv8
- Dropped eee disable, not needed in further tests
- Add comments about where are connected the regulators pins
- Moved the phy0 regulator to the usb vbus regulator

Changes since v2 at [5]:
- sent the clk patches in standalone at [6]
- rewrote the bindings on top of the YAML rewrite at [7]
- Added MMC, SDCard and Network support to Odroid-N2

Changes since v1 at [3]:
- Renamed the g12b cpu clocks like g12a counterparts
- Rebased clock patches on top of Guillaume's Temperature sensor Clock patches at [4]
- Added AO-CEC-B support to N2 DTS

Changes since RFC at [1]:
- Added bindings review tags
- Moved the fclk_div3 CRITICAL flags to the gate
- Removed invalid CRITICAL flags on the cpu clocks

[1] https://lkml.kernel.org/r/20190327103308.25058-1-narmstrong@baylibre.com
[2] https://lkml.kernel.org/r/20190325145914.32391-1-narmstrong@baylibre.com
[3] https://lkml.kernel.org/r/20190404150518.30337-1-narmstrong@baylibre.com
[4] https://lkml.kernel.org/r/20190412100221.26740-1-glaroque@baylibre.com
[5] https://lkml.kernel.org/r/20190423091503.10847-1-narmstrong@baylibre.com
[6] https://lkml.kernel.org/r/20190521150130.31684-1-narmstrong@baylibre.com
[7] https://lkml.kernel.org/r/20190517152723.28518-2-robh@kernel.org
[8] https://lkml.kernel.org/r/20190521151952.2779-1-narmstrong@baylibre.com
[9] https://lkml.kernel.org/r/20190527140206.30392-1-narmstrong@baylibre.com

Neil Armstrong (3):
  dt-bindings: arm: amlogic: add G12B bindings
  dt-bindings: arm: amlogic: add Odroid-N2 binding
  arm64: dts: meson: Add minimal support for Odroid-N2

 .../devicetree/bindings/arm/amlogic.yaml      |   6 +
 arch/arm64/boot/dts/amlogic/Makefile          |   1 +
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts | 289 ++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi   |  82 +++++
 4 files changed, 378 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
