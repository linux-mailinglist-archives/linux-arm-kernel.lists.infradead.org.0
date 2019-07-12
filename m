Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF14E6761A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 23:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DXF4e0o5iv5isErihbKFk2jkmC0L7486vxBSFV+PJJA=; b=TNcUYRjrs7c9JT
	G5VGZklFDv/2Sfcbe654l+/WZXHJDw9QKm4CtrnnKnEwVZgqhKecUJlkzYSKEjPHzWIfyAlcIxxcs
	QoUFn25ouefa6Rou6uTWt5tHwwm8/VBLhsUg9CNcCFFV041U82ETSD1Jnb4L4KskqyhJkjurzPRf1
	VkUiOdNki1hyFk093eSB8s4oyYOd7Y4WnmiQ7hOECw0AV6M407OtwI8xV/FZR8MBIh3Bjc8ND9nFx
	6oCnJCWF327TLI9Fq+6UzSopLyAk/YFgQZPLCUal2qxd1hDUxXrj4AFIYw6oScNcvOxAw8ytJhgnW
	BusmlXz+k3hgsVwCOMrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm2kf-0005QT-Iv; Fri, 12 Jul 2019 21:06:45 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm2kS-0005Pv-Fc
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 21:06:34 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6CL6NNE129824;
 Fri, 12 Jul 2019 16:06:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1562965583;
 bh=W99H1Ru9wy0hhIBtgr5eFPbCZ+/whDnA2TJ0ggOlI0w=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=lN77X5t+VVpf2ir2+4isbS9oJi3dsjLuR7V+EaxJoP8T5HPz0+VY1q3rd1nScdC7y
 V0M7cSaj3Bm6bGLn5wZPh35cWlkRwHx0fV2QtI07qZn7fo8JX53czWisuFYCJ08hDv
 /Qy1isTb+uzpVs91sAH0asgzm15DowfT8dKC8Qzs=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6CL6NHH055638
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 12 Jul 2019 16:06:23 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 12
 Jul 2019 16:06:22 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 12 Jul 2019 16:06:22 -0500
Received: from [10.250.145.87] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6CL6Kiw098592;
 Fri, 12 Jul 2019 16:06:21 -0500
Subject: Re: [PATCH] dmaengine: ti: omap-dma: Improved memcpy polling support
To: Vinod Koul <vkoul@kernel.org>
References: <20190618132416.26874-1-peter.ujfalusi@ti.com>
 <20190705062334.GV2911@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <b180a077-a2c7-9f1e-cf0b-5bdf986a78fc@ti.com>
Date: Sat, 13 Jul 2019 00:10:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190705062334.GV2911@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_140632_609470_306A5C20 
X-CRM114-Status: GOOD (  23.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5.7.2019 9.23, Vinod Koul wrote:
> On 18-06-19, 16:24, Peter Ujfalusi wrote:
>> When a DMA client driver does not set the DMA_PREP_INTERRUPT because it
>> does not want to use interrupts for DMA completion or because it can not
>> rely on DMA interrupts due to executing the memcpy when interrupts are
>> disabled it will poll the status of the transfer.
>>
>> If the interrupts are enabled then the cookie will be set completed in the
>> interrupt handler so only check in HW completion when the polling is really
>> needed.
>>
>> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
>> ---
>> Hi,
>>
>> This patch fine-tunes the omap-dma polled memcpy support to be inline with how
>> the EDMA driver is handling it.
>>
>> The polled completion can be tested by applying:
>> https://patchwork.kernel.org/patch/10966499/
>>
>> and run the dmatest with polled = 1 on boards where sDMA is used.
>>
>> Or boot up any dra7 family device with display enabled. The workaround for DMM
>> errata i878 uses polled DMA memcpy.
>>
>> Regards,
>> Peter
>>
>>  drivers/dma/ti/omap-dma.c | 37 ++++++++++++++++++++++++-------------
>>  1 file changed, 24 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/dma/ti/omap-dma.c b/drivers/dma/ti/omap-dma.c
>> index 5ba7d8485026..75d8f7e13c8d 100644
>> --- a/drivers/dma/ti/omap-dma.c
>> +++ b/drivers/dma/ti/omap-dma.c
>> @@ -94,6 +94,7 @@ struct omap_desc {
>>  	bool using_ll;
>>  	enum dma_transfer_direction dir;
>>  	dma_addr_t dev_addr;
>> +	bool polled;
>>  
>>  	int32_t fi;		/* for OMAP_DMA_SYNC_PACKET / double indexing */
>>  	int16_t ei;		/* for double indexing */
>> @@ -834,20 +835,10 @@ static enum dma_status omap_dma_tx_status(struct dma_chan *chan,
>>  
>>  	ret = dma_cookie_status(chan, cookie, txstate);
>>  
>> -	if (!c->paused && c->running) {
>> -		uint32_t ccr = omap_dma_chan_read(c, CCR);
>> -		/*
>> -		 * The channel is no longer active, set the return value
>> -		 * accordingly
>> -		 */
>> -		if (!(ccr & CCR_ENABLE))
>> -			ret = DMA_COMPLETE;
>> -	}
>> -
>> +	spin_lock_irqsave(&c->vc.lock, flags);
>>  	if (ret == DMA_COMPLETE || !txstate)
>> -		return ret;
>> +		goto out;
>>  
>> -	spin_lock_irqsave(&c->vc.lock, flags);
>>  	vd = vchan_find_desc(&c->vc, cookie);
>>  	if (vd) {
>>  		txstate->residue = omap_dma_desc_size(to_omap_dma_desc(&vd->tx));
>> @@ -868,6 +859,23 @@ static enum dma_status omap_dma_tx_status(struct dma_chan *chan,
>>  	}
>>  	if (ret == DMA_IN_PROGRESS && c->paused)
>>  		ret = DMA_PAUSED;
>> +
>> +out:
>> +	if (ret == DMA_IN_PROGRESS && c->running && c->desc &&
>> +	    c->desc->polled && c->desc->vd.tx.cookie == cookie) {
> 
> heh, that makes quite a read!
> 
> checking DMA_IN_PROGRESS should not make sense, as we should bail out at
> the start if it is completed
> 
> I think other can be optimzed to make it a better read!

True, a simple re-ordering should make it easier to read or to split
them up as two if() checks. I'll try to figure out something to simplify it.

> 
>> +		uint32_t ccr = omap_dma_chan_read(c, CCR);
>> +		/*
>> +		 * The channel is no longer active, set the return value
>> +		 * accordingly
>> +		 */
>> +		if (!(ccr & CCR_ENABLE)) {
>> +			struct omap_desc *d = c->desc;
>> +			ret = DMA_COMPLETE;
>> +			omap_dma_start_desc(c);
>> +			vchan_cookie_complete(&d->vd);
>> +		}
>> +	}
>> +
>>  	spin_unlock_irqrestore(&c->vc.lock, flags);
>>  
>>  	return ret;
>> @@ -1233,7 +1241,10 @@ static struct dma_async_tx_descriptor *omap_dma_prep_dma_memcpy(
>>  	d->ccr = c->ccr;
>>  	d->ccr |= CCR_DST_AMODE_POSTINC | CCR_SRC_AMODE_POSTINC;
>>  
>> -	d->cicr = CICR_DROP_IE | CICR_FRAME_IE;
>> +	if (tx_flags & DMA_PREP_INTERRUPT)
>> +		d->cicr |= CICR_FRAME_IE;
>> +	else
>> +		d->polled = true;
>>  
>>  	d->csdp = data_type;
>>  
>> -- 
>> Peter
>>
>> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
>> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
> 

-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
