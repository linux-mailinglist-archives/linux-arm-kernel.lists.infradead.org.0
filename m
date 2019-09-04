Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CF9A871C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 19:52:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=12zDVCyq7B7WGBRxkuRipuVPUpI99lSYMLDvp0R9evE=; b=ELKYA+ofE2Q5Vw42oPfxnr7CIW
	oDUU1BlseoMiHV9aqlMuhKjoLGjmyD2OJ27999hZmgdlF5uHH6uYNjsT2mk0D+RIWi8CBu1ymbhdY
	YeqQE599E9dpz6tisRGcXFGtc4IncRJ1wwv4omnyQ27jg39IYpH5LDZvPgmt+WuAlb4OAYm1TLpEQ
	olJ56XPaVdiy5tQiMUEy6VDdErZtzN1WQjl+jOHmRX6KRSQogCBbWVSmxjUUxsCNEwTETQ71OFixh
	hQtuWEq5UYuiu+hBMm/eN8KsMb4dr73eh7iwTNPmj2YBy+Efs5Ndt6i9z4cDtrTbzxI53pynhzhFV
	z4COvfdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ZRj-0000a9-7c; Wed, 04 Sep 2019 17:51:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ZQa-00086j-Kc
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 17:50:46 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D141822CF5;
 Wed,  4 Sep 2019 17:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567619444;
 bh=dmMtaj2IuiH+soAyGM2V76pUf5Ba7PXTyw4+f3zhu7A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g1DuSOCftqEKkSVTzgbcwEnVibt+Fndbcf8eUfBbr1indNdBJRyEHpDURm6ip6N32
 IsrBsiHfgtF90bjkfn4ePUE2ftK3+N6n+f0zgg59GeFppRSgL522w6tFPd3jhN2/P9
 IF+FPAz0nbWb120BSrzmj0WB+9L2j2tyoVUZC9EQ=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [PATCH 5/5] arm64: exynos: Enable exynos-chipid driver
Date: Wed,  4 Sep 2019 19:50:02 +0200
Message-Id: <20190904175002.10487-6-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904175002.10487-1-krzk@kernel.org>
References: <20190904175002.10487-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_105044_849924_3980C33E 
X-CRM114-Status: GOOD (  10.38  )
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
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pankaj Dubey <pankaj.dubey@samsung.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Pankaj Dubey <pankaj.dubey@samsung.com>

Enable Exynos Chipid driver for accessing SoC related information.

Signed-off-by: Pankaj Dubey <pankaj.dubey@samsung.com>
Signed-off-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/Kconfig.platforms | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 4778c775de1b..8a098fb4f04c 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -77,6 +77,7 @@ config ARCH_BRCMSTB
 config ARCH_EXYNOS
 	bool "ARMv8 based Samsung Exynos SoC family"
 	select COMMON_CLK_SAMSUNG
+	select EXYNOS_CHIPID
 	select EXYNOS_PM_DOMAINS if PM_GENERIC_DOMAINS
 	select EXYNOS_PMU
 	select HAVE_S3C2410_WATCHDOG if WATCHDOG
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
