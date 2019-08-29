Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 389A6A2A0E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:46:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5TT3z90zzVlVFdqLqgWnZnuBw+BV0ZCcsVhh+iUURao=; b=ShXgHmhf5MzSGH
	pNll64z+lEEFCuTh2LOL5WXlEjckwhRfs+5k11KasRpBUBnHvs2nsOZxjErgcr2ugLUmHbCGuAwOK
	+8aDIOCwwr0a+bKFnUFrj1FjpUS9CQboAxKefqINKbBRCcCttCponA62pAeGeqXrNLPWKfyIPVegQ
	XpRORgPLxT3DZZAkXrvLEIg/u3D5AxGw+gZeJaZe0s7WwCR91/ICy89hZlrI1u6On2rDHr8aYBt0p
	uA8lqNQksZs+MmKUONoDXsZTSalPjiGQ7DwVLaMU42L/sBkskhrcBIqeki0BPx53JC+qmJFqXR0Jm
	MWF0MGQHy7hFLOaI6FjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3TB6-0000YK-Nl; Thu, 29 Aug 2019 22:46:04 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3TAm-0000Of-Ki
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:45:46 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d6855970000>; Thu, 29 Aug 2019 15:45:43 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 29 Aug 2019 15:45:42 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 29 Aug 2019 15:45:42 -0700
Received: from HQMAIL110.nvidia.com (172.18.146.15) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 29 Aug
 2019 22:45:42 +0000
Received: from HQMAIL101.nvidia.com (172.20.187.10) by hqmail110.nvidia.com
 (172.18.146.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 29 Aug
 2019 22:45:42 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Thu, 29 Aug 2019 22:45:42 +0000
Received: from vdumpa-ubuntu.nvidia.com (Not Verified[172.17.173.140]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d6855960003>; Thu, 29 Aug 2019 15:45:42 -0700
From: Krishna Reddy <vdumpa@nvidia.com>
To: 
Subject: [PATCH 2/7] dt-bindings: arm-smmu: Add binding for nvidia,smmu-v2
Date: Thu, 29 Aug 2019 15:47:02 -0700
Message-ID: <1567118827-26358-3-git-send-email-vdumpa@nvidia.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567118743; bh=Z+8xf1MWME35eRIyHuj/Q0XxVKgnVmKXg4fYXe2zY4A=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=sFRAwo2eNHp8AFaRvCDp3B1gmqL5DauwFGVnEw7OoOiUgEBpR0zK6OO6r7G6+8gzZ
 NMzIsSVhu4OJvpsx+KNdacvkk4FMnUaNSAtsMecoFKKvmN5XYjXML9GKKAnuyq5xSO
 3Njk4gSi6G6hI4X/OhdLyyz1kktg6zPVcpemfa721saCkNh37XKOiLLwQ5RPH3Y90v
 WD3VXxmQdVMplH4rJwhUxuQ+XJy5olfFQEe9BpsQ6FJ/TGXcaVaPb81nSI7Dgr/zbq
 F4bg9+GXpRL9/5zJuuCxwwSrwrBX85p/Pf08cV4kfV022ztMohOt5pFt6p36lCX99x
 FIo5TKWqEbkdw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_154544_722413_7ED0709E 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: snikam@nvidia.com, thomasz@nvidia.com, jtukkinen@nvidia.com,
 mperttunen@nvidia.com, praithatha@nvidia.com, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, talho@nvidia.com, olof@lixom.net,
 yhsu@nvidia.com, linux-tegra@vger.kernel.org, treding@nvidia.com,
 avanbrunt@nvidia.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add binding doc for Nvidia's smmu-v2 implementation.

Signed-off-by: Krishna Reddy <vdumpa@nvidia.com>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.txt b/Documentation/devicetree/bindings/iommu/arm,smmu.txt
index 3133f3b..0de3759 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.txt
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.txt
@@ -17,6 +17,7 @@ conditions.
                         "arm,mmu-401"
                         "arm,mmu-500"
                         "cavium,smmu-v2"
+                        "nidia,smmu-v2"
                         "qcom,smmu-v2"
 
                   depending on the particular implementation and/or the
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
