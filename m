Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1355D0845
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 09:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a1kIdhy+YK3zyEZnDpNCmVDL5UQCx+K4FUwMLf9yAQU=; b=MbPFShpF17kKEeyK6k7dj2/FI
	vtSze2pCO5D4WS0pggjeRkM3HKCFfKxgclApytB82wEwS8CbB938aFiXF+vdhvr0A/9LmmqLQLujY
	MakyCnc/S+TpH0Me1Lp7xm3Swgds0rC587E9YR6QjBaf4JdY0JvGaE2gUF41XRjK8WJ/FtAKVqURO
	DUsSAlzF4obTxZz+vIxMYuCEV0yr7SVGtlfDO9Ma55mVCLHIf5XxZWWqwe4g2lVUVLgw8lPyOnnog
	qa+j4es/27rlTtBegXK9DIWIiPbeIPGastTzAQUym0zbeyABkLZFIX9EJtlZ3gxhRZzMgfLKlwdSo
	05JhOWnIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6Ql-0003Jw-Qy; Wed, 09 Oct 2019 07:30:43 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6QX-0003J1-R2
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 07:30:31 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x997UKhm013883;
 Wed, 9 Oct 2019 02:30:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570606220;
 bh=5z+TfXG/+mukQHo2BHWbozbe5qjOLFXVTXcSKio8sx0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=bsE536iHGLRLKaUN5WBJPKBKahpEY/Y+RFUA8zRaoMwdLXIZJLfonUphytm7cKVN2
 Rn1zKf3m1SLD+dcvWgdKC9RZRSwinWvdZ7/C72cJsQ7rI9Ew4fGiDjsXqWrK1yv+mr
 UAj4dJRrt31sYJl8kejroBgW8hfV23CDq6yliLqk=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x997UKHx030086
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 9 Oct 2019 02:30:20 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 9 Oct
 2019 02:30:16 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 9 Oct 2019 02:30:19 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x997UFOT089869;
 Wed, 9 Oct 2019 02:30:16 -0500
Subject: Re: [PATCH v3 03/14] dmaengine: doc: Add sections for per descriptor
 metadata support
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <nm@ti.com>, <ssantosh@kernel.org>
References: <20191001061704.2399-1-peter.ujfalusi@ti.com>
 <20191001061704.2399-4-peter.ujfalusi@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <6b9be9ea-551a-22e1-a86b-9e149656058f@ti.com>
