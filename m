Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F3313C216
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:57:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1yp+1XtfIx0+ei4m6lHC7lO1f1EGiHx8Dl1sHJpLFI=; b=fCSfXnb+htMe0k
	z/mU6BXhTgboPW54eDvhifwv0r3DsK00LAnvPj5ByCin/liU+d8L5EcD0bkSUDx6qK3rAer8BIQl8
	GUriqPbs3n6Jm3Fr4cLatVFdxz1QA9KroOLTjzWtunP05/mWMhypvkGx+tGm0bzgFzfaoA6Abn9AY
	KOO81xhbSvXrbNIoLHtrL/Rff+Q/xgwdXP+REra+hXDw0TKvO9spKMctqvIQwqtAkYJ+umtSGZVxt
	Pr1n+C/nkiNfeZuUoJI/l41JtLvcpiIVULkm/d4GODJycPz8tH6I/tVmvmHpeWIDhpM933t2e7jXF
	fyznFTQGa1UCqGsSvYjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iriEE-0000yk-31; Wed, 15 Jan 2020 12:56:58 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iriB2-0005fA-08
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:53:43 +0000
Received: by mail-wm1-x342.google.com with SMTP id p9so17780012wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 04:53:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ovlZEJ3MFxMFIeaWjeBxqpybO8xAZBGhmofvDyv09KM=;
 b=aMEN5de52sUoibJjcgOb+6eTx1h6fTv2UQ6WOa5q3Q6KiJA4GEB9NVcvkjp5XTDpw0
 jyrlMPEEviSdgsEwPxnn9Qz4ztTIX7m8d3wu8FrFmUwKiXL+nOjMqWUR5vGtLernKgVK
 Q4R3z+oQjYLX0uQdMrVVaHa5dbQc3Tw0ln21IYTTubylIuPt2K9feenebb5Pze+7i3iH
 72VB4jpBo6CPlpj9BX+uLH0Gq/t5k7z+IV0RzkE2TBQ3QZHc/sNDML1H9dU55iSMdK92
 vuUczV5TEeoRgiZ9py79YvE0UIEZiXLTzJDRV+IIxn6fWVQr8YnXBCTycNdwBzUwU5eM
 OJwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ovlZEJ3MFxMFIeaWjeBxqpybO8xAZBGhmofvDyv09KM=;
 b=oXYlMHXkQhMGOcbJ8/gGP4wL/B8mF1S3oiw9ONUTJUlemtuuIIF+gyDFsN/eBhR095
 u7pwqV7fqtDtvUq1BDSXW6n1N8kMXMFAtZ0KyACMa1oPB0tsllujaXUei4tW0qq8ubXi
 6GsLYaFV7ZPp9wJJzQLin3st7HN3Si71ITazP5+UQvehIHwE0wbWAm+FqgX9zCJAAIrR
 ugzR6F4cbAa2N+OswS1G7DSk8/CuK06w/1gn1VBZ+6KPy8oQcJ/VvRrrDST0h6S54NGe
 pqk8Q11TexQ5HhP2d3G2IdmRgc/HSeY/bRYQ8MZpWvVeAeTmckrl4EOK7JHwNmYwvC/L
 IOQw==
X-Gm-Message-State: APjAAAWGzt+n8O7mQgL++Vl3mUP3+hEDfGGjVpa3d6C64t+PkBniDvIs
 YoN0wI7ZrVkwvTPtWNOy21sdCw==
X-Google-Smtp-Source: APXvYqwvjgPB35BKDw3598B+f3tN02Oa/sBncf4ulCANAV1l9+FYbfBBXQvNAcGYK7F4agxMEERIfA==
X-Received: by 2002:a7b:c4c5:: with SMTP id g5mr33782202wmk.85.1579092817895; 
 Wed, 15 Jan 2020 04:53:37 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:2266:ba60:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id d12sm25196171wrp.62.2020.01.15.04.53.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 04:53:37 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, will@kernel.org
Subject: [PATCH v5 09/13] iommu/arm-smmu-v3: Prepare for handling
 arm_smmu_write_ctx_desc() failure
Date: Wed, 15 Jan 2020 13:52:35 +0100
Message-Id: <20200115125239.136759-10-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115125239.136759-1-jean-philippe@linaro.org>
References: <20200115125239.136759-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_045340_095983_C06121CC 
X-CRM114-Status: GOOD (  11.71  )
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, joro@8bytes.org,
 guohanjun@huawei.com, rjw@rjwysocki.net, eric.auger@redhat.com,
 robh+dt@kernel.org, jonathan.cameron@huawei.com, sudeep.holla@arm.com,
 bhelgaas@google.com, zhangfei.gao@linaro.org, robin.murphy@arm.com,
 lenb@kernel.org
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
index 7b7dea596f60..c35863073ab3 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2299,8 +2299,15 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
 	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
 	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair;
+
+	ret = arm_smmu_write_ctx_desc(smmu_domain, 0, &cfg->cd);
+	if (ret)
+		goto out_free_cd_tables;
+
 	return 0;
 
+out_free_cd_tables:
+	arm_smmu_free_cd_tables(smmu_domain);
 out_free_asid:
 	arm_smmu_bitmap_free(smmu->asid_map, asid);
 	return ret;
@@ -2567,10 +2574,6 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
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
