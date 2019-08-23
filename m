Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A04469B00F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 14:56:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/6ZJs1JrIJ8Vpgn5KXUk/0QeTG1QsWgcptlZREBAO4s=; b=SCuSzz+gv07zkq
	eOvpeexjqLPOHi737bmhI36i8khXPzlQPBaE+jwrr1yvvLR/ZQ/g/k2zgyVjF0i31yPUp1N97SKKZ
	Ik+uDFFQt6oQK2AO7cxU0vl340fHWz3/Sw6McGbazxQSMR2KLYwUXF2aXPg6A9XauW1rHHAfqVtqA
	x0FKMhVm2xXKjWRSB0TNpyukP630nM1Sq7S3XFCIILobl6bk32wjTp8n4wImDRqruGMLzrQfqztTO
	Vn438IU/jHjmuYyQj8sid8ALP5KFsqP2B20PNAjntHCeYVkenWyS+KzWEN/wNgyyAIyuaumiPDQZG
	yKfKD0NmrHuYWzXZL3tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i197F-0008EP-C0; Fri, 23 Aug 2019 12:56:29 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i196u-00083l-5R
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 12:56:09 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7NCu3ku076487;
 Fri, 23 Aug 2019 07:56:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566564964;
 bh=90F2Ku1Xn8M7W9QVFhYhs3tdIyL07/aRX/oyDTbPkQM=;
 h=From:To:CC:Subject:Date;
 b=vjbu0oxDaj/Z/q8NQPAemQSd1aSsfSI2xT2o831AZa+07dKUXjZFWW/vKhp7Gsf2A
 8y9RuVmeskLNZ60kCzGY6UDJQ++Kw8IUgrsFye+VFKF6h6Fs7/gi88FtyEhyk+WzVt
 S+VTFIsDkI5uG5LpKX/832LrD010lPyKiyP4ZmsM=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7NCu3uB015093
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 23 Aug 2019 07:56:03 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 23
 Aug 2019 07:56:01 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 23 Aug 2019 07:56:01 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7NCtwke092319;
 Fri, 23 Aug 2019 07:55:59 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 0/5] dmaengine: ti: edma: Multicore usage related fixes
Date: Fri, 23 Aug 2019 15:56:13 +0300
Message-ID: <20190823125618.8133-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_055608_251102_70E9CB0B 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

When other cores want to use EDMA for their use cases Linux was not playing
nicely.
By design EDMA is supporting shared use with shadow regions. Linux is using
region0, others can be used by other cores.

In order to not break multicore shared usage of EDMA:
- do not reset paRAM slots which is not allocated for Linux (reserved paRAM
  slots)
- Only reset region0 access registers, do not touch other regions
- Add option for reserved channels which should not be used by Linux in a similar
  fashion as we already have for reserved paRAM slots.

Regards,
Peter
---
Peter Ujfalusi (5):
  dmaengine: ti: edma: Do not reset reserved paRAM slots
  dmaengine: ti: edma: Only reset region0 access registers
  dmaengine: ti: edma: Use bitmap_set() instead of open coded
    edma_set_bits()
  dt-bindings: dma: ti-edma: Add option for reserved channel ranges
  dmaengine: ti: edma: Add support for handling reserved channels

 .../devicetree/bindings/dma/ti-edma.txt       |   5 +
 drivers/dma/ti/edma.c                         | 190 +++++++++++-------
 2 files changed, 123 insertions(+), 72 deletions(-)

-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
