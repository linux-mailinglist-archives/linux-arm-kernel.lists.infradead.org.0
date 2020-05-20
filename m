Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 978371DB853
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 17:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6H6ZRh+YFMalDqTs05cy9XBnYxfYN/fI3FwiUWlCyA=; b=CYPPQY5VbwXy3N
	YYKHTak/SuHrm5m8jjtsRvxJrfCStt6EO2FmOgFO6bhbZLRIdOwqrNAPe90FJceOobvAcCq7AP1Gg
	MOugRa3nEpBgWEcUZRjTT/M9oJBe1G4zN8CLeaiqgRvaQnXHIwSmUxpKy7L3IMtRXPFg98cqaAbhJ
	u2zXpetnqQA4P0pEqv4ta0H9faWYgFqWpNxgsZOpoxmtkDEN82xa34VNFRrjf1wWgC9xk9S6qr+D7
	kHZvrEvS0/qx+qYytYpdRPuqmohmbTD0OayOpbaNtN1nZyce1soEaXjN7nbM8KAU6b/6RRNEndWb5
	oT2KdX8EN2RT+y+avVZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbQjO-0002xG-Bt; Wed, 20 May 2020 15:34:06 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbQiC-0001yk-4K
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 15:32:53 +0000
Received: by mail-wm1-x343.google.com with SMTP id n18so3347715wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 08:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O7DYfmf9DoemFEeuQy4b1/2PVfJbeRti6n+bNE2Muts=;
 b=b1+kAgxlVIFzY855JbBQ3hVSAl1XF23bult0N08r/2anx/2IJpSyiTeLZvTGDFlMJs
 kxW+zFn4vcgsS4r9sUm4EYHwrkZ9Tg0qFyVPFCL4Ei7axkLs8Xz8iu/KwaDwd/0aDTlE
 auKYtUMu+kkUBxYKag7tDHR3M2Epl1b8yJ4t30NwXGMycp09zJuWWSbLyahKlGeMK0Cs
 y05Brx5BCk00/P/o7sIMUghv2YRZfX04PWxdoyZOvIF1FQraoo90+AFMzn9Z/c8ce8Wn
 szoeT1Umh1dlBNMbO49UHz1GVsrUNDFn6l1crMvIp0OP6YT3ZT/DdRc9/k5Ax9bdurLM
 Hevw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O7DYfmf9DoemFEeuQy4b1/2PVfJbeRti6n+bNE2Muts=;
 b=EZl8R9SBzr0h4vlAvPPa6MHDJP1YSQ4ZyfuUsAb5E8Ft5jlhqYTIZoTDai34yW+LF1
 q8HxwZXeagTMJ5x1QzGa7uZPTQUXrpCPNfKt/iO4Gvg2Ts6DdzJ5rd50yRl5mtuSLDri
 WrS08csVd57uP7N5u3B9imPnVolcGEQTC2TZ8O5mxF7O82IC3N4zyL74STixtND1r+50
 db7BZF42DM7IbNECkp4t1IyH+Efyz23PoFWrYGbGj3d+NQTmNcQEfCFBY8xYP8ItpBiZ
 J+V8zSyufwhM8EOUcPh31BbNIRlD7BmxrQu1JalvoZmuIanKHwGLqjSyJrfqyMKIN4Qg
 7ajQ==
X-Gm-Message-State: AOAM5325du7XKfv0wQUGulNHDO2BKAxt5tUkNlj/x6JVlft9+7Q+wT84
 nWkIcwJsmwNUibINswuOVXXSnw==
X-Google-Smtp-Source: ABdhPJyXoBArE7O2LUY1bsFSdaSpMuGVZxxPnLVHJfCNkRrs/jqFwXfVXYVWBXsafD56aI42j7GbIg==
X-Received: by 2002:a7b:c651:: with SMTP id q17mr4787617wmk.167.1589988768756; 
 Wed, 20 May 2020 08:32:48 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id 5sm3395840wmd.19.2020.05.20.08.32.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 08:32:48 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, joro@8bytes.org, bhelgaas@google.com
Subject: [PATCH v2 2/4] iommu/amd: Use pci_ats_supported()
Date: Wed, 20 May 2020 17:22:01 +0200
Message-Id: <20200520152201.3309416-3-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200520152201.3309416-1-jean-philippe@linaro.org>
References: <20200520152201.3309416-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_083252_168543_54DF9459 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Joerg Roedel <jroedel@suse.de>, ashok.raj@intel.com, will@kernel.org,
 hch@infradead.org, alex.williamson@redhat.com, robin.murphy@arm.com,
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

Reviewed-by: Joerg Roedel <jroedel@suse.de>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/amd_iommu.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/iommu/amd_iommu.c b/drivers/iommu/amd_iommu.c
index 1dc3718560d0..8b7a9e811d33 100644
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
