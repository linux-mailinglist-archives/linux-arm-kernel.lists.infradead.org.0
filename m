Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFB61DB84C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 17:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oN0lWEy6x7ab3eKeJx6/v9fjf7oXzq0c/FN+vQ0qsDQ=; b=paDVbMRrYUR0SZ
	HxXVtGD6YwvM6kuuOA9UDKjOY2vWqoZCm09cEwdeHmDqni98ERWz1uZi9ohg5UPyXlFj3rHdvKy7b
	PE1Liw+WtIdP+sJ11Uu6dAMjTU0BPp7ycJ4f69zGpfkm1mPwZTGlYUlbfr7evfcKXnpfVCtHB5pdq
	dSZgAfoapO3AwsuozcdLLDkqOJRPd9v7mVeus91XXy3lebgopvHL3/dnablwhEpMzdIz3IWiqPkwv
	HpUQEqVtq73d9JYpguzlvkTUIiInsqR8EkkVL20nezEdWTfW775pwwwu2+z3WrjD7W3y8UfkONz2+
	MyxKIFe56JbC4b1OsayQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbQii-00029T-7t; Wed, 20 May 2020 15:33:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbQi8-0001xp-Ro
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 15:32:50 +0000
Received: by mail-wr1-x444.google.com with SMTP id l11so3647871wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 08:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rS3MgHL31zdXvs2YX1XoxnJ/QACnY+W7BlrTCAAllU0=;
 b=hY9oaplVLKnDyaWbfEcx3s8I1dfHkZlzlOwiaJuO2n+epmAgtp1JTI4feeUEaBrJs3
 6/revPgKuLi9A6H2mT3sQu0jH/eDEBa09OwTcwN4EXCM/I8T6ZO+o6nWqfcqE0u2+d1r
 cAPVjWmGEKC8LCbZd72iUB+DM7p0cQR0Vm9qPKqeXHgGu4T93KwE47r4s7cXKfaHSUPk
 /hJ5ngY4U+iINK6ZhPrINbx7+l9uHPvnjLKZk7iamIRNVZ3qLpxEUhj1zF5hW2KQZiT4
 ZFuGhyhRQW1or7xs+BQYyLhbHQJyub1sUSRRYeYGlATkrd9gA4Ff5irEJAVfzafwzR72
 PA7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rS3MgHL31zdXvs2YX1XoxnJ/QACnY+W7BlrTCAAllU0=;
 b=oxEanqzIOmqTCXEiwFA5YXp4Ya2OH/u7YIZytwZ5tn0YdsgWKc3KkiXjXKKNsIxKmt
 GNrfBxx9GQOW9zwbJOPayvFxlog4Y0ynHaH5kDq4Mb9ycJaLlBndOhhMpahdI6SwiziS
 pXv9LH5EPN/GpDE12/AotHoOL+F4FRPRT3yswcIPBUjf0WE26BY/AMFo/HyEEyGDjxaF
 suUUc3kt9YeVT8K8agN21acHVozzSyIL3rfZitUabljGLUAUmvXOFbHe6GBr8efE+VH3
 r0wMReiQtnza48hDIdIRA++baXu/wEnmyBWBLStsxmPKNTrlBpwE0sdldqaSPsWsTzSU
 ozcA==
X-Gm-Message-State: AOAM533A7zV3KP9SeVtenW1iedoK+M3H7LPIvztcufUboeCRUkVxQAIb
 1G7s7zrcz705QoW7ylrF8r04VA==
X-Google-Smtp-Source: ABdhPJyH2SJWlWmAdD/I/XNWbNecG/p9BGtXgaK0Dlhtqu9Ep77NQ7dbbkvudTLDgN0b4pgGbvMpPg==
X-Received: by 2002:a5d:5089:: with SMTP id a9mr4372203wrt.147.1589988766791; 
 Wed, 20 May 2020 08:32:46 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id 5sm3395840wmd.19.2020.05.20.08.32.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 08:32:45 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, joro@8bytes.org, bhelgaas@google.com
Subject: [PATCH v2 0/4] PCI,
 iommu: Factor 'untrusted' check for ATS enablement 
Date: Wed, 20 May 2020 17:21:59 +0200
Message-Id: <20200520152201.3309416-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_083248_908257_CEDC54E3 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, ashok.raj@intel.com,
 will@kernel.org, hch@infradead.org, alex.williamson@redhat.com,
 robin.murphy@arm.com, dwmw2@infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IOMMU drivers currently check themselves if a device is untrusted
(plugged into an external-facing port) before enabling ATS. Move the
check to drivers/pci. The only functional change should be to the AMD
IOMMU driver. With this change all IOMMU drivers block 'Translated' PCIe
transactions and Translation Requests from untrusted devices.

Since v1 [1] I added tags, addressed comments on patches 1 and 3, and
fixed a regression in patch 3.

[1] https://lore.kernel.org/linux-iommu/20200515104359.1178606-1-jean-philippe@linaro.org/

Jean-Philippe Brucker (4):
  PCI/ATS: Only enable ATS for trusted devices
  iommu/amd: Use pci_ats_supported()
  iommu/arm-smmu-v3: Use pci_ats_supported()
  iommu/vt-d: Use pci_ats_supported()

 include/linux/pci-ats.h     |  3 +++
 drivers/iommu/amd_iommu.c   | 12 ++++--------
 drivers/iommu/arm-smmu-v3.c | 20 +++++++-------------
 drivers/iommu/intel-iommu.c |  9 +++------
 drivers/pci/ats.c           | 18 +++++++++++++++++-
 5 files changed, 34 insertions(+), 28 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
