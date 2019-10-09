Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB1DD0ACD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:18:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CKEQzFttbBoXFDTr2kbN3kJ86JKjxLETs42NBeDjGJU=; b=BMPOSeTK+eTAe9Vnzn1Oe5e6R
	lZzo/S1GR7Tpijv7cvi6TZHP2hywAw1Jp4a6iH2jlnCtsS0WXOVRAWA6v1bVqA0DX4N8/fBhz1O4P
	6AvHX4ypsfDojGxroN/lTSpkDAy07+/z3c39D57Et4oqEBdi/JIP6wBST+H+jjtdCak3MVWMJcucK
	SxI1JmxD3b8HAo5wHU0hKmQGZver1Tvc/PKUzOXfv2C6Rgb656OufBltM/GoZl72PmcFvWQv2ZU+P
	sMU9bLN/eRkaBSrTr4Up2IlWlKuKpJgHunb/7T5dip9J/3PcsDBQcLuhmH0rm7N0rorHKCvPSwI69
	nBu7zPh4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI86l-0004Sv-Vi; Wed, 09 Oct 2019 09:18:11 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI86Z-0004SE-4V
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 09:18:00 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x999Hq59041429;
 Wed, 9 Oct 2019 04:17:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570612672;
 bh=BiA0D7K8f4yqHuNEy0TGXDKxAwiZ2tjyG1G/l4l31HE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=xKQlY4cafMy8hP7XR/deImH1+FQhK2Bvt4/fu2SmKi+Lh8Z40j3nLuLcPKYuC/FNN
 haAXy0M9bBFvnoUuol5hOt5arOWOkyLtwUlOqjjEh9PUx4YhQHSgxQmX7m+zqQFCHU
 T3xjUvti6pjnwRS7d+VJUqe2/vBRJVF5hH8sa9is=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x999Hqqw083397
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 9 Oct 2019 04:17:52 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 9 Oct
 2019 04:17:48 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 9 Oct 2019 04:17:51 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x999Hlcw101048;
 Wed, 9 Oct 2019 04:17:48 -0500
Subject: Re: [PATCH v3 05/14] dmaengine: Add support for reporting DMA cached
 data amount
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <nm@ti.com>, <ssantosh@kernel.org>
References: <20191001061704.2399-1-peter.ujfalusi@ti.com>
 <20191001061704.2399-6-peter.ujfalusi@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <b20087a9-6a1f-6e5c-9311-e921a1c63f13@ti.com>
Date: Wed, 9 Oct 2019 12:17:47 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191001061704.2399-6-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_021759_269764_E2C13507 
X-CRM114-Status: GOOD (  19.42  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, lokeshvutla@ti.com,
 j-keerthy@ti.com, linux-kernel@vger.kernel.org, tony@atomide.com,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/10/2019 09:16, Peter Ujfalusi wrote:
> A DMA hardware can have big cache or FIFO and the amount of data sitting in
> the DMA fabric can be an interest for the clients.
> 
> For example in audio we want to know the delay in the data flow and in case
> the DMA have significantly large FIFO/cache, it can affect the latenc/delay
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Reviewed-by: Tero Kristo <t-kristo@ti.com>

> ---
>   drivers/dma/dmaengine.h   | 8 ++++++++
>   include/linux/dmaengine.h | 2 ++
>   2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/dma/dmaengine.h b/drivers/dma/dmaengine.h
> index 501c0b063f85..b0b97475707a 100644
> --- a/drivers/dma/dmaengine.h
> +++ b/drivers/dma/dmaengine.h
> @@ -77,6 +77,7 @@ static inline enum dma_status dma_cookie_status(struct dma_chan *chan,
>   		state->last = complete;
>   		state->used = used;
>   		state->residue = 0;
> +		state->in_flight_bytes = 0;
>   	}
>   	return dma_async_is_complete(cookie, complete, used);
>   }
> @@ -87,6 +88,13 @@ static inline void dma_set_residue(struct dma_tx_state *state, u32 residue)
>   		state->residue = residue;
>   }
>   
> +static inline void dma_set_in_flight_bytes(struct dma_tx_state *state,
> +					   u32 in_flight_bytes)
> +{
> +	if (state)
> +		state->in_flight_bytes = in_flight_bytes;
> +}
> +
>   struct dmaengine_desc_callback {
>   	dma_async_tx_callback callback;
>   	dma_async_tx_callback_result callback_result;
> diff --git a/include/linux/dmaengine.h b/include/linux/dmaengine.h
> index 40d062c3b359..02ceef95340a 100644
> --- a/include/linux/dmaengine.h
> +++ b/include/linux/dmaengine.h
> @@ -682,11 +682,13 @@ static inline struct dma_async_tx_descriptor *txd_next(struct dma_async_tx_descr
>    * @residue: the remaining number of bytes left to transmit
>    *	on the selected transfer for states DMA_IN_PROGRESS and
>    *	DMA_PAUSED if this is implemented in the driver, else 0
> + * @in_flight_bytes: amount of data in bytes cached by the DMA.
>    */
>   struct dma_tx_state {
>   	dma_cookie_t last;
>   	dma_cookie_t used;
>   	u32 residue;
> +	u32 in_flight_bytes;
>   };
>   
>   /**
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
