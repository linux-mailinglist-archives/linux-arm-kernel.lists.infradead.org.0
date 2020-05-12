Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651661CEBD3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 06:10:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O7CU0hr9A9y4wX5qQQzJ4IqcyA948TCz0PdIfA57Wc4=; b=qHNwj53qp+d536JcOQAD4TghEa
	b7e6WZ4KG4TAVnBQSjNt9tOzWwp64taPnly77OaAJ7LxKcPS9Tx4puHyNUaB67RhOQy2NxiH6xmvt
	GueQke1Yvvg7vOTV0aI742/tzRyeFT16cUsX2UzPDNEggptpXIQnKDs5oHLWmD6geCkFOn6SN+t+B
	jkO6wZ1aJdmk0PIbuaO/5F2UGTAvuKqs3LREBY2I2i/F6FaugHOoWtQKly7JegqbGW/8Tjckm+XPC
	RYH1D5BjL17tZjV+N886Mx9Cok0mRZdmpIsLF+soU72BWhTZHvfKIfswwZebB5nPk9rQP81nL4ucx
	1q5XEPhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYMEy-0003oP-9z; Tue, 12 May 2020 04:10:00 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYMEc-0003gF-DL
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 04:09:39 +0000
Received: by mail-pl1-x643.google.com with SMTP id g11so1584810plp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 21:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6S28BNiWmQ/hEXUnU1MTnqXBi18kA3ePoZOYdtU1cwQ=;
 b=zKPMo9VxVy3jMqZvbDFZzd0rfMvjK8sIRqKU+RRM8fhiK3BsQbxVPPqNYrdq3CNlJp
 srwFwGJmFE53BiW8OELV7eGESL1CDt3+K4ya4VOcLbsiDUEhRhJL5Hsx5wYQmr4/a1ha
 npM2phtb/qYoGwQEx97t6GacPM8Z7YAe5eoPRlt84htL5JM81zMsdpd3BUasJ+/8QsnH
 dkV7TQ2UOgKSRXuw2IGL0NHMPpGwN/hPYlde9jC+uvFu5gspfztR7vKX+YVtfvubS0Zb
 /IgWuGFfL2eesthQolXE8F1dD/HdpBfJqLHJnovOiJQqYzfmg/aL8KblwwEQlXwQIPtH
 rPJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6S28BNiWmQ/hEXUnU1MTnqXBi18kA3ePoZOYdtU1cwQ=;
 b=bxAOCgkpqA8wUwp0EkidwqVi0hzi4fSK8NvTNvhen7wy8bS965+22PRCun+wm46goi
 OO/MSa3hDS2H4hT4YtMx50XH0+hGKyPaSO5++W4791TeVIF5lCAAMhbvSk4gNTTT7Uqs
 +Jd7qnRySTfl7Jar4m+jjJAuoM3UwV6CTcd84x2DZd8vsx9314MVJeG1gN7TqqkJoSEA
 KSNiiCgUsKYUa62YrH9Krcb5CcBCXwu/Y06g4Zo9JnLZV5O1zQqmGh42qzNko9kOiQPZ
 vwQzRciboXQkCTEVLeeXuaKptNEgJ7STf3MvvmtNEKPAmfjY3NdLG/X6CwyB5VRFI2+a
 uJPA==
X-Gm-Message-State: AGi0PubD5JayKrr1SCcfwRyQMSSAB4qdKYszM5JrnwYJ/+PTlIn9FiK3
 md8Zo8gWQ1SROOjmg7ruRPMjhA==
X-Google-Smtp-Source: APiQypIz5wcptWAsZSR4zFqLILzJ6EQ/AyMRL3bPtWuTsky6Bgy54mQMi2/qmxe6ZV1FPbWCHDML+A==
X-Received: by 2002:a17:902:728e:: with SMTP id
 d14mr18153543pll.107.1589256577364; 
 Mon, 11 May 2020 21:09:37 -0700 (PDT)
Received: from localhost.localdomain ([240e:362:443:6f00:91af:f25c:441c:7ba4])
 by smtp.gmail.com with ESMTPSA id
 e4sm9471527pge.45.2020.05.11.21.09.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 May 2020 21:09:36 -0700 (PDT)
From: Zhangfei Gao <zhangfei.gao@linaro.org>
To: Joerg Roedel <joro@8bytes.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Hanjun Guo <guohanjun@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
 jean-philippe <jean-philippe@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, kenneth-lee-2012@foxmail.com,
 Wangzhou <wangzhou1@hisilicon.com>
Subject: [PATCH 2/2] ACPI/IORT: Let pci_fixup_final access iommu_fwnode
Date: Tue, 12 May 2020 12:08:31 +0800
Message-Id: <1589256511-12446-3-git-send-email-zhangfei.gao@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589256511-12446-1-git-send-email-zhangfei.gao@linaro.org>
References: <1589256511-12446-1-git-send-email-zhangfei.gao@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_210938_456024_2B7AE192 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

Calling pci_fixup_final after iommu_fwspec_init, which alloc
iommu_fwnode. Some platform devices appear as PCI but are
actually on the AMBA bus, and they need fixup in
drivers/pci/quirks.c handling iommu_fwnode.
So calling pci_fixup_final after iommu_fwnode is allocated.

Signed-off-by: Zhangfei Gao <zhangfei.gao@linaro.org>
---
 drivers/acpi/arm64/iort.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 7d04424..02e361d 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -1027,6 +1027,7 @@ const struct iommu_ops *iort_iommu_configure(struct device *dev)
 		info.node = node;
 		err = pci_for_each_dma_alias(to_pci_dev(dev),
 					     iort_pci_iommu_init, &info);
+		pci_fixup_device(pci_fixup_final, to_pci_dev(dev));
 
 		fwspec = dev_iommu_fwspec_get(dev);
 		if (fwspec && iort_pci_rc_supports_ats(node))
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
