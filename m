Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7479B4DC7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 23:29:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MOR+VfhO1zrH6AtIW1XNiQ0vKhV/b+kRHUyGg61wBL8=; b=MEu3LwmlfA5tLo
	zG9o7cz2u5+0XNpXrRL1mzXMbtXNFDKjPwh8cM3kiDdCIxEn4goDWAkAIPo8cltpbE2K7T0OK3+zw
	NsGbxnsOBdtI+p6vzxcWwCTZyTGzFYDYB7NjggWzEgaQm03fJiveLSZNsme+eiz/zG4lA9EXnVmxT
	yFsBxmc4j7zYJXs0fKtI0QuzOxwOkHdSJTR79p+TAU2M/wmRmIBYbWnOdVrmBG8sfuzpW+XOYoE1E
	LsgcCMNijycp6q5no2Xk9DYnNyaja6h40Y7ITOlcv0Rg/GQfbY2H0uTL6y4dkJ75VJWYIZe3W3NyA
	ykEdvRk2PiSF9TjyNxAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4cF-0006zZ-9E; Thu, 20 Jun 2019 21:29:07 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4c0-0006y7-5k
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 21:28:54 +0000
Received: by mail-pg1-x541.google.com with SMTP id 145so2240027pgh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 14:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=/usBuInchiYIkwEINC5m7qI2XdY9h5Mq7M9FS6qjXCs=;
 b=SJIyAPLBhJlQowM14RD/peLXS/0YoDcTdl5W4u6mWKFY7oRNNeYT4Q5pJhhmSaMTNR
 KJ79e1Zedw10eV0fsBVpo8AFkDVZ+4JWnWi0AT1fO0swEtvXOFmSXkQ8ehAZ7y+izZLy
 4tOr1yJ0+8G2bXNX/2H0zukPC7g4+OzfZDGPMqguNCbijb4vvcw0SjcwyF/FnPbKxY8g
 poSWejekEDmCSLO/hxM99U0N+1bS8WQazl21iwdaOwbDGitdxBMui0eHQiT3V8lqu+zE
 dn1Ry9CH84dcJLYOoBxeJ9bUUVLXfjG6S8Hb6hvH+JrFhMuTl+wiVhnErMSvlH9OHFcA
 L5gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=/usBuInchiYIkwEINC5m7qI2XdY9h5Mq7M9FS6qjXCs=;
 b=qC3/AYO3fHvxodM1UHvlxgaTUVT/ujuqBqURVqAw6rJ1Aep+Zcn/rmbE5osN7Z4e8Z
 +XIfmo4LyQZ7EfoEOY7Ai2IRESBXhOUhbIEgo1YsVxzjh+dNiwpfVJYK233OEXIJiXBB
 8PLZBXeaf6a2I9GFRWvWJSBWnfh+J0f/7vVIRzSFLh7rilblUTYtnavbQHJSSptj2hP9
 gnmDVk3TxAUr5/dzvTuH5/DxJWM4wYUbmWWuqzzxSALL//DF51MmQCg22psjQ1dxtmy8
 Kv6BG7I+UtLpJJsIYV0usxLWAUsy25CkP0Q0D+zfmWwzwBaqNQgBUbAjwtZHA+nIJiS1
 UbLA==
X-Gm-Message-State: APjAAAUhg6YMMLWNJVaePD/znzoDZbt2UMDYhi3Q1oH2UEdwPdNox0F3
 qVU4UKbRCWgf1vcmWMYUwHiJKQ==
X-Google-Smtp-Source: APXvYqy8N+WcXxQciDvLrtmoM55a2GQCBddWrnqNBsUsf3/2NW1H5U24nFsOKvDFD7duyi5xv/mBKQ==
X-Received: by 2002:a63:6f0b:: with SMTP id k11mr14459048pgc.342.1561066131167; 
 Thu, 20 Jun 2019 14:28:51 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id w16sm410689pfj.85.2019.06.20.14.28.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Jun 2019 14:28:50 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: arm@kernel.org
Subject: [GIT PULL] Amlogic fixes for v5.2
Date: Thu, 20 Jun 2019 14:28:47 -0700
Message-ID: <7hr27oeyk0.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_142852_247417_4C1E22A0 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-fixes

for you to fetch changes up to 26d65140e92a626e39c73c9abf769fd174bf5076:

  ARM: dts: meson8b: fix the operating voltage of the Mali GPU (2019-05-20 09:58:38 -0700)

----------------------------------------------------------------
ARM: dts: Amlogic fixes for v5.2-rc
- fix GPU interrupts and operating voltage

----------------------------------------------------------------
Martin Blumenstingl (3):
      ARM: dts: meson8: fix GPU interrupts and drop an undocumented property
      ARM: dts: meson8b: drop undocumented property from the Mali GPU node
      ARM: dts: meson8b: fix the operating voltage of the Mali GPU

 arch/arm/boot/dts/meson8.dtsi  |  5 ++---
 arch/arm/boot/dts/meson8b.dtsi | 11 +++++------
 2 files changed, 7 insertions(+), 9 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
