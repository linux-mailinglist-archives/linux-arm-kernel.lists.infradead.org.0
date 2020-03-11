Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 677521818BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:49:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skCuhZZj3vJ1s85h3PO5oGZfhr8hggXoRqbjBUQovIY=; b=r6HB0h2a8HcTJx
	C/ykIV7qcTkg6XKXhskDJUqQIbfgkCiyHG+EcHRyHJG2t8PvZtEEv+NLKxFQyxsS9AQkVQNeO6B1G
	3w6Cp1ouxY9w7nszOmJOQqDab06MN4OdrMCYtXeJ/Qsxx+QoJedP+07V+6pggP9kCW+lmEB22Aiei
	K9Qo7BsCVYpzbdxwig5LMAYX+UA53iRRcd2Gai++512CiJltpDIFnbCFQsrl7Exsqpg2O8h7+2yhn
	vpM4hiGEVvFZTTOlEzJtVes7V5QVhiSfB0DmuH1qBrEnJlcqfIeiRZ2J+qYW5EuRdC1luPq95LkMo
	SSbABmgUjDVcxhTVjaNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0nw-0002EI-1I; Wed, 11 Mar 2020 12:49:44 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0lQ-0008Bf-Ib
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:47:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id a132so1947292wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DVwcU8zMkbBCBeDrHNdhEC1RvSG6OG5A+AegDdk4FZg=;
 b=urRlNUx8hO97E3/ithv5W/xzktVGqA1nV8O5fFz7ObhKvbEb2aNkJgJoKBpnVdphl4
 5KBtdCKu/sgivS/hsjhVd9Sr/X1Un9ZKJ87q0cEtnZScW1Pc4HHzlnmW0o+AbOz4ueP5
 zyiCCpfL8vGbdiD9DgrSXZ7XaFDisGxPx0ysInpR3PAK89famZ8K8Fj1an2TBiXDAYaE
 fG3FqhhJJeNEsHKKygqVfcWKtxEwUnRFtGqa5ACIlECBWpovqJEGF/dZ+xZf9pivDmhr
 lMwE+AWqy9HFztiZU7KrWfM0WAPgUIHsjlIQ7vDYMmjWMwOOE+sv6p+UcxnGShNeQvLg
 e2VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DVwcU8zMkbBCBeDrHNdhEC1RvSG6OG5A+AegDdk4FZg=;
 b=mDrq79ylyqBuCULKrZLe4F4bdDUlpepsx4vCjjxOb0/CwRtXkcdpytiFdUN3AGE2jh
 SChVh1SWnV8MNp/l6M4n3azDqiqGnikQrsxWbIJ6sC7B7EM0s7fX8rfdme30+0QF9KR9
 ZUhTO/dZfNMc/17qBd5dt4kPuBVefjZlTsAszl1DdEt0E/EVja7o7pUVOOmEdgdgtamI
 wz1PgCTjScdXoCzqjuGvB6YJ2FrjaSYFOITu5/+H9lV2nu64D+62Dw+y/astoZ7Zjapo
 rSZYMCJhG+vDMIVK5tj+66ZcECj7ecnZvVBsUW4krXbsUc6IQ0MX+wN21AjgQKVsIN6P
 cLkw==
X-Gm-Message-State: ANhLgQ04yb12xa4fuitIAPYQhRliBHUT72TSSTuBYF2PUslivpB0frsj
 U7uOC6ICQrGYprq4j6mIAX7eEw==
X-Google-Smtp-Source: ADFU+vsyF4i09IJC6n7a05lkPoLiRARiHxJM+vYgxp5oWnXx/+N85xAu8rhEuiSrwLrfj5KAr4l3Ag==
X-Received: by 2002:a05:600c:4114:: with SMTP id
 j20mr603263wmi.58.1583930826931; 
 Wed, 11 Mar 2020 05:47:06 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id c2sm8380020wma.39.2020.03.11.05.47.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:47:06 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org, joro@8bytes.org,
 baolu.lu@linux.intel.com, sudeep.holla@arm.com, linux-doc@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v2 09/11] ACPI/IORT: Drop ATS fwspec flag
Date: Wed, 11 Mar 2020 13:45:04 +0100
Message-Id: <20200311124506.208376-10-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311124506.208376-1-jean-philippe@linaro.org>
References: <20200311124506.208376-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_054708_759259_0171F52F 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, Jean-Philippe Brucker <jean-philippe@linaro.org>,
 lorenzo.pieralisi@arm.com, frowand.list@gmail.com, corbet@lwn.net,
 liviu.dudau@arm.com, rjw@rjwysocki.net, guohanjun@huawei.com,
 amurray@thegoodpenguin.co.uk, robin.murphy@arm.com, dwmw2@infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the ats_supported flag is in the host bridge structure where it
belongs, we can remove it from the per-device fwspec structure.

Acked-by: Hanjun Guo <guohanjun@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/acpi/arm64/iort.c | 11 -----------
 include/linux/iommu.h     |  4 ----
 2 files changed, 15 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index d99d7f5b51e1..f634641b3699 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -924,14 +924,6 @@ static int arm_smmu_iort_xlate(struct device *dev, u32 streamid,
 	return ret;
 }
 
-static bool iort_pci_rc_supports_ats(struct acpi_iort_node *node)
-{
-	struct acpi_iort_root_complex *pci_rc;
-
-	pci_rc = (struct acpi_iort_root_complex *)node->node_data;
-	return pci_rc->ats_attribute & ACPI_IORT_ATS_SUPPORTED;
-}
-
 static int iort_iommu_xlate(struct device *dev, struct acpi_iort_node *node,
 			    u32 streamid)
 {
@@ -1026,9 +1018,6 @@ const struct iommu_ops *iort_iommu_configure(struct device *dev)
 		info.node = node;
 		err = pci_for_each_dma_alias(to_pci_dev(dev),
 					     iort_pci_iommu_init, &info);
-
-		if (!err && iort_pci_rc_supports_ats(node))
-			dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
 	} else {
 		int i = 0;
 
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index d1b5f4d98569..1739f8a7a4b4 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -589,15 +589,11 @@ struct iommu_fwspec {
 	const struct iommu_ops	*ops;
 	struct fwnode_handle	*iommu_fwnode;
 	void			*iommu_priv;
-	u32			flags;
 	u32			num_pasid_bits;
 	unsigned int		num_ids;
 	u32			ids[1];
 };
 
-/* ATS is supported */
-#define IOMMU_FWSPEC_PCI_RC_ATS			(1 << 0)
-
 /**
  * struct iommu_sva - handle to a device-mm bond
  */
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
