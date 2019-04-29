Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8923E947
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kUrov2a1i2AtHWMioMvNmy3+IKLHjORZ43m/nXMdU1o=; b=aLC4Jfntg8BmS6
	J9jAfHURBRrEtQ+3lKHjws9yEh1xW5dwiXFUsj30tT+1C4x9USU7c8/0tIS5ehbJ4hzBscPsuwTlB
	nysk3PwjJuMm1yP+NSwUHC6YuSFY9Rmafl8KEB6xz58aD9tcs84XGet2hpdJAw9cNB0v5/opOzcw7
	f23zDBt3WNCvjkzOdmcQ5lltrA/aaLLDrojJXMcCSR5eW+RevYaGweJxh+w5LwLqpd8dk5Z4R38Ef
	/+Jn/dCpfRtj9DGAQlKt/Riaway+lOcbC4Lm3t4bPkZC3luiT9GZTm3J7Q/Wo4JPnLJf6R9Pj+24D
	wA+q6QEH7NRJ0kA2q1+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLACw-0004Vz-Qq; Mon, 29 Apr 2019 17:36:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLACd-0004TR-9D
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:36:32 +0000
Received: from localhost.localdomain (unknown [194.230.155.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 855172087B;
 Mon, 29 Apr 2019 17:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556559391;
 bh=1qN7zw9SX539SvBWVdVLuEUJH8ykSSIFT8r6sWdCtpE=;
 h=From:To:Subject:Date:From;
 b=xW5xTQMHGezt8E4fUbMn4vmYibd5CAf5YIt7Sh0XksUCAbLxjMCjT+6CM2nLL2enj
 l1WPJFIljrV0eCawVQhQGYDO1f8hJ0zZ0XTYBik49/3C29F/Ol85fL5PbDJmooO58D
 enoyOgL4VD4u8CIDvOIy8K6sHLC/3hURWQn3N3UY=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] ARM: exynos: Make ARCH_EXYNOS3 a default option
Date: Mon, 29 Apr 2019 19:36:19 +0200
Message-Id: <20190429173620.5078-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_103631_341072_6484D10B 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

By default for ARMv7 Exynos platform we select all flavors.  One kernel
image simplifies testing and maintenance.  However Exynos3 was not
selected by default so far (thus it lacked in multi_v7 kernel).

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/mach-exynos/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-exynos/Kconfig b/arch/arm/mach-exynos/Kconfig
index 1c518b8ee520..21ad78d79d8d 100644
--- a/arch/arm/mach-exynos/Kconfig
+++ b/arch/arm/mach-exynos/Kconfig
@@ -49,6 +49,7 @@ config S5P_DEV_MFC
 
 config ARCH_EXYNOS3
 	bool "SAMSUNG EXYNOS3"
+	default y
 	select ARM_CPU_SUSPEND if PM
 	help
 	  Samsung EXYNOS3 (Cortex-A7) SoC based systems
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
