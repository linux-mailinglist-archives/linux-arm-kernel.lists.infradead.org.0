Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C341F473D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 21:41:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VPHSxUlfaoCvF9kq/Und5croegoYHwajOdxyHStcrds=; b=XEfEAtPXmHQ8vQ
	QaQTrx89yUbG/zXzkhl4+Wj47NzBapn/PXbb+qojlt5AQ1GA13y1VFpgw516mF67pW9dmiEQooKi6
	/zsjg5YNBKZaxuLtZ55Slna4yH7oqnpl2x8MUsulE/+0S5tY0Bnl3wHitbc/NZioeJ+TbiYk5xCcz
	tTpgvUHrWY8uwYUKUfoDN7WindMc/vmCxjFVWST+NYGVrXK5OqlRxCwKmBz5xkrKrJV5DiJM4sAKK
	LVwllvki072p/glnpZDJblI6T4xgEwS8ZkzBQA44LOBnwkfOdJ5+/iLAixgLkW+MXWiJonQgtnpwm
	3BWEFGBnUHTJIZ3E+S3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jik7h-0002B7-Vl; Tue, 09 Jun 2020 19:41:25 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jik6v-0001fH-AF
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 19:40:38 +0000
Received: by mail-qk1-x744.google.com with SMTP id v79so22004687qkb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 12:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marek-ca.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0BqclPegqJok0tr1lg07n1QfpjQ6ftwveg7CVu5MR2U=;
 b=EJ5I7b0p5sm6fG2LVDGmZFIoyUoEMOuv8dVuO+rWpAYZVg5NR9bq0wHB8aFLqtXbzX
 /kFMTgm/V/5WvrVz2M2EsfKNKxHNUIvuVjvZQQQDkpY/UQkKY/ra/6hAunI0v+uMZh6D
 0KyD/4Dhe9OBRkY/jQJgLgoVpLI87OZ0IGfTFEWHdL7PLOyC44ojCz/6e56gNWKMbygt
 P/VR1yGt2c8lH2OKGfLR+JiNAgrHj3fP6Ta+Nf74YWvAjaQr9cjHFme5RcIbHePSjo7u
 pR7FioGemlKZlrSNpD1MePBLmBhnAR+uUWkMJq5msxpz/0yE240PEL6jgGrlNq8pbix5
 eC2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0BqclPegqJok0tr1lg07n1QfpjQ6ftwveg7CVu5MR2U=;
 b=hS5AiH4j9Y0Ys3mzxgmxywxGoMO2N3Lk3I/gG7tXzzHvSe22RgMVU7qejQk0Rnl0BI
 PSMewrynM8hWDoX54ku5UJHUWvBypkz/M7HbeHUXjZmukB136EqF1gBmN35OGHZqeDz9
 kdZaCzV2qH5RKgbK4dE9sQ06vA2slyzTcbtwL0Nm+a7NLG4d6MZfezxO3yrbQRufWdy8
 7L3SgRgVPlUXBtjL8SlQLoSP017akIqgjcyrv5dLq1y3RACKJMnICervgIfVk+gCTbUE
 g9kFOb8bZrUw+Z1Dm159vU2QbGEg9B0nn3vppgJOmNLqFSQdePfftaq9rFJV4DCKZGL0
 oY5w==
X-Gm-Message-State: AOAM531KMdqnFvHx0/nsESynxVsQUiJuUNu3uqVojncgy8jADeNKq8lc
 MTDpKUtTefm7GFFwfUu/MK1ITA==
X-Google-Smtp-Source: ABdhPJyz/M9ZpkYSVQxPXiFgNuTI0QUGQCMuSuyLv9c8jT0hNZNxRz1VGjqEgkrwXdXTkx7A3ZM78w==
X-Received: by 2002:a37:6c2:: with SMTP id 185mr28950911qkg.95.1591731635916; 
 Tue, 09 Jun 2020 12:40:35 -0700 (PDT)
Received: from localhost.localdomain ([147.253.86.153])
 by smtp.gmail.com with ESMTPSA id v8sm10513181qto.21.2020.06.09.12.40.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 12:40:35 -0700 (PDT)
From: Jonathan Marek <jonathan@marek.ca>
To: linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 2/8] iommu: arm-smmu-impl: Use qcom impl for sm8150 and
 sm8250 compatibles
Date: Tue,  9 Jun 2020 15:40:20 -0400
Message-Id: <20200609194030.17756-3-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200609194030.17756-1-jonathan@marek.ca>
References: <20200609194030.17756-1-jonathan@marek.ca>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_124037_350507_A96AF9AD 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the qcom implementation for IOMMU hardware on sm8150 and sm8250 SoCs.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 drivers/iommu/arm-smmu-impl.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
index c75b9d957b70..f5f6cab626be 100644
--- a/drivers/iommu/arm-smmu-impl.c
+++ b/drivers/iommu/arm-smmu-impl.c
@@ -172,7 +172,9 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
 		smmu->impl = &calxeda_impl;
 
 	if (of_device_is_compatible(np, "qcom,sdm845-smmu-500") ||
-	    of_device_is_compatible(np, "qcom,sc7180-smmu-500"))
+	    of_device_is_compatible(np, "qcom,sc7180-smmu-500") ||
+	    of_device_is_compatible(np, "qcom,sm8150-smmu-500") ||
+	    of_device_is_compatible(np, "qcom,sm8250-smmu-500"))
 		return qcom_smmu_impl_init(smmu);
 
 	return smmu;
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
