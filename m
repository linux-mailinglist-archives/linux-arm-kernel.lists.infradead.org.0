Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A68B12FB6D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 18:14:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n09O4Eg0sizOmhlhTyfTi6pEcWj98zNBDfdgojW9C0o=; b=thITA5qYW5WT6bGUf2r+GgQZXp
	P2P+TaMAi+Eh+CF/H0kDA/K7LqgTmWvIYqoKZ16n0bOGwNaXJx2elqUI0BtacmgSD7j4SZdo4C6hl
	hq199QLIoJ8aqulUZUU7FJVWfjSmJ7rq8OVqTz+xs0ohwMVWDk1mKH7lPsPLj45zHpLx+26iQaB6E
	oG74vqQDA1NTGoPhiAhPgxcVcA0uaIgSEoKmwlyd9db1cne+iluTfdmwcWiaNPKiTzZmEAKJPJme+
	QU1QJcMmxgBRjCQAnGcJJddgZ/KmimCy8CNKJoHXJs5eM2QyFoxVAFfJywKkeIq+rKsLbuscCCg06
	7LhQLocw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inQWN-0002VY-4N; Fri, 03 Jan 2020 17:13:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inQUr-0001BX-8K
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 17:12:26 +0000
Received: from localhost.localdomain (unknown [194.230.155.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F3F3215A4;
 Fri,  3 Jan 2020 17:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578071544;
 bh=cCjYxGd/KL0FWzSgniFPKokn3dk8mcXrfNpZVsyTpT8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xA6XHN2nVnw918Eoyu0EvDCapCnFRnn9DNly7Hg4+bvZxxcS6oz4MVzfw40I78S5b
 K5RRhw6EvVLEE+nGE1ASRRG2RGXMPKtOQM7/0coDIShOz6w0bP0AL7Pj6jEW2P7zPw
 UoMDOpqa9XMD6O0JTv7XCoUMLqkYx/Ha8d9IQShE=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 08/19] memory: samsung: Rename Exynos to lowercase
Date: Fri,  3 Jan 2020 18:11:20 +0100
Message-Id: <20200103171131.9900-9-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200103171131.9900-1-krzk@kernel.org>
References: <20200103171131.9900-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_091225_401163_6FB6193B 
X-CRM114-Status: GOOD (  12.44  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
