Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D7D1A86F1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:06:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLIIr1lSGIXWuD8Q0uB0oocaZQDY+hbjBS0XeIRnqyQ=; b=AfsCDsfByN0gMI
	4UVhW9yI8LQvS6f+JpPDaRlJkLLdOF9tNk2989EQ/pmiBmyRyQJdSJ+wWfte/w9Y00VpriY9MjJzg
	Ke1m/0B/avp2wa2BaD4nP3MmjdtnlTOQp/NoWMAJ7maXa3k4XmSldengoViIetbdwujH5EqxWjhwO
	96L6VR0ovhOZXxE/bJ8Lxu9HyqF431+frCkcCbQLiXLztZvr0oXZZdOXwwBpKd83nuwSwvi4NP8KL
	k+ENFnEjF8lrXm9AaUmM797PLdTUOmQ226eDcH9kKmYpQ0i0bZwrOK5XPEfoerWKveF4ohFHOgru8
	Daa1/a6qiXX28KwXzNvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOP1M-0006SV-KE; Tue, 14 Apr 2020 17:06:48 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOz5-00023O-7O
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:04:30 +0000
Received: by mail-wm1-x341.google.com with SMTP id g12so7074623wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Pm90KHnx8uK8AXrbNapri8S3uUJ3F4SFKQZ/TEPP7D0=;
 b=H/49gtTyBTSYl8Y/NsAtw8/g2zInRHKwlAM06dE15HfIZYVeRpp26xgT3c6zafASzi
 7uDVin3Kh8IClWDwqrYvKeFnyEB6udiDwCzxx2XTV4flbL6HH0XG9E/oPAZMxmIEDG2M
 jnmEkxuf7GeDgwVmmZ4SS2Ai+L4FsU4qiAepIcf4xzuUgNOcUilebN8pD4B0N++nF8Vq
 Zp/DuX2F1sTJiHAzOXJwPFc6HbGiFHxiJnEcW/IlfA8fGtHRi7Np+xmoeh36HV8dpfll
 4HfN46I/PT6emJf6bvhw3gp7qf7nU5c8gXH7dohtjLBTfv8wGTTZmGm7nQ70C7xIRVtp
 OYOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Pm90KHnx8uK8AXrbNapri8S3uUJ3F4SFKQZ/TEPP7D0=;
 b=UMXx5suwpfZBHiMY6CZAt6/YwiVeTB4udJf9PmqRf7C9NX2tpQ+RvlDO7GLdK7BgvO
 B0gjZyF5jKneDx3cNhRgJeSbrakjn3u7kVbzkIvGaiTbpRt9TIIbJWCxQZ168ZaTCP5H
 X08vbT6PTZOqIo/MIwCnOMpH8IvIondLzIvL1J7sMLo7CHFfoWXHtxsYoh8cFiI99vZl
 9JQcs9NO/M4zbw3BNyYF/WuBFdTfGaCAVaCbJfb2i/KBbM2+RZMSCxyuPghIVMBzRQhz
 EaOWVRrI3NI/0ruSkBL4scPjg8aIde7vzLpycWEMBuOWdDSarzFu5wfNE4Y3RDAh24mJ
 Fr5g==
X-Gm-Message-State: AGi0PublqoIa1CS+x1oGQfB0zI4vrCYeKTBmUPNT2x7FZf+FsMt+0rut
 HqLcKMMaXVbHK310qkaX/Am3aQ==
X-Google-Smtp-Source: APiQypJk/dl8CBfLNh5x7aucnzwvWIEs4TpxXFyGB0h6saUKXXv74fXgKyRLf7k//vQrLyri2cta5A==
X-Received: by 2002:a1c:998b:: with SMTP id b133mr767731wme.65.1586883865987; 
 Tue, 14 Apr 2020 10:04:25 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id x18sm19549147wrs.11.2020.04.14.10.04.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:04:25 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v5 06/25] iommu/sva: Register page fault handler
Date: Tue, 14 Apr 2020 19:02:34 +0200
Message-Id: <20200414170252.714402-7-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414170252.714402-1-jean-philippe@linaro.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_100427_318373_112491E4 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When enabling SVA, register the fault handler. Device driver will register
an I/O page fault queue before or after calling iommu_sva_enable. The
fault queue must be flushed before any io_mm is freed, to make sure that
its PASID isn't used in any fault queue, and can be reallocated.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/Kconfig     |  1 +
 drivers/iommu/iommu-sva.c | 11 +++++++++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index bf620bf48da03..411a7ee2ab12d 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -106,6 +106,7 @@ config IOMMU_DMA
 config IOMMU_SVA
 	bool
 	select IOASID
+	select IOMMU_PAGE_FAULT
 	select IOMMU_API
 	select MMU_NOTIFIER
 
diff --git a/drivers/iommu/iommu-sva.c b/drivers/iommu/iommu-sva.c
index b177d6cbf4fff..00d5e7e895e80 100644
--- a/drivers/iommu/iommu-sva.c
+++ b/drivers/iommu/iommu-sva.c
@@ -420,6 +420,12 @@ void iommu_sva_unbind_generic(struct iommu_sva *handle)
 	if (WARN_ON(!param))
 		return;
 
+	/*
+	 * Caller stopped the device from issuing PASIDs, now make sure they are
+	 * out of the fault queue.
+	 */
+	iopf_queue_flush_dev(handle->dev, bond->io_mm->pasid);
+
 	mutex_lock(&param->sva_lock);
 	mutex_lock(&iommu_sva_lock);
 	io_mm_detach(bond);
@@ -457,6 +463,10 @@ int iommu_sva_enable(struct device *dev, struct iommu_sva_param *sva_param)
 		goto err_unlock;
 	}
 
+	ret = iommu_register_device_fault_handler(dev, iommu_queue_iopf, dev);
+	if (ret)
+		goto err_unlock;
+
 	dev->iommu->sva_param = new_param;
 	mutex_unlock(&param->sva_lock);
 	return 0;
@@ -494,6 +504,7 @@ int iommu_sva_disable(struct device *dev)
 		goto out_unlock;
 	}
 
+	iommu_unregister_device_fault_handler(dev);
 	kfree(param->sva_param);
 	param->sva_param = NULL;
 out_unlock:
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
