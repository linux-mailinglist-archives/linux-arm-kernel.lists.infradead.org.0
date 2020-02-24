Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA4016AF2D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:31:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a5fxDMGD5DA7u+PjGz9C0Aep0woeTB7tDK8ppe10omI=; b=nU/cKcI+WmFZ8h
	xNpmAFtfSHuaCpg316zZWwlguvXHGgn/T+c3w9oFCRpPjDXMtRbKx0vll8zvxRhsJRxfNR8gUItc1
	+AGIULlrAASnlaQVGPAThkjDcgt/qJ1L8VlFfptMGxLl4hDQgwT3PvWNra/WhTVe6Gbs4m36gKlse
	FcbFiZDQd761dOLb9CIp0/mF8a6RG3PllgoiAcWZKhKAajlum3Bfwr21Qzrvoq1KPGnQofpG8Yp7t
	i4PHVtiZfROShW9mxkQnNrI0b+7ge4i+yzlH5Z34IwkpBK0L5EHNjJ1/dMjVWRdYik0bsgkActrZs
	uhKg+We3mjZMGikrBxwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IVx-0005ZN-Hc; Mon, 24 Feb 2020 18:31:33 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IPa-0005uO-Ql
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:25:00 +0000
Received: by mail-wm1-x342.google.com with SMTP id p17so358050wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:24:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L4b0/E9FteCzWtJ3m41x7utj4DLNM6J+Wsoo7xEmR/M=;
 b=AaB0/woqy++LPMkoIBZ+m4G2UZnpMtnZvwcO6++TMOA9EU96huOkx2S0UskmT4cEpU
 xMrifrssPWkaFWKgEl2sH4pudtTv9O5xP8UA1tGUign2rkYDTr5uz/QuiZzooFCt1UtE
 rFYtkQKLo4kgyRbPCGQdQ0RkTH5WIdikmyUEt5mlxrO2m5pQuEYSi3SrHoKPrs6ir6C0
 h1xnyNfpSIa1Ci4ubWuYL1OusT1Jg5137L60+g+2IYH6Io8VN2+J8l0BSyTJWIJ6meQH
 bVi7Q64CjqZ4FvWJAUKwwHkRMFvfOpZv/R9jAdlHM31BS2Lo6e6itFaGlBgY5e1Zdzw/
 2HxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L4b0/E9FteCzWtJ3m41x7utj4DLNM6J+Wsoo7xEmR/M=;
 b=C3SaIAlieX0q84wcVrilhyk0+W8OsWMMFnsohPQ+pAUtiV7xKKehozcMqyDoIuq7SH
 MbMlUNW+4qgB56uCwnb9HZ38McLpf0ExmFg3lRC0pk0OhkxFigNPLyOa0iTlP41QY6Bu
 88HA8Y9uRAs1ZlxjSixGShEvSBl6wzNngBnRiuRGfcvcAaaj55PCjtwZVhzyTETrFkcJ
 hqcebbOFEi9v+YFcn2BzDGX3IBO4lwRnPlNt6/xkFPYi4dVP8etuLnbvtHaM9fDfwA0p
 Fart22FlHK8D7mh00PIDVud2jEOTKCg4SsZ0+Kqb3aEbrNJNMMlsiqs44D6MTvHLjPlR
 iIRQ==
X-Gm-Message-State: APjAAAV2fBKHjF9DpjDG4+QF2YnoWjndXzDY40QkSlXG4hWmmYlHC3Vg
 6/v+M7/C5uyZW8Ftgoh2AFyceQ==
X-Google-Smtp-Source: APXvYqx6ypZ/kM3sOzy1vTskWfaUURVJkjgEhRCiqvXYI27Ek63kaa7GG0Ur7iiefNgxz5pwggvx6A==
X-Received: by 2002:a7b:c249:: with SMTP id b9mr296154wmj.61.1582568697369;
 Mon, 24 Feb 2020 10:24:57 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id n3sm304255wmc.27.2020.02.24.10.24.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:24:56 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v4 25/26] PCI/ATS: Export symbols of PRI functions
Date: Mon, 24 Feb 2020 19:24:00 +0100
Message-Id: <20200224182401.353359-26-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224182401.353359-1-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_102458_979926_87CB1EC0 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

The SMMUv3 driver uses pci_{enable,disable}_pri() and related
functions. Export those functions to allow the driver to be built as a
module.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/pci/ats.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/ats.c b/drivers/pci/ats.c
index bbfd0d42b8b9..fc8fc6fc8bd5 100644
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
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
