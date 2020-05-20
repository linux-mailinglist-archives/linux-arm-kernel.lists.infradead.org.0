Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA071DB847
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 17:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CQuYHywAFRxPYJgofkJEwLXp5pROh6vtNkOW0zxhno=; b=nY8G3BhpqXxByz
	5LiJVxgOdJ7ga7fuXp44Bgu3QVeXas6SilDe9QxzXYOWXoW1WNsK6OlHql38cpJi1fP7sn/K3BMHm
	y10lSSvKezFTJUCY5urV7j2IsDzSdGTGBXJ+eo35PTEeWnpgTOF8wu7273bHDdGHT3S4hNI0/cDC7
	0tJixqbVYKwCWa/tlzD/F8KYBFw2Ex9VrHGQKMpK6+wojvmj37JdoyfShsBArv139c0RyQP/ml4hq
	wAHnbav/GwsbcA4oDQxpfmgauDfpzMMbUjtIrOBc5EizuZv0AeTYvvsq9rlNewOGA15mQ/Djm4V81
	1JCbBfCICR34xY2iX3MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbQiK-0001z8-EW; Wed, 20 May 2020 15:33:00 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbQi8-0001xr-S4
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 15:32:50 +0000
Received: by mail-wr1-x444.google.com with SMTP id l18so3607557wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 08:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KMxSMp60RacutPPMRaTffGs/D3V+C6gcqSQh+60H4IM=;
 b=s4chTh4JDFjbN2gqTRyrB+FE+s9+8i/0fB88Bt2AOPHvQMpAM3GB80MGZAQGL2ZCJv
 wVV9P/kDEfZ4WBc+8nhHBecNu9A29ZysYDr+A6Y4pCFeSlbZnFi0Y9/Uya6DGUhNzXBb
 fj7Gj+i+ysvDh8pI+MeuBS7P/a031XQyCRHuY4E1U5BP/sKHh5sNVhl62x7S/n4YjnRp
 NNNnHpXJFlTghwMx0xG/JTXZ7fLa2Xt+eCqlfBrECBYpl0V8/pRRiWI/uy8q/MDWyT/i
 ylLzb/aNWYL0HaNX4GsQS6tqKBmhcqfE6HQ1vdqMPCLpXXMkFHWc/475lw5KY1I9m+tW
 T72w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KMxSMp60RacutPPMRaTffGs/D3V+C6gcqSQh+60H4IM=;
 b=TsZVQEkCL/Gwr1DoWbXmVJXAt8k7pD2VBjHjhSY9XQBe31AMJ9BwYtQvZJytun2MnX
 UQkJTz5dgdvHPfvT6tmZM0j66tftAldxCCiTSSWxEMxuAUWsiMVHeQo6yMNFrLmYxJP5
 AVoInCHelehvdR4rD+UBnzC4QotwuIYPswJXkfugevnRJaYqLVzA6xcrA3wLScrCYHR5
 te3oZzDyUwJKxnlpTSTl5o2ATL/7YJlX3RQ3ZsB11Ovv0ilWBlK1opK73PDtC3XLt6G+
 pA+M9ga63U69iEtIp/T89twWL3G3O0ST24ASu4eglu0EeJa2QqwC9GEMhXizgng9JsI1
 nuhA==
X-Gm-Message-State: AOAM532q47vzYG8CB91dEH40GbsE5xniLZERR5NZaav2v5IZlkzB+niz
 9unETbCUpna3xmoWPCdLYLRKnScpDUY=
X-Google-Smtp-Source: ABdhPJwJ12nN9Fkxr6qovPQcMT+RAZ4bBWm0IKZ4hW0qiE5gXWSsj2Yy/ihMe7U9E4fOI73l+IQpXw==
X-Received: by 2002:a5d:4008:: with SMTP id n8mr4535997wrp.82.1589988767748;
 Wed, 20 May 2020 08:32:47 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id 5sm3395840wmd.19.2020.05.20.08.32.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 08:32:47 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, joro@8bytes.org, bhelgaas@google.com
Subject: [PATCH v2 1/4] PCI/ATS: Only enable ATS for trusted devices
Date: Wed, 20 May 2020 17:22:00 +0200
Message-Id: <20200520152201.3309416-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200520152201.3309416-1-jean-philippe@linaro.org>
References: <20200520152201.3309416-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_083248_908235_020606F2 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Add pci_ats_supported(), which checks whether a device has an ATS
capability, and whether it is trusted.  A device is untrusted if it is
plugged into an external-facing port such as Thunderbolt and could be
spoofing an existing device to exploit weaknesses in the IOMMU
configuration.  PCIe ATS is one such weaknesses since it allows
endpoints to cache IOMMU translations and emit transactions with
'Translated' Address Type (10b) that partially bypass the IOMMU
translation.

The SMMUv3 and VT-d IOMMU drivers already disallow ATS and transactions
with 'Translated' Address Type for untrusted devices.  Add the check to
pci_enable_ats() to let other drivers (AMD IOMMU for now) benefit from
it.

By checking ats_cap, the pci_ats_supported() helper also returns whether
ATS was globally disabled with pci=noats, and could later include more
things, for example whether the whole PCIe hierarchy down to the
endpoint supports ATS.

Acked-by: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Joerg Roedel <jroedel@suse.de>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 include/linux/pci-ats.h |  3 +++
 drivers/pci/ats.c       | 18 +++++++++++++++++-
 2 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/include/linux/pci-ats.h b/include/linux/pci-ats.h
index d08f0869f121..f75c307f346d 100644
--- a/include/linux/pci-ats.h
+++ b/include/linux/pci-ats.h
@@ -6,11 +6,14 @@
 
 #ifdef CONFIG_PCI_ATS
 /* Address Translation Service */
+bool pci_ats_supported(struct pci_dev *dev);
 int pci_enable_ats(struct pci_dev *dev, int ps);
 void pci_disable_ats(struct pci_dev *dev);
 int pci_ats_queue_depth(struct pci_dev *dev);
 int pci_ats_page_aligned(struct pci_dev *dev);
 #else /* CONFIG_PCI_ATS */
+static inline bool pci_ats_supported(struct pci_dev *d)
+{ return false; }
 static inline int pci_enable_ats(struct pci_dev *d, int ps)
 { return -ENODEV; }
 static inline void pci_disable_ats(struct pci_dev *d) { }
diff --git a/drivers/pci/ats.c b/drivers/pci/ats.c
index 390e92f2d8d1..b761c1f72f67 100644
--- a/drivers/pci/ats.c
+++ b/drivers/pci/ats.c
@@ -30,6 +30,22 @@ void pci_ats_init(struct pci_dev *dev)
 	dev->ats_cap = pos;
 }
 
+/**
+ * pci_ats_supported - check if the device can use ATS
+ * @dev: the PCI device
+ *
+ * Returns true if the device supports ATS and is allowed to use it, false
+ * otherwise.
+ */
+bool pci_ats_supported(struct pci_dev *dev)
+{
+	if (!dev->ats_cap)
+		return false;
+
+	return (dev->untrusted == 0);
+}
+EXPORT_SYMBOL_GPL(pci_ats_supported);
+
 /**
  * pci_enable_ats - enable the ATS capability
  * @dev: the PCI device
@@ -42,7 +58,7 @@ int pci_enable_ats(struct pci_dev *dev, int ps)
 	u16 ctrl;
 	struct pci_dev *pdev;
 
-	if (!dev->ats_cap)
+	if (!pci_ats_supported(dev))
 		return -EINVAL;
 
 	if (WARN_ON(dev->ats_enabled))
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
