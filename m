Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B65A9129C30
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 01:59:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mnnEJq/1eeC2ATyHR479aNmLYx8H+8GatjkpWLSQMIg=; b=olH
	A3/skLd8OE7Cb9axbxy4En7lgpWCjvIq4fyb0F9piH1IcW31hG5yLhrj65uHaaSvSfmeqNKvBV1kg
	kYu8d2IERJroXi2awmEft+I9MA6ovAHi0+PMGABFWw8JDdtAxSqKmjrSjymBMm2ubsHmQ2lL7idKw
	2y98tjZY8CpYTaiFO75nrXIndtjk1Q7Aoq9mrbxb3+y0MjOpJcoA6exYZPOB2oihuBNiHYF3rj917
	xUQHFSD2yIzzwet9Jbw7rt/mff9DtE5LHlvq1Mf59MoRTpFoG4vWyJ6RbJEgUfrIzoZ+02YD+piMl
	V4ecVtP6xGQCwPhUeDPDPEMc6DZ1G9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijYXa-0002Rl-BL; Tue, 24 Dec 2019 00:59:14 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijYXB-0002HI-4z
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 00:58:50 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 24 Dec 2019 09:58:45 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 2FEE1603AB;
 Tue, 24 Dec 2019 09:58:45 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 24 Dec 2019 09:59:24 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id B36781A01CF;
 Tue, 24 Dec 2019 09:58:44 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Mark Brown <broonie@kernel.org>,
	linux-spi@vger.kernel.org
Subject: [PATCH 0/5] spi: uniphier: Introduce DMA transfer mode
Date: Tue, 24 Dec 2019 09:58:22 +0900
Message-Id: <1577149107-30670-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_165849_313337_31D3C636 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Keiji Hayashibara <hayashibara.keiji@socionext.com>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series introduces DMA transfer mode into UniPhier SPI driver.
This only supports UniPhier XDMAC implemented in the SoC.

The DMA transfer mode uses FIFO threshold as a trigger to start DMA transfer,
however, the FIFO is limited to one word width due to alignment restiction
of the DMA controller.

Kunihiko Hayashi (5):
  spi: uniphier: Fix FIFO threshold
  spi: uniphier: Change argument of irq functions to private structure
  spi: uniphier: Add handle_err callback function
  spi: uniphier: Add SPI_LOOP to the capabilities
  spi: uniphier: Add DMA transfer mode support

 drivers/spi/spi-uniphier.c | 261 +++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 241 insertions(+), 20 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
