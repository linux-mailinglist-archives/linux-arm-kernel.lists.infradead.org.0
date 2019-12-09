Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B751171FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 17:40:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=auh/i0wsBL8de36LXMvvsYP3IrdtKEdHOAQxt+h0PAs=; b=A/H3khTs0KruFz
	rD92jPTiq0dnDjw6zCqXJ6YJIFTPVkV8CVHOzBvRZqsaoZdLVTIIM+sG+O9MVEC+TuVvrZes51N9m
	UcpYW/HVXyNqglykq2usTehrjv2j3UNmwP/8AWaNjr5jLvjabfaIKUnHsu/KHTwkvT9R4+nzeLEl+
	wC5qthy8HW99YwF/Nf/zrAelejqOyKUQZRMLCuzZ+1z5uvDGJEU7IEvah8o+RQemlfCg98hdqNEm+
	MXQziXf/q1YZSkQP43nRsifXOsBdWNtQnbCAcznHS9Lcgfp9jDzlX6oqL1+BzQvp9Nb2TivukNFLq
	B9NQF3+vEZbXtKlskxZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieM5J-0001kJ-5A; Mon, 09 Dec 2019 16:40:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieM4m-0000Hg-By
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 16:40:01 +0000
Received: from localhost.localdomain (unknown [194.230.155.234])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3360E207FD;
 Mon,  9 Dec 2019 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575909600;
 bh=uv1fy3aSeIQ7rJzpy5V/DLW82MMG9uYITIIpJ5h5OTs=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=Nna6OCN+pK1kLg9sei8otb/FlJesosiNwrTYRa1BlxpiqW3VWnf5E8R25yHTNimQv
 +JIPxqXtk+Ojj5EtH7un+sj/OeEeYvXLWoTLYV/5X6nr0MqwSbd5N06s0Q6WrdohXP
 GCoiWOwaopKKqAit1lgrxtQ8AJJLymisBt7U1UBc=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tomasz Figa <tomasz.figa@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] pinctrl: samsung: Clarify the option titles/names
Date: Mon,  9 Dec 2019 17:39:37 +0100
Message-Id: <20191209163937.8156-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209163937.8156-1-krzk@kernel.org>
References: <20191209163937.8156-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_084000_425007_4E50E366 
X-CRM114-Status: GOOD (  10.76  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The config options toggle Samsung Exynos SoCs pinctrl drivers, not the
driver data.  Clarify this in the option title/name and also make it
consistent with other Samsung entries.  No functional change.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/pinctrl/samsung/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/samsung/Kconfig b/drivers/pinctrl/samsung/Kconfig
index cbf1ce48fddb..779c0e9eca3f 100644
--- a/drivers/pinctrl/samsung/Kconfig
+++ b/drivers/pinctrl/samsung/Kconfig
@@ -8,7 +8,7 @@ config PINCTRL_SAMSUNG
 	select PINCONF
 
 config PINCTRL_EXYNOS
-	bool "Pinctrl driver data for Samsung EXYNOS SoCs"
+	bool "Pinctrl common driver part for Samsung Exynos SoCs"
 	depends on OF && GPIOLIB
 	depends on ARCH_EXYNOS || ARCH_S5PV210 || COMPILE_TEST
 	select PINCTRL_SAMSUNG
@@ -16,11 +16,11 @@ config PINCTRL_EXYNOS
 	select PINCTRL_EXYNOS_ARM64 if ARM64 && ARCH_EXYNOS
 
 config PINCTRL_EXYNOS_ARM
-	bool "ARMv7-specific pinctrl driver data for Exynos" if COMPILE_TEST
+	bool "ARMv7-specific pinctrl driver for Samsung Exynos SoCs" if COMPILE_TEST
 	depends on PINCTRL_EXYNOS
 
 config PINCTRL_EXYNOS_ARM64
-	bool "ARMv8-specific pinctrl driver data for Exynos" if COMPILE_TEST
+	bool "ARMv8-specific pinctrl driver for Samsung Exynos SoCs" if COMPILE_TEST
 	depends on PINCTRL_EXYNOS
 
 config PINCTRL_S3C24XX
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
