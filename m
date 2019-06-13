Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C483C4438F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:30:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kA+uqWuEXsEk931PwQvq2vfqz/x7WrGfB9GwWd7dkUk=; b=KcFhU+SvcNcWwUuU0Y/DhU/Lcs
	+MKTHwRAQAth3iJka+yX2VXdbmHDvzmoDl08QimkmEOCUX8h3FUu9SIHpoCEfRhDpXBnDBluEVT3n
	O8vDu3QTQWKDcDzgLoaqEsg4ZuOtvBjxJhA3rqzJm28z8R6yW1zGPn8EOErkgvGOEfWJWvCWP/vmc
	3/5Cb+M1uxssd3pX4bQpj0/4SEm/u12t+G7P+JQhR2E4CZPIjgImiFdWOHM35lLv5LJO0EXCkehQK
	A/aYwNM5GAPHIH4VFgFm6JRHA/YnsfRfgqnTMLl+hbfj0vM6mkhld0+bXIoZNE8XPlBd//Srb4hcK
	Jm7VZLSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbScp-000770-D2; Thu, 13 Jun 2019 16:30:55 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSZg-0002uT-IS; Thu, 13 Jun 2019 16:27:42 +0000
Received: by mail-pf1-x443.google.com with SMTP id j2so12166388pfe.6;
 Thu, 13 Jun 2019 09:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/p2hCYDhKAJ230l1zBzHnYZFs3VHjVr39XvOIKP4Pys=;
 b=VEgX2ZhFSzG3BImEi4GH9MUQbh4LnQqPx0JppfXi7XYfJJvmRAB0Db/QKVQQl8qM10
 SoKlDlc0SaxSrTEDHUtMYjOT11a0Lj5yq8ULKEndaWGWOkhNMNutP6XCaT2Ffliy6EBJ
 5jQ1g8Pajofj88UF7QvL1nK1FAEH7NLyg8e9QWEleD0lUPmjBavBQJY0q78qlAGQNurb
 9dqruWp+dSmlVS3sT1CIfM6Oi8H7XanvMOQZ6mbabOL0lGwx8q36/3mrMkLEV/gxHbiY
 un+NlmZxMI15zJRk9HnXmJzI1lKBdlQNldk07QrTBkVVnjybOiiPxyeHYi4kTRL37lCi
 W8Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/p2hCYDhKAJ230l1zBzHnYZFs3VHjVr39XvOIKP4Pys=;
 b=MdPC6YYD/FoSk0nFWWm+lXH+cSLVwF3DR5a/reOOnif2dLWea9SQLIiSJSjwaa4DhT
 Ys+PXY6TXefTe4L0fxuWvsJCAnRB9qs7Ry2Jc8jt6K30tLVWIi0O+zFPqJnH40GRd9h5
 /vOR9+cjVw+A+Sb9ng9r1KVXsmwQLFG6to4P0gGQ5HeEMrH3TTlSvp1E1v6fa0zXff1S
 83jftkoDd+8Q8TfGRwSGgdNMv8l4eBzR5ZpwJ1mheOLORwAIwqAwrNIeAPxGACUwNjBp
 mBx9OSWkP2Bfe7BTEfuGOcmTTpYzTT8NmoeEoHeXgvEduvB4bdkwE/8bjt1SfdHxWZ90
 WLfA==
X-Gm-Message-State: APjAAAUYAvWx/IBzoG1I/EX9wo1tCHJD4Uue77BBCOH7kNYQK5r3RsJC
 cChLlYAlDu6gL4AZkwDxPDM=
X-Google-Smtp-Source: APXvYqwn2Bb5s9dHHXGu4kP/PrmweWqq9r8gaJuQTaAylLqdC9JMoO2D+zXiDQevAsqwN3NWgk6q+A==
X-Received: by 2002:a65:60d2:: with SMTP id r18mr31309788pgv.217.1560443259298; 
 Thu, 13 Jun 2019 09:27:39 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id j2sm310930pgq.13.2019.06.13.09.27.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 09:27:38 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: joro@8bytes.org, m.szyprowski@samsung.com, kgene@kernel.org,
 krzk@kernel.org, will.deacon@arm.com, robin.murphy@arm.com,
 agross@kernel.org, david.brown@linaro.org, robdclark@gmail.com,
 heiko@sntech.de, thierry.reding@gmail.com, jonathanh@nvidia.com
Subject: [PATCH 10/10] iommu/tegra-smmu: convert to SPDX license tags
Date: Thu, 13 Jun 2019 12:27:03 -0400
Message-Id: <20190613162703.986-10-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190613162703.986-1-tiny.windzz@gmail.com>
References: <20190613162703.986-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_092740_634760_D314E6EF 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
 drivers/iommu/tegra-smmu.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/iommu/tegra-smmu.c b/drivers/iommu/tegra-smmu.c
index 463ee08f7d3a..9a50ca4ec65c 100644
--- a/drivers/iommu/tegra-smmu.c
+++ b/drivers/iommu/tegra-smmu.c
@@ -1,9 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2011-2014 NVIDIA CORPORATION.  All rights reserved.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #include <linux/bitops.h>
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
