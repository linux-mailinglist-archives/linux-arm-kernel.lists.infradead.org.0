Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3ECCB778C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 12:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIYRar2nGTOxVHMhf83iH+kILOxUM74LmtrJynJJzO0=; b=hXUZ3X0qCkS7Dt
	/Wub+XUoSIBykHYZKv3UQOyHNdoVO9pMo0yElYUFIS/I3dq1ErxTO4zwe4inosfeCDKhSv6nf+aMH
	ftCXS3q6nYm5rMZ/bvaRKEbHjd7sYz3AZtCoub5bKgQNJPSpKYOY9dLYpJR/qI5p0L7bJxVrwTwPO
	+L0jJy8Hej5rNmFSclGPUxTWuRow5Zyp7zpcd8q5PG1Kenv2p+1eiaL4JtBpjkYuQ0zFUvRbxax9G
	+YgSkoZOQwaT4OutPSfmJTFq2CXNUNoy562sPcyCpadmidL8YDkwD55nP6M1t2iEsEZL9LjH0fHI6
	mLt41hW118yMiuGx7u1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAtmv-0007W0-QN; Thu, 19 Sep 2019 10:35:51 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAtm8-0007Cs-AS
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 10:35:02 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id 3132A603CA;
 Thu, 19 Sep 2019 12:34:58 +0200 (CEST)
Subject: Re: [PATCH v2 1/3] dmaengine: imx-sdma: fix buffer ownership
To: Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
 <20190919102319.23368-1-philipp.puschmann@emlix.com>
 <20190919102319.23368-2-philipp.puschmann@emlix.com>
 <7d694da8ffe098c6c8f6fe9c3a2306fda55eb655.camel@pengutronix.de>
From: Philipp Puschmann <philipp.puschmann@emlix.com>
Openpgp: preference=signencrypt
Message-ID: <1b821b38-2206-07b3-eb0a-47b02bced95c@emlix.com>
Date: Thu, 19 Sep 2019 12:34:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7d694da8ffe098c6c8f6fe9c3a2306fda55eb655.camel@pengutronix.de>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_033500_513071_5118F0F3 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: fugang.duan@nxp.com, festevam@gmail.com, s.hauer@pengutronix.de,
 vkoul@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com, yibin.gong@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lucas,


Am 19.09.19 um 12:27 schrieb Lucas Stach:
> Hi Philipp,
> 
> On Do, 2019-09-19 at 12:23 +0200, Philipp Puschmann wrote:
>> BD_DONE flag marks ownership of the buffer. When 1 SDMA owns the
>> buffer, when 0 ARM owns it. When processing the buffers in
>> sdma_update_channel_loop the ownership of the currently processed
>> buffer was set to SDMA again before running the callback function of
>> the buffer and while the sdma script may be running in parallel. So
>> there was the possibility to get the buffer overwritten by SDMA
>> before
>> it has been processed by kernel leading to kind of random errors in
>> the
>> upper layers, e.g. bluetooth.
>>
>> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
>>
>> ---
>>
>> Changelog v2:
>>  - add dma_wb()
>>
>>  drivers/dma/imx-sdma.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
>> index 9ba74ab7e912..e029a2443cfc 100644
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
>>  		desc->buf_tail = (desc->buf_tail + 1) % desc->num_bd;
>> @@ -817,6 +816,9 @@ static void sdma_update_channel_loop(struct
>> sdma_channel *sdmac)
>>  		dmaengine_desc_get_callback_invoke(&desc->vd.tx, NULL);
>>  		spin_lock(&sdmac->vc.lock);
>>  
>> +		dma_wb();
> 
> Has this change been tested? The function you want here is called
> dma_wmb().
embarrassingly you are right. c&p error and even have not tried to build it :/
V3 comes soon..

Regards,
Philipp

> 
> Regards,
> Lucas
> 
>> +		bd->mode.status |= BD_DONE;
>> +
>>  		if (error)
>>  			sdmac->status = old_status;
>>  	}
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
