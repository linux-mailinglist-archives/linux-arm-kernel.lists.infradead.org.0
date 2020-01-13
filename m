Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E97B5139DB1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 00:56:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8MrmjMP5i3nSl2adrBWmPiKdFMHsB+/ynJd/mSrv8l8=; b=mJTTZSj2ALBXy/
	r0+SGHMFuXIf7g3B/KWVA/hcznIaJa+tbRoK4FBSaamGy+BqcdhBAZrM3EARFR9jPXIfNucNB0oDq
	fLLsdQqCCa/6KsmimD3mZ2F9hUHS+bTOQKfWv4+SaCGVSBXhDOh3YT9xJvegdoDTdhU8jhUXgsaiq
	X040FUj+JlkvO3wWZirtJQIcl946EhWHAy4YPBoUlGvb284jxY2p9lwpLtgDI/sp37uxsKuGW/wLQ
	4f7CR79PYgYB3VjDbz8Z66CDAEa7YBzwn1IIAB8/AONQuJlgiUSlQVMvkAV7h5kSCwFEjjxRk3tYz
	xAsGlwphkI1Ok5vcZRjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir9Z3-0001iv-P2; Mon, 13 Jan 2020 23:56:09 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir9Yt-0001he-9l
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 23:56:01 +0000
Received: by mail-pl1-x642.google.com with SMTP id c23so4465863plz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 15:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=TqPvJI4RPAezkldNEOC17IHHTl68zFcqkqu+vA06JuU=;
 b=px6J+r1ELxTvch3mGhy6KycOqat8WHWjSARXWDzpG6huGygjMWKgopxCB81Ie+821k
 W9GndkoQWvLenzgdq3B4jOjXhUG+2+6et6DAgpOF7aEeFKKf9l37BxGKolM0ZLtN+3s8
 9cwQJH5D2raIVydWICE+s3jHzsOiM5I+29zuX//HepBaUgLzl7scijYGMwOE5BW/nlWq
 cBoYuhFRcES6qMQDTJYGAG6GpBrTDrZlor3inwtW4nitUP0muNPNdfE6zqqcqbgYKWq7
 IbTC3KhoX7uzuZjGHsQC2v5PExcmIFqSi9n7Ce4lkCFxA8MdQrEpxNFELrRe8ds2pm89
 KbXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=TqPvJI4RPAezkldNEOC17IHHTl68zFcqkqu+vA06JuU=;
 b=sZeXsU1Brf0x1Yqwt9RL0OrlHsaOTa37Jn6UgXZk/NUXxyG46O2NpU/MXnkg/5zy08
 /REeFtqQiyUk271WSFa7gn7QJ9e541QWyIJejAVYAfiHAog4ZtIocKi5mQveCNbEmdfA
 UHUXHyFQWR6sHR0q2kAbAbcIflgF9dTP4L5Wio5WDZHqJdKLmXVbri/ge4G8KbIX2yz6
 EGhVBPe+Ngx/WE9jG4n8rSTJqnxWnLMkCnJQvPGQLUDyVquZLabPExsXdqWIJ8kvBp3G
 D5fwvBW0BtEb0j56c1ps0QuJXh2mOa7C6aua3FEOSYlfWoN7YpcvdhDQKU0ODPjn7XWH
 8L3w==
X-Gm-Message-State: APjAAAWzxuasrb0ZBso3UDeOQy/30yCkBz8PQgdJYpAZX9SbiXL5rvBD
 yS2gACG3goGYIcXkpCAI1Wm74A==
X-Google-Smtp-Source: APXvYqw3N/XdapMwdsoi/H4yirjyKKIZlykIdMZZTllXW7MzFKueRoIJNXUGJkFkBfL2bVJprZoWPw==
X-Received: by 2002:a17:902:7046:: with SMTP id
 h6mr15895290plt.231.1578959758723; 
 Mon, 13 Jan 2020 15:55:58 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id w11sm15820761pfi.77.2020.01.13.15.55.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Jan 2020 15:55:58 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: soc@kernel.org
Subject: [GIT PULL] arm64: dts: Amlogic updates for v5.5
Date: Mon, 13 Jan 2020 15:55:57 -0800
Message-ID: <7hwo9udi7m.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_155559_345495_A8925919 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Hi Arnd, Olof,

Here's a round of 32-bit DT updates for Amlogic SoCs for v5.5.

Only thing of note is a merge of a clock dependency branch for some new
clock IDs.

Kevin


The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-dt

for you to fetch changes up to c3dd3315ab58b2cfa1916df55b0d0f9fbd94266f:

  ARM: dts: meson8b: use the actual frequency for the GPU's 364MHz OPP (2020-01-08 11:00:58 -0800)

----------------------------------------------------------------
ARM: dts: Amlogic updates for v5.6
- add DDR clock controller
- GPU OPP updates

----------------------------------------------------------------
Kevin Hilman (1):
      Merge tag 'clk-meson-dt-v5.6-1' of https://github.com/BayLibre/clk-meson into v5.6/dt

Martin Blumenstingl (8):
      dt-bindings: clock: add the Amlogic Meson8 DDR clock controller binding
      dt-bindings: clock: meson8b: add the clock inputs
      ARM: dts: meson: provide the XTAL clock using a fixed-clock
      ARM: dts: meson8: add the DDR clock controller
      ARM: dts: meson8b: add the DDR clock controller
      ARM: dts: meson8b: fix the clock controller compatible string
      ARM: dts: meson8: use the actual frequency for the GPU's 182.1MHz OPP
      ARM: dts: meson8b: use the actual frequency for the GPU's 364MHz OPP

 .../bindings/clock/amlogic,meson8-ddr-clkc.yaml        | 50 +++++++++++++++++++++++
 .../devicetree/bindings/clock/amlogic,meson8b-clkc.txt |  5 +++
 arch/arm/boot/dts/meson.dtsi                           |  7 ++++
 arch/arm/boot/dts/meson6.dtsi                          |  7 ----
 arch/arm/boot/dts/meson8.dtsi                          | 28 +++++++++----
 arch/arm/boot/dts/meson8b-ec100.dts                    |  2 +-
 arch/arm/boot/dts/meson8b-mxq.dts                      |  2 +-
 arch/arm/boot/dts/meson8b-odroidc1.dts                 |  2 +-
 arch/arm/boot/dts/meson8b.dtsi                         | 30 +++++++++-----
 include/dt-bindings/clock/meson8-ddr-clkc.h            |  4 ++
 10 files changed, 108 insertions(+), 29 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
 create mode 100644 include/dt-bindings/clock/meson8-ddr-clkc.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
