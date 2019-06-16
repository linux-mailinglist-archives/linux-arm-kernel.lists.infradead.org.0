Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E90347644
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 19:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iOQov3xU89XtsD1vvBouaxMH0akuthSAhMO35HkWQug=; b=BoJ
	rxL2bU6YpL0OVlocJ8Lye+s0ASx+U3ET68B0mRYw5FxDdjEaxTbDbJ6oQd7wJXkYPDg8e4KOP1Jln
	5gDS06AWRSwU4egewkd5H3O0SLKBICpq/TcYGx+AT0HSBtNb9AXD55QY/fwKRWmAySbeydHbgBn5m
	vRRYITHddvN36IrgmeYkQqDofqiVeN6T2UfeO4Ga1SDl6sWTX3FIvTl/ZhhATPd0OeAPX1w32VsVx
	WOe7iPHwGMN7uqxMUYZuQ+I4mTBoEAv/t3bQWr2ETWDarT5Ol7qEJgaGq824gnn1Fv4Cy5n1VApH9
	HaBUi+VxpfzU7YJ5E0FYTHB5O6YMkLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcZNR-0003an-M4; Sun, 16 Jun 2019 17:55:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcZNC-0003Yc-0Q
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 17:55:23 +0000
Received: from localhost.localdomain (unknown [194.230.155.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0CE732087F;
 Sun, 16 Jun 2019 17:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560707720;
 bh=d0RGGfQllTO5+OTHP8JYkWAhgVmpG2+sN+yX0OyDV00=;
 h=From:To:Cc:Subject:Date:From;
 b=CF500ixgjgJqaIRFaZRGGfNUN3ri0WjWg/j5FMiZJ3XqKs1OJi4ZWTwhjMmTBLm8n
 f67gjy2tYWcPeb20FvjMCUljQ78KJpIYdJYamDr8wg4INmdom4kDxkpxcTm1qaw3in
 GAUgDUhIYZgpt12SdIphwZ7qQ5HGr4pSOPwQ3XkU=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org
Subject: [GIT PULL] ARM: dts: exynos: Pull for v5.3
Date: Sun, 16 Jun 2019 19:55:13 +0200
Message-Id: <20190616175513.3681-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_105522_098557_4AB9E355 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt-5.3

for you to fetch changes up to d2cac68e0d9b038da7207c0b63e1399c4f9f60c4:

  ARM: dts: exynos: Add ADC node to Exynos5410 and Odroid XU (2019-06-11 20:37:21 +0200)

----------------------------------------------------------------
Samsung DTS ARM changes for v5.3

1. Fixes for minor warnings.
2. Enable ADC on Exynos5410 Odroid XU board.

----------------------------------------------------------------
Krzysztof Kozlowski (3):
      ARM: dts: exynos: Move CPU OPP tables out of SoC node on Exynos5420
      ARM: dts: exynos: Raise maximum buck regulator voltages on Arndale Octa
      ARM: dts: exynos: Add ADC node to Exynos5410 and Odroid XU

 arch/arm/boot/dts/exynos5410-odroidxu.dts     |   5 +
 arch/arm/boot/dts/exynos5410.dtsi             |   6 +
 arch/arm/boot/dts/exynos5420-arndale-octa.dts |  14 +-
 arch/arm/boot/dts/exynos5420.dtsi             | 234 +++++++++++++-------------
 arch/arm/boot/dts/exynos54xx.dtsi             |   9 +
 5 files changed, 142 insertions(+), 126 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
