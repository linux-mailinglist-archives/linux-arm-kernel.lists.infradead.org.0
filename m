Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D2213C219
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:57:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XqAv5zxkGOxjPBELAMDniAZGWhM6dt00RgdP2urdc0I=; b=QeKtDxoJEPk7rA
	C6RWZdJdAFLCWbBsQW/tJeUI3xuE8dhtSnZT5G7DoeEZV6eKPJbkyC4Nj+Vt5SH8AaXz4c0/iyRNO
	XdneAMB45TlQNf2hCjZFE5G+gDHuaMQ7GvGG3yHcoUcRJhC+EjXnFIq05foTHAFvhydnbkpl8ulbx
	xms5dtq4gkz3QBEHJ+mYyVSBT2gJV4FuSnyP97jF1qqeL9YF5duYkUSpfXePrOgtiOy0zDuv3egvu
	tBN5hz+gle5lZTw3x0Usb0ryxOSruSE0+3+5V/K+E4S/rlAV7fgSpjlOhK3cGnVJz1/UaJ66dJmw1
	sOH2tXVzSkIvn2/Ym92w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iriEj-0001Qi-6E; Wed, 15 Jan 2020 12:57:29 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iriB5-0005k9-NE
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:53:45 +0000
Received: by mail-wm1-x341.google.com with SMTP id d73so17741225wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 04:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=63OK7+WV2oSpfMtMv7dHdZjSmylnl4RI0WBIjRtCjGI=;
 b=rcRSOzLbYMD9O+ISAliDx8MfCABkYI5R5TCmbME5A+HMyM0rj9pis2bt5k2K31Ush7
 XTRWm+dGRYhisp4xEjHWBRvFocNJu2ERqbdgcL9Rvz+8hIXGrjQMHPwqrEd7BOsWRCfC
 YLHxO7YHfZs/g0ogm/bk3CFCwm6vV2ACaeGUst6R0+FEeGaYnJ7e5fAqOa0T6GfnVINr
 A3nev+evbG74sdaffLcpUhvBbE+hxMO4/bKLh6V2wkKSJQhYHzm9aZ+kcTtN0SuETkh5
 ZaL3HLW68OJmCuxaDSRiCB07t6VeEz+2Nm70rAHxzRxaiEkjv5S9oIwct+NKKTfgdEgX
 40uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=63OK7+WV2oSpfMtMv7dHdZjSmylnl4RI0WBIjRtCjGI=;
 b=MQGwFry7pcRYX2Iqqvf5GcEwRv/H34pKvPwNjADXAZUiBkf4SxvbrNvpv/Kw60oMAH
 gou52psHoY5rpxEgA0EO1Qzo04/qqPhf5CtV7f07hU7ape+pCsnBGlBiz8vILfz9RRzp
 iynZ0fRubhrv0JGDnB3C80ydsAl7PBVgc2/AaJ3nWLJDDwf9A9S8IrdGPTcx1q/lICVb
 OuU4+DfTRrH9UqxvoXtKQ7zz8VhZh87EfzhR7owPLDPrcSM1EmZcdFcQB5vIEG8UkTYQ
 Iihjz5zSrQy1mUI82x1YQzZWcedZAaKRW9XIwh1Tin/VBDZv2Q/t5Hi5jC1mvTD7byG+
 TeeA==
X-Gm-Message-State: APjAAAWALvTuTm0fpcbIy8vfyNW0lnWac8F6wTOhKYHVNdf+25qRrsXJ
 qGqcDL0FM6/qDI9mZUIy+U6H9Q==
X-Google-Smtp-Source: APXvYqy211rlSGA/7f48UPTxt4qHpuBdCqMG+TrJdyDkgkot1NRkPQy8mZvmt/WlxkEIur07ZirjyA==
X-Received: by 2002:a7b:c151:: with SMTP id z17mr33478170wmi.137.1579092822380; 
 Wed, 15 Jan 2020 04:53:42 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:2266:ba60:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id d12sm25196171wrp.62.2020.01.15.04.53.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 04:53:41 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, will@kernel.org
