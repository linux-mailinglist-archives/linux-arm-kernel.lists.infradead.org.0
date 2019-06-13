Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C0C442FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:28:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SE/r9jyp3dPaSk4RTuk4Tb0r63aZ+o7dAwlN5bxdYYg=; b=bi+rJVpMBZcM8AABXmpy8edhJi
	6yK5Eqb5ZBkaJatE64tsoLjigq4T3XwK9E+C8k95e9GJZQY/PkYrXfFcjXdOyGm8ivkSwvk4N6XE4
	vHuB73BFWEHv4WF4kvxwUEodp1utlotz3iz94xtmfml0JhLmIOwelX0J1MzwZdN99YZYCxQA0Cf4G
	qLKems9+rO4+jrxI1OqAPUSQ2GJAPWh3AZ5F2YrA8R5l7tIRzmUJfgTwrYW/mpRS8mAjjPOE6Nv3m
	lxEY4xDSmyFl1w/38vSP1ldMFskooPiTYWw5YwIgGE89gqaYNoHKUBv+ve+h0uNZ13C/Tc88Pu0gb
	clff9xxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSaJ-0003EI-6U; Thu, 13 Jun 2019 16:28:19 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSZI-0002aS-RJ; Thu, 13 Jun 2019 16:27:18 +0000
Received: by mail-pg1-x543.google.com with SMTP id s21so704181pga.12;
 Thu, 13 Jun 2019 09:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4q0HVXuQG17ks872jOkTIKAqD21+aLHXoXWPegnJvdQ=;
 b=KIQBhcVGmgiJ+25JjcqJ9tMu8LPz/C1psYpC5wyrJmzadCvcovqJZGLqt8+qJ1BF/5
 tPToBydwjBOnqzqZbE2hR/6beOAxQL9C0IievEXrtoXnD7OLHrs+mw4qdejaM5wSDTBG
 CLcmLzUkYxfz+AnyQw1a3fC24z9cyNuDzmexwu9/Vwo51eK0W41TqSuxRFIfI2j01xBW
 DEqV6PRuN1jntSaDch6yJtQ7xCLE2uy+3Qyb/9VHu5rjoydFOH4Z58/u51fOvqzFhMYL
 sMtccU1vG5n+dLZNpMs8j3+b+FZeurJ4Z/i7iuWdfllKkf2Nfa+X+aY1k8GFk6VTvSZL
 KCEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4q0HVXuQG17ks872jOkTIKAqD21+aLHXoXWPegnJvdQ=;
 b=GJj54S30X6HnYqg99tP5WXdCDPgjRDmbql6NkYu3IZaJ/auoXKxau7OHmdXQCpWQjh
 7zMrII9/dScR7B/FRVUl0dev+rpvPigDcAl+9HBbQI7UxtPK7rthubMEjaA59yTMwmam
 sBu8FU24svESzSS1VIEtoCJh8sdkQcPMjSENVj/95ypeWvgWEGVysek4mksHv92nU7hB
 bMtPtnPC12BzOrayDNeehY/CEfMfbc573l8kZrFQitBeEoEK/mx6X5Y858mFtssyMlft
 ig8rshA8QAn2pe8xrgSvJ2vYcHY9FFU2LQ/cudO2UoE/oHFVgQ/vfw/XQBFsuuknOJSd
 zjNQ==
X-Gm-Message-State: APjAAAVy8BmqwX8dChk42WOpvO3tGrA4OP36xZgyd9Vc3zox+mpt1UtW
 zSCG8LicvNEwbN7e4qM6I7E=
X-Google-Smtp-Source: APXvYqxaBMg5bVhjUDBZsPXeyp3WVLYyOR0fUzELSMvjn8ql2xGJ98zarH9fUind6w2w+LFWAAHJSg==
X-Received: by 2002:a17:90a:216f:: with SMTP id
 a102mr6573720pje.29.1560443236390; 
 Thu, 13 Jun 2019 09:27:16 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id n127sm282319pga.57.2019.06.13.09.27.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 09:27:15 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: joro@8bytes.org, m.szyprowski@samsung.com, kgene@kernel.org,
 krzk@kernel.org, will.deacon@arm.com, robin.murphy@arm.com,
 agross@kernel.org, david.brown@linaro.org, robdclark@gmail.com,
 heiko@sntech.de, thierry.reding@gmail.com, jonathanh@nvidia.com
Subject: [PATCH 03/10] iommu/omap: convert to SPDX license tags
Date: Thu, 13 Jun 2019 12:26:56 -0400
Message-Id: <20190613162703.986-3-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190613162703.986-1-tiny.windzz@gmail.com>
References: <20190613162703.986-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_092717_045309_988EB9B6 
X-CRM114-Status: UNSURE (   9.06  )
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
 drivers/iommu/omap-iommu-debug.c | 5 +----
 drivers/iommu/omap-iommu.c       | 5 +----
 drivers/iommu/omap-iommu.h       | 5 +----
 drivers/iommu/omap-iopgtable.h   | 5 +----
 4 files changed, 4 insertions(+), 16 deletions(-)

diff --git a/drivers/iommu/omap-iommu-debug.c b/drivers/iommu/omap-iommu-debug.c
index 4abc0ef522a8..55ec67a45101 100644
--- a/drivers/iommu/omap-iommu-debug.c
+++ b/drivers/iommu/omap-iommu-debug.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * omap iommu: debugfs interface
  *
  * Copyright (C) 2008-2009 Nokia Corporation
  *
  * Written by Hiroshi DOYU <Hiroshi.DOYU@nokia.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #include <linux/err.h>
diff --git a/drivers/iommu/omap-iommu.c b/drivers/iommu/omap-iommu.c
index d2fb347aa4ff..e6442876913f 100644
--- a/drivers/iommu/omap-iommu.c
+++ b/drivers/iommu/omap-iommu.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * omap iommu: tlb and pagetable primitives
  *
@@ -6,10 +7,6 @@
  *
  * Written by Hiroshi DOYU <Hiroshi.DOYU@nokia.com>,
  *		Paul Mundt and Toshihiro Kobayashi
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #include <linux/dma-mapping.h>
diff --git a/drivers/iommu/omap-iommu.h b/drivers/iommu/omap-iommu.h
index 1703159ef5af..5256e17d86a7 100644
--- a/drivers/iommu/omap-iommu.h
+++ b/drivers/iommu/omap-iommu.h
@@ -1,13 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * omap iommu: main structures
  *
  * Copyright (C) 2008-2009 Nokia Corporation
  *
  * Written by Hiroshi DOYU <Hiroshi.DOYU@nokia.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #ifndef _OMAP_IOMMU_H
diff --git a/drivers/iommu/omap-iopgtable.h b/drivers/iommu/omap-iopgtable.h
index 01a315227bf0..871c2a38f453 100644
--- a/drivers/iommu/omap-iopgtable.h
+++ b/drivers/iommu/omap-iopgtable.h
@@ -1,13 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * omap iommu: pagetable definitions
  *
  * Copyright (C) 2008-2010 Nokia Corporation
  *
  * Written by Hiroshi DOYU <Hiroshi.DOYU@nokia.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #ifndef _OMAP_IOPGTABLE_H
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
