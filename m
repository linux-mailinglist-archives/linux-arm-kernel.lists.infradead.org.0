Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EEA44300
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:28:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZbajFCoz2tudeF+/fS8emH/tew2fdim4XvuuE1V4Avo=; b=L7kppdwhCg9rDdHB6NT/HVccBU
	lZV8342P0TK2dtFEOGlQjIGlNkYBCmwIlix7Py3n+LxJtEf4wAckSyYfC/SoER16uFGhl75na/rP2
	c/XV0Os3vmeo1xMZFQuUuya/qei0luuOSR1ty1sfRffxT2uF0GPUOP0HaCCICXVAmeIO7QG373US0
	QgN26blwXmSEjHBOlTOuCFOgFgYLmU4mjYgME9nmSXE1tY5bLCuN+2YFr79q6ko4oFq172Ssow3lr
	ndMzDJvhh+lg3l1LXKfYUdJC2q8PJp7CMknvNCN5ZfNpk8BPPXF21Dbb8A2eg9MANbOD+6neZWUMr
	Eb11IGkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSad-0003WY-0B; Thu, 13 Jun 2019 16:28:39 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSZN-0002eQ-WA; Thu, 13 Jun 2019 16:27:25 +0000
Received: by mail-pf1-x441.google.com with SMTP id j2so12165837pfe.6;
 Thu, 13 Jun 2019 09:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JsgCC/BMGBMjxmW7o9BryeGGLOEsGyP+ouOS5p6QwrY=;
 b=JcwiPxgjLgV6N4VCuG8y04JytNqGA3wjUEQKXd/8c9NKoASVZrzY9YqxjRgcnxpj/m
 xYimd6aF0FM3qGzIYEie1Obu9Fv9hNkPj5fOH/k1Cq8DDcTXGvzHfbdZZhCf2rHYdqoK
 irX41RQFqAFcvftuCdOl2TIoHJ7GuhiI3Lp4/3pYT1WHUTlWCSo2uZS0xVBoOWxaygH0
 Qhyde+t2vasIdzZ+OUXv4OvvVQwY7REx9a6hOOv/nwJg0o08wp2sRXgZY/BCBEUe5dt5
 QSiS7Bi23/N6707zjA7xU7gvDKFjyL8fi7H0FXAHjINXJuoR7QtNv2s6u2JezgqDFeA7
 CcCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JsgCC/BMGBMjxmW7o9BryeGGLOEsGyP+ouOS5p6QwrY=;
 b=oV87xBYzd4/it0czC4QF2Lj+Rh+fuTs1DoGLbeTTJzEzVStK5VoFlDoByea0RDdaU3
 j0ms4nqH97Ytok56ZgD2aEUIvOnmel5I+xD1N9cZlHhPVIr+HQp1IyyubJSI1S4ELJHy
 6LZGc51tXB6OHI2NvwSN+DlTxzHiPAEl9zc/9gTtdOJBvuiQrVhyM+lWe5dIxJgG2MWm
 U4zbydTEJghRMyANRZ7EQjTUpZPC2NJKpKc2zQqLeIaI6ydfPCaIR/Uw479Wu1hZHYyP
 TpXSXo8VH0ZvEO9PTFByKDzd0mBIsLVy8CEXH77EEk29OricGKFbLWGF3gaGvyiI7GKw
 AFEQ==
X-Gm-Message-State: APjAAAVji2P9hqq1C11Id/EVci1BH4KOtLFt1FZsQsalJ3GFBeUU7+LU
 5pKAycEAA8XTZL5B4gjfXso=
X-Google-Smtp-Source: APXvYqzz/wBg2hFMk5AN2wVrdkk/+d5jQkSOOjBN2BUU2pkNiSLnjcEV8rg9DLZ1/j1U47rn0NUi1g==
X-Received: by 2002:a62:1bd1:: with SMTP id
 b200mr69156992pfb.210.1560443239837; 
 Thu, 13 Jun 2019 09:27:19 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id l8sm265407pgb.76.2019.06.13.09.27.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 09:27:19 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: joro@8bytes.org, m.szyprowski@samsung.com, kgene@kernel.org,
 krzk@kernel.org, will.deacon@arm.com, robin.murphy@arm.com,
 agross@kernel.org, david.brown@linaro.org, robdclark@gmail.com,
 heiko@sntech.de, thierry.reding@gmail.com, jonathanh@nvidia.com
Subject: [PATCH 04/10] iommu/qcom: convert to SPDX license tags
Date: Thu, 13 Jun 2019 12:26:57 -0400
Message-Id: <20190613162703.986-4-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190613162703.986-1-tiny.windzz@gmail.com>
References: <20190613162703.986-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_092722_108808_28D3E24F 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
 drivers/iommu/qcom_iommu.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
index 8cdd3f059513..ad913720d7dd 100644
--- a/drivers/iommu/qcom_iommu.c
+++ b/drivers/iommu/qcom_iommu.c
@@ -1,18 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * IOMMU API for QCOM secure IOMMUs.  Somewhat based on arm-smmu.c
  *
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
- *
  * Copyright (C) 2013 ARM Limited
  * Copyright (C) 2017 Red Hat
  */
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
