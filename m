Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D7F557DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 21:35:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gN4DwYkpYzbdBo82vZsJ90OiOzwgry0s0MdsNPBB7Ns=; b=OdY
	bXz+ZZOTEM5d9MZI8Tw6EKy3Lw+ZtFZLQAQ+pBo+M0jEpERglY8/IqAH46ytmZnUzHKqAZE79EEJP
	znbH0uWyMy4o3jxtnhwOX4zqk3pXX4scI9xLBsuPk/qqAJua0Z8hDdRyD6rPQvtKuUSekIpQouHD9
	OxXEJfo2TaNTw+yhvGlz+ZXjeQImYnfKxEWiS9Vt8mCvi51NZ5gumNwuSvDVleFNmLIhL17JXnRhi
	noMZ6ETfmejECE83pcNKSO0/bowu0DpSpHLxae9MIOO4uvkuiMzGw5nkYqV8cxLMsXxSlek+5TagA
	9y142HCsh4ast8dWeD/fixZWS2L+Y2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfrDx-0006Dw-Be; Tue, 25 Jun 2019 19:35:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfrDa-0005nc-PF
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 19:35:04 +0000
Received: from localhost.localdomain (unknown [194.230.155.151])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D024120883;
 Tue, 25 Jun 2019 19:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561491301;
 bh=hQjKnhcZZUBXPnB4E3tB9Mrbs5scGFUowmnD4/pB2Ek=;
 h=From:To:Cc:Subject:Date:From;
 b=o1JcsmuO60aZ0R5wdaDmtQYeoEr+vUjp9eyMf0/7AhX9CexsHk+Lgq3EJ3rLVbX1E
 +DDGwuTD03wkgpirHBdbD4tn8V8fWf5s0EkgbwWzmhlQRwyWy/yKI3rBQg8Q/GB6I7
 uIKtvkplzhyp150qaAzyMLS/wPGqSwYvGGDQWJOE=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org
Subject: [GIT PULL 1/4] ARM: defconfig: Samsung/Exynos for v5.3
Date: Tue, 25 Jun 2019 21:34:48 +0200
Message-Id: <20190625193451.7696-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_123502_850127_805782DD 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-defconfig-5.3

for you to fetch changes up to dd50a69b5697532666023766688c6ea642e5a443:

  ARM: exynos_defconfig: Enable Panfrost and Lima drivers (2019-06-19 19:23:35 +0200)

----------------------------------------------------------------
Samsung defconfig changes for v5.3

1. Trim several configs with savedefconfig.
2. Enable Lima and Panfrost drivers for Mali GPU.

----------------------------------------------------------------
Krzysztof Kozlowski (4):
      ARM: exynos_defconfig: Trim and reorganize with savedefconfig
      ARM: defconfig: samsung: Cleanup with savedefconfig
      ARM: multi_v7_defconfig: Enable Panfrost and Lima drivers
      ARM: exynos_defconfig: Enable Panfrost and Lima drivers

 arch/arm/configs/exynos_defconfig   | 65 +++++++++++++++++--------------------
 arch/arm/configs/mini2440_defconfig | 43 ++++++++++--------------
 arch/arm/configs/multi_v7_defconfig |  3 +-
 arch/arm/configs/s3c2410_defconfig  | 24 +++++---------
 arch/arm/configs/s3c6400_defconfig  | 11 +++----
 5 files changed, 62 insertions(+), 84 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
