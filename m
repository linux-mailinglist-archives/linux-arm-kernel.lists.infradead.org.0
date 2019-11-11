Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3D0F72F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 12:20:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=chIhtKOydYJzKtJwlAJFbhVwytVZ+HOGyyuxaqcwfic=; b=NWY/erdkR3CtL0
	kHk2IN/jupTWjEhstusoXYaJnhTlf7xD/QxlBtdZB8A/ugKMryKivxvTFCh/40nMMpB2p2TPNjE14
	BV87EuCuW3kCHwtd7rlICUjhe8pex/Vi6DpwGSN0RQS6gArUKYTw6DXMJHMBcaTC+Ymn6acmN/bF3
	c5RSWUdm0vhBB0+xvbFNCQhz/1t3LDh/M9G1KX4M+pfuFX1xdK3vWvOwlsGbqxuqRivEcrJNDyDi3
	SD+EHDnUQJIfZofdRGFYA40R0aakCZtwm2P5wV5HNT3LEf12lw7XKDRhj7PMzvrNWJj1+u1WzGIyK
	IRwTeTh8bZnUlwG8WV2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU7js-00089i-IJ; Mon, 11 Nov 2019 11:20:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU7jb-00088f-6P
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 11:19:54 +0000
Received: by mail-wm1-x342.google.com with SMTP id a17so11810157wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 03:19:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XnVW9bguitmUqMyEzPyrdobpTBV9agELBQFiFzsMASE=;
 b=NWvxUvQ/prTUimwY97GIQlgTgNl41e08mLpTMGv4KJOq+UxyJg2fFHfs8X53ApnHNi
 f8mkVM+dSc3xmlUFNqXsZHg6sjI4gaqzEBowrn5OwZtialhqeJc/8JncFwyY8Xh+BNmO
 W2GYyvTyGA/OWpzGjmf/+z6PPmvHSbvZR5oiC/zeER9ex5CPm3JbqAfxLkiuPiWViGd1
 ++E7W3ZTxlTvdALC10siBBEdVTHq/2s6inIh/EPoIOQp/T22gWIpNfYQnL6UveTRnWMK
 HpSJrD02yRFG0OiLQZKPgunG43Y4sJgRjaROuvwomWrfmeqsMsRJVuP4dZDtEjGerz7+
 TOMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XnVW9bguitmUqMyEzPyrdobpTBV9agELBQFiFzsMASE=;
 b=klbXAm24fsE5O5qI8GMn1Bg9SFoOZOgJapAu69YwJ+GprbX1isC/59En12b1XugzPZ
 S9PSDe05Ds1HkSk+LUkQSANgucWTy6DN+PFV5NgebHsIVK24RtSiII5oqti/veOhvz+W
 LXhs5G1mGXgGwrZC8I+cxom1O1aga26PnXNSXKUcHOALmWWvssriTKZKaKh79US8zsZm
 fPjnCzSlImSlvXEtmmEVzBuAoOHcblwzUM+MB4OJNikWGr7Pis75Ik7Ar12EcVh6idsb
 CZ43UdJxv0/YCsp4Q0RJ4CwgRcyjjnCOR8QUlXk0Ln0f7TvZxlu8o4tZxaEq/UwG6CLS
 SA6Q==
X-Gm-Message-State: APjAAAVu/TSovpJjk+sV2JAXWhquWJlVRG7MTAVhRMiO3Veq8r8jy8jd
 RaHv0gbxqWbp1dXdg6/YCx2EjE6gSoM=
X-Google-Smtp-Source: APXvYqzGQ3QVzcNTYM4NAqtpCqAkQsd1J3dJLZz7ae1spgUxQRXgtYMtpooW/xUzp4UWOAct7GnneA==
X-Received: by 2002:a1c:9c54:: with SMTP id f81mr9244871wme.89.1573471188204; 
 Mon, 11 Nov 2019 03:19:48 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-204-106.adslplus.ch.
 [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id w81sm22933452wmg.5.2019.11.11.03.19.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 03:19:47 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux-foundation.org
Subject: [PATCH 1/2] iommu/arm-smmu-v3: Don't display an error when IRQ lines
 are missing
Date: Mon, 11 Nov 2019 12:17:20 +0100
Message-Id: <20191111111721.4145919-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_031951_441590_CA8F5B9A 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
to platform_get_irq*()"), platform_get_irq_byname() displays an error
when the IRQ isn't found. Since the SMMUv3 driver uses that function to
query which interrupt method is available, the message is now displayed
during boot for any SMMUv3 that doesn't implement the combined
interrupt, or that implements MSIs.

[   20.700337] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ combined not found
[   20.706508] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ eventq not found
[   20.712503] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ priq not found
[   20.718325] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ gerror not found

Use platform_get_irq_byname_optional() to avoid displaying a spurious
error.

Fixes: 7723f4c5ecdb ("driver core: platform: Add an error message to platform_get_irq*()")
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index bfa4a0f39ed0..a89797f346a4 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -5207,19 +5207,19 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
 
 	/* Interrupt lines */
 
-	irq = platform_get_irq_byname(pdev, "combined");
+	irq = platform_get_irq_byname_optional(pdev, "combined");
 	if (irq > 0)
 		smmu->combined_irq = irq;
 	else {
-		irq = platform_get_irq_byname(pdev, "eventq");
+		irq = platform_get_irq_byname_optional(pdev, "eventq");
 		if (irq > 0)
 			smmu->evtq.q.irq = irq;
 
-		irq = platform_get_irq_byname(pdev, "priq");
+		irq = platform_get_irq_byname_optional(pdev, "priq");
 		if (irq > 0)
 			smmu->priq.q.irq = irq;
 
-		irq = platform_get_irq_byname(pdev, "gerror");
+		irq = platform_get_irq_byname_optional(pdev, "gerror");
 		if (irq > 0)
 			smmu->gerr_irq = irq;
 	}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
