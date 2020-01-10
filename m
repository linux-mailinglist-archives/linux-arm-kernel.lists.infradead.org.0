Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 100BA1374C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:24:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yBwTczgz9Z7Y/GjUiSHSzhR3OKMhREYmO6mKZyBE6H8=; b=lRjrxdnpPUF2OrVAJGcZWqLIR7
	4oA1hYQv7JQCFXDXUy8N7POdSTToH33iOI+j52AOa3EjFQB9utNdS9fKKaXMPufxI/CAs9d3VzWlY
	olhOHfNYzUMvcCiHquriNj4vqHAdQVjc0lpEkMLW1afbZ+UPocMHdZeKGaSPF1JQRo4qem1QhlKKX
	eDS2/ZMfXL2RaK4ABfkEuffpxJaQ3G2ltllQEv3x5fUCAm6qXE9gQjUAZfDdYeLlca7iqdLj0vsVI
	ZSyNl8e14bnogxxyX2gpTx42hR8NdfsvYX6+X+7kKRAs9no4AKA8rGRIQRQdSi+madVgHemAnnmqk
	0mOnS6wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipy1g-0003AE-3m; Fri, 10 Jan 2020 17:24:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipy14-0002ib-Lp
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:24:13 +0000
Received: from localhost.localdomain (unknown [83.218.167.187])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A7E1B2080D;
 Fri, 10 Jan 2020 17:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578677050;
 bh=PEEWZOXtjp+MV+ENjzNepmXB7JALrO/U96bkKTRD2HU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Srn9kJKd0sPJ1cmBok1bROl1+1DyLwvY/44RiAi/t5xT5CX8qBGsdO2oBMxCSooMj
 Wl98Fw/vUFs5sUBqmgY4uF4EuAE1fl9d9sh5LYRMkuGFYyeLDk//ELUT9jHjmKN9Hn
 tmOvTxgATRgKfR2LuGJ5KJwIC4iOgp6evkBOyojc=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 3/3] ARM: samsung: Pull for v5.6
Date: Fri, 10 Jan 2020 18:23:32 +0100
Message-Id: <20200110172334.4767-4-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110172334.4767-1-krzk@kernel.org>
References: <20200110172334.4767-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_092410_753085_2046CEEC 
X-CRM114-Status: GOOD (  11.69  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-soc-5.6
`
for you to fetch changes up to 45984f0c70ccc03e09f97ee5d0749396547b6594:

  ARM: samsung: Rename Samsung and Exynos to lowercase (2020-01-07 20:44:22 +0100)

----------------------------------------------------------------
Samsung mach/soc changes for v5.6

Cleanups (Samsung and Exynos names, Kconfig help text correction).

----------------------------------------------------------------
Krzysztof Kozlowski (2):
      ARM: exynos: Correct the help text for platform Kconfig option
      ARM: samsung: Rename Samsung and Exynos to lowercase

 arch/arm/mach-exynos/Kconfig                      | 36 +++++++++++------------
 arch/arm/mach-exynos/common.h                     |  2 +-
 arch/arm/mach-exynos/exynos.c                     |  4 +--
 arch/arm/mach-exynos/include/mach/map.h           |  2 +-
 arch/arm/mach-exynos/pm.c                         |  2 +-
 arch/arm/mach-exynos/smc.h                        |  2 +-
 arch/arm/mach-exynos/suspend.c                    |  2 +-
 arch/arm/mach-s3c24xx/Kconfig                     | 16 +++++-----
 arch/arm/plat-samsung/adc.c                       |  2 +-
 arch/arm/plat-samsung/devs.c                      |  2 +-
 arch/arm/plat-samsung/gpio-samsung.c              |  2 +-
 arch/arm/plat-samsung/include/plat/samsung-time.h |  2 +-
 12 files changed, 37 insertions(+), 37 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
