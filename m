Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1921173D0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:14:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8k6pqdL1/iIbHiaOHmbsg3gnU0VcMzHFgFEKj6tg6g=; b=ahsaaCOOySq5hL
	kVnk8Z1G34/qxA+OBq8wCnWrDTWVgNgGO1hJQ54sIk+VduxRJP/qa/lJNcCRY6oYdLARuS2E+cq9K
	q+S+Mih2bw84BO2iKIpfUCh7802NHO7rwGWg2vBvMpQ1hOWFoMGUCijqYKVJNRvZ3wJYFlsKbdbNb
	acPACHF3yANffgyKdAojbf3i9Wlz6G+dJirbwdF13vmz4k6X7hoUgas1Vv0S4pVMHMXW0PHEUwcXQ
	xKJ8mu2CtD+YUq6NTlHHs+a50ky9hZFRXIGCHNIVW5BIUfIV5kckgS05UEi/jp6yTC1A88zHd38NC
	x9pDKCj9i13cKIuO0fvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNY2-0006nz-3f; Mon, 09 Dec 2019 18:14:18 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNVv-0004l5-Hl
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:12:09 +0000
Received: by mail-wm1-x344.google.com with SMTP id p17so300345wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 10:12:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xn8FsjkMGRUL2lMLPw8XGFWLAlx3AFwuaWxjs2kDLIc=;
 b=anRgbzZW5eiaVyKyK67CNe9yhPSWdxYWkazhUi0/MhlRnM/XyU4K5WfuI0wsdNBpId
 wVSrIhkwmOAUYrNx04LRBaHZXcyx9x6tcSlwG84LPQoIO5DwXUyczD9QuwK//eJS2DmP
 QawcU+YvRsMlbqkwJJPupgry3SWX2VYufGNDpYwcZ9ac29gEPrCyP2aSx1h2ubrQABw/
 +hxiVhyR0+AF3DJOej7effKQl1/zMbYhcmwVVsaRJVgyLOMBDGqpC31WZrQn4k6CZ9yd
 hzYnX8yIIZmAzi2hVYp70apw0Oh4aCDQihbLCZwfllVVfaK0m+gWTtN8EPC6YEYwMBwB
 b7nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xn8FsjkMGRUL2lMLPw8XGFWLAlx3AFwuaWxjs2kDLIc=;
 b=LnUcZG5nWoDTybaw92XiPlw6VdPnDVPaHtGMWfQg6a1Sal56QLTrisFStOiwkpk/PN
 PR4rW+l6558PpyocZpiXU5OikAwUzjihw6aSU6oPZFRBAgg42j+Z9G8LGuCVKjBbECKe
 G0uyRgjRDPkM/MJXtotEeoSTxefCA+fLznBunRcQUqKXwyLsbpUOAMMTh5hGo8MHq+bS
 0f/oJlVp9QZIh8MpPItEUaVHAkiy+g6aoA2+ozQUj+Yyv5PhkkqmAnoJ2k35gZsczNHV
 jeNOChfTSvquTmL1NZMgwp1rTTL1GJXp5+g7BRWfQWnfFDVGcX2RFaz0XykieUBNxLjN
 v0BQ==
X-Gm-Message-State: APjAAAV3T+swGaEG61UwiWyaBVMbsXnsNfBSjRHQ9ll8QYBod80oekhN
 v5biZAP4Z45hfGNh/nrqw8S0lQ==
X-Google-Smtp-Source: APXvYqzD7Zae5R710LjfpSHNK7h76GaBcjbIRxZjwSrVgHzJcpI2I4M1YKhu9AfT3gIv6BnKhaBP5Q==
X-Received: by 2002:a7b:cd8a:: with SMTP id y10mr349190wmj.136.1575915125816; 
 Mon, 09 Dec 2019 10:12:05 -0800 (PST)
Received: from localhost.localdomain (adsl-62-167-101-88.adslplus.ch.
 [62.167.101.88])
 by smtp.gmail.com with ESMTPSA id h2sm309838wrv.66.2019.12.09.10.12.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 10:12:05 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v3 09/13] iommu/arm-smmu-v3: Handle failure of
 arm_smmu_write_ctx_desc()
Date: Mon,  9 Dec 2019 19:05:10 +0100
Message-Id: <20191209180514.272727-10-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209180514.272727-1-jean-philippe@linaro.org>
References: <20191209180514.272727-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_101207_729894_F8668366 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index f260abadde6d..fc5119f34187 100644
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
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
