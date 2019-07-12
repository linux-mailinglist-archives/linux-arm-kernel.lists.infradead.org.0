Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0B267612
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 23:02:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gu2QecqcWK87m2LQEWnf/GYBMT1PJMif2KRHpRKie2k=; b=YwjEDNPNpKmK6F
	QLSUrkr5LtBmTHdIpibeGsVwN3juyrYJnmGYmdXV8QSqx6Kn1Mxcdw4Lihx5R7qXqTn/aKulskXv8
	eNIsUsADorIU2B+YTe9YKkcmrJWyl+QQhE4Cj1V6e/DRlJt4HKMI/B89X/40eED1cwpDwvVWd87YA
	KYT19bBMQr5urXVfdtyHbtq51rcoUaIzN93NHih81UXxOrl6b1PTnYDq8Oy/GUK8sTFjgri+awNVr
	o4EarxqC9O3z5R+/azOfkaq/cNIlmEeA2IWLbPB3DDidPnySfeDeu5Pv+VBBerkUY0sGvolNRdjfd
	hXJ8GcFRCtNRBnD2R6xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm2gZ-0003oN-10; Fri, 12 Jul 2019 21:02:31 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm2gH-0003nk-GP
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 21:02:15 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6CL22jW058997;
 Fri, 12 Jul 2019 16:02:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1562965322;
 bh=coaQynstDqA5HGnoz6Wom66HS4fobTvO2GZTeSoACMM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Ig42kFf8tlOkVjHazoZ8sTZbCcIGBlfhM5Bmp/TBps7/4hxzvDP6Pis5eyATGhC3u
 5MU4E/LfOCRRNqku1GlthgklNRLp3OgImfvFAsy9q4KwF7zFNJHreOCh4ZTfCxyDY9
 cOflcveCEpSTthHmoBDzUX7OhDy4UlvhOQ5bTyqE=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6CL22pk016056
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 12 Jul 2019 16:02:02 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 12
 Jul 2019 16:02:02 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 12 Jul 2019 16:02:02 -0500
Received: from [10.250.145.87] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6CL20Ke100886;
 Fri, 12 Jul 2019 16:02:00 -0500
Subject: Re: [PATCH v4 3/3] dmaengine: ti: edma: Support for polled (memcpy)
 completion
To: Vinod Koul <vkoul@kernel.org>
References: <20190618132148.26468-1-peter.ujfalusi@ti.com>
 <20190618132148.26468-4-peter.ujfalusi@ti.com>
 <20190705061714.GU2911@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <d695a2fa-61d4-e312-11d9-b501b6bc18a7@ti.com>
Date: Sat, 13 Jul 2019 00:05:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190705061714.GU2911@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_140213_679157_528783F0 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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



On 5.7.2019 9.17, Vinod Koul wrote:
>> @@ -1840,18 +1847,40 @@ static enum dma_status edma_tx_status(struct dma_chan *chan,
>>  {
>>  	struct edma_chan *echan = to_edma_chan(chan);
>>  	struct virt_dma_desc *vdesc;
>> +	struct dma_tx_state txstate_tmp;
>>  	enum dma_status ret;
>>  	unsigned long flags;
>>  
>>  	ret = dma_cookie_status(chan, cookie, txstate);
>> -	if (ret == DMA_COMPLETE || !txstate)
>> +
>> +	/* Provide a dummy dma_tx_state for completion checking */
>> +	if (ret != DMA_COMPLETE && !txstate)
>> +		txstate = &txstate_tmp;
>> +
>> +	if (ret == DMA_COMPLETE)
>>  		return ret;
> 
> why not do:
> 
>         if (ret == DMA_COMPLETE)
>                 return ret;
> 
>         if (!txstate)
>                 txstate = &txstate_tmp;
>

Indeed it is much cleaner this way. Will send an updated series next week.

>> +	txstate->residue = 0;
>>  	spin_lock_irqsave(&echan->vchan.lock, flags);
>>  	if (echan->edesc && echan->edesc->vdesc.tx.cookie == cookie)
>>  		txstate->residue = edma_residue(echan->edesc);
>>  	else if ((vdesc = vchan_find_desc(&echan->vchan, cookie)))
>>  		txstate->residue = to_edma_desc(&vdesc->tx)->residue;
>> +
>> +	/*
>> +	 * Mark the cookie completed if the residue is 0 for non cyclic
>> +	 * transfers
>> +	 */
>> +	if (ret != DMA_COMPLETE && !txstate->residue &&
>> +	    echan->edesc && echan->edesc->polled &&
>> +	    echan->edesc->vdesc.tx.cookie == cookie) {
>> +		edma_stop(echan);
>> +		vchan_cookie_complete(&echan->edesc->vdesc);
>> +		echan->edesc = NULL;
>> +		edma_execute(echan);
>> +		ret = DMA_COMPLETE;
>> +	}
>> +
>>  	spin_unlock_irqrestore(&echan->vchan.lock, flags);
>>  
>>  	return ret;
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
