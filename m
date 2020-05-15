Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 589E91D4B79
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YeU7lFYCj0zV4z1HDCNjtTWRbPdEfNdazyzingyrGEk=; b=gyI6aCDQF2ZrV8
	R1FMIF11UWVyKe9vFPCZNyqQ+16xxjt0b4+A7k1RbuMWj9vnBSFTn3gKr8kxM2gOLjDuS7eQaqyah
	N55/4YtbqceVsOhrHQL/54UoL6wolUik3viXXQvnpv1ePjZKkPNt7XEXcZSv/ObM0yEoF1C/e11qx
	Jndww//rfzQPurav9lANy+kHio6qHBTM/lL/lVqpVkdqKt+Ii+s6hz0wq1bkafDNTIFWlnf0vrta6
	yq4TcjXGl1X1SVsFmEIBlm03IwUNskIekMIN1/9oQkHm9D08iu8kzSgNvXGuQFD5bKMe3eCDcp9HZ
	76ZD5C+75qS0E56rvybA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXtv-0000QI-4O; Fri, 15 May 2020 10:49:11 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXtI-0008P7-JA
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:48:36 +0000
Received: by mail-wm1-x344.google.com with SMTP id h4so1831944wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 03:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=guIyIxw2Cj+e2cp6UNPEu5aERqphnHRHK0daLjNZEtg=;
 b=P6/7hIE4DwjSbFHn0gUenOd7tQIjElNY44np4Xp3owXyeiZ5/eDrsF2jXhN1HFtXI9
 mzI4y6p5DgU2UcrYdlCXB96VGS31EbpJJbdZ9F86VezeEZeC0/al4dI1yjpzsPObxXFq
 bH1rMvZMRi2LIS/5qWwon90KoCmlhOIT8yk6ptHFuyroaHqPfVbNWqX4o+QJrImdJg1K
 yVQAnTXoaK5haWRQFRYea+uFgN4n5RLlto9awJagAWmH0iE5BZWxjLgcRKzajZy0eLZ/
 94povR05970KSOg2HzI7zF8fn1cxzEnzDPqenijZflhH7uWaKOz7YHkN5wHpu/4kyjB0
 AxGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=guIyIxw2Cj+e2cp6UNPEu5aERqphnHRHK0daLjNZEtg=;
 b=W+JmKmJ7ZDr5WnZQDVuRrjBy/2KHdIJkHujpSxnCgQP3xaBL03jvsmSMAVBByibnKi
 4jHOeiOAlVFfBX4dY+FvbrfDpMaL/0jijP7WJzbmkI1MwYvavTOLv2y97R2qJ09iDDkm
 gsrO5R3mZS4oeJ74ltX9YA3Kr8tnaO53B8EKF5HTSZKJ3YVvEzwIwKup4B6NkSYRsqWe
 ZXCUwRvgxRpduSQ4FadqymJg1nq+pBpt3VtaTQ/pqrMcmhq7WRKHK1/JbVvRn4zx9JFG
 GfaTCwzEXic1tWRHyHrM7V/17n2VPYWOWByBouJjf2YpdSoBgoox9yYN2XbRlQoFa3Md
 xruA==
X-Gm-Message-State: AOAM532y0Pj6DFj8Q05vMtnQxehqV1EV85ZxNTSy6F87qmZQcNlUgkgN
 jjq2I2AR1+XIammK1KpERSJSJw==
X-Google-Smtp-Source: ABdhPJwOoccKW1cdQKZVyETbXOshCl3JLZVuvoDXSwsZotxA+Esgngps5B0KVjlnEG+HNrZiI1lhug==
X-Received: by 2002:a1c:1d12:: with SMTP id d18mr3248638wmd.109.1589539711093; 
 Fri, 15 May 2020 03:48:31 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id h27sm3510392wrc.46.2020.05.15.03.48.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 03:48:30 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, joro@8bytes.org, bhelgaas@google.com
Subject: [PATCH 2/4] iommu/amd: Use pci_ats_supported()
Date: Fri, 15 May 2020 12:44:00 +0200
Message-Id: <20200515104359.1178606-3-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515104359.1178606-1-jean-philippe@linaro.org>
References: <20200515104359.1178606-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_034832_626640_1AFC3250 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, ashok.raj@intel.com,
 will@kernel.org, alex.williamson@redhat.com, robin.murphy@arm.com,
 dwmw2@infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pci_ats_supported() function checks if a device supports ATS and is
allowed to use it. In addition to checking that the device has an ATS
capability and that the global pci=noats is not set
(pci_ats_disabled()), it also checks if a device is untrusted.

A device is untrusted if it is plugged into an external-facing port such
as Thunderbolt and could be spoofing an existing device to exploit
weaknesses in the IOMMU configuration. By calling pci_ats_supported() we
keep DTE[I]=0 for untrusted devices and abort transactions with
Pretranslated Addresses.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/amd_iommu.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/iommu/amd_iommu.c b/drivers/iommu/amd_iommu.c
index 1dc3718560d0e8..8b7a9e811d33a6 100644
--- a/drivers/iommu/amd_iommu.c
+++ b/drivers/iommu/amd_iommu.c
@@ -313,16 +313,15 @@ static struct iommu_group *acpihid_device_group(struct device *dev)
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
@@ -3150,11 +3149,8 @@ int amd_iommu_device_info(struct pci_dev *pdev,
 
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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
