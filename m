Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A55251248A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 14:42:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzood2uhns7nr8BhVZnVj6qcsOqeQnFvKT2MM7SQdKI=; b=W8MzvKCWn6zJo0
	HkfEt64HMOH11fhluZ6D1ud/auQZ7IebnKBEbt6FRdWkJEpZa6Q6esHhDvBrDq7DexhSAAgw5OS16
	sT2BUKkaNitmxIxQqmcSZQKPCfbUEnK/FZnxxckXv+anUaFnLQC4KSkOy1eI2w00Sh3cEG9Chk9sr
	4K41OyvM2JoKkYUjf4UZK4DYga4RDFH9J4yP1rrQCiqx8oEpTHo5fJbebF7H9Tk/dikqfVbwgF6jn
	ZMosdtGHlEIgIe/6U6ray9m4zm0OSshHCCK/lYFBYmsh9JVqG8g/4X8iCHMMvbi9yr21fZZr4jBlm
	5cxmymVhuwkfox9oRyVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZbK-0000Gg-TU; Wed, 18 Dec 2019 13:42:54 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZag-0008Ng-PD
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 13:42:16 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so1890547wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 05:42:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hsSJEdQqIlVTuRxaI5pZ056JoQciAS3rF+M0zjO6p6Y=;
 b=Um7cIxVKrCL+GblkgV5cWPFKTxMRq1sqlSkP97BUTJnao5yxvGJ1mxC17XJpzKbyBu
 ikiHm0Px1UB7chSLij+ETIXF3g2taubWqshSlFmQ0pTYzni5QhviUHOA8jDeht2fLhfR
 R+zQLmjcn+GvltAQv3pZPK35vxxWFUTXrdU6i4OIHBh9WMyCCi176mTn5nuSGa7xcT5M
 vVkmD+w9VTYX1pt/WqNIAft+tEQ1hp+7VHHQGnU6U0uk1xCw48nPJJI+v1wMc1e8+UDa
 nTpbLq34/DFx/HL1vn38IhkVj85px0hpMZkHza8QfXo3oHIRlb2l/lXnxVyi1tHnX/HC
 0YLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hsSJEdQqIlVTuRxaI5pZ056JoQciAS3rF+M0zjO6p6Y=;
 b=ey+vNX10v15Umvc1NTvIw5dw+IrPoc8yqeDH/drjWm0ez6UEGPWmXftLiVrMWBglv7
 fa/PEvrn4+a6s7Jmxohj9lzGTsS8raDrKANsjzcCWmpoMKp2dQwydsf/MxqVBdgE/TUo
 enmH3yHXAz7d3VFX08zroGgPr6s6VrsG6VxRY6Dfkkh17uuKrCJtwJ+g1kjxNN30VJom
 lPD2Di3wLwiTU7aLp+sWhlrNHhOPclHkgUtn+yZ06ykQlPSnz6XfvPCkWeSV7WszCDoP
 rwe+Ulm/q3j4Y3PUspfTLhhI9s5HLKYkqQqa/ESNzas6UTCLZgPzrc+4aTLDGHzA338f
 6upA==
X-Gm-Message-State: APjAAAWNE3rb/V9XUcvykirGWaX8E/YYKhVhuhqdifWob2Fs24YijEze
 jMTQNyKVVRybAtuALKzKdV8=
X-Google-Smtp-Source: APXvYqxRFC4I+BCYSiyF2qywZ62vBWbBCIeFguxaUfSMQB/i5OtCkbkLGzOCIMSKTyOiyj0m7omV0w==
X-Received: by 2002:a7b:cd07:: with SMTP id f7mr3247759wmj.37.1576676533311;
 Wed, 18 Dec 2019 05:42:13 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id y6sm2578671wrl.17.2019.12.18.05.42.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 05:42:12 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH v3 1/5] iommu: Implement generic_iommu_put_resv_regions()
Date: Wed, 18 Dec 2019 14:42:01 +0100
Message-Id: <20191218134205.1271740-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218134205.1271740-1-thierry.reding@gmail.com>
References: <20191218134205.1271740-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_054214_822226_7273E6AA 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Christoph Hellwig <hch@infradead.org>, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Implement a generic function for removing reserved regions. This can be
used by drivers that don't do anything fancy with these regions other
than allocating memory for them.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/iommu/iommu.c | 19 +++++++++++++++++++
 include/linux/iommu.h |  2 ++
 2 files changed, 21 insertions(+)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index fdd40756dbc1..101f2d68eb6e 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -2229,6 +2229,25 @@ void iommu_put_resv_regions(struct device *dev, struct list_head *list)
 		ops->put_resv_regions(dev, list);
 }
 
+/**
+ * generic_iommu_put_resv_regions - Reserved region driver helper
+ * @dev: device for which to free reserved regions
+ * @list: reserved region list for device
+ *
+ * IOMMU drivers can use this to implement their .put_resv_regions() callback
+ * for simple reservations. Memory allocated for each reserved region will be
+ * freed. If an IOMMU driver allocates additional resources per region, it is
+ * going to have to implement a custom callback.
+ */
+void generic_iommu_put_resv_regions(struct device *dev, struct list_head *list)
+{
+	struct iommu_resv_region *entry, *next;
+
+	list_for_each_entry_safe(entry, next, list, list)
+		kfree(entry);
+}
+EXPORT_SYMBOL(generic_iommu_put_resv_regions);
+
 struct iommu_resv_region *iommu_alloc_resv_region(phys_addr_t start,
 						  size_t length, int prot,
 						  enum iommu_resv_type type)
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index 1b4fbe703950..2e06b31579c2 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -477,6 +477,8 @@ extern void iommu_set_fault_handler(struct iommu_domain *domain,
 
 extern void iommu_get_resv_regions(struct device *dev, struct list_head *list);
 extern void iommu_put_resv_regions(struct device *dev, struct list_head *list);
+extern void generic_iommu_put_resv_regions(struct device *dev,
+					   struct list_head *list);
 extern int iommu_request_dm_for_dev(struct device *dev);
 extern int iommu_request_dma_domain_for_dev(struct device *dev);
 extern void iommu_set_default_passthrough(bool cmd_line);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
