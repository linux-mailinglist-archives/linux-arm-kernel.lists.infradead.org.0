Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AABDF4B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 20:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bLurIjbxUP5Q1d2F7RKA+i8apEQdRlzqN/iw75mAGMY=; b=c5mWc1KdOMbbVOqBDl/7BMceUX
	oXvd4rcNwEirouwAAomff1A/J3mmkjcBs40Gu75f+LiIIRVsJ0rLkI3idZxlSzGqEsSAh1AkWGXLL
	dtFzmaPINEpOtnhywDf41Ig/ZO4EPRDU+Dm5jpQZgsIKDKnzlgEQENZLE+Or4PTqrJuC2jgvRQCA6
	AJ2Lhw0pIgoYZqKIMqlXOf85GBDPqH7HD19atFksgLt+iZU85TlqXz2g+Rk6mTJYZYwnuc8Purbhk
	pStKj9AxkI2SIa8VTQDxKqfgkKazSECBuA5Ikz0AVv9eL+lNij/QpCNy515BNhAZrr2xIz5NbNUoT
	Yw55UJ/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMc3o-0005uz-E3; Mon, 21 Oct 2019 18:05:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMc3J-0005cH-Kv
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 18:05:11 +0000
Received: from localhost.localdomain (unknown [194.230.155.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 30C9B21872;
 Mon, 21 Oct 2019 18:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571681109;
 bh=0BcjTANX8mGe4ppy5NwJxDZeERSs3amWjEalxQiIIKY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=L86KXLyA5vMuJrW/zQbzHM54nQvxeDpPXd1ob6lodPjydA0/rr/Csv13vxK4YTfC3
 16gkuZwc61lGAN9v2TAr/W6lEhjf8ZxVmnS6p5Z3Du4XQK4zFZ/PwzGTOm5dGiVTYS
 oAKDFSv+wYXwamypUaodEcp76RE3WiJHyxtDi4fM=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 1/5] ARM: defconfig: Samsung for v5.5
Date: Mon, 21 Oct 2019 20:04:49 +0200
Message-Id: <20191021180453.29455-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021180453.29455-1-krzk@kernel.org>
References: <20191021180453.29455-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_110509_742906_8D23EE74 
X-CRM114-Status: GOOD (  11.81  )
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

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-defconfig-5.5

for you to fetch changes up to 54e48a69c117648b18684fe0198f40be1bf21acc:

  ARM: multi_v7_defconfig: Enable Exynos bus and memory frequency scaling (devfreq) (2019-10-09 18:34:53 +0200)

----------------------------------------------------------------
Samsung defconfig changes for v5.5

1. Enable Dynamic Memory Controller driver for Exynos5422,
2. Enable Arndale (Exynos5250) audio driver,
3. Sync multi_v7 defconfig with exynos by enabling useful and necessary
   drivers (NFC, watchdog, S2MPA01 regulator, IOMMU, Maxim extcon
   drivers, PHY for SATA and devfreq).

----------------------------------------------------------------
Krzysztof Kozlowski (2):
      ARM: multi_v7_defconfig: Enable options for boards with Exynos SoC
      ARM: multi_v7_defconfig: Enable Exynos bus and memory frequency scaling (devfreq)

Lukasz Luba (1):
      ARM: exynos_defconfig: Enable DMC driver

Sylwester Nawrocki (1):
      ARM: exynos_defconfig: Enable Arndale audio driver

 arch/arm/configs/exynos_defconfig   |  2 ++
 arch/arm/configs/multi_v7_defconfig | 20 +++++++++++++++++++-
 2 files changed, 21 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
