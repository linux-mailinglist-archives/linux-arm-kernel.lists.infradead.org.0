Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7648BC8E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 15:28:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLXb7y21pKjECH1f9J2Ssay9oFLz8pPwVNqZbrSpomA=; b=a6Bz88j3e/IF/9
	xoUOUGusmyaqTCAsBSoMdzZv/Ypf8NiSai/SK5fupj5teKW5HtroeqLlafWG1XO3SSfe/X1KG1PSj
	3xxX+3dW6sDnrsCLfggnLcjzwxqJ0IkBOT14RV1+6hkzasS4pF053PWKdjvEzuBdLEQREZQV/Y/LC
	IIkFPYj4qEcZdNjLzM4hXvrMHMxyvHeXbQkjJxJPrRLEiBkk7FrAoTTyCGN6UKbOCRASefC+R+ISs
	MJZ2L7bqvf4leG2LhuOy/ExZeHOhHO/vqcdE0XsnubBHzjGm8bRw8c6GFi2fAp9I1edDSG5w4bxic
	ZLLUv9SrVtFWbHUWai1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCkrD-000258-5d; Tue, 24 Sep 2019 13:27:55 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCkr1-00024B-Ib
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 13:27:45 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 598D567A918;
 Tue, 24 Sep 2019 15:27:37 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 24 Sep
 2019 15:27:36 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Tue, 24 Sep 2019 15:27:36 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: "yibin.gong@nxp.com" <yibin.gong@nxp.com>
Subject: Re: [PATCH v5 11/15] dmaengine: imx-sdma: fix ecspi1 rx dma not work
 on i.mx8mm
Thread-Topic: [PATCH v5 11/15] dmaengine: imx-sdma: fix ecspi1 rx dma not work
 on i.mx8mm
Thread-Index: AQHVctvU4cuMSjzwIEqWCaN8EgDgaQ==
Date: Tue, 24 Sep 2019 13:27:36 +0000
Message-ID: <29cf9f29-bdb4-94db-00b0-56ec36386f7a@kontron.de>
References: <20190610081753.11422-12-yibin.gong@nxp.com>
In-Reply-To: <20190610081753.11422-12-yibin.gong@nxp.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <C4390F60D119BB47AC69CC0E65ED73CB@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 598D567A918.AF6FA
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: dan.j.williams@intel.com, dmaengine@vger.kernel.org,
 festevam@gmail.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, s.hauer@pengutronix.de,
 shawnguo@kernel.org, vkoul@kernel.org, yibin.gong@nxp.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_062743_962813_0596F6C9 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Fabio Estevam <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

> From: Robin Gong <yibin.gong at nxp.com>
> 
> Because the number of ecspi1 rx event on i.mx8mm is 0, the condition
> check ignore such special case without dma channel enabled, which caused
> ecspi1 rx works failed. Actually, no need to check event_id0/event_id1
> and replace checking 'event_id1' with 'DMA_DEV_TO_DEV', so that configure
> event_id1 only in case DEV_TO_DEV.
> 
> Signed-off-by: Robin Gong <yibin.gong at nxp.com>
> Acked-by: Vinod Koul <vkoul at kernel.org>

I have a custom board with i.MX8MM and SPI flash on ecspi1. I'm 
currently testing with v5.3 and as SPI didn't work, I tried two 
different things:

1. Removing 'dmas' and 'dma-names' from the ecspi1 node in imx8mm.dtsi,
    to use PIO instead of DMA. This works as expected and the driver
    boots with the following messages:

        spi_imx 30820000.spi: dma setup error -19, use pio
        m25p80 spi0.0: mx25v8035f (1024 Kbytes)
        spi_imx 30820000.spi: probed

2. Applying your patchset and use DMA. In this case, the flash also
    works fine, but there are some error messages printed while booting:

        spi_master spi0: I/O Error in DMA RX
        m25p80 spi0.0: SPI transfer failed: -110
        spi_master spi0: failed to transfer one message from queue
        m25p80 spi0.0: mx25v8035f (1024 Kbytes)
        spi_imx 30820000.spi: probed

It would be great to get your patches merged and fix SPI + DMA, but for 
i.MX8MM, we need to get rid of the error messages. Do you have an idea, 
what's wrong?

Thanks,
Frieder
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
