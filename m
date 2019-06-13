Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6C7442F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ph7RVB5GFbrD8Ea/2e/0Cx6V4ms98F8cNza5fk1IQT4=; b=TMHJlq1HpmNHiYckc7oMMms0C4
	b8IDQtx7BuPomspI6/Hptzv7ptnXTD4aVRmOjjzyJuuQPxYep4B/v9hhv4yYJ2EQHTLY6qXvB3YrY
	cX7pHlsUkvZTQQklVwo1J75GhfVoXnRl33Otvp1a0hbD/mbgy6y39UAFABQduvf/FekTdI/OSTI03
	jm8XImg3jJ+ji2EqaRUV4pHYratZB3nzX12a7v8Ko4z8E2CJwBFM5/7cNZmJrcclXznItIm3coZsG
	AY4YTMH/O7jw/Z6jROcT7Ut/zAEXkHJXnvWXoESd/DtCyBf+dooEbn6PPY1KDHnLP8ycGeawITm9g
	6Z2ztt6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSZv-0002rR-Ti; Thu, 13 Jun 2019 16:27:56 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSZF-0002XT-It; Thu, 13 Jun 2019 16:27:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id p10so5392446pgn.1;
 Thu, 13 Jun 2019 09:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=r1vy7DnzNlW7BikrT1aYtCzomLZ4jnCb1JSwMR9zHaI=;
 b=ThcDxsm2Eo7zmQtLPSCGbD3aEVtad1mN6qL3VVuxd32Ezhy3h2gEuGJOB5igc6ejUi
 8Tw/ooqqLqbKROz4UOMjhfE+0MEUn+wzcvHJIUfQKqeT9ftOaehe0G+B+nbBVbIHDVCG
 f12Z0/tv+bh6ILWIY35miZeb0HaDAZhrhYF/bc3ZRdYs2e6NTxF2QUwK7R0IUa2m1k2z
 IjJPuVzLzzye9N56nP2N1bs1hGoe13ydtlOWdcuN3RsYcC/ZRq9v8wAUHczMA1ZUHWkr
 aqy9QPNtz/dhG54rl5XGKA+aoI52ct7cgtVQGs+5afZ70qj8buSJASglXjK2dYttNmKf
 ndig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=r1vy7DnzNlW7BikrT1aYtCzomLZ4jnCb1JSwMR9zHaI=;
 b=NQ+K4IHrggJl0fAdczer/GwqQGm62JeNRI1OSnnXNe05JRamizd1jMEzr8XnzmpffR
 X1m62ZMAd5q21lFu6XGmKJ+9Oruu+LmD/aMGBpcT+XXXCqcbWVupfarjWb/99kPYr/Ji
 gAeiSSf4IQbiVN06J5QQVigjrLDkEpBlnyXp88O7cDYNOAwqQHZ9QYVrkpafdQQxrr/k
 GddmFk4mZSvL+8kyoQ4zU/0yAJ2Smo0x3zWZ5v0DfX+fIFf1sw4l86awZsNCaWzRIKb3
 +ZXOL3amvTWPiP4pUyTJxLfIqA2LNyycWdkG8U09vWX2U+zptpSeOPGWQ+huHV2wcqQo
 OIkA==
X-Gm-Message-State: APjAAAUVkYpMIBjGp2/m15HLGcevCkKoDUfLnXkcaV4Y10NNKEJ2khfS
 SGdXGYrTktpUty1/NVqa4H8=
X-Google-Smtp-Source: APXvYqxALl3rWY5oZWGDTc9ogW7qCDR1OKax63JMlYMjuaLbW+O6IMlBZCCBpt/Bp4dU5/yrELe38g==
X-Received: by 2002:a17:90a:fa07:: with SMTP id
 cm7mr6526915pjb.115.1560443233237; 
 Thu, 13 Jun 2019 09:27:13 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id v9sm169586pfm.34.2019.06.13.09.27.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 09:27:12 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: joro@8bytes.org, m.szyprowski@samsung.com, kgene@kernel.org,
 krzk@kernel.org, will.deacon@arm.com, robin.murphy@arm.com,
 agross@kernel.org, david.brown@linaro.org, robdclark@gmail.com,
 heiko@sntech.de, thierry.reding@gmail.com, jonathanh@nvidia.com
Subject: [PATCH 02/10] iommu/io-pgtable: convert to SPDX license tags
Date: Thu, 13 Jun 2019 12:26:55 -0400
Message-Id: <20190613162703.986-2-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190613162703.986-1-tiny.windzz@gmail.com>
References: <20190613162703.986-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_092713_622166_27F81735 
X-CRM114-Status: GOOD (  11.09  )
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
 drivers/iommu/io-pgtable.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/iommu/io-pgtable.c b/drivers/iommu/io-pgtable.c
index 5227cfdbb65b..3c84ff1901ea 100644
--- a/drivers/iommu/io-pgtable.c
+++ b/drivers/iommu/io-pgtable.c
@@ -1,18 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Generic page table allocator for IOMMUs.
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