Date: Wed, 9 Oct 2019 10:30:15 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191001061704.2399-4-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_003029_959303_38B049D7 
X-CRM114-Status: GOOD (  29.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
> Update the provider and client documentation with details about the
> metadata support.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Couple of typos below, but they don't really change the readability of 
the document so:

Reviewed-by: Tero Kristo <t-kristo@ti.com>

> ---
>   Documentation/driver-api/dmaengine/client.rst | 75 +++++++++++++++++++
>   .../driver-api/dmaengine/provider.rst         | 46 ++++++++++++
>   2 files changed, 121 insertions(+)
> 
> diff --git a/Documentation/driver-api/dmaengine/client.rst b/Documentation/driver-api/dmaengine/client.rst
> index 45953f171500..d708e46b88a2 100644
> --- a/Documentation/driver-api/dmaengine/client.rst
> +++ b/Documentation/driver-api/dmaengine/client.rst
> @@ -151,6 +151,81 @@ The details of these operations are:
>        Note that callbacks will always be invoked from the DMA
>        engines tasklet, never from interrupt context.
>   
> +  Optional: per descriptor metadata
> +  ---------------------------------
> +  DMAengine provides two ways for metadata support.
> +
> +  DESC_METADATA_CLIENT
> +
> +    The metadata buffer is allocated/provided by the client driver and it is
> +    attached to the descriptor.
> +
> +  .. code-block:: c
> +
> +     int dmaengine_desc_attach_metadata(struct dma_async_tx_descriptor *desc,
> +				   void *data, size_t len);
> +
> +  DESC_METADATA_ENGINE
> +
> +    The metadata buffer is allocated/managed by the DMA driver. The client
> +    driver can ask for the pointer, maximum size and the currently used size of
> +    the metadata and can directly update or read it.
> +
> +  .. code-block:: c
> +
> +     void *dmaengine_desc_get_metadata_ptr(struct dma_async_tx_descriptor *desc,
> +		size_t *payload_len, size_t *max_len);
> +
> +     int dmaengine_desc_set_metadata_len(struct dma_async_tx_descriptor *desc,
> +		size_t payload_len);
> +
> +  Client drivers can query if a given mode is supported with:
> +
> +  .. code-block:: c
> +
> +     bool dmaengine_is_metadata_mode_supported(struct dma_chan *chan,
> +		enum dma_desc_metadata_mode mode);
> +
> +  Depending on the used mode client drivers must follow different flow.
> +
> +  DESC_METADATA_CLIENT
> +
> +    - DMA_MEM_TO_DEV / DEV_MEM_TO_MEM:
> +      1. prepare the descriptor (dmaengine_prep_*)
> +         construct the metadata in the client's buffer
> +      2. use dmaengine_desc_attach_metadata() to attach the buffer to the
> +         descriptor
> +      3. submit the transfer
> +    - DMA_DEV_TO_MEM:
> +      1. prepare the descriptor (dmaengine_prep_*)
> +      2. use dmaengine_desc_attach_metadata() to attach the buffer to the
> +         descriptor
> +      3. submit the transfer
> +      4. when the transfer is completed, the metadata should be available in the
> +         attached buffer
> +
> +  DESC_METADATA_ENGINE
> +
> +    - DMA_MEM_TO_DEV / DEV_MEM_TO_MEM:
> +      1. prepare the descriptor (dmaengine_prep_*)
> +      2. use dmaengine_desc_get_metadata_ptr() to get the pointer to the
> +         engine's metadata area
> +      3. update the metadata at the pointer
> +      4. use dmaengine_desc_set_metadata_len()  to tell the DMA engine the
> +         amount of data the client has placed into the metadata buffer
> +      5. submit the transfer
> +    - DMA_DEV_TO_MEM:
> +      1. prepare the descriptor (dmaengine_prep_*)
> +      2. submit the transfer
> +      3. on transfer completion, use dmaengine_desc_get_metadata_ptr() to get the
> +         pointer to the engine's metadata are

are = area?

> +      4. Read out the metadate from the pointer

metadate = metadata?

> +
> +  .. note::
> +
> +     Mixed use of DESC_METADATA_CLIENT / DESC_METADATA_ENGINE is not allowed,
> +     client drivers must use either of the modes per descriptor.
> +
>   4. Submit the transaction
>   
>      Once the descriptor has been prepared and the callback information
> diff --git a/Documentation/driver-api/dmaengine/provider.rst b/Documentation/driver-api/dmaengine/provider.rst
> index dfc4486b5743..9e6d87b3c477 100644
> --- a/Documentation/driver-api/dmaengine/provider.rst
> +++ b/Documentation/driver-api/dmaengine/provider.rst
> @@ -247,6 +247,52 @@ after each transfer. In case of a ring buffer, they may loop
>   (DMA_CYCLIC). Addresses pointing to a device's register (e.g. a FIFO)
>   are typically fixed.
>   
> +Per descriptor metadata support
> +-------------------------------
> +Some data movement architecure (DMA controller and peripherals) uses metadata

architecure = architecture?

> +associated with a transaction. The DMA controller role is to transfer the
> +payload and the metadata alongside.
> +The metadata itself is not used by the DMA engine itself, but it contains
> +parameters, keys, vectors, etc for peripheral or from the peripheral.
> +
> +The DMAengine framework provides a generic ways to facilitate the metadata for
> +descriptors. Depending on the architecture the DMA driver can implement either
> +or both of the methods and it is up to the client driver to choose which one
> +to use.
> +
> +- DESC_METADATA_CLIENT
> +
> +  The metadata buffer is allocated/provided by the client driver and it is
> +  attached (via the dmaengine_desc_attach_metadata() helper to the descriptor.
> +
> +  From the DMA driver the following is expected for this mode:
> +  - DMA_MEM_TO_DEV / DEV_MEM_TO_MEM
> +    The data from the provided metadata buffer should be prepared for the DMA
> +    controller to be sent alongside of the payload data. Either by copying to a
> +    hardware descriptor, or highly coupled packet.
> +  - DMA_DEV_TO_MEM
> +    On transfer completion the DMA driver must copy the metadata to the client
> +    provided metadata buffer.
> +
> +- DESC_METADATA_ENGINE
> +
> +  The metadata buffer is allocated/managed by the DMA driver. The client driver
> +  can ask for the pointer, maximum size and the currently used size of the
> +  metadata and can directly update or read it. dmaengine_desc_get_metadata_ptr()
> +  and dmaengine_desc_set_metadata_len() is provided as helper functions.
> +
> +  From the DMA driver the following is expected for this mode:
> +  - get_metadata_ptr
> +    Should return a pointer for the metadata buffer, the maximum size of the
> +    metadata buffer and the currently used / valid (if any) bytes in the buffer.
> +  - set_metadata_len
> +    It is called by the clients after it have placed the metadata to the buffer
> +    to let the DMA driver know the number of valid bytes provided.
> +
> +  Note: since the client will ask for the metadata pointer in the completion
> +  callback (in DMA_DEV_TO_MEM case) the DMA driver must ensure that the
> +  descriptor is not freed up prior the callback is called.
> +
>   Device operations
>   -----------------
>   
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
