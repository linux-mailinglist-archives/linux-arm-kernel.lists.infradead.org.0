Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B68C91F1DAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 18:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=65dbNrS8ctesb4FWwd9RrGSw3czFYn3eW50nxCjUf3c=; b=SGnXAPDeh+XRtYqczay0+0mRl
	nXOvZdMiUGGDL2SFMYuvITuHqAu51scnFlW5Aoa/OOy85GmeSxd4KknNR/u5zd/ra6Ai0n5/WOzVW
	w7KEATUSQ5vnRTlIPPsurVTJZAGrTQuy+biBtouia2hTSgBwHEmIBuGRG3l9D61TLzqnM+EFsNJzU
	uqmCRia6RD/k2uQx3fyA5UCeMWlJlhbh4Cmjsd2QAFvMnAxc30ew0+1bSdJ7UVi7unA0yjEmcA2Ve
	dAG0OF4dtQMQmBSPNohQQYyILgieevJeybONcbagftwjcIqFPBpLepLItBPe4LsnX97V2jvdGe6ux
	xIhK0szvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiKt4-0003Pw-3P; Mon, 08 Jun 2020 16:44:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiKsx-0003Pb-LW
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 16:44:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8326A1FB;
 Mon,  8 Jun 2020 09:44:30 -0700 (PDT)
Received: from [10.57.9.113] (unknown [10.57.9.113])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A3CB63F73D;
 Mon,  8 Jun 2020 09:44:25 -0700 (PDT)
Subject: Re: [PATCH v9 RESEND 01/13] spi: imx: add dma_sync_sg_for_device
 after fallback from dma
To: Mark Brown <broonie@kernel.org>, Robin Gong <yibin.gong@nxp.com>
References: <1591485677-20533-1-git-send-email-yibin.gong@nxp.com>
 <1591485677-20533-2-git-send-email-yibin.gong@nxp.com>
 <20200608143458.GH4593@sirena.org.uk>
 <VE1PR04MB66388F89015F774EE3FFF69D89850@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200608153139.GI4593@sirena.org.uk>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <59ce3620-00b9-bac1-30e1-011a29583642@arm.com>
Date: Mon, 8 Jun 2020 17:44:21 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200608153139.GI4593@sirena.org.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_094431_753404_8D1A2DAD 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "matthias.schiffer@ew.tq-group.com" <matthias.schiffer@ew.tq-group.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-08 16:31, Mark Brown wrote:
> On Mon, Jun 08, 2020 at 03:08:45PM +0000, Robin Gong wrote:
> 
>>>> +	if (transfer->rx_sg.sgl) {
>>>> +		struct device *rx_dev = spi->controller->dma_rx->device->dev;
>>>> +
>>>> +		dma_sync_sg_for_device(rx_dev, transfer->rx_sg.sgl,
>>>> +				       transfer->rx_sg.nents, DMA_TO_DEVICE);
>>>> +	}
>>>> +
> 
>>> This is confusing - why are we DMA mapping to the device after doing a PIO
>>> transfer?
> 
>> 'transfer->rx_sg.sgl' condition check that's the case fallback PIO after DMA transfer
>> failed. But the spi core still think the buffer should be in 'device' while spi driver
>> touch it by PIO(CPU), so sync it back to device to ensure all received data flush to DDR.
> 
> So we sync it back to the device so that we can then do another sync to
> CPU?  TBH I'm a bit surprised that there's a requirement that we
> explicitly undo a sync and that a redundant double sync in the same
> direction might be an issue but I've not had a need to care so I'm
> perfectly prepared to believe there is.
> 
> At the very least this needs a comment.

Yeah, something's off here - at the very least, syncing with 
DMA_TO_DEVICE on the Rx buffer that was mapped with DMA_FROM_DEVICE is 
clearly wrong. CONFIG_DMA_API_DEBUG should scream about that.

If the device has written to the buffer at all since dma_map_sg() was 
called then you do need a dma_sync_sg_for_cpu() call before touching it 
from a CPU fallback path, but if nobody's going to touch it from that 
point until it's unmapped then there's no point syncing it again. The 
my_card_interrupt_handler() example in DMA-API_HOWTO.txt demonstrates this.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
