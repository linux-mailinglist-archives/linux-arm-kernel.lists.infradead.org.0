Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2651126735
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 17:34:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NUNV2aWAzvRQZEawDH0Co9dA4/ushTlydqsEcash4MQ=; b=t2yiAxv5FWu70P
	EczhjLGZ7ZKv+s2o/pKdfcUvTWRKnYsNtCHwoOfGU/7d12EMzt6HVHtf0cAwnMMxL//4uphefgjTX
	CWLEsXhUWfi4kKJK/q6NyGvDfNHcTTNQhtLVFW5un9E4nKmnUsR53wBgw1nJyEURgl+YkhP3RDm4K
	aPZuJMYZwENtuZHrxwVWV9IwCNY2SROYH0GgV7gNDyDnFaWsRjfc9WsCoJxVYI+pSVXlOPHzvuN/8
	jA/fMUvW++/5PRpzHguISpimTifRy0wGuUcOArpJ6b8Wl46tW0+3+uCZiBPnchM/O1FwgOtJiYREC
	pH1AkzPQmOxNAvmaBxJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihyko-0002EM-R6; Thu, 19 Dec 2019 16:34:22 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihyi4-00006a-CC
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 16:31:34 +0000
Received: by mail-wr1-x443.google.com with SMTP id y11so6620065wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 08:31:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0nQT4ayYi2icUCghAPJFv/Sszvlp8khOsvgAay7NA80=;
 b=npHKtHQyMJP1HB7cti1f6qmoeI+DJKFn7XvDJJvdFOvDZnGuyq626gmPPg1VW/g+vf
 NqHOB4YW3LtpAFxkZLtWK59MIggQeBHMnf2FU4aoFn2biHVyVWj0iduHkMNtN+Cw2QKl
 3GzgzVR/AU8hNb4bXoVdj3ptMWKCW30ACKJ3zUu58boNWddLRmDvOzJlIlY5xbZoskN5
 NreU0QK4KXWGIqcGeZD3D1pGnvnWQRzTZfOi+0GHu41hGDI1yGc6L4u2Cpc68atX6ZYW
 BASd0KfcX6CjN1z5HsyiO9BpOuElbJpjkF8aVQmcH6L1OGUKS7nE3VlxwSQerqKeYRZZ
 jh5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0nQT4ayYi2icUCghAPJFv/Sszvlp8khOsvgAay7NA80=;
 b=mH3+creF3yxdKxjpr8M4QXMSSjSZ3Q8VXRtA/EKquzlxCWb5yPWUTwhul7jooKjtZs
 PilWh4/FDqdT50gNYyhWTgrqV4EM/L//us+y8t/hZ0chHCux5f0MNmgZqtOCk+0O9E5f
 n+4Xfwo55V/rBxTWvzEUCKyTdmL4UiMami7rSCu2tJxblktEsPoBCe1lYCrn6RLVU+7p
 KIw832lfoILZvnCH0me09SXqRPQ6METwkLbbP9uQBKksgvHGgDor/SFDb6WEoWICwpWO
 FOYRnB1vKdZaNdN2PCM/WUy+NJAAzpW5Kt+ie187oLFaMA6wkYcb7CT7Wvv0k4pUA68A
 SQ3A==
X-Gm-Message-State: APjAAAWYg/Ng43CcjzeCUFjtNVhiLFSabPVN4hR///LCyF9KoJ43WYz7
 snx/kGMs30i2nRQyeufTx3FGVA==
X-Google-Smtp-Source: APXvYqySYIruAf+8UBV8yIOQEKLEyMW/IQr33V3GJnSu1IpDHvzkWr5tRTKgSPhwJDgoXMZbxqfv3Q==
X-Received: by 2002:a5d:53d1:: with SMTP id a17mr10010531wrw.327.1576773090913; 
 Thu, 19 Dec 2019 08:31:30 -0800 (PST)
Received: from localhost.localdomain (adsl-84-227-176-239.adslplus.ch.
 [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id u22sm7092068wru.30.2019.12.19.08.31.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 08:31:30 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v4 09/13] iommu/arm-smmu-v3: Prepare for handling
 arm_smmu_write_ctx_desc() failure
Date: Thu, 19 Dec 2019 17:30:29 +0100
Message-Id: <20191219163033.2608177-10-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219163033.2608177-1-jean-philippe@linaro.org>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_083132_439803_86230BDC 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net,
 eric.auger@redhat.com, robh+dt@kernel.org, jonathan.cameron@huawei.com,
 sudeep.holla@arm.com, bhelgaas@google.com, zhangfei.gao@linaro.org,
 will@kernel.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Second-level context descriptor tables will be allocated lazily in
arm_smmu_write_ctx_desc(). Help with handling allocation failure by
moving the CD write into arm_smmu_domain_finalise_s1().

Reviewed-by: Eric Auger <eric.auger@redhat.com>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index e147087198ef..b825a5639afc 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2301,8 +2301,15 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
 	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
 	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair;
+
+	ret = arm_smmu_write_ctx_desc(smmu_domain, 0, &cfg->cd);
+	if (ret)
+		goto out_free_tables;
+
 	return 0;
 
+out_free_tables:
+	arm_smmu_free_cd_tables(smmu_domain);
 out_free_asid:
 	arm_smmu_bitmap_free(smmu->asid_map, asid);
 	return ret;
@@ -2569,10 +2576,6 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 	if (smmu_domain->stage != ARM_SMMU_DOMAIN_BYPASS)
 		master->ats_enabled = arm_smmu_ats_supported(master);
 
-	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1)
-		arm_smmu_write_ctx_desc(smmu_domain, 0,
-					&smmu_domain->s1_cfg.cd);
-
 	arm_smmu_install_ste_for_dev(master);
 
 	spin_lock_irqsave(&smmu_domain->devices_lock, flags);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
