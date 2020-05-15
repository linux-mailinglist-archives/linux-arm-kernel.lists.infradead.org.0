Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA6A1D4B6D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqDTL9hIuYPzDbnPK+PI/8aD5QgUIrgCMFprtwR3Oq0=; b=R2oZMKvIdTOdMi
	124oGaelmBiqfD6VJao02+wC98aDMCZZjtExTzduWp6pW9HmIOu1FllJA/GRZWjdgukQII1B97rak
	OaGF1yym68L11+1wNhDfDW/Yi7ME1JmOGASc8Ylqt/Yk/zYDPvJJ95V2H2giUoiCgGCqKb/QTeqVm
	h9QhoFowmxNQ0Xe+zTqoN8GGjegKjFZNRiE894mK46zTORQCcbUcdzV4QC2OTYU+CfmL0RVVBEt7W
	xQ276flqYhv7QWQmRZPDpmRMAUIkH9lFqZSIpXAwax2jMst7TaP4xmIWkDbDo1wQRCvu913XfNKKb
	wih5/0zgglNCoiKMFntg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXtk-00008E-T5; Fri, 15 May 2020 10:49:00 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXtG-0008Ok-P8
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:48:34 +0000
Received: by mail-wm1-x341.google.com with SMTP id k12so1835878wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 03:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MESJTjk++c2lj6OjtUD3TbcX3ekoiLAlqLoQdQYenvk=;
 b=d8QewLSvnJpTn6f8rKB+iC7zL5g4c4zD4gf9Y5c58fo+EWwMkk3YHySYd9hhSQj+R5
 FtRM7iGqWUoDtBI3d64vkhP3ewTf0dPfnHlNzG1spLfWpiC6bh53mz+VswdP4TIl6iK/
 IAy+POK20EjpGebSxDJFa8vAl12orzLTbfozqcFuR8eQDkbwT0Jw4Yjn4tVR+qDkqyh7
 F2xJxcunlRjjcDBXrBsRGayTerKPqgLZn9JGXj0rsSf/599MitB9ROn5P6u02Jw3P7DY
 klaJCMzuR+677XbhASvrvRdqWHRaKKiH9YxoXbqAtFlvxCeNXzudfnXqKjWk659I3pc4
 KUlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MESJTjk++c2lj6OjtUD3TbcX3ekoiLAlqLoQdQYenvk=;
 b=Z8NsJLbjpPpa5FwfhOXzVNdvf8hWPKZuI6cKstDhE354G6qfv+2ffE5dj81+K3UlEE
 Y9+3aos2qN5ASefbnPjziNicu4tVT32BSZuQdpaN3fXNAhkl+kYrRbIHwDI00mDNLtWy
 x1C8umAu5aG4M4lk5Be8njWCVV7ftw8dkktLduFdxVawYDkh0F2ff2/9PiqAvXGkcNxE
 9CNYZ4eFOgC8mALtJfyb86iKZnJBw+iZYpmcD5n4h3qTWL7Atvac4OyHQnv8cNT16z6I
 2kGv91j6C+kaSZrkDXAdBNmcqYVC2qyLiALlsir9pbdSFcEaGizpUYBsuQuO0yCfEoGB
 PK5g==
X-Gm-Message-State: AOAM5323wbslI1YRzzr/S8r1bwifg0JEctgpxAcAEDyEjZ76OiH/IDmX
 t/kpUnU3edv6f35GZxOBPfN4Kg==
X-Google-Smtp-Source: ABdhPJxoIQKh0Dl64xNJbAfP1xeyXsKEMQXWWN7NWj2VTSJfKf04HR+XDlR3TmJZkICfK6ATTtGKnA==
X-Received: by 2002:a05:600c:2219:: with SMTP id
 z25mr3356941wml.128.1589539709090; 
 Fri, 15 May 2020 03:48:29 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id h27sm3510392wrc.46.2020.05.15.03.48.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 03:48:28 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, joro@8bytes.org, bhelgaas@google.com
Subject: [PATCH 1/4] PCI/ATS: Only enable ATS for trusted devices
Date: Fri, 15 May 2020 12:43:59 +0200
Message-Id: <20200515104359.1178606-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515104359.1178606-1-jean-philippe@linaro.org>
References: <20200515104359.1178606-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_034830_810729_33C61F74 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

Add pci_ats_supported(), which checks whether a device has an ATS
capability, and whether it is trusted.  A device is untrusted if it is
plugged into an external-facing port such as Thunderbolt and could be
spoof an existing device to exploit weaknesses in the IOMMU
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

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 include/linux/pci-ats.h |  3 +++
 drivers/pci/ats.c       | 18 +++++++++++++++++-
 2 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/include/linux/pci-ats.h b/include/linux/pci-ats.h
index d08f0869f1213e..f75c307f346de9 100644
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
index 390e92f2d8d1fc..15fa0c37fd8e44 100644
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
+	return !dev->untrusted;
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
