Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6719E13C211
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:56:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=leRGPUx0KlwD3k2/ay5JPkMQvg6il1ZehYd0NtmclvY=; b=mCmhnMnupfBa+w
	NhzBqkVQdVgPNo57ZvntmKyB70tFrqXlsO+GIhTfS4BZjGVrM/vSIMLL+vEtrROQ+tdGliYPPLcqC
	sW/CnSnHcBay+/r4lSjIdlpzm/zkYBghDxBNTqThaHLWJf4ZT4MpaXONjy3e44t51giCu3xAJOZYH
	MuxXQGvMAAhZWkg1ZLIKAtIfWvPP7JLsXLHWfavHKWVx1zfctAPdzDDHxmp3el6pVq7fL2SXonyoD
	zNfjqfmrT4YZO7BshREDui1fdf78QzD1+3COl2Fgwf6ajqVIrH8UPHPewHCLPXK0siWXOjp0A4ID0
	IUBGpLO2eaJ7cgYwCvkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iriDw-0000kz-QK; Wed, 15 Jan 2020 12:56:40 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iriB4-0005im-LZ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:53:44 +0000
Received: by mail-wm1-x341.google.com with SMTP id d139so4707758wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 04:53:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k0PTgEa8Z2EtxKNp+bXlU3gMIeIQMMd4dvAJJmx7ucE=;
 b=dHOXOKHoTxItty8Q5696Mr+qbLuMsFa+MTSqKPLipIvl2oTCGz6ML1mpeZ/hKlDF/w
 0zv4zm331wgT2+KoHIxNr0EbnRGGQsLvPJyytnYPhCnUUDZJbkaemFEkNnu+UetF8/hv
 V63rc3osvZrEsMSG1CYkzOLHHYC2msMAlTjspE9QoVjnwGTB+KftSreLBNSx3XxcNWWz
 7qWRy0hn5i3tRV6yEIj4f9s5mv4xFHEO4sLGFIYhAVyLWiQK84QoCPspbr09hIqHacJb
 keyJbpDsHaUOhTQQceVDxe4Do+EaZFZskEG7KV/7urpQlMM39SamhpMjxm3wKwlF46iZ
 BDDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k0PTgEa8Z2EtxKNp+bXlU3gMIeIQMMd4dvAJJmx7ucE=;
 b=jSpcoASmJuPWSlcVD+nPBGcYujM3h3yBxkpDeM/UR6/jV8kQ1kFUefpjUnuspQ1/m8
 zJNXXKrBZ64BPXAEghTop9nIFumwG7tcMeJuKKXprfukH+24LRrCA6JAbeRN1F8Zkgk5
 Drx4tSc3b7UBHtU4TA2UJzg20Aq6vBLsTTHi1Tk93HXHlKf2i7DwQM/O61v03BnekZ08
 8AcSSS2GFkRqpoPH+h6/1FSa0gvOnRa9yOHRSAdsaRVzg8M9cED6+151T6i0NM1dLVUO
 /67YNuL8pD2e0T8eiJMxh9YBvf2PzfsI/j8OvU4cVeRbYY7BWdscdGEQDEEZjwTqkszv
 Ienw==
X-Gm-Message-State: APjAAAWy8He7phV1RU9enyUwp2e53kHv9Wm3EMOCzShhHin4b9fqCjlS
 i2LZ46EryiHlovi7+3u3XOzmHQ==
X-Google-Smtp-Source: APXvYqw9Mt6OhEbO1QMqXTowh5t7SCfN3PgnBvH6KOJ1spMG2hboA0nCSsAfuEDMtgnKjfCtqj0iOg==
X-Received: by 2002:a7b:c3d7:: with SMTP id t23mr34564949wmj.33.1579092821258; 
 Wed, 15 Jan 2020 04:53:41 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:2266:ba60:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id d12sm25196171wrp.62.2020.01.15.04.53.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 04:53:40 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, will@kernel.org
Subject: [PATCH v5 12/13] PCI/ATS: Add PASID stubs
Date: Wed, 15 Jan 2020 13:52:38 +0100
Message-Id: <20200115125239.136759-13-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115125239.136759-1-jean-philippe@linaro.org>
References: <20200115125239.136759-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_045342_745537_2536BB8C 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, joro@8bytes.org,
 guohanjun@huawei.com, rjw@rjwysocki.net, eric.auger@redhat.com,
 robh+dt@kernel.org, jonathan.cameron@huawei.com, sudeep.holla@arm.com,
 bhelgaas@google.com, zhangfei.gao@linaro.org, robin.murphy@arm.com,
 lenb@kernel.org
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
