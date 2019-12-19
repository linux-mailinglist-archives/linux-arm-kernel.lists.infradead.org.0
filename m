Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9A3126737
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 17:34:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=leRGPUx0KlwD3k2/ay5JPkMQvg6il1ZehYd0NtmclvY=; b=r7Jj2SVwHcdSZB
	/YV4Pb+y9vicohH7DGMjlIsQRRUq26k+FB4Wg8c7PBdDEHJeC5SG3MnpsyxeNtFRNoozr4ZcDJ1DW
	vAp4u4xwSPcRTd/RqJEiWwi+H3cIjF2QCblYw1CzmjIzRkmSvylYq2hgAInE7zJoYlzmehxswXvWK
	+NZO5oXr6MP6U9VVgfsJYWBh5f7IyxA67jh3mM4MGdDwDIJ/CLhtj6WicBA0oWSpaBLcDPKvGLPUn
	KRgW7HceuPPh2OyXiBS3raWP6ZqjGKd9nSMrZOl5CGAVA6n5mNdxo0+TD47ckbIZw2jtEGKf/FGG3
	SvzRX+v/hDcXtcLIBiEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihyl6-0002VP-AW; Thu, 19 Dec 2019 16:34:40 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihyi8-0000BW-Mm
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 16:31:38 +0000
Received: by mail-wr1-x441.google.com with SMTP id j42so6586236wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 08:31:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k0PTgEa8Z2EtxKNp+bXlU3gMIeIQMMd4dvAJJmx7ucE=;
 b=W+Iytwj4wvUZ2mbwDVM7FzjhurcQ7XEm74cJFZdKNOpWZtf7wK2eBP0X8FsMZeSJ6x
 iR0hoMFIuiITseQd974oYuP4t6sCXPRf3CBmd6yCV89pn+xP+xk+w7DoS2RBpcJj2xkt
 9hAy9ONlO9aTHj8k3D5PUqhPlRW8+9sBhjji/UXYjHTc2kU0B/rcTeoqySC1prww1Kh5
 lDK2rbNnj95q+9W/YHUT8aL/yY4xujuGQ3Gqt7+IIi+uCEaUwCmo0aNTuAmGuF4PphBE
 eH7TqxdLwqXapRzKuHr8uFQZKVtKa1+hpBYpYNgTi8ckKxL0EE66EGNi9XNuHJ5DvbFx
 fRpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k0PTgEa8Z2EtxKNp+bXlU3gMIeIQMMd4dvAJJmx7ucE=;
 b=KBtjyVVCAaDkNPdi/Oc0mJY5yVxZrn04mcFtoqDolaUllZc/wKRDVCf3/8jjeY8jLJ
 sTNSIcSSWU67xBJoIuswE20aQD0tW3nUBLJYdfntBNwpdlDVL3pBFCFvPWzI6bsqv36k
 dGebLsxoBQPvuOHOJKOzAJXkPMKRLx09a7zjr1K2I8vugDPB/FZTq9OzsSRhcqy2ENls
 YPQZruPvkgWwIRQ3kwR5gvJyPi+5NanU3WlNEJcNiUJfaqSYBqZ9BE9r6pDEv6aNb5Yd
 j1CfFvEHlBilaSWUTLEU8HkNEKK1yg0G8xNzNfPNSvPVX6P8sGaM/Zah+pP5H3wTAxUJ
 ryvQ==
X-Gm-Message-State: APjAAAXStlcc/AualhbW2CDpctUbm2qcXNK/HHD1eTU4kRNFZ3JlUKmO
 sYlw7hjx8VgdRaQm3ulcoy3jsA==
X-Google-Smtp-Source: APXvYqydpFFmYvpMjkEfbCXJIymkJAymWbp5K7XBwcoeSyvYywcmv2pSNLmPre/mfuyPhSrLgbG6Lw==
X-Received: by 2002:adf:fcc4:: with SMTP id f4mr10390218wrs.247.1576773095285; 
 Thu, 19 Dec 2019 08:31:35 -0800 (PST)
Received: from localhost.localdomain (adsl-84-227-176-239.adslplus.ch.
 [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id u22sm7092068wru.30.2019.12.19.08.31.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 08:31:34 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v4 12/13] PCI/ATS: Add PASID stubs
Date: Thu, 19 Dec 2019 17:30:32 +0100
Message-Id: <20191219163033.2608177-13-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219163033.2608177-1-jean-philippe@linaro.org>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_083136_861259_61A2F401 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net,
 eric.auger@redhat.com, robh+dt@kernel.org, jonathan.cameron@huawei.com,
 sudeep.holla@arm.com, bhelgaas@google.com, zhangfei.gao@linaro.org,
 will@kernel.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SMMUv3 driver, which may be built without CONFIG_PCI, will soon gain
PASID support.  Partially revert commit c6e9aefbf9db ("PCI/ATS: Remove
unused PRI and PASID stubs") to re-introduce the PASID stubs, and avoid
adding more #ifdefs to the SMMU driver.

Acked-by: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 include/linux/pci-ats.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/pci-ats.h b/include/linux/pci-ats.h
index 5d62e78946a3..d08f0869f121 100644
--- a/include/linux/pci-ats.h
+++ b/include/linux/pci-ats.h
@@ -33,6 +33,9 @@ void pci_disable_pasid(struct pci_dev *pdev);
 int pci_pasid_features(struct pci_dev *pdev);
 int pci_max_pasids(struct pci_dev *pdev);
 #else /* CONFIG_PCI_PASID */
+static inline int pci_enable_pasid(struct pci_dev *pdev, int features)
+{ return -EINVAL; }
+static inline void pci_disable_pasid(struct pci_dev *pdev) { }
 static inline int pci_pasid_features(struct pci_dev *pdev)
 { return -EINVAL; }
 static inline int pci_max_pasids(struct pci_dev *pdev)
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
