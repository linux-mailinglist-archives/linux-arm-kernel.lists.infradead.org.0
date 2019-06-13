Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9335F44371
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9W8idbv21RtohyFvax8guEGgcvqDE8CibF60qPJj0G0=; b=fws5sRpSoLjblXgw7lKTy9RUMk
	MAj/81rvjXAcx4bUznUlcBmhE8iuLVBuUx1AyzCIZ8I4mMLJp/vaU57v2/K3eN5TXuK35q32QtYMn
	ZjpZPd3muqBWmKqz+KRT45HHTp2ua8K3cwH5AVvb7PXjIBmtYIobUJFbIIAnzTvw7akObRUtFCILI
	d7IW5cGAUs9xU8mPz33C9xB5/1Cyq6nX9JEJXlewp6/u+g3Xzp/Jon5uyCEG6iLMvRh1gHPetbFC+
	NzDJGaKA9wgQTHdv3y3yeQfoX697syHXCeDBwG2V6N0I/+cCrTwdPq7mZwz8DzJ50/tsxa2I+4Q1H
	TDM6Oo8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbScU-0006bz-Ug; Thu, 13 Jun 2019 16:30:34 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSZe-0002ri-0T; Thu, 13 Jun 2019 16:27:39 +0000
Received: by mail-pf1-x444.google.com with SMTP id d126so12169371pfd.2;
 Thu, 13 Jun 2019 09:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qmE6RcMdl/q+0c881KvtGIqeACQmyD2joLL+qnIqt7s=;
 b=ky0C6UzAre6s7Pe1an8KXFMZ/n8er3ta59i58tFn/r47l49NZ1VN9+rM4j58jiwZm9
 BUUw6IU+xEyg4pe+tDNRlfgA9svhmO2wxcbkJHrqtHDfZDb2fj7DY5Cf4VvjoboR7CIX
 OeBNbMOECRVKcWg9TZsdtgQHWp3yDmtksofWOyLU40oMHr3faQ0ik2GBZUko6/swbKHv
 7RGjJPXVHsRByfrTzTawZilS9vgW8lWz++Xf6nhndTHMDV4ESOIq73Px9aaMRrSMifOz
 BJF/jAQU3fP5h6BPGIHukh63y8OJ7SKf0mw8j8hSxtoXwtnawYConS3vgXuTarhLoGEO
 KZDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qmE6RcMdl/q+0c881KvtGIqeACQmyD2joLL+qnIqt7s=;
 b=OJx9pcXZ7szPYvj3XlDqqFL4cTZtRAaoW6uzG5yI+s8Wk0n9mAAOYoNZNbSOmqsUYC
 RnnN0La9KkZ0eLZpUtSNrfbj/caU8W98exRNp/eU7zgRww74l2UaILU1lP4rP76lDXst
 2ipYgmBD3HcZfk7ixbBpnOs9ZETYxPTnldYkprBFlBE95ruVRNxWA8KFJA3tFcAeiLah
 xW7cGEU0tJ6hvvH42lrlcREEjlfiX2srtOfcYHIMTeXMeyExUNuO5dxkyKTemVeSSg6s
 Gyz7WAO/EAnMP5qi82IBa1rscVzxw0yWumyu09N6D+sre+u9VcdHafg6vYdcagVk9jJu
 wb9A==
X-Gm-Message-State: APjAAAWrAp7ENEq+YO/NGHi41qgB2aorxzv4XTGrDAuy6nX62GSS5Bl4
 70DDFqn6boo2B8BpEwjSyOE=
X-Google-Smtp-Source: APXvYqxNXSVIQgcvlSSbelNewR4QAEP4WL6URSrkeuuhpNYR//oQq+uySr22HwqTovLEfyCOwtfKXQ==
X-Received: by 2002:a63:3c9:: with SMTP id 192mr25962053pgd.90.1560443256920; 
 Thu, 13 Jun 2019 09:27:36 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id r11sm294291pgs.39.2019.06.13.09.27.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 09:27:36 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: joro@8bytes.org, m.szyprowski@samsung.com, kgene@kernel.org,
 krzk@kernel.org, will.deacon@arm.com, robin.murphy@arm.com,
 agross@kernel.org, david.brown@linaro.org, robdclark@gmail.com,
 heiko@sntech.de, thierry.reding@gmail.com, jonathanh@nvidia.com
Subject: [PATCH 09/10] iommu/rockchip: convert to SPDX license tags
Date: Thu, 13 Jun 2019 12:27:02 -0400
Message-Id: <20190613162703.986-9-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190613162703.986-1-tiny.windzz@gmail.com>
References: <20190613162703.986-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_092738_119149_C4FE0677 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
 drivers/iommu/rockchip-iommu.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 77d4bd93fe4b..9c4c6eb7d42b 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * IOMMU API for Rockchip
  *
  * Module Authors:	Simon Xue <xxm@rock-chips.com>
  *			Daniel Kurtz <djkurtz@chromium.org>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #include <linux/clk.h>
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
