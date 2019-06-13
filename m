Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 930B344306
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4GdMfYMe1as7YHlHDllyjoc5A6MXpi21V4B25fqPmjM=; b=PwL5rfaScM0EccO0d1xBqOhSFy
	h2JaTWDKw+nYHhY1v/iidiq7b1PtnEIEaKLR0/flATQNrd3B8XOuMV9WHcfZm7ubALYmAmxlVZWCg
	Wl+YWINwqRpvkzpGESAwB1e66K8Wv9X/swExR737VBZThmYwpNhxLwklGcbqJ3hTV4BwRkZ3jIzv1
	sM1HN6tgwnW1/r7WGpB+nreusWFzhVy7aeLss6gquXCdOR+6Zb/RY7fxAmNS1dhqYc4oEyrb3z9cU
	yQ+kBfXU/JySmIm4ZtzyrRk1bT1MGeZHvGlvc+hhMwLh8i2CSfc9l3LBfEhrTxz1t5fHlfr1ZrUcf
	61ZQKz/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSbP-0004IH-Aw; Thu, 13 Jun 2019 16:29:27 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSZV-0002k4-4c; Thu, 13 Jun 2019 16:27:32 +0000
Received: by mail-pl1-x642.google.com with SMTP id s24so8351862plr.8;
 Thu, 13 Jun 2019 09:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jzRIWp8sjvta+E1GyPP4P8N5byAmizxIfWuhxK6cbfw=;
 b=Hu385w6EtH5CYuRhgbP11gNSmmeNm2mqhecXis7zbgcdfqeJgxUK2+mvXCRVvaGiNz
 Z7j2bS5kQHHqOpwmcjBC/t4hjw1Pz0VPYlDDRwL4k24b03dOHX89NXThVUV4wZB0LX9I
 TlT1LPFkT+Kix2FJQVJXSStbnFVm6Y6TAgpTQEzoA1YrP2hkSxgTxJUbVXz2ojngVaEt
 +lsGxMtUQO8XxgYNwBAd6NNqiECPxDt0h2jaRoMlmXdrMA/EJipXhCA9b+Q5dktea4dx
 s8qHZQu3bov7P+YH8mhwdO0kdFM5f51VyKWG4lZOkXqRnZst+OrCWDHWzbD441dKvF3Z
 0Zdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jzRIWp8sjvta+E1GyPP4P8N5byAmizxIfWuhxK6cbfw=;
 b=jpokBem16YE0VuYyK4/rnwfuMycE9e+ydB2bTYLa6iB9FnLRA0z6iUQ9AbAzKxJ2Rm
 0k/B5nDNzf0og26kSQncM43q8xofU4lWOIuqD0JuBJmO70PkNHR5HS+Epttb/H1W5K1L
 1G6eaxmU/f5D+P0/5qCCsqECdOqerXkqJKQ6ogVs6OSlSlRgNgYJZUghKquBZp5bpE1g
 sTO+GFw/PgKnl+86cWietQG8zk8EFjakOzmPUnQGH7QVjH7xOXwxWvsDVA8MNOTpHjOX
 8vG/oa4b0sxzfdQHpZ/gmx1H7PWCyCLPSSUnrFbnb8EOlP2svCXHV7ZApb1qiDaTd/9F
 BiuQ==
X-Gm-Message-State: APjAAAUvz0Cp5Hy0OcYkupDIHsWyYMLx5vRJA9ahVOOJ7GQMAN9RL/wx
 2vUoqQfZ0Dbuwctd7szCUwc=
X-Google-Smtp-Source: APXvYqyWo/fan+upwuWjeJEQ+9bFsdtSKc6ZRW1lB3ZdlcdwZgQYZ6AcEoo3rKRnpeNvJsgWS9Wpww==
X-Received: by 2002:a17:902:54d:: with SMTP id
 71mr86570437plf.140.1560443247944; 
 Thu, 13 Jun 2019 09:27:27 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id w1sm177958pfg.51.2019.06.13.09.27.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 09:27:27 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: joro@8bytes.org, m.szyprowski@samsung.com, kgene@kernel.org,
 krzk@kernel.org, will.deacon@arm.com, robin.murphy@arm.com,
 agross@kernel.org, david.brown@linaro.org, robdclark@gmail.com,
 heiko@sntech.de, thierry.reding@gmail.com, jonathanh@nvidia.com
Subject: [PATCH 06/10] iommu/io-pgtable-arm-v7s: convert to SPDX license tags
Date: Thu, 13 Jun 2019 12:26:59 -0400
Message-Id: <20190613162703.986-6-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190613162703.986-1-tiny.windzz@gmail.com>
References: <20190613162703.986-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_092729_298446_BF061C22 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
 drivers/iommu/io-pgtable-arm-v7s.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
index 9a8a8870e267..fd0c8f2def45 100644
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * CPU-agnostic ARM page table allocator.
  *
@@ -14,18 +15,6 @@
  * - PXN
  * - Domains
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
  * Copyright (C) 2014-2015 ARM Limited
  * Copyright (c) 2014-2015 MediaTek Inc.
  */
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
