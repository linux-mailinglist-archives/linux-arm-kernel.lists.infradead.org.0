Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AD8D3801
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 05:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ej67np3yfSyEAnLF4VjDPGPhDz1dKiZC5yVDKDZTzaE=; b=kUx2yCno9FdndT5HNva3sop75U
	AS75ohZKPtDwPVHzhPI/3VomKq5RW13LDpn00RarjjavyQrF7S64B8DBbaubrp7dfG5F5PhQWQVZb
	fkXpAeR2kUP/VjbIBZa+sUdYTkZY+wZb4hY8h/qLjRzLaaOscyzUguCLJR2Tkf9saNjC/1decjU3a
	mxlQ8ZMkxItRbGZswsQP75slaHyJa4kqOGucfvIhseMGOM6Wr+jv1IuhRCuC6s4liPcfD0lPp/dNh
	F/SYTtYRRJMmuHJoIbhNaSeL9wwCS+4yd27X4wUF1Oa6IwhFiT0fvHwKT/vK7IYasscDoFmdWfU3y
	A2mx5SbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIluQ-0005ma-IL; Fri, 11 Oct 2019 03:48:06 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIlte-0005J3-8M
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 03:47:21 +0000
Received: by mail-pl1-x642.google.com with SMTP id u20so3811102plq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 20:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JdptEyYfrrVWOU3k4HBsHHiS/OxBHfbh3xSJxXoFOXg=;
 b=i5EHwYs/CszsgLgBqVaJ2rCHwBUm8/t6StaUxrR+WK1K3elXfzXSp5NiLQkk3nUJp/
 4oMKE4l/wd4Nc3pLvXzaf6wJQoCyOobPN/HfU1guzjPZsW3VmHpBnGHdb3CM2jYB2Wu0
 XQDL7Lu9aLPIZqrBHm/u23rG9xXJtCQzGmhsg42twwkb0pkN9CXo+2LFSMMXSPGda6kS
 hhgFZ40mIpkqVTb5PBrsRxakHxQ1b9OA1qzxchzU8er9OrhxIRLNWBKcfO3qMhR/g2ZD
 F00814nx3FnVZLdEPKScSSOtHsocSROA6S/JeStl8/3KoPS2Jtyw4X9/np2wn6o1A/2u
 7cSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JdptEyYfrrVWOU3k4HBsHHiS/OxBHfbh3xSJxXoFOXg=;
 b=deiVRmTcmxMKH2lrYuaAZ7MpBzG6ittxwMkM8eq9AmEMiXgGVXAf69z4JMAw+jOPme
 4p8wBh51s+//FNhGtf0Leo3S8W51WQxftFetdXG1aT9yfu66Yuj5FzSKZIv/07lMl2OH
 aTLVUVhlKD6JAqf/QspeeqDQM/3nDppPMTi/IEIbRgKrCGesQWMQktmZFvYTyRG/7AJ0
 xgODZ0EgHJZsfCOLoqd8/WQrtGrqmyFIbUhXpriRuJ/KfTxDvWsLX0olGD9NIAhkE0cD
 A1V9pNac1Oz+1u24ZavBo16d5XpwO0bXevToQl/QDsU3seR9j987ohO9S4eA0oaDGQT4
 LLNA==
X-Gm-Message-State: APjAAAUZw9b9f5022heRWPH3nfX9WX2WjfCB+eFkjNibCoh9cWqPhuU1
 zTTMEjnpScMKcSYKkGsO4as=
X-Google-Smtp-Source: APXvYqwN0/l64V8pBpT3gRAc/OW6eNRZqdFuJPu6MfrrbbPyWTZph1XrL7MD9euTm+lbzWqRsdkvvA==
X-Received: by 2002:a17:902:fe86:: with SMTP id
 x6mr13108364plm.320.1570765636491; 
 Thu, 10 Oct 2019 20:47:16 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id u3sm7493267pfn.134.2019.10.10.20.47.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 20:47:15 -0700 (PDT)
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: joro@8bytes.org, robh+dt@kernel.org, mark.rutland@arm.com, will@kernel.org,
 robin.murphy@arm.com
Subject: [PATCH 2/2] iommu/arm-smmu: Read optional "input-address-size"
 property
Date: Thu, 10 Oct 2019 20:46:09 -0700
Message-Id: <20191011034609.13319-3-nicoleotsuka@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011034609.13319-1-nicoleotsuka@gmail.com>
References: <20191011034609.13319-1-nicoleotsuka@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_204718_290862_7A5D6004 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some SMMU instances may not connect all input address lines physically
but drive some upper address bits to logical zero, depending on their
SoC designs. Some of them even connect only 39 bits that is not in the
list of IAS/OAS from SMMU internal IDR registers.

After the "input-address-size" property is added to DT bindings, this
patch reads and applies to va_size as an input virtual address width.

Signed-off-by: Nicolin Chen <nicoleotsuka@gmail.com>
---
 drivers/iommu/arm-smmu.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index b18aac4c105e..b80a869de45b 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1805,12 +1805,14 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 			 "failed to set DMA mask for table walker\n");
 
 	if (smmu->version < ARM_SMMU_V2) {
-		smmu->va_size = smmu->ipa_size;
+		if (!smmu->va_size)
+			smmu->va_size = smmu->ipa_size;
 		if (smmu->version == ARM_SMMU_V1_64K)
 			smmu->features |= ARM_SMMU_FEAT_FMT_AARCH64_64K;
 	} else {
 		size = FIELD_GET(ID2_UBS, id);
-		smmu->va_size = arm_smmu_id_size_to_bits(size);
+		if (!smmu->va_size)
+			smmu->va_size = arm_smmu_id_size_to_bits(size);
 		if (id & ID2_PTFS_4K)
 			smmu->features |= ARM_SMMU_FEAT_FMT_AARCH64_4K;
 		if (id & ID2_PTFS_16K)
@@ -1950,6 +1952,7 @@ static int arm_smmu_device_dt_probe(struct platform_device *pdev,
 	const struct arm_smmu_match_data *data;
 	struct device *dev = &pdev->dev;
 	bool legacy_binding;
+	u32 va_size;
 
 	if (of_property_read_u32(dev->of_node, "#global-interrupts",
 				 &smmu->num_global_irqs)) {
@@ -1976,6 +1979,9 @@ static int arm_smmu_device_dt_probe(struct platform_device *pdev,
 	if (of_dma_is_coherent(dev->of_node))
 		smmu->features |= ARM_SMMU_FEAT_COHERENT_WALK;
 
+	if (!of_property_read_u32(dev->of_node, "input-address-size", &va_size))
+		smmu->va_size = va_size;
+
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