Subject: [PATCH v5 13/13] iommu/arm-smmu-v3: Add support for PCI PASID
Date: Wed, 15 Jan 2020 13:52:39 +0100
Message-Id: <20200115125239.136759-14-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115125239.136759-1-jean-philippe@linaro.org>
References: <20200115125239.136759-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_045343_808445_C36EBDB3 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

Enable PASID for PCI devices that support it. Initialize PASID early in
add_device() because it must be enabled before ATS.

Tested-by: Zhangfei Gao <zhangfei.gao@linaro.org>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 62 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 61 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index b2b7ba9c4e32..f42454512e87 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2634,6 +2634,53 @@ static void arm_smmu_disable_ats(struct arm_smmu_master *master)
 	atomic_dec(&smmu_domain->nr_ats_masters);
 }
 
+static int arm_smmu_enable_pasid(struct arm_smmu_master *master)
+{
+	int ret;
+	int features;
+	int num_pasids;
+	struct pci_dev *pdev;
+
+	if (!dev_is_pci(master->dev))
+		return -ENODEV;
+
+	pdev = to_pci_dev(master->dev);
+
+	features = pci_pasid_features(pdev);
+	if (features < 0)
+		return features;
+
+	num_pasids = pci_max_pasids(pdev);
+	if (num_pasids <= 0)
+		return num_pasids;
+
+	ret = pci_enable_pasid(pdev, features);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to enable PASID\n");
+		return ret;
+	}
+
+	master->ssid_bits = min_t(u8, ilog2(num_pasids),
+				  master->smmu->ssid_bits);
+	return 0;
+}
+
+static void arm_smmu_disable_pasid(struct arm_smmu_master *master)
+{
+	struct pci_dev *pdev;
+
+	if (!dev_is_pci(master->dev))
+		return;
+
+	pdev = to_pci_dev(master->dev);
+
+	if (!pdev->pasid_enabled)
+		return;
+
+	master->ssid_bits = 0;
+	pci_disable_pasid(pdev);
+}
+
 static void arm_smmu_detach_dev(struct arm_smmu_master *master)
 {
 	unsigned long flags;
@@ -2842,13 +2889,23 @@ static int arm_smmu_add_device(struct device *dev)
 
 	master->ssid_bits = min(smmu->ssid_bits, fwspec->num_pasid_bits);
 
+	/*
+	 * Note that PASID must be enabled before, and disabled after ATS:
+	 * PCI Express Base 4.0r1.0 - 10.5.1.3 ATS Control Register
+	 *
+	 *   Behavior is undefined if this bit is Set and the value of the PASID
+	 *   Enable, Execute Requested Enable, or Privileged Mode Requested bits
+	 *   are changed.
+	 */
+	arm_smmu_enable_pasid(master);
+
 	if (!(smmu->features & ARM_SMMU_FEAT_2_LVL_CDTAB))
 		master->ssid_bits = min_t(u8, master->ssid_bits,
 					  CTXDESC_LINEAR_CDMAX);
 
 	ret = iommu_device_link(&smmu->iommu, dev);
 	if (ret)
-		goto err_free_master;
+		goto err_disable_pasid;
 
 	group = iommu_group_get_for_dev(dev);
 	if (IS_ERR(group)) {
@@ -2861,6 +2918,8 @@ static int arm_smmu_add_device(struct device *dev)
 
 err_unlink:
 	iommu_device_unlink(&smmu->iommu, dev);
+err_disable_pasid:
+	arm_smmu_disable_pasid(master);
 err_free_master:
 	kfree(master);
 	fwspec->iommu_priv = NULL;
@@ -2881,6 +2940,7 @@ static void arm_smmu_remove_device(struct device *dev)
 	arm_smmu_detach_dev(master);
 	iommu_group_remove_device(dev);
 	iommu_device_unlink(&smmu->iommu, dev);
+	arm_smmu_disable_pasid(master);
 	kfree(master);
 	iommu_fwspec_free(dev);
 }
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
