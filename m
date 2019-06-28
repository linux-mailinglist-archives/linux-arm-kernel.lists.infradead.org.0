Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65094596F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 11:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YmuLcjosdCa4829ApJ7qLNh/+2jI4YYz6oxVLcE6cPo=; b=F74tplGKq6et/o
	52a//FRFLa59of3rZy+LNozTG2+jYUY2X/1NN51aeczJ+yRgZorXvxavsVNTAzzb66LHCzU4HqlnV
	9JiA8UXNzdrmqSzMrdpSf5lVwQGoqgI/fXL1rXZ7c7cVwQJuaGL/uE1qeYMGzEMK0YIxXIHtwpMNc
	wudajORiEx6mJoQar9uc/0/hO+5LN57ytUhBzFGzGNGae/weMx60aRj3yeAH0wRaY6pQFjUyUpVJN
	kFSWpNP+NP9XtnoTN+tL4CnuKJwZTI+a2TkyqIRg+5TUbAzCk7FX7KsfhhTCF/fQsD+fQKIM88jyE
	innj4NN8t2DAvOfUPMtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgmuH-00014Y-Sm; Fri, 28 Jun 2019 09:10:57 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgmtx-00012t-3z
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 09:10:38 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5S9APlg043287;
 Fri, 28 Jun 2019 04:10:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561713025;
 bh=PyzXqhCWhSAbLB5+/1FsHp/HhykuAK3VDCsltKyHkjM=;
 h=From:To:CC:Subject:Date;
 b=HASIAZx39UXcn/CCT75M4FcplifCc6kQNhPFDRY72paGex9EZw+fcaRTcMHFW5ws6
 0MfzJ6lWWK6kddiR6GZs9+w9C2isfJVSxbwIbFAoatd+5KdJYW+WMAe34zzyaXDr4x
 HONLRwllUmzL73C9dL73ZJe8tj7TeeIYvghx8w8U=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5S9APnv115253
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 28 Jun 2019 04:10:25 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 28
 Jun 2019 04:10:25 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 28 Jun 2019 04:10:25 -0500
Received: from pratyush-laptop.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5S9ALY9077598;
 Fri, 28 Jun 2019 04:10:22 -0500
From: Pratyush Yadav <p-yadav1@ti.com>
To: <will@kernel.org>, <robin.murphy@arm.com>, <joro@8bytes.org>
Subject: [PATCH] iommu/arm-smmu-v3: Fix incorrect fields being passed to
 prefetch command
Date: Fri, 28 Jun 2019 14:39:53 +0530
Message-ID: <20190628090953.23606-1-p-yadav1@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_021037_244250_7F22828B 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lokeshvutla@ti.com, nsekhar@ti.com, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Pratyush Yadav <p-yadav1@ti.com>,
 wmills@ti.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the SMMUv3 spec [0] section 4.2.1, command 0x1
(CMD_PREFETCH_CONFIG) does not take address and size as parameters. It
only takes  StreamID, SSec, SubstreamID, and SSV. Address and Size are
parameters for command 0x2 (CMD_PREFETCH_ADDR).

Tested on kernel 4.19 on TI J721E SOC.

[0] https://static.docs.arm.com/ihi0070/a/IHI_0070A_SMMUv3.pdf

Signed-off-by: Pratyush Yadav <p-yadav1@ti.com>
---
 drivers/iommu/arm-smmu-v3.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 4d5a694f02c2..2d4dfd909436 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -413,6 +413,7 @@ struct arm_smmu_cmdq_ent {
 	/* Command-specific fields */
 	union {
 		#define CMDQ_OP_PREFETCH_CFG	0x1
+		#define CMDQ_OP_PREFETCH_ADDR	0x2
 		struct {
 			u32			sid;
 			u8			size;
@@ -805,10 +806,12 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
 	case CMDQ_OP_TLBI_EL2_ALL:
 	case CMDQ_OP_TLBI_NSNH_ALL:
 		break;
-	case CMDQ_OP_PREFETCH_CFG:
-		cmd[0] |= FIELD_PREP(CMDQ_PREFETCH_0_SID, ent->prefetch.sid);
+	case CMDQ_OP_PREFETCH_ADDR:
 		cmd[1] |= FIELD_PREP(CMDQ_PREFETCH_1_SIZE, ent->prefetch.size);
 		cmd[1] |= ent->prefetch.addr & CMDQ_PREFETCH_1_ADDR_MASK;
+		/* Fallthrough */
+	case CMDQ_OP_PREFETCH_CFG:
+		cmd[0] |= FIELD_PREP(CMDQ_PREFETCH_0_SID, ent->prefetch.sid);
 		break;
 	case CMDQ_OP_CFGI_STE:
 		cmd[0] |= FIELD_PREP(CMDQ_CFGI_0_SID, ent->cfgi.sid);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
