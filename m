Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E023BF72F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 12:21:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOv0fonlW4dJausoz1xjPESG+MqdRYgWsqxh+Omm++A=; b=LdgWMcmCV5g61w
	EmzqOjjKEopR9aFgamBRsOC6/KjXQev9rLa97Gr1mrI5v04eQHqVikDGVXnGainRJyVNkTEQU0uP0
	bfJztshKdihH8+ekX+XwQzkDn0hXQTEtmEBfzcBBu9zjj8NNaxQAFwnEXJ5y8K4WS7vNs6ADzMwOm
	CKCJVUI7slWhdPWA100sEto2Hu9rwWjlIc39TEHeaTb0dvA1BoVn0R0Jq6RAgCulkBl9i+GZCvdDC
	Yptin5xaVBiD+Whf8xtRZwmkJiTgtvah1Ah1U7ChanW0dW4UqRh8ABR5MWSFxkOCHAKCO1ZOYCcrb
	7uj7JXQJFt+KC/oUy4VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU7kh-0008IJ-Ju; Mon, 11 Nov 2019 11:20:59 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU7je-00089B-Fl
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 11:19:56 +0000
Received: by mail-wr1-x442.google.com with SMTP id e6so14245017wrw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 03:19:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fse92Wud5bezxZYvhZ7ctPlPrYXVpEQegC0mUXWfzdA=;
 b=KDHXmdujPpOVoxwCfokYbPDdczVXKG3NR0DDqhzWCWFa1XWwtDgSeMSlCFb6aXEReo
 VrNJQdA0QUpBIEGr6ZyQbp8nTNpcKFQezlXGhh+4yxbNEJA3MWtGlXRiLe8nP0U8ZJE8
 kIhb20pUWG3ttEfHm7g91TDX8wnGr2HMefzQZOmiZD7BVOGzZQ9NLt81UcSeajHTbdIk
 dLcbZHwUJGGiuku5HStUWVxOQMOvg7SEj4IEkln6XyD1w3XZr4NddHgBkjh5LGtVHca6
 aI/K1djQoD9/uvzqE8WzwYMxLKaKhW3AqHivxb1OkRbEA5/6vo7wNUeypsYSXjmUp8Tp
 RGuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fse92Wud5bezxZYvhZ7ctPlPrYXVpEQegC0mUXWfzdA=;
 b=aR/H15DkMuOzBI9vZIM7zed2JkozOS9fuRncC6gZFcoFjMAaJH2znO2SdGVq11NFol
 JO4gB0v0PhlBuWb4+SnP0cd5Fg7GD5MopvgU1ETeJPMEtpNyu0G29q4zk62oYicUvjBL
 4Y2sOVUx5FefwlDG6wi3rfXlVbTTYwjnF4w2uNTTAtQ3TxoPpIMHnRWUTCsY3FgQXBNW
 M3uodNHS68n5ipjfq+SP8uRfHMV6i0v2vebZ3Ugs5pPiy+1utrDU/qMPqrXfe3kXDNg4
 H7l92OjvXibqg97+e6XwWqSvbFPUt/tfqPF1gQvsr9Va6TT+xQZipXvpK1axdK57APfK
 dNIA==
X-Gm-Message-State: APjAAAXLvtYcsVt3iCKxAoHIZjDCObb6VX3ClvLZ04MdeQyY8Dm39CNq
 58VBQGDXJ2nS7p30sixnxTX4hiDWHec=
X-Google-Smtp-Source: APXvYqxzlDnHmYA4fbPKCb3MThMMHYCJFylL3vcWwjWHDLrqEvnOebecSDuj2VoS/pRaTVqEnIIb8g==
X-Received: by 2002:adf:ea8d:: with SMTP id s13mr20648267wrm.366.1573471192731; 
 Mon, 11 Nov 2019 03:19:52 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-204-106.adslplus.ch.
 [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id w81sm22933452wmg.5.2019.11.11.03.19.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 03:19:52 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux-foundation.org
Subject: [PATCH 2/2] iommu/arm-smmu: Remove duplicate error message
Date: Mon, 11 Nov 2019 12:17:21 +0100
Message-Id: <20191111111721.4145919-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191111111721.4145919-1-jean-philippe@linaro.org>
References: <20191111111721.4145919-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_031954_532212_8F6FF853 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robin.murphy@arm.com, joro@8bytes.org, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit 7723f4c5ecdb ("driver core: platform: Add an error message
to platform_get_irq*()"), platform_get_irq() displays an error when the
IRQ isn't found. Remove the error print from the SMMU driver. Note the
slight change of behaviour: no message is printed if platform_get_irq()
returns -EPROBE_DEFER, which probably doesn't concern the SMMU.

Fixes: 7723f4c5ecdb ("driver core: platform: Add an error message to platform_get_irq*()")
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 7c503a6bc585..6f676686752c 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -2062,10 +2062,8 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
 	for (i = 0; i < num_irqs; ++i) {
 		int irq = platform_get_irq(pdev, i);
 
-		if (irq < 0) {
-			dev_err(dev, "failed to get irq index %d\n", i);
+		if (irq < 0)
 			return -ENODEV;
-		}
 		smmu->irqs[i] = irq;
 	}
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
