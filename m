Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CB21374BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:24:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yRouMZHAVyrm1bUHrfEgVaJmXQbybtSvjh8H201PkqM=; b=SjMi9gmXaJTdW6dZCh5K1p3x4A
	WZ9cp5xkMrPkbdczA7wHlYzykWDqoEc2mZTxUKMkVF1BfKdVbWPvyzMGgPgC1dXnHnOrXwEqKQjx0
	9xqk2ThfaMKMInrI3fxZWWUX/Clfq+4pWMNS9ACtERVJscdrfw9OnbVOxNP+AsxQuPoPcwAoRZe2e
	qOfmc5IshBS12fDgeO6U76+m+8+3aTLi7Q6aQc/xxeVYSF/UcKwinsClNqqD9qoz/jVsr20+SAnLJ
	HDOu14Qnc7AVW9fXrAC5v4IXS/usq5vj8u3vdryIT3LZvrMabBe5Ln50DXbH75VCEQzMgJOnDIBgI
	HJvPWfxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipy1F-0002dy-Q8; Fri, 10 Jan 2020 17:24:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipy0u-0002ZL-FR
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:24:01 +0000
Received: from localhost.localdomain (unknown [83.218.167.187])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F05B2206ED;
 Fri, 10 Jan 2020 17:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578677040;
 bh=WbF1AEdeIfupUSzrl+6OSHyHQZVRtMKt2d/fK42OGXM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0ZcL9cBX5k3yEjeklZ2idTBQF3CNRiH/eqb65dih0hS2PjXHmrnJoyETHi1HwUaSy
 ERaE2D36LvbN/MLeyggbk0V5p7AV7SNJAbz/zlguidesHdUxdnSR9HIJXzuIPGoaye
 FSVZKNNQbYFOezyQVNokvVyVZ6rpTD43meaqQSdc=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 1/3] soc: samsung: Pull for v5.6
Date: Fri, 10 Jan 2020 18:23:30 +0100
Message-Id: <20200110172334.4767-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110172334.4767-1-krzk@kernel.org>
References: <20200110172334.4767-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_092400_542096_543FECD6 
X-CRM114-Status: GOOD (  10.56  )
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

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-drivers-5.6

for you to fetch changes up to 0536309373e3e0e4c558f45dad272fcfb8b48fa9:

  memory: samsung: Rename Exynos to lowercase (2020-01-07 20:46:32 +0100)

----------------------------------------------------------------
Samsung soc drivers changes for v5.6

1. Convert to managed (devm_x()) versions,
2. Cleanups (Samsung and Exynos names).

----------------------------------------------------------------
Krzysztof Kozlowski (2):
      soc: samsung: Rename Samsung and Exynos to lowercase
      memory: samsung: Rename Exynos to lowercase

Yangtao Li (2):
      soc: samsung: exynos-pmu: Convert to devm_platform_ioremap_resource
      memory: samsung: exynos5422-dmc: Convert to devm_platform_ioremap_resource

 drivers/memory/samsung/Kconfig              |  2 +-
 drivers/memory/samsung/exynos-srom.c        |  2 +-
 drivers/memory/samsung/exynos5422-dmc.c     |  7 ++-----
 drivers/soc/samsung/Kconfig                 |  2 +-
 drivers/soc/samsung/exynos-chipid.c         |  2 +-
 drivers/soc/samsung/exynos-pmu.c            |  6 ++----
 drivers/soc/samsung/exynos-pmu.h            |  2 +-
 drivers/soc/samsung/exynos3250-pmu.c        |  2 +-
 drivers/soc/samsung/exynos4-pmu.c           |  2 +-
 drivers/soc/samsung/exynos5250-pmu.c        |  2 +-
 drivers/soc/samsung/exynos5420-pmu.c        |  2 +-
 include/linux/soc/samsung/exynos-pmu.h      |  2 +-
 include/linux/soc/samsung/exynos-regs-pmu.h | 16 ++++++++--------
 13 files changed, 22 insertions(+), 27 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
