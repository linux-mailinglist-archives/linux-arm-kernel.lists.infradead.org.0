Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DEB15C8E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bjnLzkwUueDhMZVSISwvyEDxjblWdDc3NNZ7HAroXok=; b=AmmY47EAHVw/cO
	X+cq60s6eolPvIFKY//rC/rUWQIjCsQe8I/DxD7W7FqnLo/RKegUwdBuPAs9Wa+Ro01odOVnjFwQc
	lK2fZupRk1kRHM6dLVhpq21YZKTznH19OsKTLdqpOBPpHPCa76IKvBEkOjlVGFwlIP70dBxF8Mmx3
	JG9T3A4rEtzvFENImrl9tKa6TldPXXqPZce4e28BRv86VGDCts2/qzyAQVdjspRKrPx/MI6ccFbgJ
	BbAJsw+s8hsW4nWZ+5P/z/83k6G0omGCqof5i8iv+EYl2D2GAfqQXBQVVC5IG+Ve8imcV6/fDKxki
	LVLBgaDD3FIafS9GslHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2HkM-0007JR-H4; Thu, 13 Feb 2020 16:53:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Him-0005tI-AQ
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:52:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id y17so7554452wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:52:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ok2VflFFpn82omTuxL3VzAJ/IWmjkZJAtl6hkoQPLn0=;
 b=ym2NkCwbZ8ok/8h7pLkDQzEx2pDfzAtJPMb4rPMByTvSy/oalugI/V5JdlFt4HfW0j
 dy3n/NgRB22hO7k5AqHtguWMskUiv6FfYdBSQyDs10POhlzx5r3Vyc1FaOYaTQLHwy3D
 d/8qFXw1yuseQLQstm8SGLXypdyYjPtns0heVSXOt17xr7Gjayy5ml6DMHoZdGpLN4uR
 PLVvrsya1vzI+JVp2LsgFgtKyDGVGeg9zlaQ0JehE8kpbLtrOJIiKPukUtWFMOIbg3h5
 n4b2lOMzwyI0KIeO33JNGTjnIbr+aYSAgVteGDFxKWsP2wx2WH1MYBWCTwhGa9YgQj03
 s+Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ok2VflFFpn82omTuxL3VzAJ/IWmjkZJAtl6hkoQPLn0=;
 b=twWkOfamq+zcPmVbMGpTGXR78e1kD4nBzuUVaYfr27gTA3EVLWVBgjxHUFphqIRxsS
 bCZgpAv36J+VJfxEuiLYSmzw5IGqPJLYwVysvM3wTeYNkktGal9w00YVO5yLNr+3VPSc
 DzQo2Fq92NbEruNE9wzriUij9tRciwRQJv99/ueaYx1WwU74KXrnNlQg4ErUbnw8yqIo
 EYnmFKuKQeu9HuNiC40vrAPy//rh8asHi86Qo0MdysGk1OeXxbFKNfKwxEKdARGuneSe
 d6+oi6ii5b7kQ34qKpWuptvN23oZzbMphVIqX9HG/ap95kSlbEH91bxeXhyzKo5/zwcg
 A5YQ==
X-Gm-Message-State: APjAAAUtFTdXPlG8c0uFhlZwBaBDQH4evajp4Bwh6ADhzK+TFpdq7BXK
 DfKXNPwXg1CIo7Z6952ia+IOAg==
X-Google-Smtp-Source: APXvYqxMXp/ilBRu+no890FzgqKyNs9xsIMVwvkwTf8WIMQwsdZIOnE4gjEVHQ+8qUzRVZx0noCWuw==
X-Received: by 2002:adf:f382:: with SMTP id m2mr22276136wro.163.1581612730849; 
 Thu, 13 Feb 2020 08:52:10 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id y6sm3484807wrl.17.2020.02.13.08.52.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:52:10 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org,
 lorenzo.pieralisi@arm.com, joro@8bytes.org, baolu.lu@linux.intel.com,
 linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org
Subject: [PATCH 06/11] iommu/amd: Use pci_ats_supported()
Date: Thu, 13 Feb 2020 17:50:44 +0100
Message-Id: <20200213165049.508908-7-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213165049.508908-1-jean-philippe@linaro.org>
References: <20200213165049.508908-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_085212_533444_1B104D47 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, frowand.list@gmail.com, corbet@lwn.net,
 liviu.dudau@arm.com, sudeep.holla@arm.com, rjw@rjwysocki.net,
 guohanjun@huawei.com, amurray@thegoodpenguin.co.uk, robin.murphy@arm.com,
 dwmw2@infradead.org, lenb@kernel.org
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
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
