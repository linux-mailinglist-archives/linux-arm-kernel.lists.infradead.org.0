Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1105C123C1A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 01:57:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3KMhjwKK41JZwGJYeIJRST07IJLt5wGibXfKKUQjvSc=; b=fN1
	z8G+1HaiVX08s6yV2644DZfXVfUsqBlq9W/rUqu55SkVpgDbitlKaVaviQLtCKkSCvR2Wsp3AmybJ
	jJp+C26+Vg0Z0GMRGJM97NrkezTenuuYY5z9gb5L6WQymQOqTJflX1YY8FKKqWbTkSxvOInQ3Amdt
	W+EJ3n3begHMSKltaC/viS9QXlJ9pjzSHOm3phLtROBxl/SmjB80AUWSCYxSM/oI9Gegsv9eG4abR
	TA1J4WW0OBMXTtyCVGZNTXuD2M5+ubvHkEomsuejpAc3aO52gqB12bjqDP10llZRSNCYyaz76E8ex
	H/UQxx+iW6OjmG8Bmcjjrok8VO/zuQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihNef-0002bv-0x; Wed, 18 Dec 2019 00:57:33 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihNeR-0002aY-Fj
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 00:57:20 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 18 Dec 2019 09:57:15 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id DFF06603AB;
 Wed, 18 Dec 2019 09:57:15 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 18 Dec 2019 09:58:00 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 360311A0006;
 Wed, 18 Dec 2019 09:57:15 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 0/2] dmaengine: Add UniPhier XDMAC driver
Date: Wed, 18 Dec 2019 09:56:58 +0900
Message-Id: <1576630620-1977-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_165719_630939_9EF98772 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

Add support for UniPhier external DMA controller (XDMAC), that is implemented
in Pro4, Pro5, PXs2, LD11, LD20 and PXs3 SoCs.

Kunihiko Hayashi (2):
  dt-bindings: dmaengine: Add UniPhier external DMA controller bindings
  dmaengine: uniphier-xdmac: Add UniPhier external DMA controller driver

 .../devicetree/bindings/dma/uniphier-xdmac.txt     |  86 +++
 drivers/dma/Kconfig                                |  11 +
 drivers/dma/Makefile                               |   1 +
 drivers/dma/uniphier-xdmac.c                       | 620 +++++++++++++++++++++
 4 files changed, 718 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dma/uniphier-xdmac.txt
 create mode 100644 drivers/dma/uniphier-xdmac.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
