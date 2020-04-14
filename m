Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8A41A8721
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:12:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WOsWDmsxDH3MuChngwWrJuvFSNlh4XzoCrcHBplkLlQ=; b=jrP6XR2qYqjBNd
	IZ00az43ooVoGCaivaPz0/LPVltNM1CEqJ/LO5mPgfdlWrL+gqgOYi30Zmv+0Xf8URyNy7Z/dom2c
	8RyzUh2GVQ+M92Z7evWylqLizCaOiDAm1oCYxVF/ZfWVWL+klEXIMllivhHSqNXPB3nMTDubpB9LL
	n12yNKFwh2h38my9RpNDbFJycGA+K0z7P+6BWWqz2/nbI902doi/ONwJ1qDjNi8vi5FSzuQk61v+z
	ic5vPhbhqFJ0MJWmQEsqaTiWPcq9VvCkzz4MNjSerdtql8dSpp8tRoK+DFjAPzq0cZUT1OCdGlt8y
	SFIAGDTnNP5TAXxze6Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOP6O-00052r-OS; Tue, 14 Apr 2020 17:12:00 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOzV-0002bp-Cn
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:04:59 +0000
Received: by mail-wm1-x343.google.com with SMTP id e26so13826124wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vE2itLZu3hqvC4LzqU2NUCFx+9C8ab/nGgmunlfocw4=;
 b=GQc1HJySAIFGl4e9JGBFURgN/vl21Fb+oCGY0ghVUDlr5r96ZmZmw/X83yVkMwCMvt
 DVAASgUR/v3/ZKBKl9O60CQVrNvn4oMMVLsH3g9JXWg+IeYIxVCppffgWVDw7kFLs+SL
 qL185/o63pqZqsBw6EgV8XD0/UHJpB1qI+n6vwa7Qv2mwO4fdLqiqOvJiR2hZWZH7Me1
 eoakZAu9sIB1oOiShcxlx+56zauDP7aBZBVxrI01fRfnSKCQXLcXyLhFUPuBdcSxvOTp
 gidl1cZtbaXu5tx9otKpXSBohIzzToXZC0tS5fggLOAxV0+H42kV0oHqDEtXsMF2hNlm
 qwfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vE2itLZu3hqvC4LzqU2NUCFx+9C8ab/nGgmunlfocw4=;
 b=lNRRD8nDX4O26PnywodUSUl97b+GafZ2n+Aa4spRKpzloRpJuiqVVD3125KgJQioKW
 ulcnd+XWiwC+49q3I1436y7jeAfz9FIjMRbh0IGlIetEfDmilv8fKNSfMsIL9U5HDP0C
 ZZaprIPa7lVGnGFX7u4qkLggtAdbnUqs1YEp7HeVHlB7ircF0rc5OYnkn0OhT/1ZRaaa
 uHn7rEQw9qKGo+6PiyPr6zXM6wCqs36F5s4SwC0HJlzzMZiQGnnTKmVyq95c/ZY3CCWo
 OK57c/KB6Hn8b0v9Rjtp/5ZhDRe1oQNNWRfm+8j35J3CU02lN1aN64HFeeaoxcYfsWdw
 9w6g==
X-Gm-Message-State: AGi0PuZSP9FvTP1ry7xbnAxZo0j46RlF77gGUL/WNlhd0vs0miR6gn3O
 AZpinnqiBBmVKXFJnWiiDMy8XA==
X-Google-Smtp-Source: APiQypIBMdNPHOZOhnCMJH0FJPJY2Rdi+r/VG4B2wmIYz2z44PksUMUJ1Q8ZKmB8ryyXqmfTYJG52Q==
X-Received: by 2002:a1c:3c08:: with SMTP id j8mr814017wma.30.1586883892098;
 Tue, 14 Apr 2020 10:04:52 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id x18sm19549147wrs.11.2020.04.14.10.04.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:04:51 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v5 24/25] PCI/ATS: Export PRI functions
Date: Tue, 14 Apr 2020 19:02:52 +0200
Message-Id: <20200414170252.714402-25-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414170252.714402-1-jean-philippe@linaro.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_100453_616396_E723D826 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

The SMMUv3 driver uses pci_{enable,disable}_pri() and related
functions. Export those functions to allow the driver to be built as a
module.

Acked-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/pci/ats.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/ats.c b/drivers/pci/ats.c
index bbfd0d42b8b97..fc8fc6fc8bd55 100644
--- a/drivers/pci/ats.c
+++ b/drivers/pci/ats.c
@@ -197,6 +197,7 @@ void pci_pri_init(struct pci_dev *pdev)
 	if (status & PCI_PRI_STATUS_PASID)
 		pdev->pasid_required = 1;
 }
+EXPORT_SYMBOL_GPL(pci_pri_init);
 
 /**
  * pci_enable_pri - Enable PRI capability
@@ -243,6 +244,7 @@ int pci_enable_pri(struct pci_dev *pdev, u32 reqs)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(pci_enable_pri);
 
 /**
  * pci_disable_pri - Disable PRI capability
@@ -322,6 +324,7 @@ int pci_reset_pri(struct pci_dev *pdev)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(pci_reset_pri);
 
 /**
  * pci_prg_resp_pasid_required - Return PRG Response PASID Required bit
@@ -337,6 +340,7 @@ int pci_prg_resp_pasid_required(struct pci_dev *pdev)
 
 	return pdev->pasid_required;
 }
+EXPORT_SYMBOL_GPL(pci_prg_resp_pasid_required);
 #endif /* CONFIG_PCI_PRI */
 
 #ifdef CONFIG_PCI_PASID
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
