Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA2A4AADC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 21:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Q6Yj1mGKWYWTMLZ9vJzoMyhXmpJNAyt81XCVlqxsDlA=; b=AebKZrdMNSQwS2q77LAOuMEc8+
	05moC7UXuqoZIZSrfYZLpvB4kN73UEmLz4pLX0AykTMn6y1ErZaz/XVMzRJbxu2s0cn3Zd4LmpxGK
	GhQfH9WfzBVvl8zsFn8sm/A3qoCyX5+s7qO7jvYz/uHnRnK35uI8FOlTSHvwshwl65l3EJ8jTL8Wa
	K7JQ8wPsalUp47YLXeAlDr9Bj7SMcjtLtXLflNR2cXJjplCbfqeVtonmQxmRIa45+YCw0c/M4ZsXO
	RkG++xoXW5T69eCw+gVnSpgu9jBcJyIuwFvua8UIvG/i5jTGDbTEk6OXhtm39HmYfIOt47mngYt5P
	8whQ7xXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdJT4-0005nm-5y; Tue, 18 Jun 2019 19:08:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdJR7-0004Ep-Sa
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 19:06:31 +0000
Received: from localhost.localdomain (unknown [194.230.155.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 64BD12147A;
 Tue, 18 Jun 2019 19:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560884789;
 bh=BuN4m7TCvsIHxw5rluKI30v0FDM5a8sAs/69N80hZis=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vk/3iyv2fjeTYjDbv6hTp/CcA1L+m9C8OSjKDsOTRGbw+GOFxWyV+QMql7MD+EiYk
 LIT+upk8J0tFo7v3AFqPkVcrZla3ZGyx39VKq+Kt9mAMcA8xa7+5ue36a/wIXWrpE7
 hZQVmgljgFsg+lfB1isIJlAhOe7CQye2M+5zplpk=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Olof Johansson <olof@lixom.net>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [RFT 08/10] ARM: multi_v7_defconfig: Enable Panfrost and LIMA drivers
Date: Tue, 18 Jun 2019 21:05:32 +0200
Message-Id: <20190618190534.4951-9-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190618190534.4951-1-krzk@kernel.org>
References: <20190618190534.4951-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_120630_098790_287AF120 
X-CRM114-Status: GOOD (  12.75  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Joseph Kogut <joseph.kogut@gmail.com>, Inki Dae <inki.dae@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable support for Mali GPU with Panfrost and LIMA drivers.  Most of
Exynos chipsets come with Mali GPUs:
1. Mali 400 (Exynos3250, Exynos4210, Exynos4412),
2. Mali T7xx (Exynos542x).

As Mali GPU is quite popular among ARM vendors, other platforms will
benefit as well.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/configs/multi_v7_defconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 6b748f214eae..268161911fc9 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -656,6 +656,8 @@ CONFIG_DRM_VC4=m
 CONFIG_DRM_ETNAVIV=m
 CONFIG_DRM_MXSFB=m
 CONFIG_DRM_PL111=m
+CONFIG_DRM_LIMA=m
+CONFIG_DRM_PANFROST=m
 CONFIG_FB_EFI=y
 CONFIG_FB_WM8505=y
 CONFIG_FB_SH_MOBILE_LCDC=y
@@ -940,7 +942,6 @@ CONFIG_ARCH_TEGRA_2x_SOC=y
 CONFIG_ARCH_TEGRA_3x_SOC=y
 CONFIG_ARCH_TEGRA_114_SOC=y
 CONFIG_ARCH_TEGRA_124_SOC=y
-CONFIG_PM_DEVFREQ=y
 CONFIG_ARM_TEGRA_DEVFREQ=m
 CONFIG_TI_AEMIF=y
 CONFIG_IIO=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
