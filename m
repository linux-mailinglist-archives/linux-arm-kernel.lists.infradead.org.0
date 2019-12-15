Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9086411F79E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 13:13:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=e2zcw1RmuvZ2MIwaWpWk1Qxi4Va8rASu3ZJu/zu6fno=; b=KAc
	Sl8gFVv5L53dkYgiQEp+ehvkEjHa4JW7XkDNkKMNTVPayIkQu+/l2ViE9DsJ8/o4Up3Hf4TMyJefM
	DN1WlDO405QCjGqEvyiw4Qbtrlcccakui6ZbmExVz+PoMt5LVwj63j7wdHnBGdj6AR36SdcCeN6mQ
	N977SziPS2LJ1TT//Q37f+NQ+SmLK0OG9i5DZh3XRmgTUyZCuoyALMCI2sf+3Wfg6JqCQdK9aQnZT
	Ca4vfmOr63xMb/ypBV//wTF2X7C4TyanDAsDRaJswJOHquQpOJ71N82SH0m4ypjWaZcc3o6ufZa4U
	cCjbZoHedcl5wipH0IXEvaeRW8UPl/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igSmB-0006eL-RC; Sun, 15 Dec 2019 12:13:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igSm4-0006dl-LW
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 12:13:26 +0000
Received: from localhost.localdomain (unknown [194.230.155.234])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 078D524654;
 Sun, 15 Dec 2019 12:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576412003;
 bh=kEXVJBS/UwSqT3Pg74eUT2ImW/zfE9tpz4hx6T3Exhc=;
 h=From:To:Cc:Subject:Date:From;
 b=SJx6ZiaWnXXF3Zdx0oLlUaOw1bKAIEIIWgnsMajl5s0Hy4sLaK4cFIXYn++eZlMx0
 pcaexBmHxoMhXBXT4/XalZNLjxv4r7a+d2R168iY6YacNpBTwV3q95VaCda6eNeoJJ
 5vz6+1jCxsD+hA86MqXSCLQRe7fOKAYAqseIzct8=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: exynos: Fixes for v5.5
Date: Sun, 15 Dec 2019 13:13:16 +0100
Message-Id: <20191215121316.32091-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_041324_728854_50E5A3EB 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi,

Three fix-related patches for current cycle.

Best regards,
Krzysztof


The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-fixes-5.5

for you to fetch changes up to a2315d3aea5976acd919d3d3fcf82f752562c25b:

  ARM: exynos_defconfig: Restore debugfs support (2019-12-09 18:59:54 +0100)

----------------------------------------------------------------
Samsung fixes for v5.5

1. Restore debugfs support in exynos_defconfig (as now it is not
   selected as dependency of tracing).  Debugfs is required by systemd
   and several tests.
2. Maintainers updates.

----------------------------------------------------------------
Krzysztof Kozlowski (1):
      MAINTAINERS: Include Samsung SoC serial driver in Samsung SoC entry

Lukasz Luba (1):
      MAINTAINERS: Update Lukasz Luba's email address

Marek Szyprowski (1):
      ARM: exynos_defconfig: Restore debugfs support

 .mailmap                          | 1 +
 MAINTAINERS                       | 3 ++-
 arch/arm/configs/exynos_defconfig | 1 +
 3 files changed, 4 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
