Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D26DF4B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 20:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g6KrgFOv1nvG9iwSbRCdNDfEYenfFr/6zI//vVZohbI=; b=fkABQ7yKDfcKwE5XoYEbOzWLjK
	3ZTPMGMPdGUXe36ONiZdHvkGtDcPpu5cVG16CmRNN/c2FlBbHxH871vvLBHS1BAxI05+gp1NLXIKC
	996xKTKBU64vx2pNbDQ+SaYj/4EjdsMFokJ7KQeA8pHVVRDfpAqbWeWSt8OEu2BbZ8pLXQ0jGc8Ww
	zvSC4Hfs1Z92L3DGS368yDHpoFAoqWzHAEkTpAtMkLNFLJe16dNu7v+0t2Scow5MEaqoxwnNI1xPH
	mlrBI08fNccZt4cXRpUPqLT0G6QgeJBXwqU5WJQrDt2hi2qvd+N7TL0FMQa5xfMwF/JUJvsFmMxxm
	ltEf6hGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMc43-0006D9-00; Mon, 21 Oct 2019 18:05:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMc3O-0005l6-1J
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 18:05:15 +0000
Received: from localhost.localdomain (unknown [194.230.155.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B78FC21906;
 Mon, 21 Oct 2019 18:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571681113;
 bh=ToYS4x8WHhQ96kguiwcjMG4uFgJwdCUKs39Q+zM3LpY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kvpmUP3ikLg963U1Z9OA9ivg8wVqkDuC/wdT0IT+BcyGlavi4G2tVtxiTPlJQU38h
 8+LV179AYUZOygjGtfz+qZaZqadPCbtb/ocjfasvy0anuulWtoosQfY/lP7QbxJkjO
 nZEwUCcst8QARig3szqGz2pS1ZO3c/jQc8VS3j74=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 2/5] drivers: memory: Samsung for v5.5
Date: Mon, 21 Oct 2019 20:04:50 +0200
Message-Id: <20191021180453.29455-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021180453.29455-1-krzk@kernel.org>
References: <20191021180453.29455-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_110514_159378_60656203 
X-CRM114-Status: GOOD (  14.03  )
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

Hi,

Topic branch/pull for DMC driver in memory. Patchset had many iterations
on mailing lists and waited for very long.

Best regards,
Krzysztof


The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-drivers-dmc-5.5

for you to fetch changes up to bbf918863e183d66adf00ca1b24fb641149a0d3d:

  memory: samsung: exynos5422-dmc: Add support for interrupt from performance counters (2019-10-02 19:37:37 +0200)

----------------------------------------------------------------
Samsung DMC driver for v5.5

Add Samsung Dynamic Memory Controller for Exynos5422 which provides
scaling of frequency and voltage of memory controller and DRAM.  The
driver allows to reduce energy usage without performance impact.

----------------------------------------------------------------
Colin Ian King (1):
      memory: samsung: exynos5422-dmc: Fix spelling mistake "counld" -> "could"

Lukasz Luba (4):
      memory: Extend of_memory with LPDDR3 support
      memory: Add DMC driver for Exynos5422
      memory: samsung: exynos5422-dmc: Fix kfree() of devm-allocated memory and missing static
      memory: samsung: exynos5422-dmc: Add support for interrupt from performance counters

 MAINTAINERS                             |    8 +
 drivers/memory/jedec_ddr.h              |   61 ++
 drivers/memory/of_memory.c              |  149 +++
 drivers/memory/of_memory.h              |   18 +
 drivers/memory/samsung/Kconfig          |   13 +
 drivers/memory/samsung/Makefile         |    1 +
 drivers/memory/samsung/exynos5422-dmc.c | 1550 +++++++++++++++++++++++++++++++
 7 files changed, 1800 insertions(+)
 create mode 100644 drivers/memory/samsung/exynos5422-dmc.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
