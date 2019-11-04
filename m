Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FB2EE6CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 18:59:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XopKqo6nObhml710IqXHMZZP9Bh7XLK1lmgKcKCFWlI=; b=ZW9
	t8LuvF3N84L0e0bmaw0zCYfNPqdyj3wqDG6h454VUYKWGpoTo8XrqSIhA6Q6Wx74RREsA+gjS6p+4
	udEJSbxVC1+7ixNrsskdMNPDb5afrzHkSXUT6Y1bbKORz8eokNR6MPU+zaiIqSERQ4GrkF3tk+q3o
	cO7GnKaFf5dt5fQKaJjZSF3GGjXSCuftTW60a6hf2tee2ulNmum46hrcLzwfc0bqpZB/RlYD4KOP+
	/oFW4WDlYUKrhe/2Is1LDcf4BIWP38pJl5JZaKtvurkoCiACdI6EkGer0mbQWQ9NRqnPdF5hE551C
	Fp7ksufd6AQNh7CKZSgeiCHzcbHpylg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgdJ-0001Kn-Mf; Mon, 04 Nov 2019 17:59:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgdD-0001KR-DE
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 17:59:12 +0000
Received: from localhost.localdomain (unknown [194.230.155.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0CC620B7C;
 Mon,  4 Nov 2019 17:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572890351;
 bh=LGIo8ZmiAbwfkL3OFX1XtCq8eoQUgUNanwlaQmqqLIk=;
 h=From:To:Cc:Subject:Date:From;
 b=nrxoEJpw15kTTwxCPN6JNJjPoR41rcctJ4NZpnAanKB7BK2d9kEASyceLFBzeYMi0
 kutqZYMXKDVmMyLdVFNZoETmfEd/+8Tn+wmJomRBptRyrt5vD4YxBcE9ok9ohGFREr
 aU5WLrGnnQy4FKIjYkDyrliLa9vR7BQYyA3/5OMo=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 1/2] soc: samsung: Drivers for v5.5
Date: Mon,  4 Nov 2019 18:59:01 +0100
Message-Id: <20191104175902.12224-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_095911_465681_CC7B64C2 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.180 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi,

This includes dependency from PM/OPP.

Best regards,
Krzysztof


The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-drivers-5.5

for you to fetch changes up to 89e551e83869732d5b9fd21d7cfdb1f8d62cf5d0:

  soc: samsung: exynos-asv: Potential NULL dereference in exynos_asv_update_opps() (2019-10-30 19:04:32 +0100)

----------------------------------------------------------------
Samsung soc drivers changes for v5.5

1. Minor fixes to Exynos Chipid driver.
2. Add Exynos Adaptive Supply Voltage driver allowing to adjust voltages
   used during CPU frequency scaling based on revision of SoC.  This
   also pulls dependency from PM/OPP tree - driver uses newly added
   dev_pm_opp_adjust_voltage() function.

----------------------------------------------------------------
Dan Carpenter (1):
      soc: samsung: exynos-asv: Potential NULL dereference in exynos_asv_update_opps()

Krzysztof Kozlowski (1):
      Merge tag 'opp-5.4-support-adjust-voltages' of https://git.kernel.org/.../vireshk/pm into next/drivers

Stephen Boyd (1):
      PM / OPP: Support adjusting OPP voltages at runtime

Sylwester Nawrocki (3):
      soc: samsung: chipid: Make exynos_chipid_early_init() static
      soc: samsung: Add Exynos Adaptive Supply Voltage driver
      soc: samsung: chipid: Drop "syscon" compatible requirement

 drivers/opp/core.c                   |  69 +++++
 drivers/soc/samsung/Kconfig          |  10 +
 drivers/soc/samsung/Makefile         |   3 +
 drivers/soc/samsung/exynos-asv.c     | 177 ++++++++++++
 drivers/soc/samsung/exynos-asv.h     |  71 +++++
 drivers/soc/samsung/exynos-chipid.c  |  12 +-
 drivers/soc/samsung/exynos5422-asv.c | 505 +++++++++++++++++++++++++++++++++++
 drivers/soc/samsung/exynos5422-asv.h |  31 +++
 include/linux/pm_opp.h               |  13 +
 9 files changed, 889 insertions(+), 2 deletions(-)
 create mode 100644 drivers/soc/samsung/exynos-asv.c
 create mode 100644 drivers/soc/samsung/exynos-asv.h
 create mode 100644 drivers/soc/samsung/exynos5422-asv.c
 create mode 100644 drivers/soc/samsung/exynos5422-asv.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
