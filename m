Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F71044341
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:30:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5d7j9fgXjaBcbPjxzDMwQWW89qp9tOtLvIvA4aAEHns=; b=WyXqeB7Us/FdNv5T0BNvaf3X/X
	5QVtVkqe995as5tj1COGj3VxO3tZ0mk1xJh94xZTFelb4Pyb03kUGZ0QRtnI7br0Lbb6VVYdbjIht
	hCXsXd4LmnNXQFiXSf03XgElU4iF2QzWS+yUVfp+jzsbEYG0CkU3+P/wm4rlWT4hgRlljXfpd2zR4
	1OIYCGpXw7szcycvUFp6fitji8DI6w8iiRcFXWDKPGZ+54C05SA9An5yBq8bH2b7KHdZBG0jJf0Nb
	rZ/t4Hr3r8A6yvWVo35BopzaGCP5eWNtclkJwZYox2ZJRYzY+/IFsqltTrydW1gQr46gkrvffCxlQ
	OPfPn8Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSc9-0004sw-0O; Thu, 13 Jun 2019 16:30:13 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSZa-0002os-QT; Thu, 13 Jun 2019 16:27:36 +0000
Received: by mail-pg1-x543.google.com with SMTP id l19so8641903pgh.9;
 Thu, 13 Jun 2019 09:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Q4z+1lD6L8nleD1j+L3SnZJFelsfjWSFPaZVMarGO8g=;
 b=fOYdYWOhF3ZyKvMjqvLUfJ0cwxcI5mFQycuQv7JzdfadQaDqxSFq88q2ia+Tnbvmkp
 6Nh3M7lCMtpSP9bipGQFNCbzwS7L6213Z/3b8crNq9lKGyjnS/r1gcWlg5qW9/WfvPbJ
 L9BeU+t7EzCCUq2B9wGxOz7SLQdop76XwPlwXbKsg3I9b0dLuxgMn/dPxX4saClyok43
 T0HQfzWKw8m4CtBi73JACE7kTioBqo4MZCayRF2hMy89yDz8gZkTOIRA5G+cVrhLwLVM
 pL+v/aWmDUGF2gdG3/Qaezrp3xOQ8+OMTA1nAyrOJxYbgApp67WZDvw4lKGpiPO5k8fR
 /p7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Q4z+1lD6L8nleD1j+L3SnZJFelsfjWSFPaZVMarGO8g=;
 b=Je3zByuQcltZvhAFD6MKDTYPDTyDlMyfy/VR8rv+kDg0d52K0aV61VmflsVtFn8yEI
 DnxLX7StBeZTcYL3m4++yQLS+Mw67snyNJ1j2EpSjiqoPVnpp8Gnzlif+rHFbJGM6ci1
 TzWQNtD/emr5xxTshLbO2Z4fdrbxdAAC78IxK+M1C+CA9KZVEqQezAlx6IeQgfbh9cLb
 FBWjqpml85PwLcQrBZy0OqWNY4sGoR+gGSEWUn2joK2P+29+KDEQIMhyeUyl4Ny2Mhn3
 0S6PngB3qd9gK12MrbWc2Jgiypqr5GjE926JWMoJN6ZS87VfRYHYLPgyujFJt+UlSbdJ
 o1og==
X-Gm-Message-State: APjAAAWZWH3y/ca9nN/Ag+xuk1PH54x8DM+5K/vE4q5Qzh1GgfmzDA2D
 g3I69JFcoj6N4qd2GlEicdA=
X-Google-Smtp-Source: APXvYqxX/RanT51RYSaVZsxeTP+rQPGVZ62n+jf0t5emIHsrys1734E1A4fccZi67O/PQXiUedWBeQ==
X-Received: by 2002:a65:64d5:: with SMTP id t21mr32140036pgv.310.1560443254129; 
 Thu, 13 Jun 2019 09:27:34 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id l23sm261906pgh.68.2019.06.13.09.27.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 09:27:33 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: joro@8bytes.org, m.szyprowski@samsung.com, kgene@kernel.org,
 krzk@kernel.org, will.deacon@arm.com, robin.murphy@arm.com,
 agross@kernel.org, david.brown@linaro.org, robdclark@gmail.com,
 heiko@sntech.de, thierry.reding@gmail.com, jonathanh@nvidia.com
Subject: [PATCH 08/10] iommu/sysfs: convert to SPDX license tags
Date: Thu, 13 Jun 2019 12:27:01 -0400
Message-Id: <20190613162703.986-8-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190613162703.986-1-tiny.windzz@gmail.com>
References: <20190613162703.986-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_092734_877961_0B9B9E66 
X-CRM114-Status: GOOD (  10.02  )
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
 drivers/iommu/iommu-sysfs.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/iommu/iommu-sysfs.c b/drivers/iommu/iommu-sysfs.c
index 44127d54e943..a193758c8122 100644
--- a/drivers/iommu/iommu-sysfs.c
+++ b/drivers/iommu/iommu-sysfs.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * IOMMU sysfs class support
  *
  * Copyright (C) 2014 Red Hat, Inc.  All rights reserved.
  *     Author: Alex Williamson <alex.williamson@redhat.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #include <linux/device.h>
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
