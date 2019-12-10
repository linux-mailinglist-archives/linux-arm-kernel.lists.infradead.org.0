Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 272321183DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:44:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98w9nw1/RhBkeSe87z5DXBWKcRSbGT3BirHb5IGLuJQ=; b=f4R0neEndLkRUg
	j33s+OFWsBdjbwr6vTaKjPEOOJJWPmObVkO4vm9Kj+u011lrSkzcw6lMYuGFhJ7npADInHIJzeLtU
	WDqBR/oqtZdSzzG73CwlTvNcHAylP8OmA2M+M9ZOQSazT7tqXhmVgsZaiMqO524v7V+R2r3Zn2/Vj
	ap26RoLVDxUoUL8EQ7tcAcqXdfwFJPvK74EJl7wLiPCy0G4S4ShY2gmLPh5K6LP/GV1v9HwR9b9r0
	VAwIlRBFXfWZFtHTzmyq2wDClXasupt0mW5bO1ok4WzaqBUbA2W94CBWjGz33hZvdpfEDKN6ndiI+
	nNTevlgY8Kj535ggwhxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iec4U-0001bH-I6; Tue, 10 Dec 2019 09:44:46 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iec4I-0001aN-7W
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:44:36 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id 988E75FE45;
 Tue, 10 Dec 2019 10:44:30 +0100 (CET)
Subject: Re: [PATCH v5 1/3] dmaengine: imx-sdma: fix buffer ownership
To: Robin Gong <yibin.gong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20190923135808.815-1-philipp.puschmann@emlix.com>
 <20190923135808.815-2-philipp.puschmann@emlix.com>
 <VE1PR04MB6638A9E882D40FB7F8CB7F14895D0@VE1PR04MB6638.eurprd04.prod.outlook.com>
From: Philipp Puschmann <philipp.puschmann@emlix.com>
Message-ID: <eb584cf0-2be4-138f-e339-aaf9f6f203b0@emlix.com>
Date: Tue, 10 Dec 2019 10:44:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB6638A9E882D40FB7F8CB7F14895D0@VE1PR04MB6638.eurprd04.prod.outlook.com>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_014434_568052_1E487CED 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Andy Duan <fugang.duan@nxp.com>, "jlu@pengutronix.de" <jlu@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



Am 04.12.19 um 10:19 schrieb Robin Gong:
> On 2019-9-23 Philipp Puschmann <philipp.puschmann@emlix.com> wrote:
>> BD_DONE flag marks ownership of the buffer. When 1 SDMA owns the buffer,
>> when 0 ARM owns it. When processing the buffers in
>> sdma_update_channel_loop the ownership of the currently processed buffer
>> was set to SDMA again before running the callback function of the buffer and
>> while the sdma script may be running in parallel. So there was the possibility to
>> get the buffer overwritten by SDMA before it has been processed by kernel
> Does this patch need indeed? I don't think any difference here move done flag
> before callback or after callback, because callback never care this flag and actually
> done flag is setup for next time rather than this time.
The callback doesn't care, but the DMA controller cares about this flag. I see a possible race
condition here. If i set the DONE flag for a specific buffer descriptor before handling the
data belonging to this buffer descriptor (aka running the callback function) the DMA script running
at the same time could corrupt that data while being processed.
Or is there are mechanism that prevents this case, that i havn't considered here.

> Basically, this flag should be
> set to 1 quickly asap so that sdma could use this bd asap. If delay the flag may cause
> sdma channel stop since all BDs consumed.

> Could you try again your case without this patch?
I don't have the hw to reproduce this available at the moment but as i remember i did run it without
this patch successfully already. The problem i have described above was more a logical or theoretical
one than a problem that really occured with my setup.

>> leading to kind of random errors in the upper layers, e.g. bluetooth.
>>
>> Fixes: 1ec1e82f2510 ("dmaengine: Add Freescale i.MX SDMA support")
>> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
>> ---
>>
>> Changelog v5:
>>  - no changes
>>
>> Changelog v4:
>>  - fixed the fixes tag
>>
>> Changelog v3:
>>  - use correct dma_wmb() instead of dma_wb()
>>  - add fixes tag
>>
>> Changelog v2:
>>  - add dma_wb()
>>
>>  drivers/dma/imx-sdma.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c index
>> 9ba74ab7e912..b42281604e54 100644
>> --- a/drivers/dma/imx-sdma.c
>> +++ b/drivers/dma/imx-sdma.c
>> @@ -802,7 +802,6 @@ static void sdma_update_channel_loop(struct
>> sdma_channel *sdmac)
>>  		*/
>>
>>  		desc->chn_real_count = bd->mode.count;
>> -		bd->mode.status |= BD_DONE;
>>  		bd->mode.count = desc->period_len;
>>  		desc->buf_ptail = desc->buf_tail;
>>  		desc->buf_tail = (desc->buf_tail + 1) % desc->num_bd; @@ -817,6
>> +816,9 @@ static void sdma_update_channel_loop(struct sdma_channel
>> *sdmac)
>>  		dmaengine_desc_get_callback_invoke(&desc->vd.tx, NULL);
>>  		spin_lock(&sdmac->vc.lock);
>>
>> +		dma_wmb();
>> +		bd->mode.status |= BD_DONE;
>> +
>>  		if (error)
>>  			sdmac->status = old_status;
>>  	}
>> --
>> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
