Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A621EEE78
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 01:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n9q23owl7IcyJvhetTFwICU/7uFL4/mnbZda1BFnMBc=; b=JSaVQQ4eTWuz60
	S3Zh/7Qu9gXjv5QE3cPzukT/wHV/4tG3cbNdzdiA1svT8/rkA3AOF2mXY1u737UITCj172eSwbK7s
	APZT4dx9UPDmVAS8MOHUoCuyRavIPFF0c5DI5vjFBg1f27+HqrjwGxgEWyDkpzj2/G5f5BmR5mWk1
	XeL6rGPmRGfzeYAGfqcFoJh2qgkPh1YB8DaT924zVev6A2w2f36U6rrUARhF+WgwH1kGLbqmf3XKf
	K5B7qISSTq/VQmO8EhkZY8wMDbk7YSL2WZmc1dHGiAYdfqLWUWEuWul1Q9FNKscJ+xKaysaDsWrh8
	4pdaUjm4ZDwm3+/9J8VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgzYR-0005nA-4p; Thu, 04 Jun 2020 23:45:47 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgzX4-0002RS-Lb
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 23:44:24 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ed986fd0000>; Thu, 04 Jun 2020 16:42:54 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 04 Jun 2020 16:44:22 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 04 Jun 2020 16:44:22 -0700
Received: from HQMAIL105.nvidia.com (172.20.187.12) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 4 Jun
 2020 23:44:13 +0000
Received: from rnnvemgw01.nvidia.com (10.128.109.123) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Thu, 4 Jun 2020 23:44:13 +0000
Received: from vdumpa-ubuntu.nvidia.com (Not Verified[172.17.173.140]) by
 rnnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5ed9874c0001>; Thu, 04 Jun 2020 16:44:13 -0700
From: Krishna Reddy <vdumpa@nvidia.com>
To: 
Subject: [PATCH v6 4/4] iommu/arm-smmu-nvidia: fix the warning reported by
 kbuild test robot
Date: Thu, 4 Jun 2020 16:44:14 -0700
Message-ID: <20200604234414.21912-5-vdumpa@nvidia.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604234414.21912-1-vdumpa@nvidia.com>
References: <20200604234414.21912-1-vdumpa@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1591314174; bh=2ofUV6N4w8MVqMXhL27SWFuQR3WHDuZrVd5MUpa+Yso=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:MIME-Version:X-NVConfidentiality:
 Content-Transfer-Encoding:Content-Type;
 b=I8hehESMwvZR2f+fZE445YwxDRNXgLctdd8NHKLZ2A7c3EDVSuTTi0FTk/Z5qdyHU
 CG1nkGlM4Yacr5TIDNltsyxdaPp0IrJRSa+FN/AUX9ksGCDnIlFQ9+tro99Dwmk+ZI
 5IdPA6SDWXL4cAuDDLvfs7HfmDmiPlNAUextWo0FDNUW5VdI/YPj2TQeSqWM3oLwVn
 aoWOupD2+Yn/nLhUYCoOQcvXqJ47LWYSM+Ht8N6CLn/ebhiF+sFGhZgo7XRAhJ18cf
 IbJuH/61fiMVLueQm1hJxiuvdAmeIjTbIvtM9+M4RnGPR0SMbVr34ce8Flq+9sC76P
 TRcVafU8b7/HA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_164422_719031_37690784 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: snikam@nvidia.com, mperttunen@nvidia.com, kbuild test robot <lkp@intel.com>,
 bhuntsman@nvidia.com, will@kernel.org, joro@8bytes.org,
 linux-kernel@vger.kernel.org, praithatha@nvidia.com, talho@nvidia.com,
 iommu@lists.linux-foundation.org, nicolinc@nvidia.com,
 linux-tegra@vger.kernel.org, yhsu@nvidia.com, treding@nvidia.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org, bbiswas@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>> drivers/iommu/arm-smmu-nvidia.c:151:33: sparse: sparse: cast removes
>> address space '<asn:2>' of expression

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Krishna Reddy <vdumpa@nvidia.com>
---
 drivers/iommu/arm-smmu-nvidia.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-nvidia.c b/drivers/iommu/arm-smmu-nvidia.c
index 5999b6a770992..6348d8dc17fc2 100644
--- a/drivers/iommu/arm-smmu-nvidia.c
+++ b/drivers/iommu/arm-smmu-nvidia.c
@@ -248,7 +248,7 @@ struct arm_smmu_device *nvidia_smmu_impl_init(struct arm_smmu_device *smmu)
 			break;
 		nsmmu->bases[i] = devm_ioremap_resource(dev, res);
 		if (IS_ERR(nsmmu->bases[i]))
-			return (struct arm_smmu_device *)nsmmu->bases[i];
+			return ERR_CAST(nsmmu->bases[i]);
 		nsmmu->num_inst++;
 	}
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
