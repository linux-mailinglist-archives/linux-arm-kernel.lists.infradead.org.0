Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E859C44F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 16:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UY24A6quMddIMCg4kvJ7Of3hW76oCnJVa3IfbtYB4mI=; b=HUcZ4gMMTjx+a1
	H3PdYO9hc/AE90qY56zhiFIG+mThIZdjMr2R7ysb3b9li8LD1RQgUYRl0KV8LjeAJZoIFURI1fbVM
	kgsJ10803t57ieZo2jhxuDZi4I2I50SUPZHAH112hQWy30GWLLsJNgxHLE0yArvhCyG/5tlOJsb6U
	qDvC0H0nRAo/ia0m5C6CTdLWqVkjnDjPRmWwiej14L9yrglmtDP9cAInkp+xGJbzbARY938E8g68U
	xoSdbZvLsp4Nc4obdLnBc8Y2HGpWkUdMh+O1r6U6xM+X+1dlVOSZpqd14Us+8hNYTf6Cvludj+fyo
	a72quYe9yDVoTlm6Wnaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1tE9-0004Yn-7N; Sun, 25 Aug 2019 14:10:41 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1tDw-0004XN-9E
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 14:10:29 +0000
Received: by mail-qt1-x843.google.com with SMTP id g4so5729560qtq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 25 Aug 2019 07:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=rQdJ4W7sx1Dw6nKOeB5W9zPWaUkj4EIdG7sI3MyZJ24=;
 b=a5DsnexyjqK++nrn/EmqB36/Ezc0tHgqySC1ObykjuUKy6DP2mF9L3/rQZr/hWq6fp
 oiezoWr3NioPZ6EKPEOELXjaEoCuyXq/kv2FYgfFLB55Gf8qtiWiwXSU8mSvHPk3malS
 JJyd93uT4X9sgvqPodJ2f8489E080ePTrUnsA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=rQdJ4W7sx1Dw6nKOeB5W9zPWaUkj4EIdG7sI3MyZJ24=;
 b=rzKJo4hH2UhnEal+WIYuAh2wDUnq+XI7Ed34gQ73EERYFkEjDWBMABUXTt11Qksdqv
 yZi8pEnU4vA3KzYY/a/TE14/vjjv4Quf/8BlpT0oWaa9IBNNoDvJ7CnCMk5jt1Kxu0ZC
 UCI9yvmLadQDQXWfvzdggTbregMPdc+FUDPQAg6kckrm9qV6F6NrbfgKDo58XHcRho8Q
 HoFdJqlSge59LLgVlLX7v6Qs1hMkz6Mj0TgHe4daK+n5X1hLK8eKwxko8WD6YodCrMtC
 3w+SJ2YLndugs4UneVvMmuoe4kKUTCwU8/BC4zMeDiPrCby10xGP2nREFD5jKmSNnQsA
 2ktg==
X-Gm-Message-State: APjAAAXwy0O0RJCCH08eui1z86xEgmaqRuxtXT5P5Db4o/cqVN61yrY8
 iSpHOenQ06K6RAImvd2bgjG8mEyb0ggimvzr6HU=
X-Google-Smtp-Source: APXvYqy0P1Tl1BJhu53PFtZq+aExVFsLuax5uzD6g/IqzuiQI+4XXPjixA08Jb/9bWUw+wmR9X8C5GR3VpYz9KNvYqQ=
X-Received: by 2002:aed:3e6f:: with SMTP id m44mr13694652qtf.220.1566742227110; 
 Sun, 25 Aug 2019 07:10:27 -0700 (PDT)
MIME-Version: 1.0
From: Joel Stanley <joel@jms.id.au>
Date: Sun, 25 Aug 2019 14:10:15 +0000
Message-ID: <CACPK8XfKHpNYXNE_VRaLeGUQa7-hkmUS0nsPfaeSLE4sckKFHg@mail.gmail.com>
Subject: [GIT PULL] ARM: aspeed: devicetree changes for 5.4
To: arm <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_071028_323556_8A34B563 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Jeffery <andrew@aj.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello ARM Maintainers,

Here are the APSEED device tree changes. No ast2600 support here
unfortunately as the clock driver wasn't quite ready in time.

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
    tags/aspeed-5.4-devicetree

for you to fetch changes up to 49b0f3be0b86292eed6f6aedadf4252131d9c111:

  ARM: dts: aspeed: swift: Add eMMC device (2019-08-22 15:34:20 +0930)

----------------------------------------------------------------
ASPEED device tree updates for 5.4

New machines:

 - Facebook Wedge100, Wedge40 and Minipack
 - Lenovo Hr855xg2
 - Wistron Mihawk

There's a few other updates, notably some changes to to use the newly
added SDHCI driver.

----------------------------------------------------------------
Andrew Jeffery (2):
      ARM: dts: aspeed: Describe SD controllers
      ARM: dts: aspeed: Enable first MMC slot on AST2500 EVB

Andrew Peng (1):
      ARM: dts: aspeed: Add Lenovo Hr855xg2 BMC

Ben Pai (1):
      ARM: dts: aspeed: Add Mihawk BMC platform

Hongwei Zhang (1):
      ARM: dts: aspeed: Add SGPM pinmux

Joel Stanley (1):
      ARM: dts: aspeed: swift: Add eMMC device

John Wang (1):
      ARM: dts: aspeed: fp5280g2: Fix power supply address

Matt Spinler (1):
      ARM: dts: aspeed: swift: Fix FSI GPIOs

Tao Ren (3):
      ARM: dts: aspeed: Add Facebook Minipack BMC
      ARM: dts: aspeed: Add Facebook Wedge40 BMC
      ARM: dts: aspeed: Add Facebook Wedge100 BMC

Vijay Khemka (3):
      ARM: dts: aspeed: tiogapass: Add VR devices
      ARM: dts: aspeed: tiogapass: Move battery sensor
      ARM: dts: aspeed: tiogapass: Add Riser card

 arch/arm/boot/dts/Makefile                         |   5 +
 arch/arm/boot/dts/aspeed-ast2500-evb.dts           |  11 +
 arch/arm/boot/dts/aspeed-bmc-facebook-minipack.dts | 429 ++++++++++
 .../arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts | 272 +++++-
 arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts | 149 ++++
 arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts  | 141 ++++
 arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts   |   4 +-
 arch/arm/boot/dts/aspeed-bmc-lenovo-hr855xg2.dts   | 663 +++++++++++++++
 arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts        | 918 +++++++++++++++++++++
 arch/arm/boot/dts/aspeed-bmc-opp-swift.dts         |  15 +-
 arch/arm/boot/dts/aspeed-g4.dtsi                   |  28 +
 arch/arm/boot/dts/aspeed-g5.dtsi                   |  33 +
 12 files changed, 2659 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm/boot/dts/aspeed-bmc-facebook-minipack.dts
 create mode 100644 arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts
 create mode 100644 arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts
 create mode 100644 arch/arm/boot/dts/aspeed-bmc-lenovo-hr855xg2.dts
 create mode 100755 arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
