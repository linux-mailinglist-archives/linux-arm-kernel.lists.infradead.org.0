Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30932A8715
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 19:50:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Rh6AfzyvGk9dlctk+u2olHVZbQ9Jf2JSfDdE4+znBwg=; b=jt1bVsRhVVUz6dV2NHyuLsZ7eZ
	Tg8Vn6Pl2hiZpBs6HGfdTiOnuR36M8ccz7C+hsiXFMHKzrVYplvXnA/rSXNNisn29mmFXii5/crZJ
	mPZQvdp7yUe50qJYVw7ji3PGaJm07C5ejAmFkCY/Jt2RgDjb+OLJ/VH8ZN3WA7H7Rsz85mC1qwzCa
	1TaDvvP4QPKXJbToEPerhsMQHuacls1cGyxoUxuGzYAp47NCD5bracn2vvGcDiiClb+6DJBmgkMQ0
	EBwOBWoD7bTmS1zXM+kOgBYe8URH38na+Mus4AOfBwDbxdeFrCnD7suPTzeymmBh7MuY79hRf5Q2R
	QcLaUZdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ZQV-0007ma-LP; Wed, 04 Sep 2019 17:50:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ZQ7-0007cd-4A
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 17:50:16 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 98D7522CED;
 Wed,  4 Sep 2019 17:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567619414;
 bh=R5WtwOkVVAy6378rDFTNIJIG6/6U6HQKgTz+BE11yrQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OtQWzH+WMahlJ1XkzJjMRlH0AsxSAWxwrnmz5SNnB8TfTdGwcCZru5yFCOhP7yXFU
 aRNaZDvNmEIqAnVtx3q9xFnciksSCwNEZVzqktXQnJyEpA115eJnQZp9QwKYUEHsIK
 hd8tWdm8EIgp2PV2mFwuah6BgL9mmC6iB8p3Cxxg=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 1/5] ARM: defconfig: exynos for v5.4
Date: Wed,  4 Sep 2019 19:49:58 +0200
Message-Id: <20190904175002.10487-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904175002.10487-1-krzk@kernel.org>
References: <20190904175002.10487-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_105015_195389_20391319 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-defconfig-5.4

for you to fetch changes up to 86759eeb32f70193ca7ebd50cc9b70ccb73d3d89:

  ARM: multi_v7_defconfig: Make MAX77802 regulator driver built-in (2019-09-02 17:38:20 +0200)

----------------------------------------------------------------
Samsung defconfig changes for v5.4

1. Enable AHCI platform driver on exynos defconfig for Exynos5250-based
   Arndale board,
2. Make Max77802 PMIC regulator driver a built-in on multi_v7 defconfig
   as it is essential early during boot.

----------------------------------------------------------------
Marek Szyprowski (2):
      ARM: exynos_defconfig: Enable AHCI-platform SATA driver
      ARM: multi_v7_defconfig: Make MAX77802 regulator driver built-in

 arch/arm/configs/exynos_defconfig   | 5 ++++-
 arch/arm/configs/multi_v7_defconfig | 2 +-
 2 files changed, 5 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
