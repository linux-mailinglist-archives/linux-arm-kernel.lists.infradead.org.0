Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B279C137143
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:30:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QIN/bIjH1cszMMlq9lRUSWSg3Pnz+PvuCtHHm4R17dc=; b=Xm0+FWRdOApE+e
	8z1Mp58jmsz5sjQZw1RoHCCZeMK1mRlMS/DtMRMY02oMKoyOV4y2fRcSs4RQtT8LcY2o3fYVPMNwA
	W9oq3/afAPuZxzxNGHdHwZ8LnDZiCWYCn04Nh3OhZn/0dTUHvTzzQdOhjDjoVGBKwxbKadn/9wdZS
	lCVmBWRi0B+/kNcrpisAVUR9HR8yjI5WQDebpCKqA54IwMVToQbaIpC1KvPD9PxzKHs8VKgNfc/4h
	n8MNhef8y5YV/zKYXbnt8xdE7Iie4ewNJX68rDhwIEltuK7pWTHT+N1sJAUNkBjWIQvgtY0sx2ZCB
	Iy37KGozotmzEttrx84A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwEy-0002wT-Jw; Fri, 10 Jan 2020 15:30:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwDf-0001I2-Rn
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:29:05 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7398A2082E;
 Fri, 10 Jan 2020 15:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578670143;
 bh=WdNwMexkPV2ze5lGJ306FvJuZTOCE1fFYBtTnKvVsxc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kRw2ANs+mELhK95I5zvuJVCnWVpW4DkCb0IPWkWCXHF+51M3VBh/NOJeb9roRwUZF
 mwzJf7xKTpylH7PUypG0ctOSfbf0CerHi3mbzQjshQqRyDB5W///f/FE/AIgUK1rM3
 mByl6iAvb74IDF3cbFbWxsdRebMIhhal3XrVJbHs=
From: Will Deacon <will@kernel.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 4/8] iommu/io-pgtable-arm: Ensure ARM_64_LPAE_S2_TCR_RES1 is
 unsigned
Date: Fri, 10 Jan 2020 15:28:48 +0000
Message-Id: <20200110152852.24259-5-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110152852.24259-1-will@kernel.org>
References: <20200110152852.24259-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_072903_935238_E91624BC 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Will Deacon <will@kernel.org>, Jordan Crouse <jcrouse@codeaurora.org>,
 kernel-team@android.com, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARM_64_LPAE_S2_TCR_RES1 is intended to map to bit 31 of the VTCR register,
which is required to be set to 1 by the architecture. Unfortunately, we
accidentally treat this as a signed quantity which means we also set the
upper 32 bits of the VTCR to one, and they are required to be zero.

Treat ARM_64_LPAE_S2_TCR_RES1 as unsigned to avoid the unwanted
sign-extension up to 64 bits.

Cc: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
---
 drivers/iommu/io-pgtable-arm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 4b437ead2300..89216bf37282 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -101,7 +101,7 @@
 
 /* Register bits */
 #define ARM_32_LPAE_TCR_EAE		(1 << 31)
-#define ARM_64_LPAE_S2_TCR_RES1		(1 << 31)
+#define ARM_64_LPAE_S2_TCR_RES1		(1U << 31)
 
 #define ARM_LPAE_TCR_EPD1		(1 << 23)
 
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
