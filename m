Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C951A871E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQznWD9PdY2XqPlV191064RoP8BgiRI/vNnLT5qqkck=; b=BpFH4iHqqjBChe
	oW7yosY07FOGEaa9p7py4mz+HUoVUwQFyEMXx5RqqwroytCZWrixVS8P5qEZo8m0D6SshKzgn1kRQ
	ofDUj72R8ZhfAYc0TmowvnQNwi8VCdCyaO423oVIj2p9ctmjlOvTUm3FWrd42CFe6ZFWInDgJej6o
	RR9o602Fi8yZHusIWOGtigt9njGGU/BxDZowa61VHjI8GysJQPTySK7A829Tpv5gmdL++29TWK4P0
	bgkaoPKgJYNWxutC61bEvnRc/ppcAJj1AfD9Nn8qfexpupQ72Xg9biG0ykIY8uPmodHLvmPk099+j
	dCgJ8Z8NrdQInzCiCcUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOP5o-0004VR-SZ; Tue, 14 Apr 2020 17:11:24 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOzT-0002Zv-S4
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:04:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id f13so15228480wrm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dxDAAgL2UYsehlg428ECGLr43fDkT+szEz8iWolntSk=;
 b=KSZ3slzLde6NozRQYn2Ai7oqpucgG9X78qXMfbMZBdcER7nRY1kUNT7Qt/IDN4MDjl
 vb8Pwa0ulpEZSn0BBnH4dvqEPTE7RcoGq9Z0W234cFc+SVbRftS1kIvCyI853alAlB+Y
 rEPDG1qUaGZ8aDnk0qSGGOfVXMDaGzZE9CbxCxqT/oC+CO1OIwkFRvN+6kDc104C4vkE
 8G9SDBWgw+ffbm6VeWoWzvyoCQ+PUbDkthqAws5ZdzYv2p4NNty/Nv1AQXZJv7O+3rA/
 yHUo655cjGXVw0ER+P3ankuAQ6Jt9og6eLbHOvkwVehp8uN30C+g/z+zrhkAnk1Cf6Kl
 OqWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dxDAAgL2UYsehlg428ECGLr43fDkT+szEz8iWolntSk=;
 b=sHiPD3s1lH56+WlNJXxa3l2D/5sAPC6SmX2RV9+L6OSgSNNavmGgeJF46HEhi1U5aN
 74sU6+8ptRw9fOOi/ySdAz35roHyD4L0A865kvZ3SSJcfRbAPovJr26E/uzBcwalYzeA
 wCqa7c0e5yvIx57/C2jrAPbk0qX9DF7Wtu3AS+FWnjIfbBfzCBDr8ehiPN1HAbiFf9LV
 nEiFdi2oVGHej/ONn+m8oWut+NFtIJYcJ0m9Z4QHE8vOXIIMheXxSHmhPr6TH5s0RCYT
 1B1wUhQFZ0QnMs9yCLNc8VQNFKr/HFON3BGfiB1PYmpaaABJf3AYGKeEOC69kcyC5Zqj
 c4oA==
X-Gm-Message-State: AGi0PuYyc3JFZS7BNpjpxidRyOwowO97HGj4TfRs610GHoPgI7YHjbbl
 R3H73uGYPBkPQA8zKd1RE1tGtQ==
X-Google-Smtp-Source: APiQypLvU1DM9P6089K9k3mSfMy8oJyq3WdIaLTthIKtphu5RdduiyeU/R3KBAD03tQZ8c5tQnffKg==
X-Received: by 2002:a5d:4447:: with SMTP id x7mr2258833wrr.299.1586883890363; 
 Tue, 14 Apr 2020 10:04:50 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id x18sm19549147wrs.11.2020.04.14.10.04.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:04:49 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v5 23/25] PCI/ATS: Add PRI stubs
Date: Tue, 14 Apr 2020 19:02:51 +0200
Message-Id: <20200414170252.714402-24-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414170252.714402-1-jean-philippe@linaro.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_100452_063710_24F66E7A 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, catalin.marinas@arm.com, joro@8bytes.org,
 robin.murphy@arm.com, jgg@ziepe.ca, Jonathan.Cameron@huawei.com,
 Bjorn Helgaas <bhelgaas@google.com>, zhangfei.gao@linaro.org,
 xuzaibo@huawei.com, will@kernel.org, christian.koenig@amd.com,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SMMUv3 driver, which can be built without CONFIG_PCI, will soon gain
support for PRI.  Partially revert commit c6e9aefbf9db ("PCI/ATS: Remove
unused PRI and PASID stubs") to re-introduce the PRI stubs, and avoid
adding more #ifdefs to the SMMU driver.

Acked-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 include/linux/pci-ats.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/linux/pci-ats.h b/include/linux/pci-ats.h
index f75c307f346de..e9e266df9b37c 100644
--- a/include/linux/pci-ats.h
+++ b/include/linux/pci-ats.h
@@ -28,6 +28,14 @@ int pci_enable_pri(struct pci_dev *pdev, u32 reqs);
 void pci_disable_pri(struct pci_dev *pdev);
 int pci_reset_pri(struct pci_dev *pdev);
 int pci_prg_resp_pasid_required(struct pci_dev *pdev);
+#else /* CONFIG_PCI_PRI */
+static inline int pci_enable_pri(struct pci_dev *pdev, u32 reqs)
+{ return -ENODEV; }
+static inline void pci_disable_pri(struct pci_dev *pdev) { }
+static inline int pci_reset_pri(struct pci_dev *pdev)
+{ return -ENODEV; }
+static inline int pci_prg_resp_pasid_required(struct pci_dev *pdev)
+{ return 0; }
 #endif /* CONFIG_PCI_PRI */
 
 #ifdef CONFIG_PCI_PASID
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
