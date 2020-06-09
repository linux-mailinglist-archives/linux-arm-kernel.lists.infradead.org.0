Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6CF1F377B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=57Tk8HX76GAiEREd4Qon0Kde9i2iJMKEsHjZF8Bl1cU=; b=cUnq87cepvrKiiAYl7u+7nmUk
	xYq51DklkKEcrk+S/bRrz6BNNszwvV18DzIhi2JbZMC1Y3kQVqig+CfaMhofKFSOLuLte5D+OwR3g
	BkiiChGi1hTfWSyWDZAqx6QLWIEoqZPaaE6YRLmY8xVoUA1Vp0sJLydSW+pzcbXcdRbd4hswZWAbM
	knaepPaR+RM3pSX8E/KD86he+Zt4nxEX9IqVTp0nZAQcLAHGPexkixU2/Mpe0bI06D4tGpPPeZ+nS
	CUAgfxMtvjJw8OLLJ4hWxvLNOzQkO0lLfu+SANHjBbVFWpWmfRRF7RQgWqjobxHeWrPEI9ZuSTOnH
	BHTL+Cy6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jib49-0003p8-Fn; Tue, 09 Jun 2020 10:01:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jib3z-0003o0-RB
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 10:01:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2F73A1FB;
 Tue,  9 Jun 2020 03:00:56 -0700 (PDT)
Received: from [10.57.11.57] (unknown [10.57.11.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 850DF3F73D;
 Tue,  9 Jun 2020 03:00:47 -0700 (PDT)
Subject: Re: [PATCH v9 RESEND 01/13] spi: imx: add dma_sync_sg_for_device
 after fallback from dma
To: Robin Gong <yibin.gong@nxp.com>, Mark Brown <broonie@kernel.org>
References: <1591485677-20533-1-git-send-email-yibin.gong@nxp.com>
 <1591485677-20533-2-git-send-email-yibin.gong@nxp.com>
 <20200608143458.GH4593@sirena.org.uk>
 <VE1PR04MB66388F89015F774EE3FFF69D89850@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200608153139.GI4593@sirena.org.uk>
 <59ce3620-00b9-bac1-30e1-011a29583642@arm.com>
 <VE1PR04MB6638B1EC49D295C64292B7BD89820@VE1PR04MB6638.eurprd04.prod.outlook.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <bcfc3637-65af-577a-ddbd-890b6c83a6e6@arm.com>
Date: Tue, 9 Jun 2020 11:00:33 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB6638B1EC49D295C64292B7BD89820@VE1PR04MB6638.eurprd04.prod.outlook.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_030059_969720_E6688BE6 
X-CRM114-Status: GOOD (  18.99  )
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

On 2020-06-09 06:21, Robin Gong wrote:
> On 2020/06/09 0:44 Robin Murphy <robin.murphy@arm.com> wrote:
>> On 2020-06-08 16:31, Mark Brown wrote:
>>> On Mon, Jun 08, 2020 at 03:08:45PM +0000, Robin Gong wrote:
>>>
>>>>>> +	if (transfer->rx_sg.sgl) {
>>>>>> +		struct device *rx_dev = spi->controller->dma_rx->device->dev;
>>>>>> +
>>>>>> +		dma_sync_sg_for_device(rx_dev, transfer->rx_sg.sgl,
>>>>>> +				       transfer->rx_sg.nents, DMA_TO_DEVICE);
>>>>>> +	}
>>>>>> +
>>>
>>>>> This is confusing - why are we DMA mapping to the device after doing
>>>>> a PIO transfer?
>>>
>>>> 'transfer->rx_sg.sgl' condition check that's the case fallback PIO
>>>> after DMA transfer failed. But the spi core still think the buffer
>>>> should be in 'device' while spi driver touch it by PIO(CPU), so sync it back to
>> device to ensure all received data flush to DDR.
>>>
>>> So we sync it back to the device so that we can then do another sync
>>> to CPU?  TBH I'm a bit surprised that there's a requirement that we
>>> explicitly undo a sync and that a redundant double sync in the same
>>> direction might be an issue but I've not had a need to care so I'm
>>> perfectly prepared to believe there is.
>>>
>>> At the very least this needs a comment.
>>
>> Yeah, something's off here - at the very least, syncing with DMA_TO_DEVICE on
>> the Rx buffer that was mapped with DMA_FROM_DEVICE is clearly wrong.
>> CONFIG_DMA_API_DEBUG should scream about that.
>>
>> If the device has written to the buffer at all since dma_map_sg() was called
>> then you do need a dma_sync_sg_for_cpu() call before touching it from a CPU
>> fallback path, but if nobody's going to touch it from that point until it's
>> unmapped then there's no point syncing it again. The
>> my_card_interrupt_handler() example in DMA-API_HOWTO.txt demonstrates
>> this.
> Thanks for you post, but sorry, that's not spi-imx case now, because the rx data in device memory is not truly updated from 'device'/DMA, but from PIO, so that dma_sync_sg_for_cpu with DMA_FROM_DEVICE can't be used, otherwise the fresh data in cache will be invalidated.
> But you're right, kernel warning comes out if CONFIG_DMA_API_DEBUG enabled...

Ah, I think I understand what's going on now. That's... really ugly :(

Looking at the SPI core code, I think a better way to handle this would 
be to have your fallback path call spi_unmap_buf() directly (or perform 
the same actions, if exporting that to drivers is unacceptable), then 
make sure ->can_dma() returns false after that such that spi_unmap_msg() 
won't try to unmap it again. That's a lot more reasonable than trying to 
fake up a DMA_TO_DEVICE transfer in the middle of a DMA_FROM_DEVICE 
operation on the same buffer.

Alternatively, is it feasible to initiate a dummy DMA request during 
probe, such that you can detect the failure condition and give up on the 
DMA channel early, and not have to deal with it during a real SPI transfer?

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
