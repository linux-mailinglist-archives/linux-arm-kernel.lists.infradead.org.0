Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B98442F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:27:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=u64Am9oeDfSV/qgdoDlB6sg91Q82TWhqntjHYDDcAtM=; b=O/Y
	rREPwzMna9OG55r0B4YNs9co4LG/8nViNaG6xe7/Jz7SCRfvNbdi84FqGzm91f8KS6TRz/FPYxO9p
	iOA6jXR6sYLEd5xa4HfzEy1nn1gyJsjRvzADcQAgGb3AflGSXkItAZnQvsaRZiPjAE5AV3n46YWu+
	zBeXKU5CaaZp/x9Z9gG+Y4LdtIPinAlJrM79cM2b6zs9iXWweI3WbaCW+m+3Co/RFERHT2nS+n4WK
	EjieFWIzaEMIzyj0t8ZBMDG5UZecxGOMs5FSJAGhoLNPO6+KiY5JJKU4/femNEO04K9T5yiNd+hT+
	EeYOdUzQfSwZcSHyhs0a8PLud1zNSuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSZZ-0002Xo-Kr; Thu, 13 Jun 2019 16:27:33 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSZD-0002WR-54; Thu, 13 Jun 2019 16:27:12 +0000
Received: by mail-pg1-x543.google.com with SMTP id s21so703974pga.12;
 Thu, 13 Jun 2019 09:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=v6vzilPAtj2ODZwSW8fHlBGBIGUDcN2J3Si9o5NBA3E=;
 b=kAXXgwoguPvU4cAuhcaUgbXJuBSrc4pXZ01mFgLMVTiAUcb3NIkvnGdriEvuRYpcS4
 KCkN0/7AHFbsRxOm8x2szfUod289BCzSUB2ccFOtOVvhKdOyGMzy87Zl4dSeFroG+guL
 esu84wiMoP6w/H+9AVYLyYbjuEGjHZzfZcq2VaqLVuBVPuF438x9B/V4m6ISqtGWYOQM
 8j/Kz0duNoACz0A3QT+4bKsgCn6EYE+p503sKJ0P7oLkeyri1jHoyoEfTeT7CCHRCAYz
 W6zqItpX7twXVXqsYxk+Veh+fw38UvbAkJGCbeVSGbdwoGav2hPr0WylW6UZnDsmRVLn
 tv3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=v6vzilPAtj2ODZwSW8fHlBGBIGUDcN2J3Si9o5NBA3E=;
 b=FKw0qtFqfDze9TTmM6XUcwxetUNGeakbWGR5kZJ5ByxxPxWMgP4fSXTYbo/HHCT0sU
 d1S6zZvRAOPpzaqvNrPMnlWiTl/8kq9RyyuNnN4ZvzR2tH2cVmXLOOgyMBLRt90N4e61
 /vYc14Bsp74aGI0FpUbpo73vCufTbSdywW9S/Enpk9K87xufEbVvt3vzZ/no8hQoZbVs
 mo70C0ZW0q+VpWfoF1b4277DWCGNJCMCT+hCJIoXIAaRks8cv9QkdB5F12Rbf2aDPlbi
 3YIjJdWagtrFT1PjHwY3SzMFC9uNOEiK9vuHJAI3RyqcsE+7pPPq3YJa904HFlotQ/be
 DaaQ==
X-Gm-Message-State: APjAAAWz0k3YM3i2itIK5kWxffnJOVmCMEEio1YdXg8lPG9xivjY+vFe
 5RuCdJ/iigodk9hsHNDb98c=
X-Google-Smtp-Source: APXvYqzPxG4x6iJ3bSwjicFDgP/gbJZePtynT5+d9Kai+1QhkL96mw1oCJcSqEHcntuvftQRVXyDCg==
X-Received: by 2002:a17:90a:db52:: with SMTP id
 u18mr6471125pjx.107.1560443229896; 
 Thu, 13 Jun 2019 09:27:09 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id z186sm185768pfz.7.2019.06.13.09.27.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 09:27:09 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: joro@8bytes.org, m.szyprowski@samsung.com, kgene@kernel.org,
 krzk@kernel.org, will.deacon@arm.com, robin.murphy@arm.com,
 agross@kernel.org, david.brown@linaro.org, robdclark@gmail.com,
 heiko@sntech.de, thierry.reding@gmail.com, jonathanh@nvidia.com
Subject: [PATCH 01/10] iommu/exynos: convert to SPDX license tags
Date: Thu, 13 Jun 2019 12:26:54 -0400
Message-Id: <20190613162703.986-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_092711_196006_0C55C39B 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Updates license to use SPDX-License-Identifier.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/iommu/exynos-iommu.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/iommu/exynos-iommu.c b/drivers/iommu/exynos-iommu.c
index 05c6bc099d62..938a33d2f89d 100644
--- a/drivers/iommu/exynos-iommu.c
+++ b/drivers/iommu/exynos-iommu.c
@@ -1,10 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2011,2016 Samsung Electronics Co., Ltd.
  *		http://www.samsung.com
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #ifdef CONFIG_EXYNOS_IOMMU_DEBUG
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
