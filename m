Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC0F1818B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:49:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yW9AfUdNz7XIMGU6nBpV7QYjwwVddJ8A931M30FJ+VU=; b=QJcG5SDCwP02Fy
	EOHU1kqLRezoVR7Q+SquSL+qXKzSULsG4R9ywq1sCBJ6lGNCmcHwd25PJAfN3cD+vGUWAY8dHL2dw
	XtARNUliM63nD4iEhuY90OyufDNMMcXbEMjKaMVLNS6B8g06DIaA3eSiANvFHPbuaJN3bwEMcSoDZ
	WsgkOh0Z/SLZn4wQl+V/5krY8RG4ITdWNMMieJ9l078OqI95VGE4UWgESzOmAQFQ4gjsZ72VxW3h+
	JYwG32PX44QTn8sSyIS674PNZIh/gdMgyO1+72kZRbYjjxydmzexzuQe1ehiP6uyAWC8Iz6CkX2vt
	wPhtg3tFD97jxpItQCfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0nB-0001Fd-KL; Wed, 11 Mar 2020 12:48:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0lL-00087E-Ns
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:47:05 +0000
Received: by mail-wr1-x444.google.com with SMTP id 6so2447902wre.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VY7nWjSoNMWvNd0g+xzvWepeHfbATP8qtCHjDYePPIE=;
 b=bM45cSb5Ozho2TEVIim6lgIlvJ17mCR4C+CsT0Pimx9uxnQtSRpiekb7vk+z4TyBsg
 i7bCTVuOPTtPUnD2gS9GnmKQttH1xBdYZqnq7yaTFWf44UtlBDgeGi2Es8eKBPIPPPDW
 LkYcp3rebBLLDqlaAmYWvqR8k6Z0HKttNv5g+FX0w3DwWT8V2qEp9TbR7xK1Xs2Xfv7w
 rCLokPC198gIy+yenj4tR9bAAp9qsRBLynUJuCnGQmJE3DnkPLxWi3/fYa7x3rTRXbVT
 dl0hIDgEYGiTAMo+9g7A7MoDCl4F6e3beKsqThLrOGkIuYk7YRvTsfD3H2hnQqzrnbmn
 0SjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VY7nWjSoNMWvNd0g+xzvWepeHfbATP8qtCHjDYePPIE=;
 b=ZL9N2Ao6tDNabaUDMQhwFcaUrh7bbkgR7OyNq+jAr1b5fvlCNdU+fHpIN7OOhZlBBv
 Wk4Uo1p6g9WJ5JcAocIEC1nA1V//yABj3Coe0tDY+en6A8Yzt29WwSAP+dvfdb+dGwu4
 C+XQc1iUQpKQ7c+yCL5joHNVH2Fsl/6s8uCR02cD6bIDdb1S35MM47ELnMAP9MvK4zY8
 4wZuYBQ4UIVOH7DAqCwRkTzOlqmuiWnv8KtaYpS30JCXTwQ+ZPt2WFXsBU7EdzbeE/ZC
 /8Ajn20pEeUL7EfmSAl2qOjmLv53c6c6FtoDFPxRSUC+elxALCoHeqnyzDj9E0rDzAa+
 pNJg==
X-Gm-Message-State: ANhLgQ0duvALe3GfyDktRThaIkiBCIFwyolplBVOkH8OUHXTmLfnR3qT
 LK7ara8hT/kIlREY1qC6AZ2m7g==
X-Google-Smtp-Source: ADFU+vvwMGkHBLCwyNQwQal6X/GbzQAYuf8900S7rXGVFBA3Oqi6Q9GIzMLJrx/FlXi4IXLOUR1+0A==
X-Received: by 2002:a5d:6591:: with SMTP id q17mr4218053wru.22.1583930822453; 
 Wed, 11 Mar 2020 05:47:02 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id c2sm8380020wma.39.2020.03.11.05.47.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:47:01 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org, joro@8bytes.org,
 baolu.lu@linux.intel.com, sudeep.holla@arm.com, linux-doc@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v2 06/11] iommu/amd: Use pci_ats_supported()
Date: Wed, 11 Mar 2020 13:45:01 +0100
Message-Id: <20200311124506.208376-7-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311124506.208376-1-jean-philippe@linaro.org>
References: <20200311124506.208376-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_054703_799644_2AD8DDA9 
X-CRM114-Status: GOOD (  13.37  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, Jean-Philippe Brucker <jean-philippe@linaro.org>,
 lorenzo.pieralisi@arm.com, frowand.list@gmail.com, corbet@lwn.net,
 liviu.dudau@arm.com, rjw@rjwysocki.net, guohanjun@huawei.com,
 amurray@thegoodpenguin.co.uk, robin.murphy@arm.com, dwmw2@infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pci_ats_supported() function checks if a device supports ATS and is
allowed to use it.  In addition to checking that the device has an ATS
capability and that the global pci=noats is not set
(pci_ats_disabled()), it also checks if a device is untrusted (plugged
into an external-facing port such as thunderbolt).

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/amd_iommu.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/iommu/amd_iommu.c b/drivers/iommu/amd_iommu.c
index aac132bd1ef0..084f0b2e132e 100644
--- a/drivers/iommu/amd_iommu.c
+++ b/drivers/iommu/amd_iommu.c
@@ -291,16 +291,15 @@ static struct iommu_group *acpihid_device_group(struct device *dev)
 static bool pci_iommuv2_capable(struct pci_dev *pdev)
 {
 	static const int caps[] = {
-		PCI_EXT_CAP_ID_ATS,
 		PCI_EXT_CAP_ID_PRI,
 		PCI_EXT_CAP_ID_PASID,
 	};
 	int i, pos;
 
-	if (pci_ats_disabled())
+	if (!pci_ats_supported(pdev))
 		return false;
 
-	for (i = 0; i < 3; ++i) {
+	for (i = 0; i < 2; ++i) {
 		pos = pci_find_ext_capability(pdev, caps[i]);
 		if (pos == 0)
 			return false;
@@ -3040,11 +3039,8 @@ int amd_iommu_device_info(struct pci_dev *pdev,
 
 	memset(info, 0, sizeof(*info));
 
-	if (!pci_ats_disabled()) {
-		pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_ATS);
-		if (pos)
-			info->flags |= AMD_IOMMU_DEVICE_FLAG_ATS_SUP;
-	}
+	if (pci_ats_supported(pdev))
+		info->flags |= AMD_IOMMU_DEVICE_FLAG_ATS_SUP;
 
 	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_PRI);
 	if (pos)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
