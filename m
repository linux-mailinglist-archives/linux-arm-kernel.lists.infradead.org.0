Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F11B03BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 20:37:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=N6hC9q25+N6p8jKd3wvwE6BXZlmWQ3Al3Rq4cUTtGqs=; b=HiS
	Z5oqcz0Tqihdrldi/hst0RyzssvYta8gNVh+nBdEkUFj5DUTrkMpv7GCQXYD7mdu3IdjO1dlxnMcC
	h0bysSBzxLN+X2goenxnBgphGayjIQpIgvoZr+I6I3YDhmtxXddKWj8doT6xF5Sctx6UfIsdriuPH
	kUSSjW+7gz/JScyhnPZNu/NBhiFG3V1DyWPUXma1VYQWLdtmCH+L0OZ/qo4UNSEO9Z/3NWHgYe/py
	gEoRebRD5MyDokqKsWGLkheaIsEbkaa0GmZ3txQSz4UE9Dq3Hwwaj4X9Ek65wGj9/r/eDae07ROp0
	vU3xu/Ira9XHAA+9WLNxINoi9zB2saQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i87Uh-0001iE-37; Wed, 11 Sep 2019 18:37:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i87Tw-0001KA-6w
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 18:36:46 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1EC7D2084D;
 Wed, 11 Sep 2019 18:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568227002;
 bh=zsAB6WKO0YUTRbf1KlkkihwcBaG99V4V6kcl0Y33ae4=;
 h=From:To:Cc:Subject:Date:From;
 b=vFzY2gxxGLGsQPPMu4wBVwmwpKxTfRAY9t5Cj8YqhPr4ci7+zFL82rKfU2A/VwiPb
 SKFqk/aGXuL0w7oHpgS05xAWBZbHg+zi3Wsw028J7nJPFJP/P62rL8GoXNGB0LrH+e
 laizrxj2EEWRnQ3lB3iFetfQkvbxodu4fwIiyUqM=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 1/2] arm64: dts: exynos: Pull for v5.4
Date: Wed, 11 Sep 2019 20:36:31 +0200
Message-Id: <20190911183632.4317-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_113644_799477_AA653154 
X-CRM114-Status: GOOD (  10.92  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Unfortunately the patches were applied right after closing the linux-next.

Best regards,
Krzysztof


The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt64-5.4

for you to fetch changes up to 266cf9826de38efac416e744d42364ac7fa9dc5b:

  arm64: dts: exynos: Remove useless #address-cells property for GIC node (2019-09-05 21:27:17 +0200)

----------------------------------------------------------------
Samsung DTS ARM64 changes for v5.4

1. Fix boot of Exynos7 due to wrong address/size of memory node,
2. Move GPU under /soc node,
3. Minor cleanup of #address-cells.

----------------------------------------------------------------
Marek Szyprowski (4):
      arm64: dts: exynos: Propagate address/size cell change to /memory node
      arm64: dts: exynos: Move GPU under /soc node for Exynos5433
      arm64: dts: exynos: Move GPU under /soc node for Exynos7
      arm64: dts: exynos: Remove useless #address-cells property for GIC node

 .../boot/dts/exynos/exynos5433-tm2-common.dtsi     |   2 +-
 arch/arm64/boot/dts/exynos/exynos5433.dtsi         | 102 ++++++++++-----------
 arch/arm64/boot/dts/exynos/exynos7-espresso.dts    |   2 +-
 arch/arm64/boot/dts/exynos/exynos7.dtsi            |  23 +++--
 4 files changed, 64 insertions(+), 65 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
