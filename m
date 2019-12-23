Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4966F129A39
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 20:01:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EXrqZ1WUhUtAV1YvnuL0emXYPlC5mny7di1B/W5l6uw=; b=Gi8Z5ZzmZfd/HYAgVaDQUHssne
	ONRqem0sGKRR1aQ06Gm1lFzL95KUHfw+3MBEbfe4DFiWjzycXa1+rj6CYIsYVLU72ZFJkl69eiktx
	OxQyT/8+8sBeFv5KruYYulm4UUkbyJBaW5ZH9Ar/uV06Pg501eQRMDuIA00AEIAuyPDh1E1ii3P5/
	YZSZVqmmDEwWwAWOB+kw5O9InFTAkKgcD5Xvv1CG3Bo8F3v40Wm00KTgFUdZc7tb+A6lXFOvth7Us
	C8GdD/MgnaDS9fTK64NP2lOgY5iS7cd+faSConmt/d5JLClu6bWAk6c5LTqZvh66ddinVIoNHr26i
	s9Y4cm5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijSx6-0004xl-Iq; Mon, 23 Dec 2019 19:01:12 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijSvS-0002Ym-Tv; Mon, 23 Dec 2019 18:59:32 +0000
Received: by mail-pg1-x544.google.com with SMTP id r11so9265242pgf.1;
 Mon, 23 Dec 2019 10:59:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yYuhXbk2VYWkJUHqsC8Dp7ziko2oh3QWGKXaw3BKzKQ=;
 b=bIrbocA75GjiXkwSJP3C51ubVyAnSLI/fBMTmh6962W79PT4Tqv+1+Mjw3cq7AGKFU
 jHYIhsxDoH7RHVORa6yJexdhOgetkpm/PkZ6ybiEGu0rEOpFeiagFzU/A8ajKUUkgukz
 3AsjKYBf3/aZo2PMmRXKMgxEkfrblyUVI3V0AYfA5DshVaGFTRxoepTY4p6RKBua5+RC
 hwdBV6ESUTN2NcyHSsnNvmOAqmENn4PYY7sviRlsrgrPKRl79k7z6YX1VvUkJpHwbF8l
 d6ihCxrqxgEDPq21x1NWyz3OWGl9kB/2yiUVsYw2xw4mEWhcBS8hcPRUPF2UdAVwvS+g
 6lSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yYuhXbk2VYWkJUHqsC8Dp7ziko2oh3QWGKXaw3BKzKQ=;
 b=MwisN3diWcdKQUiN2jIFgHeKg/uANvilh5x4eULkEZz8zuyCqApLgqXtSS90coQ7H2
 PsghhIDZolP3SW3VBWbJ3XJPWgosvhmgtF6PyMo6gTWYXnj7WwmIXcVpXHrcfMutnZPT
 /FJ1Af6nVY8Lz3VBHsWvW4qnwO7DNn+2ccQTasEIBmg5zA5VbcswBEzYTjzu969L0Wh6
 nw6/585w/I7188b7fwNRwSVhJ+23Xd1DTRXoRi0sb4GszU9+Bf2zmRzqhsmPNGNdgIxE
 vxLHKUFSA4nBahAzvxyGlp1/91unpuHWc+NFxH+rrwoJWeqQYqZptxHlWiBJmbTZAK7v
 jbYw==
X-Gm-Message-State: APjAAAWiYVdGm+451eMgEk2ibFpR3VzQ5rkaZETSjGqUBQOpXaE4wZm9
 rcwuWuKOmegO4r72dqRJtmg=
X-Google-Smtp-Source: APXvYqxUB7sZmq8y8VINmqjxcxw1nx5P7rd/13e79L+vtzHV6ANBCs8nm6SgxE2CIKPWmst9f3sWdw==
X-Received: by 2002:aa7:9ab6:: with SMTP id x22mr33198806pfi.260.1577127569760; 
 Mon, 23 Dec 2019 10:59:29 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id e1sm26283596pfl.98.2019.12.23.10.59.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 23 Dec 2019 10:59:29 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: m.szyprowski@samsung.com, joro@8bytes.org, kgene@kernel.org,
 krzk@kernel.org, matthias.bgg@gmail.com, agross@kernel.org,
 bjorn.andersson@linaro.org, robdclark@gmail.com, heiko@sntech.de,
 mst@redhat.com, jasowang@redhat.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 virtualization@lists.linux-foundation.org
Subject: [PATCH 4/6] iommu/ipmmu-vmsa: convert to
 devm_platform_ioremap_resource
Date: Mon, 23 Dec 2019 18:59:16 +0000
Message-Id: <20191223185918.9877-5-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191223185918.9877-1-tiny.windzz@gmail.com>
References: <20191223185918.9877-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_105930_990018_5748675D 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/iommu/ipmmu-vmsa.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iommu/ipmmu-vmsa.c b/drivers/iommu/ipmmu-vmsa.c
index d02edd2751f3..3124e28fee85 100644
--- a/drivers/iommu/ipmmu-vmsa.c
+++ b/drivers/iommu/ipmmu-vmsa.c
@@ -1015,7 +1015,6 @@ static const struct of_device_id ipmmu_of_ids[] = {
 static int ipmmu_probe(struct platform_device *pdev)
 {
 	struct ipmmu_vmsa_device *mmu;
-	struct resource *res;
 	int irq;
 	int ret;
 
@@ -1033,8 +1032,7 @@ static int ipmmu_probe(struct platform_device *pdev)
 	dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(40));
 
 	/* Map I/O memory and request IRQ. */
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mmu->base = devm_ioremap_resource(&pdev->dev, res);
+	mmu->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mmu->base))
 		return PTR_ERR(mmu->base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
