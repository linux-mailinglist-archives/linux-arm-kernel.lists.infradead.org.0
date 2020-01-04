Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D909E130336
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 16:24:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n09O4Eg0sizOmhlhTyfTi6pEcWj98zNBDfdgojW9C0o=; b=HbX1r45+ZbcMNct/8RnI/w3LWc
	ZQFwGIvVCOYwxHZgdJVF0Zv+DZSMDJyqB551w3e5ziA2l0rXT/PLNMi4qaoYujf8Feb8R1kMq8Tt4
	xeID/ERRcsDx8Ptf97rdbQpE3/K1xJwIzwtp7Xcm88Jr4t8WN+0ogKwVsbH4wTinK8CPHNPoFGH5t
	tt39AyDEky1/ZvTq6pJFUc2VpNCmayvUagZc4cYzVwvKBvRvHnUnVuxvDEzUNf+Ig0MGiGaEqSniQ
	uyUFXixvZWsoqV7iiTelncgYcuvcq7Y7QrSUc1jtkUBoIhGzxjlI7Zr8CCMkNUULF1AKQXNWK7w/d
	Cx+18QUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inlHg-0002vL-NE; Sat, 04 Jan 2020 15:24:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inlFs-0001Q4-Er
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 15:22:23 +0000
Received: from localhost.localdomain (unknown [194.230.155.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D0DA224654;
 Sat,  4 Jan 2020 15:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578151340;
 bh=cCjYxGd/KL0FWzSgniFPKokn3dk8mcXrfNpZVsyTpT8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=D1J1kuop57Wb+ntVAfEzwMWj1PWTgRa4ppNYveV8D6Y8QO43O5/tgXgHWmZxm1zyS
 G7COIBAKT2BPWI2GF1glTovDMcbPN5F3BdDYx6X5tyEqr7dD4uMfYmPISfdG6WgKc4
 4om/fqQR1FlejAB6P1D9Ig4d4+y3gm5uo/mgbx04=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 09/20] memory: samsung: Rename Exynos to lowercase
Date: Sat,  4 Jan 2020 16:20:56 +0100
Message-Id: <20200104152107.11407-10-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200104152107.11407-1-krzk@kernel.org>
References: <20200104152107.11407-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_072220_532047_66E75DA7 
X-CRM114-Status: GOOD (  12.68  )
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
Cc: linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix up inconsistent usage of upper and lowercase letters in "Exynos"
name.

"EXYNOS" is not an abbreviation but a regular trademarked name.
Therefore it should be written with lowercase letters starting with
capital letter.

The lowercase "Exynos" name is promoted by its manufacturer Samsung
Electronics Co., Ltd., in advertisement materials and on website.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/memory/samsung/Kconfig       | 2 +-
 drivers/memory/samsung/exynos-srom.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/memory/samsung/Kconfig b/drivers/memory/samsung/Kconfig
index e9c3ce92350c..20a8406ce786 100644
--- a/drivers/memory/samsung/Kconfig
+++ b/drivers/memory/samsung/Kconfig
@@ -8,7 +8,7 @@ config SAMSUNG_MC
 if SAMSUNG_MC
 
 config EXYNOS5422_DMC
-	tristate "EXYNOS5422 Dynamic Memory Controller driver"
+	tristate "Exynos5422 Dynamic Memory Controller driver"
 	depends on ARCH_EXYNOS || (COMPILE_TEST && HAS_IOMEM)
 	select DDR
 	depends on DEVFREQ_GOV_SIMPLE_ONDEMAND
diff --git a/drivers/memory/samsung/exynos-srom.c b/drivers/memory/samsung/exynos-srom.c
index c27c6105c66d..6510d7bab217 100644
--- a/drivers/memory/samsung/exynos-srom.c
+++ b/drivers/memory/samsung/exynos-srom.c
@@ -3,7 +3,7 @@
 // Copyright (c) 2015 Samsung Electronics Co., Ltd.
 //	      http://www.samsung.com/
 //
-// EXYNOS - SROM Controller support
+// Exynos - SROM Controller support
 // Author: Pankaj Dubey <pankaj.dubey@samsung.com>
 
 #include <linux/io.h>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
