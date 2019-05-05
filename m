Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D37141B9
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 20:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k/GdZoW4Fv66k9ut30Bs9P9O5f1JLwhiK+8NDiO7doU=; b=OH5ZqhhyRZRNGC
	x05+BpoJsSa+qEJpOVjPxK+gtfhUQobtkt0a/ZL7zWx5VNwZQx5ZkL1aLoM758apNdQ2JEMI8lj0s
	sFIZOqKUf9yAJZkwvZthPIcEInOaA4Gzx1XMn/K1IcGnE4ZlcwKrueN5UozXJEy4krDgiyR6c7bIe
	3VkPEWyVTPNwUAVUKKfzk62snPbU8b15tsocZbYp2HLptqLFboVTmbG0C20oFQd+ErXi+cK2acQkU
	Xa1tDj0dD+cWJs9+8NubOb62V6wJ0Qaqf47Pm86bzD62HmkXCrEOuzBdxs8VbKfhVEJlD4UUW+8Rf
	BZdnPa/TtVZHYy08U4FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNLZm-0000uG-Gl; Sun, 05 May 2019 18:09:26 +0000
Received: from mail-sender200.upb.ro ([141.85.13.200] helo=mx.upb.ro)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNLZe-0000sp-2o
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 18:09:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by mx.upb.ro (Postfix) with ESMTP id 5A920B560092;
 Sun,  5 May 2019 21:09:04 +0300 (EEST)
Received: from mx.upb.ro ([127.0.0.1])
 by localhost (mx.upb.ro [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id qjAEdION00kg; Sun,  5 May 2019 21:09:02 +0300 (EEST)
Received: from localhost (localhost [127.0.0.1])
 by mx.upb.ro (Postfix) with ESMTP id BF351B5618E0;
 Sun,  5 May 2019 21:09:02 +0300 (EEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.upb.ro BF351B5618E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=upb.ro;
 s=96342B8A-77E4-11E5-BA93-D93D0963A2DF; t=1557079742;
 bh=LnDNlk6DOmQ1utGOMALPYd2kTfl57JKXKnsYulppIoo=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=G6VL+S2RyDWtmRUDM1Sp0UFCsMkRN2YKwnYEtbuNHZ5EmR7kKUBNgofSilJDR+K6C
 NWK//pLI0tBXa8ZjqtdSlA52BiMK1RxR/Zk7YYOSE6l02qEUWgbDIaMuvmHDuN/9k7
 fjbgxs6AVVi5DfFRz/IvfTrB2MUb4TNGRtW/5fQE=
X-Virus-Scanned: amavisd-new at upb.ro
Received: from mx.upb.ro ([127.0.0.1])
 by localhost (mx.upb.ro [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id POFBzA6OiHIj; Sun,  5 May 2019 21:09:02 +0300 (EEST)
Received: from localhost.localdomain (unknown [188.25.87.154])
 by mx.upb.ro (Postfix) with ESMTPSA id 93EDBB561841;
 Sun,  5 May 2019 21:09:02 +0300 (EEST)
From: Radu Pirea <radu_nicolae.pirea@upb.ro>
To: Radu Pirea <radu_nicolae.pirea@upb.ro>,
 Richard Genoud <richard.genoud@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 0/2] DMA support for AT91 USART in SPI mode
Date: Sun,  5 May 2019 21:06:44 +0300
Message-Id: <20190505180646.1442-1-radu_nicolae.pirea@upb.ro>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_110918_462977_3DC3F496 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.85.13.200 listed in list.dnswl.org]
 2.5 URIBL_DBL_MALWARE      Contains a malware URL listed in the Spamhaus
 DBL blocklist [URIs: upb.ro]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This is the version two of the patches with DMA support for
spi-at91-usart driver. 

Changes in v2:
- specified in bindings order of dmas and dma-names
- changed DMA_FROM_DEVICE to DMA_DEV_TO_MEM and DMA_TO_DEVICE to
DMA_MEM_TO_DEV when dmaengine_prep_slave_sg is called

Changes in v1:
- added DMA support


Radu Pirea (2):
  dt-bindings: mfd: atmel-usart: add DMA bindings for USART in SPI mode
  spi: at91-usart: add DMA support

 .../devicetree/bindings/mfd/atmel-usart.txt   |  20 +-
 drivers/spi/spi-at91-usart.c                  | 221 +++++++++++++++++-
 2 files changed, 234 insertions(+), 7 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
