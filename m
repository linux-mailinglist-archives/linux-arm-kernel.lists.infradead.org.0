Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7151B44303
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:29:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ily7sim1MjcAnVzNqKsKxDAXMhaYMn2C+UHMnLc+BiA=; b=lc+7UWaDPdT9JJIXAEkhFam9JE
	mqiQ7P/1ggxMtStbDB8uvGvVgKMwBnIuOYWCQ9dtmVFbwE6gAuu3NtuBENt2o74rRsxKkXLSbc+BT
	JCsHBSC9TJodnyAzGlGT2vSgFl5s2Z0/nKGCvLG35qNakIjA9HI26dilXlbip/LGh9bKzH9SpbCGl
	g0IaAnmu2nW7jZEbKh94fN8S+npnOQgdhig6hvDuK71ZVepXSwVScmyXURtQNsmyhxeOH0GWkVLzQ
	TSQtw5rS6uCu6dQJs7RESkNNMEthvyECUxP5tg4iinHnMciXogDsruw1KWkCr17ajNohPecU8HoB6
	a11RNIag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSax-0003qm-Hi; Thu, 13 Jun 2019 16:28:59 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSZS-0002hT-Vw; Thu, 13 Jun 2019 16:27:29 +0000
Received: by mail-pl1-x641.google.com with SMTP id b7so3329889pls.6;
 Thu, 13 Jun 2019 09:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+uAxJSSMcJzrTyyAujU7IWsabWssr7wxWhZR9Nz/dEI=;
 b=mjcoCpLnewM+pZoDokMZAPSV/jh4geTMwUOmHG9y9n54CNHb+seQlWHkRh0LfXU2kG
 M1bsOCW/Q8ZWGhyjhg1kB3VBXcLp+4k4lw277HOODN6TQANWjdBZitLqtft7IXpYjzWU
 tW4N8VKEUAmCfU8OH+FofeI05RRXIbdjpYotmNG0fBWxgmI6hlFoXiDqqGgsDf5B0RDP
 rYQDO2dXDZuenFNvBQyAgl+nk/uhYYstKsah2kuVTFsx/opMo45b4su+X1i9d8e2MWUR
 oZZCcvQjSr6X6cHRWBCXBWMcPUS1VRdRpS2vkFXSSrPAnO/WpIvBScWt/ygIZ2ar4x+I
 pgcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+uAxJSSMcJzrTyyAujU7IWsabWssr7wxWhZR9Nz/dEI=;
 b=b9hh6cMXap+tzw1tKoSzmbpPrs0T+zYX5xtLW6z7ojxmNJ6A9sHupz2yhNx9DaNKjo
 nwhhEz4id8HDZrH8vE6LuzxZSLXDhlydfva5zfh8ddZEgK7LaHDlRn1D6Nj62T2snMMH
 LHIa78VekMwgbHJnMSo8t9Yiy9zTU+2CLmmn+U5rfmyo9AAEwk4kuksl+zWmCd1KD4U8
 8D1brhjERwjkg7TN57nYNOOS04D5+cRsCDBAit8wWHdUYjBfH4eTHPBQc/Eqw6QOvyKw
 HYmYWnEIinzFlzMUeWI2Z3xtjWlJRYSZUqOSuwofgcwSrTOE/N/+bGtjLzafx4KL1Z6D
 zLMA==
X-Gm-Message-State: APjAAAWCmBcg9jxp722aQ+FCnAHLX4Q6NAJocNxuye0sz0AmGJyWFDpT
 u37tVPxFvBwKBCLxnrWV0Xk=
X-Google-Smtp-Source: APXvYqxkQlemuxcSLQHtMtBC5Ri9a3BRMGjgpcVRFo4X60vYKhFABWujvq+0K3YJ88vz/VdAg59zEw==
X-Received: by 2002:a17:902:860c:: with SMTP id
 f12mr89128629plo.127.1560443244418; 
 Thu, 13 Jun 2019 09:27:24 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id 128sm170411pfd.66.2019.06.13.09.27.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 09:27:23 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: joro@8bytes.org, m.szyprowski@samsung.com, kgene@kernel.org,
 krzk@kernel.org, will.deacon@arm.com, robin.murphy@arm.com,
 agross@kernel.org, david.brown@linaro.org, robdclark@gmail.com,
 heiko@sntech.de, thierry.reding@gmail.com, jonathanh@nvidia.com
Subject: [PATCH 05/10] iommu/dma-iommu: convert to SPDX license tags
Date: Thu, 13 Jun 2019 12:26:58 -0400
Message-Id: <20190613162703.986-5-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190613162703.986-1-tiny.windzz@gmail.com>
References: <20190613162703.986-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_092727_099018_51177A53 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 drivers/iommu/dma-iommu.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 129c4badf9ae..2d76bac43b82 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * A fairly generic DMA-API to IOMMU-API glue layer.
  *
@@ -5,18 +6,6 @@
  *
  * based in part on arch/arm/mm/dma-mapping.c:
  * Copyright (C) 2000-2004 Russell King
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <linux/acpi_iort.h>
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
