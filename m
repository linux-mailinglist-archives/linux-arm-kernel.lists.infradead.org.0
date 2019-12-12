Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF1B11CEE4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 14:56:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yILVzy4fJTg5cyyjT1k7ExXqEj5LkdKHKgZiKPpf3z4=; b=jq70DfvanlQH5G
	gq8wgsMR7GXOXsNgW44W1F2dKGqgb4u/JAOqHM3SEOg+3noRY50lRS2/iOfdZ1UgiY7FYu+BB1r35
	R0kT4QcWsbVL5qLc9ecNEU7/Nsk7oJg0P4AZ2W1EeVYOL8gQMDNBQdKJ+OSFGxGVY/+/v7BU89MPV
	7DMZgXa1A2PHy3N0sOdf0+bhkM+iS8nHM5bxqIoSWNLX77d1aNcI2iL2IygWHKW+tEU68VqlTyCIV
	1w1MDzAao/oVdGK3JxH7EfvfRVGs9W6EM/M5wolMV2XL1PNEbHhCBeoqTFc0bjMQBhCnvYt0lfz4G
	T9nuFIXTucC1/yMUcSnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifOwl-0004Ke-Mt; Thu, 12 Dec 2019 13:56:03 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifOwY-0004JL-01; Thu, 12 Dec 2019 13:55:51 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBCDti1m130359;
 Thu, 12 Dec 2019 07:55:44 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576158944;
 bh=0iLDWJMQzCj3Znd8rcYL8KQNQ37u7msZ1UlTKw8z0pc=;
 h=From:To:CC:Subject:Date;
 b=AdH+nTjOUFattoYbz5vKh2MjG+4yqS1zif/iNhB21H+DZbRiO20JjhhW8xOvy3Y04
 wn+MTpkS88eSIfWD0CaxGGtvldkKfB3oAJL2hhXZdyf1cRvxBy1Nkywn/ozs+9epDi
 AkZ22nws08ke9QXgRFRV//PMXcYwY/441UCJJz9I=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBCDtiJX044250
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Dec 2019 07:55:44 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Dec 2019 07:55:44 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Dec 2019 07:55:43 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBCDtdqQ048444;
 Thu, 12 Dec 2019 07:55:40 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <broonie@kernel.org>, <nsaenzjulienne@suse.de>, <f.fainelli@gmail.com>,
 <rjui@broadcom.com>, <sbranden@broadcom.com>, <shawnguo@kernel.org>,
 <s.hauer@pengutronix.de>, <baohua@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 0/9] spi: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Thu, 12 Dec 2019 15:55:41 +0200
Message-ID: <20191212135550.4634-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_055550_143938_7091658E 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, vkoul@kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

dma_request_slave_channel() is a wrapper on top of dma_request_chan()
eating up the error code.

With dma_request_chan() drivers can receive the real error code and can support
deferred probing against DMA.

The series has been compile tested only (allyesconfig).

Regards,
Peter
---
Peter Ujfalusi (9):
  spi: atmel: Use dma_request_chan() instead dma_request_slave_channel()
  spi: bcm2835: Release the DMA channel if probe fails after dma_init
  spi: bcm2835: Use dma_request_chan() instead
    dma_request_slave_channel()
  spi: img-spfi: Use dma_request_chan() instead
    dma_request_slave_channel()
  spi: mxs: Use dma_request_chan() instead dma_request_slave_channel()
  spi: sirf: Use dma_request_chan() instead dma_request_slave_channel()
  spi: spi-fsl-dspi: Use dma_request_chan() instead
    dma_request_slave_channel()
  spi: stm32-qspi: Use dma_request_chan() instead
    dma_request_slave_channel()
  spi: stm32: Use dma_request_chan() instead dma_request_slave_channel()

 drivers/spi/spi-atmel.c      | 29 ++++++++++----------------
 drivers/spi/spi-bcm2835.c    | 40 +++++++++++++++++++++++++-----------
 drivers/spi/spi-fsl-dspi.c   | 12 +++++------
 drivers/spi/spi-img-spfi.c   | 18 ++++++++++++++--
 drivers/spi/spi-mxs.c        |  6 +++---
 drivers/spi/spi-sirf.c       | 12 +++++------
 drivers/spi/spi-stm32-qspi.c | 30 +++++++++++++++++++++------
 drivers/spi/spi-stm32.c      | 32 ++++++++++++++++++++---------
 8 files changed, 116 insertions(+), 63 deletions(-)

-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
