Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F911173D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:14:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CT+0Hw/pf6Zjfeh0BWb1uTxGnU1b0gyQ8TU0cvJHw0s=; b=IgPkuhEdEC2Mwk
	80MIhulfOMn0yc7psIToThGKKmN0i15KwdjiQ7P/z7vY/lBzpfj3iimZ0t+njdO1qmkQBkrJUJ9mC
	PYIIBZCpnFkHICZQJFCnloalPh2DeWU9mycdoyfFYkuOR1lxcrbKxnDTKAjA/j+M5nGaijZmztLRe
	C6Bb7bdCMQVdFtdImT+cwJqml5lQ/F5eqajaN8ldwYhYTNIAJWwHgyQBbE2wwycCK4m4gIzooFfR+
	1RLKHHYe9kvrIce23AJD6/3nfm26M7uSrrqxO9aXgLIFdvPSG/eu3XM0jHaxKYPJzBykQ10KBoSlY
	gpuA9gm9F+6RyA3YrXTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNYT-0007Fm-ID; Mon, 09 Dec 2019 18:14:45 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNVy-0004nj-UN
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:12:12 +0000
Received: by mail-wr1-x443.google.com with SMTP id t2so17323352wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 10:12:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+bUNvcbVur0Ef2VA51V4gsgr3fHJGR70sEezlRR2RXc=;
 b=QWVvbh0Jpp5+Hw8827sqJaAjar+vbOSxAvAj30oTykn3fZunkMM+V0TpMe8znZSIwt
 kVb7o3GmlRpgmGRwqFd9IL7O0Rr/xOSf3Ou712l2rKwvJ+ientMioZnVc1lDF91iu51I
 UHJUu2zRarBoJs8L2yoNmEOFKcoFuBaNk3ypQxZ80un+15jE6DMxi+ZjCVVZZ43p9sG2
 IBBhzFgwwrNysh5v+q2LdP7dwwQvTzT0h9awcGtfIkraKUYda6YASGA0COj5K+NLIQlU
 vc+Klj7osrnuHxQ7nzumbvGR2a/QpWUNgVCUK01W87GXIit9vGNapGS5T4f3bqCJiksT
 E9lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+bUNvcbVur0Ef2VA51V4gsgr3fHJGR70sEezlRR2RXc=;
 b=D8wnJiH09HS/j2fxkxEDJe2aktQERAWM3p2SPBhCiZ9NQgJ+hO5ZO4VW4Iwrukfhib
 NikGvP4zfROHnLd6Er3CL1LzZH5B+7FYeZyH37rfHmsBzFMm40ZEsMEn2slrGZtNfJLp
 KyTeA4+mYpvjfulceejYrTzTCHKVuqrhukwsv0R4J7IeOJrej5HlUjBYqQsE2RmiEahw
 8OHtK6mzpLM9qUl2AZVhocGtLC6b2klCfulNunlEQG9bdCVKJXMGE61xpsR3NZQrqpF+
 bb/3heU9vON46Irr5e6SwdzJsbkg1LaVJxMdsk4pitXZyY4Jyyz5icGqoAAazdNSV4W4
 9Rtw==
X-Gm-Message-State: APjAAAV9IdDDhF85ZssCo4iXpXWNaMoJJA2YBDnAOJhhG9lRA8fLuXOe
 STmwZVZ3gEv0cOSh6qO9Y6HFTg==
X-Google-Smtp-Source: APXvYqxZH+0s1tJzoncKkc0MLrscBtmGhCCKfuSL1rRjTgo9fxA1fKZvT0gterjHLEAe0aJZPngGUg==
X-Received: by 2002:a5d:4602:: with SMTP id t2mr3528279wrq.37.1575915129138;
 Mon, 09 Dec 2019 10:12:09 -0800 (PST)
Received: from localhost.localdomain (adsl-62-167-101-88.adslplus.ch.
 [62.167.101.88])
 by smtp.gmail.com with ESMTPSA id h2sm309838wrv.66.2019.12.09.10.12.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 10:12:08 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v3 12/13] PCI/ATS: Add PASID stubs
Date: Mon,  9 Dec 2019 19:05:13 +0100
Message-Id: <20191209180514.272727-13-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209180514.272727-1-jean-philippe@linaro.org>
References: <20191209180514.272727-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_101211_031344_EAD28DCC 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
