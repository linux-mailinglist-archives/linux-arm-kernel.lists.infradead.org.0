Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1886F4FA7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 16:29:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3yM1cttzpTvMVZux1chf7Z8hqyPUPeqRHJoFgI/t7s=; b=S1OJi7CwRvAha1
	xH/AzWA514iWY64I40qlOAO1PeOvxFItOIEQQxZtAKX/57j24DRhzSf8hm6+jfRTh82emN4WtxIqO
	OOoMzz0QLuzPnhYEeIZxh1clA04ka0gGOPqYNTVlDjFTvHoD+JA6ZN4sF9qZ1suDS+ymiQ+cPMEQn
	x88/+ps66lSjOe2tkkKTQd/h8lOvqdS11/qALjgd4lr/AVVJoBLlRNprP8N+A/LeVyNtlSz0JZvlm
	XzTehF9X73QbT2eOoHX8NPR9VsD+A8U92gEWJDUC0+rDqxRCiLRbatmT5XO/lXXaDflwjr8Fy5YkO
	SncE9X4Uj14Du6vM4aXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6Bw-0006y1-73; Fri, 08 Nov 2019 15:28:52 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT6A5-00053X-4e
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 15:26:58 +0000
Received: by mail-wm1-x341.google.com with SMTP id c22so6645915wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 07:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XcF4FI/xEJT2ddBZxLwsH4kwVBtXhLcA/n4y2uy3gfU=;
 b=BDQ7ZeC9LB/2Lh6DQj16J8t0f6umU/jbny0nZwuikklVbgDi7dCWTbWMm0aRjLi005
 V9skokHIp4EKef66gOqo4I/nTxWGvc+9S6EKjBlJxyLdKbQSqZqWvqeY+Z77HTqkfX16
 4JkmEuH7gjM/RdLJO9BN/Vyp34vnY9Hjxh0xTuSOc2pbbXcqJvbeKLT8KPs3B6zuGeSk
 oQeEJyv8qFljGOOQ55RrjTk0fCjjESA+CfjKaY7SQ8SZ3HRmaDrfbgz8Gb5nIqgT00q+
 AA1hFm+CnyswDokicO8N1z95D2kGm5pzZtaKebbBgrFl7rKhfqfepJE34J7LhtfZSbFY
 G1Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XcF4FI/xEJT2ddBZxLwsH4kwVBtXhLcA/n4y2uy3gfU=;
 b=LkBulNKCgSq06YEjRyIy8qkFMNdewnJ3pKStdYx5OBE0GRIeD66yg3eHtfT49A+my/
 f/ut+RhpNieeJIYteGloOrgWPGjzy7kKoRXiiDXsTAiDet9g+ibTuVyaASJs7jfAX6zR
 BSsgtLKkCzj2vHNIHdQGbjaKjVcKDnaOcR5RVgnwaKCBMwl/XILGZAiv/bpg7Lfb6iCi
 1E6vmo9m3pPb/RFaEgs3859kYZY4oHZiyGJvz6kCA6QGvWWi9AcEW/X48sDvi0ttfHrF
 bxY+DcDShg5rwy+wn/Gv1JABFZUf1DpqNNvrKBtaxFAycJH3Eo/zq/rYAzsD1Vc9h1rZ
 NUfw==
X-Gm-Message-State: APjAAAXzHLcRPv5aH1K46WTDRIXoUgY6eNtBvBdHXAlz/rNhrEJlFyhb
 DfGGd8sndiq5zESrYiorEV8tfQ==
X-Google-Smtp-Source: APXvYqzgCicwCZbEjPp1W/xKMCJmORJ4A/9v+uL6ZQTDFPmzJrCekPgMET2BLRpL/BAud9T+NepWPQ==
X-Received: by 2002:a1c:9917:: with SMTP id b23mr8603435wme.42.1573226815904; 
 Fri, 08 Nov 2019 07:26:55 -0800 (PST)
Received: from localhost.localdomain ([85.195.192.192])
 by smtp.gmail.com with ESMTPSA id w18sm6579232wrp.31.2019.11.08.07.26.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 07:26:55 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 7/8] iommu/arm-smmu-v3: Improve add_device() error handling
Date: Fri,  8 Nov 2019 16:25:07 +0100
Message-Id: <20191108152508.4039168-8-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108152508.4039168-1-jean-philippe@linaro.org>
References: <20191108152508.4039168-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_072657_389675_D7CF2083 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 sudeep.holla@arm.com, zhangfei.gao@linaro.org, will@kernel.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let add_device() clean up after itself. The iommu_bus_init() function
does call remove_device() on error, but other sites (e.g. of_iommu) do
not.

Don't free level-2 stream tables because we'd have to track if we
allocated each of them or if they are used by other endpoints. It's not
worth the hassle since they are managed resources.

Reviewed-by: Eric Auger <eric.auger@redhat.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 28 +++++++++++++++++++++-------
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 82eac89ee187..88ec0bf33492 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2826,14 +2826,16 @@ static int arm_smmu_add_device(struct device *dev)
 	for (i = 0; i < master->num_sids; i++) {
 		u32 sid = master->sids[i];
 
-		if (!arm_smmu_sid_in_range(smmu, sid))
-			return -ERANGE;
+		if (!arm_smmu_sid_in_range(smmu, sid)) {
+			ret = -ERANGE;
+			goto err_free_master;
+		}
 
 		/* Ensure l2 strtab is initialised */
 		if (smmu->features & ARM_SMMU_FEAT_2_LVL_STRTAB) {
 			ret = arm_smmu_init_l2_strtab(smmu, sid);
 			if (ret)
-				return ret;
+				goto err_free_master;
 		}
 	}
 
@@ -2843,13 +2845,25 @@ static int arm_smmu_add_device(struct device *dev)
 		master->ssid_bits = min_t(u8, master->ssid_bits,
 					  CTXDESC_LINEAR_CDMAX);
 
+	ret = iommu_device_link(&smmu->iommu, dev);
+	if (ret)
+		goto err_free_master;
+
 	group = iommu_group_get_for_dev(dev);
-	if (!IS_ERR(group)) {
-		iommu_group_put(group);
-		iommu_device_link(&smmu->iommu, dev);
+	if (IS_ERR(group)) {
+		ret = PTR_ERR(group);
+		goto err_unlink;
 	}
 
-	return PTR_ERR_OR_ZERO(group);
+	iommu_group_put(group);
+	return 0;
+
+err_unlink:
+	iommu_device_unlink(&smmu->iommu, dev);
+err_free_master:
+	kfree(master);
+	fwspec->iommu_priv = NULL;
+	return ret;
 }
 
 static void arm_smmu_remove_device(struct device *dev)
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
