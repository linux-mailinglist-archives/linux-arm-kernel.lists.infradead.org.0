Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1148B557DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 21:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=peAApIfz/ep1xHBVgl0PIjdjy4UeDBthSRgcNrgso08=; b=A+WXSmCkpl0wRzS+XVwD34B38T
	dtdKIj6fqmlKsbuXU0NhPzuhUd/nGsgP13uVi4zLSw3lozlVfV0seiw/ZkxFy/zsl+cUea4SuxjNj
	BWE+w4yCEeLZxt6ufQ91fqlOEsaI34qQr2jnwi1XaI0KGgE+bNriFLt5m6zProzTag4ZdRkw6JiGJ
	E+OroCLMqrHVToBmjlC6GmopO3/qK1TZxYsXc3iSJx7zrTuQQFuylJjL2ygiGkZD80U5XRr8ULjHf
	GC4HsIHI2IoNIIAKuV+f4Top9aItURMTngCJWFgPBFQr0GPWla7Ss0TKZmZGejlm4tMDZIU6JbvVr
	7H4FyX3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfrF5-0007ft-B8; Tue, 25 Jun 2019 19:36:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfrDh-0006lv-LM
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 19:35:11 +0000
Received: from localhost.localdomain (unknown [194.230.155.151])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 69A95213F2;
 Tue, 25 Jun 2019 19:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561491309;
 bh=4EGvDFLeBk4PJoyn0+P90KXm88w6KMDfWiCeX6JaV3g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pSCDf/ZVtOEJiY9PhSVLjzx4XovFVEyB58LaNg519psG3Ctk4c7rrhpR/jaeXPwFs
 //eP2AUvjf04ykJgJGdrB/+vSn46QHRPAYQTAV1pc2jub2DstKHlrd1PidRfLy7y97
 fp33ExKSpoRtjbVJZPN9tuej1dy+/MAlsaRbRcb0=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org
Subject: [GIT PULL 4/4] ARM: exynos: Mach for v5.3
Date: Tue, 25 Jun 2019 21:34:51 +0200
Message-Id: <20190625193451.7696-4-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190625193451.7696-1-krzk@kernel.org>
References: <20190625193451.7696-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_123510_007487_D3356D1D 
X-CRM114-Status: GOOD (  11.20  )
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

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-soc-5.3

for you to fetch changes up to a55e040c6f21f55f81c53c56e1d8095df35e1d02:

  ARM: exynos: Cleanup cppcheck shifting warning (2019-06-25 20:45:09 +0200)

----------------------------------------------------------------
Samsung mach/soc changes for v5.3

Only cleanups and minor fixes.

----------------------------------------------------------------
Arnd Bergmann (1):
      ARM: exynos: Only build MCPM support if used

Krzysztof Kozlowski (1):
      ARM: exynos: Make ARCH_EXYNOS3 a default option

Phong Tran (1):
      ARM: exynos: Cleanup cppcheck shifting warning

 arch/arm/mach-exynos/Kconfig   | 7 ++++++-
 arch/arm/mach-exynos/Makefile  | 2 +-
 arch/arm/mach-exynos/suspend.c | 8 ++++----
 3 files changed, 11 insertions(+), 6 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
