Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5854D15BC79
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 11:15:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sW1hoWCtyZXTarTYefTSBEMMrSCADBSZK3nB8eukhAE=; b=DqNCT9ohsCa1a5
	kwwo9EmcVmxJPWS4Z9Kf1x1DxAcFYcoI0AcB+EAa/pGPeQLiTdsC0WWs54Unyco4USlQ0AN1autpf
	FYJGmdmCLGpUUDdfjJhtVfmMvv1ui9cdfLvDbQMJTMpQjAeKHQTRMGH9+MFla2Jw4pD1hQj9v1CtS
	mfcgWzrsMVGgZe1l25CDCDO9G2iU516yuS2AXak3pBL1NJpM/QHmFNfyya0UxJcubAja/5DfGC9Cw
	xgw+KptzZWs5TZOK0+wZZo1z3bEGRrmjkkml/wgv9/viWyndLZ9P6rolrxCjBdf7wWj1JGrBwZTI0
	RUV09q6Xtj3UIMBhZC3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2BWX-00039T-U2; Thu, 13 Feb 2020 10:15:09 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2BWA-0002yj-7z
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:14:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id w12so5927848wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 02:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=75Ftdk1VkfsWCfyfd11tlv6ByY0EWRz2RXyuqWcTsCk=;
 b=MXBaowXsv5/KjGlJHGIVcJorZztVg4eKrM/0w4F0HaKMkhG7uZ2qpG0X5g06zIZ8KR
 JnvtB5DqxM5AgwN7+3b7Wzy/vFzqAreJ/+vi5VJzrqZ7NhUOdm/sjLs0apfmXzQOdYkf
 Os4dy5aCRHTv04//SmgM6n1wj/O42Jp8ACsQy+/eig82sByEXqlJhyFrDIIA/eGWwOXO
 1diY5LShRv4n2zK8u1QDFgf0OQ3NB/zGYXZyfr4uUbUEwvA7vOThvs8tguvgjdcGGU93
 ajPMjEjhiF4BL/q+Faw5CpisW0B6BCxtZnVvi+Ecuv97amlyxGaybdu2D6eh5DGwV4Lc
 GUSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=75Ftdk1VkfsWCfyfd11tlv6ByY0EWRz2RXyuqWcTsCk=;
 b=RjRKOZRAwA0VQI/xTfQTRHyyqdHlpl4Pjr/58TUs/yHxYWE80xDlqVrRatjmZN5ovH
 ST7VmWC7l0GIn0dpPYzNkovtdAkpfcjQt4olqNSSJviyaL0oqBgxswyMM4uEpAWUUXzl
 ZyQP5Zq6HZksc73dMK2rIE3U6FzY42JsYkg2jLIr9MyRbItn7WB7JoKWpnL7x/LHD9fQ
 1WtsLKqeLfAKPzGYkNeYWBpSrBNkmVorsy+L90qq8mngTcKRp5uNyAwPWiHKd0/GfbBv
 9tHMyd0huUaso/RVCPglmmxbO4rmJDh9BiK/Gn0FhGBDGNy5g/SkqffDgx7YEctbRn81
 4Yvg==
X-Gm-Message-State: APjAAAVkXzIJM2kh3/ZhTixk/RVbUOts5+87bQcrrix3zPuvBsIoTa/f
 F8gsOqfbwF5/S/zwC/yc2Zk1aw==
X-Google-Smtp-Source: APXvYqyaY1njF+rZBaq9zhF3XVnI+fBQ+a+gjM1pwH0+xif4vevn+377YjCqBR53sPA0jLv2qnJW8w==
X-Received: by 2002:a05:6000:1:: with SMTP id
 h1mr19408168wrx.380.1581588884202; 
 Thu, 13 Feb 2020 02:14:44 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id y131sm2428059wmc.13.2020.02.13.02.14.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 02:14:43 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, will@kernel.org, bhelgaas@google.com
Subject: [PATCH 0/4] iommu: Finish off PASID support for Arm SMMUv3
Date: Thu, 13 Feb 2020 11:14:31 +0100
Message-Id: <20200213101435.229932-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_021446_294044_367D89B9 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: zhangfei.gao@linaro.org, joro@8bytes.org, robin.murphy@arm.com,
 jonathan.cameron@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support for context descriptor tables was added to the SMMUv3 driver by
commit 87f42391f6a5 ("iommu/arm-smmu-v3: Add support for Substream
IDs"). The last patch enabling PASID in PCI devices couldn't be included
right away since it would have prevented from building SMMUv3 as a
module, another feature introduced in Linux v5.6. Export the relevant
symbols in patch 1 before using them in patch 2. Patches 3 and 4 address
the other remaining comments for the PASID series [1].

[1] https://lore.kernel.org/linux-iommu/20200114154007.GC2579@willie-the-truck/

Jean-Philippe Brucker (4):
  PCI/ATS: Export symbols of PASID functions
  iommu/arm-smmu-v3: Add support for PCI PASID
  iommu/arm-smmu-v3: Batch context descriptor invalidation
  iommu/arm-smmu-v3: Write level-1 descriptors atomically

 drivers/iommu/arm-smmu-v3.c | 78 +++++++++++++++++++++++++++++++++++--
 drivers/pci/ats.c           |  4 ++
 2 files changed, 78 insertions(+), 4 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
