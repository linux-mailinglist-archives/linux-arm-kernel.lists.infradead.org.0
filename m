Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CED4D16AC85
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:00:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZ+JIyhAKm3g0yANKFpTNNE3oxOTW9iOmljIaGYDsS4=; b=CtG/nXomzUrN9B
	WbGpnWz7O/Amt2n38WkNIrPu+vHwRagoGT91Jhobs6oxcEs7cHvF191UN2uVn6jnse0op4dM+iWbx
	JIFbaSmgf1x2GdXBpZ9h9TJ59F0Oh4p7nU81zHpuFbOeVLDrwbaCY6DiBpGI/XfRX1/hCAuWGnSko
	ys8VuGKNpeoCAwJDAJ+YPMfTA//kmm+kGSFejWImWd0saiPgregi3PAv+r6QhUIm8etc0+qp/qi/C
	KkbTS4DoVZKp0qp+2OBdXuYT0/OSmTcHTvx5gJ7vs6Jq+dQGatDXQzC8IKvXsqpQ2G4KxBZojkFsb
	3QRhWWtv7+GeUAvKhVXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6H5d-0002to-3M; Mon, 24 Feb 2020 17:00:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6H4U-0002Fl-IC
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 16:59:07 +0000
Received: by mail-wr1-x444.google.com with SMTP id g4so4898531wro.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 08:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8HIxi7ZL1ytSixldA0X7x1yzZ6pxdx7GHOJTgPsbD+w=;
 b=h5rEfPIuduIQsDpoF+aKzWlaxFkIu7NDgF+GUcFIIt/VEnEoT0L5HPk9fkl7MEJle/
 Ud2/GAlx627mLkL/h0OM7o+RKQDlXhqbE11lN9bmjiCsn4DNjmUERD/jrlTqzVJWNjj4
 GKsFp79swWzlVETvQ6zeOwXBwvIXoqOkTvFEc5iELSunxPmlJa3C9IoktYgPNSri85j6
 dOsjcm5aopJ5Wg/HN4EeLpWdLgJf2/AhAp5ryL71MVMahP0aLdvn5AtDO+E46a0UO5F/
 xsZMf+Gj1g+5qy4Nt1bFFOG67DXu65lwChW+sVk7kYxBwmSFM94vz6m+bs8D32j8JX1B
 kE3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8HIxi7ZL1ytSixldA0X7x1yzZ6pxdx7GHOJTgPsbD+w=;
 b=VvYUZTjK9kCZifeWDoN0MTotqY7nrwKlPwG25nS/8gMxOBbW58KA1GMvGmTO/+emcz
 ETYqBscTPOyAMEe02TglcvEdHQfPl5R5DAyzRfdQDb2HdNGicn9Rj7qPICCd1er9+nZO
 z6cPlYpXIjYt1Ctw9/wgLq1yPtI2J7s7WSR/VUgXhjo9mkduQm1oeWoClJbWOoV4dyln
 RnffJFWPvoqPapXZ5qI8aAI4LwDixYN3vDNiWEsL23hl4JrpJVoykwPTiZCmkbyVP5fv
 pS1CWiKp7xY2oz1GVHejzUZeF+eeA9wAtvKDXOMI+ymZoGYaq1qppBWbxH2ALmPjheaO
 KBfg==
X-Gm-Message-State: APjAAAXt70dU1GfHWJL4N76F0/Y5liGaRiyowhyIeVdWlJyFotQeA1x0
 M8ih8lMHlh5KiSNAVtnyZPPu5A==
X-Google-Smtp-Source: APXvYqzKuk1DCPA9bZvrQ+EiIsobd8Fn/PAZ2IzLOJ9Fytea0eB2ueRowKL1GRPNmrrjY6GtmuesjA==
X-Received: by 2002:adf:e6d2:: with SMTP id y18mr14316725wrm.270.1582563545042; 
 Mon, 24 Feb 2020 08:59:05 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id b10sm19473978wrt.90.2020.02.24.08.59.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 08:59:04 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, will@kernel.org, bhelgaas@google.com
Subject: [PATCH v2 3/6] iommu/arm-smmu-v3: Write level-1 descriptors atomically
Date: Mon, 24 Feb 2020 17:58:43 +0100
Message-Id: <20200224165846.345993-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224165846.345993-1-jean-philippe@linaro.org>
References: <20200224165846.345993-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_085906_598620_2BEA2B5C 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: zhangfei.gao@linaro.org, joro@8bytes.org, robin.murphy@arm.com,
 robh@kernel.org, jonathan.cameron@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use WRITE_ONCE() to make sure that the SMMU doesn't read incomplete
stream table descriptors. Refer to the comment about 64-bit accesses,
and add the comment to the equivalent context descriptor code.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 6b76df37025e..068a16d0eabe 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -1531,6 +1531,7 @@ static void arm_smmu_write_cd_l1_desc(__le64 *dst,
 	u64 val = (l1_desc->l2ptr_dma & CTXDESC_L1_DESC_L2PTR_MASK) |
 		  CTXDESC_L1_DESC_V;
 
+	/* See comment in arm_smmu_write_ctx_desc() */
 	WRITE_ONCE(*dst, cpu_to_le64(val));
 }
 
@@ -1726,7 +1727,8 @@ arm_smmu_write_strtab_l1_desc(__le64 *dst, struct arm_smmu_strtab_l1_desc *desc)
 	val |= FIELD_PREP(STRTAB_L1_DESC_SPAN, desc->span);
 	val |= desc->l2ptr_dma & STRTAB_L1_DESC_L2PTR_MASK;
 
-	*dst = cpu_to_le64(val);
+	/* See comment in arm_smmu_write_ctx_desc() */
+	WRITE_ONCE(*dst, cpu_to_le64(val));
 }
 
 static void arm_smmu_sync_ste_for_sid(struct arm_smmu_device *smmu, u32 sid)
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
