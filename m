Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2271E14D627
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 06:28:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tF0mfjBFaMVGAZL6rZdZW0l2FCk6VPxEM7cvL4EWVdc=; b=NtL
	FSyEkB8kgLCV0wfe6pzdyyY3mvRcPq8rXarYTQQ7y8aYtpyi9nrm2x4O9dn1p0yAjthlz8CEQZv1e
	oxwuFTrwx0PCsmQdQ63ey2zg+WrcKp8bQGDQxM9RVuk3TnaQJctsAfnO5XBPezZuv9n+71kJ/xg6i
	evmADPGkQ/q4az3b3Dx61xyEJq1EfyK1tcTpJ1XVGQbQjIgHqztRDOWQ6bHCzwDYC1E8/kfI4hRIM
	mgLGHjRLc6RMe8Wi4GcB8uDDmUaurP/eu9ShT4lZ4WCi8IbaotRUu8FBwIEI2JV1XoqeecV4+Iu+2
	GOm3+EBxop9nCdXV2iSpfBYjIhwrDiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix2Mv-0001XD-1S; Thu, 30 Jan 2020 05:27:57 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix2Ml-0001VB-B4
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 05:27:48 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 30 Jan 2020 14:27:43 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id BB75F603AB;
 Thu, 30 Jan 2020 14:27:43 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Thu, 30 Jan 2020 14:28:47 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 4596B1A11A0;
 Thu, 30 Jan 2020 14:27:42 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 0/2] dmaengine: Add UniPhier XDMAC driver
Date: Thu, 30 Jan 2020 14:27:26 +0900
Message-Id: <1580362048-28455-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_212747_492932_2F176310 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-kernel@vger.kernel.org,
 Jassi Brar <jaswinder.singh@linaro.org>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for UniPhier external DMA controller (XDMAC), that is
implemented in Pro4, Pro5, PXs2, LD11, LD20 and PXs3 SoCs.

Changes since v1:
- dt-bindings: Rewrite with DT schema.
- Change return type of uniphier_xdmac_chan_init() to void,
  and remove error return in probe.

Kunihiko Hayashi (2):
  dt-bindings: dmaengine: Add UniPhier external DMA controller bindings
  dmaengine: uniphier-xdmac: Add UniPhier external DMA controller driver

 .../bindings/dma/socionext,uniphier-xdmac.yaml     |  57 ++
 drivers/dma/Kconfig                                |  11 +
 drivers/dma/Makefile                               |   1 +
 drivers/dma/uniphier-xdmac.c                       | 612 +++++++++++++++++++++
 4 files changed, 681 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
 create mode 100644 drivers/dma/uniphier-xdmac.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
