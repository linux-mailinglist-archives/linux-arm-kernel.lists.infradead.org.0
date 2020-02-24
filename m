Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 834CB16AF2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:32:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4a/PbPQMtx/7wLdahWpg1AEWk3zKVPQwgAUacgdtzU=; b=P1d0HX2ma9udwV
	/HjxBfhkp6UC6fBiEYc7O8P+zyk1WDjthaNnW7Zz7TPdk56dQIzqIdOurXTXjoUs3oY2sc+twm/vc
	pYOxLkxlWiGxLmaOjJEwrC5/xzFbFUPbHlUQcCjd03NaXkCzSg/+B+KfgXmvLBJ9oJGOzmrOMZ5F9
	Y3Wj+WC1isteI4Z2/Jljt1tCdMt+PzaZn1Bq3OJOroookduprtA28FuoaLZFwH6O5qnF9/O7PDGLD
	iV31qPywiS0DeYY63jrqQKJNFydxy+JBkEGi9fgxFKoXcVs+c42sojv77uJ7yb6Q1y4CSwFuH31cn
	NEbPpfbtKw7TRI/f0fTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IWA-0005qR-Kw; Mon, 24 Feb 2020 18:31:46 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IPa-0005t7-0c
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:25:00 +0000
Received: by mail-wr1-x444.google.com with SMTP id z3so11585777wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:24:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oVPY2SNV/SUayab6VGyitFWrI9RILHKqjSrcDOg3sBg=;
 b=OnFOZtrZEFufL7rTBOmlZ40Hq224mutQ/5o0VAFHjr/9ZW5PBMJ0Y7/GDS3/xR/dnD
 TEsPyQ+iLNysIg1dKsUqwcdOSjQuqzH7iLV5knh5wCpz5/PmbdVT8KcjMEYbg24is9zH
 t6ACUI7hhk9FGQPHZTGMTb2NY4PcnI9R5MLG1z3wtZTl3ODyonISTbNRfmBpEMohHa92
 CKN1L7n6QuxpTjQJxuOJ4Ho23RxS2Njg7SP7AcfdcAfbOXg6vAiEfIa4WG7H9/SStdt+
 Gm1dU1ozzhGu8153BnWCyrRxnsfeTzwGIutPWQZPh3v8U2NHd1wgZo4SDlNKF9ic1rWv
 Y4DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oVPY2SNV/SUayab6VGyitFWrI9RILHKqjSrcDOg3sBg=;
 b=QeCUf/aV7fhl7f/iaDJpOQwfaIuwMrbzTAJA0c9AGXomDSqn1Dt5nL+2pbiSx18iDI
 OiIgq9rbM2ejjyd1U693WUDi4FW4vCedBJWrJJ5H8qpegp9fQwKDIk/ShfsmhOFJXdLA
 L0fGRthVcyW9fMJ4eDMEivmqL7NmVUd+3pfgD455VnI7QsOmFYJK/WbMmMc4Yuw69Ak0
 YQe15tBTPliAy2rll2hUom5z2tEZL8FmiMvIZgUycC1bXgWe1+j2a/uLzPDSJ27BEpLO
 PDkrHEsuUItmMhepE6jX3xbDWUI5g9Xkkc9GA58XGUrO2iozN2EVnuePhGtSxIsCkOMn
 0OEQ==
X-Gm-Message-State: APjAAAUviAnqkeyFTe9kVkFPJF2CC3U/I8brXb1BCSBZHKGAPcxWls5k
 jcaiDKYSql6grGL1sOSo+nG+Cw==
X-Google-Smtp-Source: APXvYqxjjLnHOC5PFDeOpyj527vO7u0PGvC49hWOgOh7ytPa88sYjcO6Bg19gqIDQUy51J2OFlu0Ew==
X-Received: by 2002:a5d:4c52:: with SMTP id n18mr2796517wrt.403.1582568696322; 
 Mon, 24 Feb 2020 10:24:56 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id n3sm304255wmc.27.2020.02.24.10.24.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:24:55 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v4 24/26] PCI/ATS: Add PRI stubs
Date: Mon, 24 Feb 2020 19:23:59 +0100
Message-Id: <20200224182401.353359-25-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224182401.353359-1-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_102458_100400_6ABBF5D5 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 robh+dt@kernel.org, yi.l.liu@intel.com, Jonathan.Cameron@huawei.com,
 Bjorn Helgaas <bhelgaas@google.com>, zhangfei.gao@linaro.org, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SMMUv3 driver, which can be built without CONFIG_PCI, will soon gain
support for PRI.  Partially revert commit c6e9aefbf9db ("PCI/ATS: Remove
unused PRI and PASID stubs") to re-introduce the PRI stubs, and avoid
adding more #ifdefs to the SMMU driver.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 include/linux/pci-ats.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/linux/pci-ats.h b/include/linux/pci-ats.h
index f75c307f346d..e9e266df9b37 100644
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
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
