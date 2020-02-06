Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 744171541AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 11:17:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQEEvCOHkTMeijnqaucJqyaAztF1KeeRortPeWuvLcY=; b=Un4nShB3WBqGF9
	oGa/agYrnsnINwdHztnuODzquo132KljwgLu1lCsu7CJBPJ8frdGZMHmg5E7+yI9E4WkB7/lOC95t
	2lft9MyD0OHrOVNqMdmiaMgzVcj2kcTS5tKGDJ4USTwCSrCdYVW5yixDbpr6h9bMd/j9wtXWKA382
	Tap1n0CYro+C7XTxZxq8rUSV8hjqJwRzFuoUK383f98MM4lRfRPLR/sxbokCHdEchhqW1MaNGQZy3
	2G1cqIYAx51ylfkys0HiRu7n4UA4aBzbYJpCK2xc52UpunBWeUJGwKWP/e1KToWPS/AAlkoHxSeGw
	kch1Acs1gLVfyYYsJUVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izeDx-00005v-BR; Thu, 06 Feb 2020 10:17:29 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izeDp-00005D-Lc
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 10:17:23 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 167B167A900;
 Thu,  6 Feb 2020 11:17:16 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Thu, 6 Feb 2020
 11:17:15 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.005; Thu, 6 Feb 2020 11:17:15 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v5 11/15] dmaengine: imx-sdma: fix ecspi1 rx dma not work
 on i.mx8mm
Thread-Topic: [PATCH v5 11/15] dmaengine: imx-sdma: fix ecspi1 rx dma not work
 on i.mx8mm
Thread-Index: AQHVctvU4cuMSjzwIEqWCaN8EgDgaac8IOgAgAA51YCAAks3gIDQEMQA
Date: Thu, 6 Feb 2020 10:17:15 +0000
Message-ID: <862c498f-3c15-fac4-4f17-a30c2e11bb3e@kontron.de>
References: <20190610081753.11422-12-yibin.gong@nxp.com>
 <29cf9f29-bdb4-94db-00b0-56ec36386f7a@kontron.de>
 <VE1PR04MB6638639EF4F580E04689538E89870@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <1307d229-4c49-80e3-04ba-377c0caeae9c@kontron.de>
 <VE1PR04MB6638B066EE28781A3C21973D89810@VE1PR04MB6638.eurprd04.prod.outlook.com>
In-Reply-To: <VE1PR04MB6638B066EE28781A3C21973D89810@VE1PR04MB6638.eurprd04.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <D04AC711B1A41C4A8E13C635F1736633@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 167B167A900.A2B18
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: dan.j.williams@intel.com, dmaengine@vger.kernel.org,
 festevam@gmail.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 s.hauer@pengutronix.de, shawnguo@kernel.org, vkoul@kernel.org,
 yibin.gong@nxp.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_021722_023244_C9A6045E 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.68 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Fabio Estevam <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 27.09.19 03:55, Robin Gong wrote:
> On 2019-9-25 22:53 Schrempf Frieder <frieder.schrempf@kontron.de> wrote:
>> On 25.09.19 13:26, Robin Gong wrote:
>>> On 2019-9-24 21:28 Schrempf Frieder <frieder.schrempf@kontron.de>
>> wrote:
>>>>
>>>> Hi Robin,
>>>>
>>>>> From: Robin Gong <yibin.gong at nxp.com>
>>>>>
>>>>> Because the number of ecspi1 rx event on i.mx8mm is 0, the condition
>>>>> check ignore such special case without dma channel enabled, which
>>>>> caused
>>>>> ecspi1 rx works failed. Actually, no need to check
>>>>> event_id0/event_id1 and replace checking 'event_id1' with
>>>>> 'DMA_DEV_TO_DEV', so that configure
>>>>> event_id1 only in case DEV_TO_DEV.
>>>>>
>>>>> Signed-off-by: Robin Gong <yibin.gong at nxp.com>
>>>>> Acked-by: Vinod Koul <vkoul at kernel.org>
>>>>
>>>> I have a custom board with i.MX8MM and SPI flash on ecspi1. I'm
>>>> currently testing with v5.3 and as SPI didn't work, I tried two different
>> things:
>>>>
>>>> 1. Removing 'dmas' and 'dma-names' from the ecspi1 node in
>> imx8mm.dtsi,
>>>>       to use PIO instead of DMA. This works as expected and the driver
>>>>       boots with the following messages:
>>>>
>>>>           spi_imx 30820000.spi: dma setup error -19, use pio
>>>>           m25p80 spi0.0: mx25v8035f (1024 Kbytes)
>>>>           spi_imx 30820000.spi: probed
>>>>
>>>> 2. Applying your patchset and use DMA. In this case, the flash also
>>>>       works fine, but there are some error messages printed while
>> booting:
>>>>
>>>>           spi_master spi0: I/O Error in DMA RX
>>>>           m25p80 spi0.0: SPI transfer failed: -110
>>>>           spi_master spi0: failed to transfer one message from queue
>>>>           m25p80 spi0.0: mx25v8035f (1024 Kbytes)
>>>>           spi_imx 30820000.spi: probed
>>>>
>>>> It would be great to get your patches merged and fix SPI + DMA, but
>>>> for i.MX8MM, we need to get rid of the error messages. Do you have an
>>>> idea, what's wrong?
>>
>>> Could you check if the length of spi message is bigger than fifo_size
>>> during spi_nor probe? If yes, at that time maybe sdma firmware not loaded.
>>> if (transfer->len < spi_imx->devtype_data->fifo_size)
>>
>> Indeed, most of the transfers triggered by the SPI NOR dirver are below
>> fifo_size and work fine, but some are bigger. The transfers therefore try to
>> use DMA, but the firmware is not loaded yet.
>>
>> How is this supposed to work? Shouldn't all transfers use PIO as long as the
>> SDMA firmware is not loaded yet?
> Yes, for ecspi should work with ram script, it's better check if sdma firmware
> is ready in spi_imx_dma_configure(), need modification in sdma driver too.
> I'll create another patch after this patch set accepted.

This still seems to be broken upstream. Is anyone working on fixing SPI 
+ DMA for i.MX8MM? Otherwise I will send a patch that removes the DMA 
from the ecspi nodes in the devicetree.

Thanks,
Frieder
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
