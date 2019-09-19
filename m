Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E54B7624
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:20:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/F+zGARFcJcek7R9IDi1IVydUKKGqypXErJzOAYY4U=; b=FhTvnrjgKkt9ww
	KBijug2zexkMd+7SuoWyv/+t3ByVzpfDS9y+eGavIL9e/Jdtfn7Tm2Wt5gUDwVQdBwZbe7H4XHM56
	3WhLKXCdqrPVYxB/XPKpva5dnUybeTtg/so5ESbGm0hLvo+P8zLaM+7xhuf/S6yfzm/fEyOaknjgg
	KoFaWw2r7NUJssGQh8IdwUlpyPSL9yBn2W/UfeehTckNbvbfqQkLUpoi0wvPa4A9xasEROruOinWg
	1QoYxvc4G7oFqhKEPK40EM1p7w+c+wJ7y0KMPv1qOeRbBYbzT19ox7NyQfVEmGE/wE7GdMtXc/03w
	kQbniGCKj3NdGdPriMww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAscI-0007WI-ED; Thu, 19 Sep 2019 09:20:46 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAsbt-0007VP-7h
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 09:20:23 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id 3D96C603BE;
 Thu, 19 Sep 2019 11:20:17 +0200 (CEST)
Subject: Re: [PATCH 1/4] dmaengine: imx-sdma: fix buffer ownership
To: Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
 <20190911144943.21554-2-philipp.puschmann@emlix.com>
 <9bcf315369449a025828410396935b679aae14bf.camel@pengutronix.de>
From: Philipp Puschmann <philipp.puschmann@emlix.com>
Openpgp: preference=signencrypt
Message-ID: <bd6ff4fb-0cbd-675e-a4f2-d311cfe2c62d@emlix.com>
Date: Thu, 19 Sep 2019 11:20:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <9bcf315369449a025828410396935b679aae14bf.camel@pengutronix.de>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_022021_428481_F58F172F 
X-CRM114-Status: GOOD (  16.31  )
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
Cc: festevam@gmail.com, kernel@pengutronix.de, gregkh@linuxfoundation.org,
 s.hauer@pengutronix.de, vkoul@kernel.org, linux-imx@nxp.com,
 linux-serial@vger.kernel.org, jslaby@suse.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 16.09.19 um 16:17 schrieb Lucas Stach:
> On Mi, 2019-09-11 at 16:49 +0200, Philipp Puschmann wrote:
>> BD_DONE flag marks ownership of the buffer. When 1 SDMA owns the buffer,
>> when 0 ARM owns it. When processing the buffers in
>> sdma_update_channel_loop the ownership of the currently processed buffer
>> was set to SDMA again before running the callback function of the the
>> buffer and while the sdma script may be running in parallel. So there was
>> the possibility to get the buffer overwritten by SDMA before it has been
>> processed by kernel leading to kind of random errors in the upper layers,
>> e.g. bluetooth.
>>
>> It may be further a good idea to make the status struct member volatile or
>> access it using writel or similar to rule out that the compiler sets the
>> BD_DONE flag before the callback routine has finished.
>>
>> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
>> ---
>>  drivers/dma/imx-sdma.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
>> index a01f4b5d793c..1abb14ff394d 100644
>> --- a/drivers/dma/imx-sdma.c
>> +++ b/drivers/dma/imx-sdma.c
>> @@ -802,7 +802,6 @@ static void sdma_update_channel_loop(struct sdma_channel *sdmac)
>>  		*/
>>  
>>  		desc->chn_real_count = bd->mode.count;
>> -		bd->mode.status |= BD_DONE;
>>  		bd->mode.count = desc->period_len;
>>  		desc->buf_ptail = desc->buf_tail;
>>  		desc->buf_tail = (desc->buf_tail + 1) % desc->num_bd;
>> @@ -817,6 +816,8 @@ static void sdma_update_channel_loop(struct sdma_channel *sdmac)
>>  		dmaengine_desc_get_callback_invoke(&desc->vd.tx, NULL);
>>  		spin_lock(&sdmac->vc.lock);
> 
> To address your comment from the second paragraph of the commit message
> there should be a dma_wmb() here before changing the status flag.
> 
> Regards,
> Lucas

Hi Lucas,

thanks for your feedback. I will apply the hints to v2 of the patches.

Regards,
Philipp
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
