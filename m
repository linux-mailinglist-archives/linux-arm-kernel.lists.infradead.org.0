Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 936051CEBD1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 06:09:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ra6Brq0BqL4So2/hVbY8boGuSgTFBc9Qf4qn75DZtPA=; b=tKlson/vn4gP6QaKOG1zMdR/Ow
	JY6qeHmNETHwxeJfV0Q/fhd6+XNPeEKu83OlT7xH3W3GNd8GfhjjaRd7pzWN2usQo5e/BqaGxsWIN
	TeNfW8iw4zTGrBusVu0RkqSxh+cg/lwm0WgCQx28CzTmym0LOww88TG8mXATerwaSJw8zNeTs1Ls/
	/sE6Z+P7RbKPcN+kgICkD6hEYeuYTB6TPLLFRMoJcRf6f00ZBleQt6SRYgs7Wf8gaL3b2UuZCEzC2
	QMIR2bV1SIYLSQ0f7p+XuB3stIflV4+7/cAgCqky62XHEuFNBqGT8nBDqmikS3CMRlg/YxPETTDYq
	LC+eVJBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYMEc-0003Xv-BW; Tue, 12 May 2020 04:09:38 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYMEQ-0003UI-9d
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 04:09:27 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ms17so8756498pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 21:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7aGIDKJhsEoY1eFnx3GCg/ODucM/74uibRkoUrBNgnI=;
 b=MbXe+HW+y1nKNTeJX7Rkc7vQR92xitRyMqVJP0a6SsxnDbH6iUYomnq74hWzkTZ68f
 VsDEXcDNI+WiQL7KRKURgC+DnubpxvtlSqRn6orZ3t6ahJUtWU/jba1VmPfGbrAQFqe9
 d0BOXtDZ+KmfLxAs01EAm+ZevUv5lCcWOdbmkxj/n/F+TajL6AyfojV7uQRSExlmsqBt
 LzIIpV/HCvUMd5y8iKO9j+SJ+YZ0MESDLDGKnwdAtg4g2nGjok30yTiubZY4Wdh/s4tp
 eZT6ISiSZ2ssxGHdJ8crKSCVmJ+01cXY+GFP12rW456eaMSvowo+kn4HrkR1btVPh/JZ
 jPwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7aGIDKJhsEoY1eFnx3GCg/ODucM/74uibRkoUrBNgnI=;
 b=RQhnbjpo/DucRM6PJy244w9pxlIAlRS8qd7ESJSQ+/jnOzMXOBOsmH2wDi+BzUHMtU
 rHH5i9PNpbgACdZ9o978K8i8rhzgNYNLtPluH4Vyms9elnnuAg4tSlzsF/ZsxvaLHIjU
 z3c2AhVDkVC8qfsZiJ146V3/SzO9XmJrCBr7xpd4CyYT2oh5VBFLLSaZUscK+BnJyb4K
 9dVVG9IEaJVb0c1RC4srMo/1ZSBsTxaDLazwKo0Yl2PtTgF7gR1qUuuaqezGW7Un/JWt
 j6EpaBHLcIaOl/KdXl63oqrwVxnP/M0e81Ejv++PmZGCJ/MwKU7l9hnLtkEx4sdBuyu6
 1DpA==
X-Gm-Message-State: AGi0PuZ4VpkAdYewEsl/tSROQegOT4nAZnNAiacxz9tZuTVmKwWAzWCD
 7lvGOGjhge59TJkRl+R8rImWXIVIQgLfkQ==
X-Google-Smtp-Source: APiQypLaB23RJirP/v+StJWLJjQaMOF0325fVzznuPTbvKpEkcQWNB3eHs32G8ciUzq8DPIby5tNug==
X-Received: by 2002:a17:902:c281:: with SMTP id
 i1mr18100582pld.85.1589256563703; 
 Mon, 11 May 2020 21:09:23 -0700 (PDT)
Received: from localhost.localdomain ([240e:362:443:6f00:91af:f25c:441c:7ba4])
 by smtp.gmail.com with ESMTPSA id
 e4sm9471527pge.45.2020.05.11.21.09.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 May 2020 21:09:23 -0700 (PDT)
From: Zhangfei Gao <zhangfei.gao@linaro.org>
To: Joerg Roedel <joro@8bytes.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Hanjun Guo <guohanjun@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
 jean-philippe <jean-philippe@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, kenneth-lee-2012@foxmail.com,
 Wangzhou <wangzhou1@hisilicon.com>
Subject: [PATCH 1/2] iommu/of: Let pci_fixup_final access iommu_fwnode
Date: Tue, 12 May 2020 12:08:30 +0800
Message-Id: <1589256511-12446-2-git-send-email-zhangfei.gao@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589256511-12446-1-git-send-email-zhangfei.gao@linaro.org>
References: <1589256511-12446-1-git-send-email-zhangfei.gao@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_210926_333404_743F74FB 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-crypto@vger.kernel.org,
 Zhangfei Gao <zhangfei.gao@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Calling pci_fixup_final after of_pci_iommu_init, which alloc
iommu_fwnode. Some platform devices appear as PCI but are
actually on the AMBA bus, and they need fixup in
drivers/pci/quirks.c handling iommu_fwnode.
So calling pci_fixup_final after iommu_fwnode is allocated.

Signed-off-by: Zhangfei Gao <zhangfei.gao@linaro.org>
---
 drivers/iommu/of_iommu.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index 20738aac..c1b58c4 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -188,6 +188,7 @@ const struct iommu_ops *of_iommu_configure(struct device *dev,
 		pci_request_acs();
 		err = pci_for_each_dma_alias(to_pci_dev(dev),
 					     of_pci_iommu_init, &info);
+		pci_fixup_device(pci_fixup_final, to_pci_dev(dev));
 	} else if (dev_is_fsl_mc(dev)) {
 		err = of_fsl_mc_iommu_init(to_fsl_mc_device(dev), master_np);
 	} else {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
