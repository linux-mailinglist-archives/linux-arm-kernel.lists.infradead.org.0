Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B12F44309
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+fMsk8DmLivtN1c6YxZc7gc3HXsJAj4YKZnyluKySK8=; b=nOtmA3Ji0pMOQ8ET8ANUY43zso
	6Dvp/3tgp4IAfWJ/FnoMVnvqfjKQHLW/uLbEOTRvtH1IG+lkGfDmZ4Pf5FQ8TzSg0OY6BJAH5+n+n
	Uj/phdu+7O98OVBhG+j3njwxXLfLVICYAkavVoua29RDa5VjBLSLxQCbgL1/96MtScKKtAdz82mE2
	iwgEseafIkUSqznXw4oYYZei5CjcESpS+PlYidk/xxZ48GEMcdoGEtSzmImn5E/TPG5B38lZ2fKKB
	7khkmqjF1znsdn9/8JazoU7FSTMWScd1K8EYMWHTp//5H3qKwEC6PgK2XzLQdn7v8PUOF6gw7iXmO
	rzdigo/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSbj-0004ah-O9; Thu, 13 Jun 2019 16:29:47 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSZY-0002ma-AN; Thu, 13 Jun 2019 16:27:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id i189so12151245pfg.10;
 Thu, 13 Jun 2019 09:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IszorbYpZ8EP1Tp+nYz4SokI6QENBhp1O9rNXrNQTYg=;
 b=CQ18UcaJLPYS/u6Oo5otSFFQ7Ecriq4cKTb+yUFrnQ8mDlkdVFjdraR/sG7mwrbfzt
 w8430KSMbyef/tMS+IkO5hME1L9flVDQFWFPD8neeaCMQkgB6f4nEziS8Xg9752KnHa0
 36/X+0NI440Psui6njrXRDPWczTwak5kRpJmMazWysWKXZLfiJ+UiHLYDBEh6y4h3kZQ
 9PpUKF/2rjgq+5r1CeBnwisBRwrOUdvCztqfJxXrLoPHuyh2U5A/ah80mky6jnOWXDtg
 ev/u/kfEiqAyPZd9EOCcPyI8E4hYpcmIACwxYluSmBqoDA3N8UebR87b38ShqeI7uV1e
 9G5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=IszorbYpZ8EP1Tp+nYz4SokI6QENBhp1O9rNXrNQTYg=;
 b=YndlAml6Ua08v5gKkgGQsNORT8Hi8luVHpAOwiwodeRF3RoXaqntgeOBaDN11mWFis
 hk48OF1DqQd3Q+HK5Wk9jucXH8y5pIkQITxhyhF3XkStDDyke6LiY44+3ETmqh74l9VV
 3D6qQjsKA7O/pf4WTGCDob0wB4gqpJFCIWhPzIBFArXn0IHtZ7qEbja3VIM/bndHOpPD
 2xXYY23DBubAlhmkJJ3cbnHijNv+0gafF6a5CaPGCD8dtUjJE34UowrIBBVjAdwEpyZ5
 iUN7DtmWALHthOqxZn/eeHvnVL8nPxsJF1zrBDrnraOU5X0vCnYxELWrDqfNkiEk+MbZ
 LsAA==
X-Gm-Message-State: APjAAAU6Msr7SxDXCbWCJxSUpUOmauJYdoyqWcmFwxeFh+gv6qogy5Sk
 LerYlwDcVN7ekc00VGsYgCY=
X-Google-Smtp-Source: APXvYqxufy0T2XKD0lth4cHLWERwXJoOmg14CS0iBJUyYk6CLpJnRVrFofyyxkm03jlk+bd+w9w2OA==
X-Received: by 2002:a63:1516:: with SMTP id v22mr32253463pgl.204.1560443251259; 
 Thu, 13 Jun 2019 09:27:31 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id t26sm289990pgu.43.2019.06.13.09.27.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 09:27:30 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: joro@8bytes.org, m.szyprowski@samsung.com, kgene@kernel.org,
 krzk@kernel.org, will.deacon@arm.com, robin.murphy@arm.com,
 agross@kernel.org, david.brown@linaro.org, robdclark@gmail.com,
 heiko@sntech.de, thierry.reding@gmail.com, jonathanh@nvidia.com
Subject: [PATCH 07/10] iommu/io-pgtable-arm: convert to SPDX license tags
Date: Thu, 13 Jun 2019 12:27:00 -0400
Message-Id: <20190613162703.986-7-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190613162703.986-1-tiny.windzz@gmail.com>
References: <20190613162703.986-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_092732_443960_621F3B9D 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
 drivers/iommu/io-pgtable-arm.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 4e21efbc4459..6282c45eefaa 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -1,18 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * CPU-agnostic ARM page table allocator.
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
  * Copyright (C) 2014 ARM Limited
  *
  * Author: Will Deacon <will.deacon@arm.com>
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
