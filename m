Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF81A905CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 18:31:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AhSZUKnQosF46gP1ifqZNnjg6/+0h1Skt1xGdDDONz4=; b=nTx
	JwWctK3xA1T79+D29RuJQmYBx5BtBGEF3iDR5A3F/FrVepZTrFttVqXW574/VIIDAMtifKquoptXj
	hKA0BcgVPi7V9KqAlSnIcNsmitXTlBBc+N+f6cIArwRnquW/P9IqCjQ8wwkxbNsmKQpedxLysZWvN
	wkIz8EXMhnlI1uJjcMiO8saDX8Co3jaZ2RN72d8vXys6kC59CaDqKGal1ddwcCAMj93n7DKrQQDR6
	3pBZDeLEVpPuUh4FW4oDFFfGx323sUbJGEd7dtPKozNZ4YpuViX5RpZC5AIGCZbT2rGNFOKtMCdRc
	SzCoRGx0wgWGSPE/sEBeyMKfU0dcDrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyf84-0005c0-QY; Fri, 16 Aug 2019 16:31:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyf7r-0005bD-DD
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 16:30:52 +0000
Received: from localhost.localdomain (unknown [194.230.155.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB00720665;
 Fri, 16 Aug 2019 16:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565973050;
 bh=bDKLgHOhZqF4s7OBfQaY2Jv5cHcLwf9e2NERN0UJfBM=;
 h=From:To:Cc:Subject:Date:From;
 b=LREVkLwtWXZAjtv4NdF17RfjRlBesDm5DZclZlPCJ2gxyISS1Gz2vXsnf10ahbLUX
 bxdXGX/0J50FMiHOG/d/DCRgxF4sCfcXqG4PkdpNDf5m9B7mhgZVOMXep7NZitwu5A
 0+lTov/NbUaXVUBZMaDhR1vym7IWNwtjHtyaP6sA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 1/3] soc: samsung: Exynos for v5.4
Date: Fri, 16 Aug 2019 18:30:40 +0200
Message-Id: <20190816163042.6604-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_093051_463829_D4F67562 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-drivers-5.4

for you to fetch changes up to 40d8aff614f71ab3cab20785b4f213e3802d4e87:

  soc: samsung: chipid: Convert exynos-chipid driver to use the regmap API (2019-08-15 20:25:25 +0200)

----------------------------------------------------------------
Samsung soc drivers changes for v5.4

Add Exynos Chipid driver for identification of product IDs and SoC
revisions.  The driver also exposes chipid regmap, later to be used by
Exynos Adaptive Supply Voltage driver (adjusting voltages to different
revisions of same SoC).

----------------------------------------------------------------
Pankaj Dubey (1):
      soc: samsung: Add exynos chipid driver support

Sylwester Nawrocki (1):
      soc: samsung: chipid: Convert exynos-chipid driver to use the regmap API

 drivers/soc/samsung/Kconfig               |   5 ++
 drivers/soc/samsung/Makefile              |   2 +
 drivers/soc/samsung/exynos-chipid.c       | 101 ++++++++++++++++++++++++++++++
 include/linux/soc/samsung/exynos-chipid.h |  52 +++++++++++++++
 4 files changed, 160 insertions(+)
 create mode 100644 drivers/soc/samsung/exynos-chipid.c
 create mode 100644 include/linux/soc/samsung/exynos-chipid.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
