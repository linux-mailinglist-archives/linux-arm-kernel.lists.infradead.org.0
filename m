Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A045B12790D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 11:15:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVsW3/bFPHl813MFNH5XHj8As9YkHVduLASYdq/OhWM=; b=lsUqtj/Xdh6FSn
	EglbufVdnQYw//Cy+60DjR0Ih99+oE+PA9WdpFnfUYVtFt03Vgj00hFWJ9PJxPTHkU8CIrZPIr3cN
	sxZ4/6Lg0xtRLhz/hvu04xYSZyKuIWxesiYk/HQO005/16DpNkZBzzachN3uRmsitwzeUBRT72sqb
	hfOEwwqNNqjczR95s9vgP4J24bw+6ysOH7wRkN7gdkYhvaFWPnOIE/OlacbbVuMHkH9sCFD4HsqaY
	dpvNY5V/mf9YfKIOh9ELhm82CLKnvc4gKj0ZgI9OwogaPIOhdrC1HP3y6JuXaqWIOUoVbFix2r+5g
	bYuH16B1H21iZ9FOGeTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiFJW-0002SG-Ko; Fri, 20 Dec 2019 10:15:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiFJF-00026l-B9
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 10:15:02 +0000
Received: from localhost (unknown [106.201.107.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18F5D206D8;
 Fri, 20 Dec 2019 10:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576836901;
 bh=3q1NF9VG9IWQH0lcsKzRWfLp9RNI0lBU9URATav/sck=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gxHI/HJ87pI2J2ulQlfQdf6utepKQnhIl8aUTOmKmyc4Gy1AS/BlCDM8D6h30RU1q
 tFA5JERdV3SyPUgVJXQWTinJTNYs+bMMTVe/LzFse92eoKqDeWsKMzaxd4TBaQnMYV
 4nTCX9z29x19dtDhNUDlXVuqmRBKo32w6wui6mKU=
Date: Fri, 20 Dec 2019 15:44:56 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v7 03/12] dmaengine: doc: Add sections for per descriptor
 metadata support
Message-ID: <20191220101456.GO2536@vkoul-mobl>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
 <20191209094332.4047-4-peter.ujfalusi@ti.com>
 <20191220082810.GJ2536@vkoul-mobl>
 <4508bc1c-d424-3285-cb47-d32a4d25b2c9@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4508bc1c-d424-3285-cb47-d32a4d25b2c9@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_021501_423917_13793DAD 
X-CRM114-Status: GOOD (  20.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 vigneshr@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 robh+dt@kernel.org, ssantosh@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-12-19, 11:52, Peter Ujfalusi wrote:
> Hi Vinod,
> 
> On 20/12/2019 10.28, Vinod Koul wrote:
> > Hi Peter,
> > 
> > On 09-12-19, 11:43, Peter Ujfalusi wrote:
> > 
> >> +  Optional: per descriptor metadata
> >> +  ---------------------------------
> >> +  DMAengine provides two ways for metadata support.
> >> +
> >> +  DESC_METADATA_CLIENT
> >> +
> >> +    The metadata buffer is allocated/provided by the client driver and it is
> >> +    attached to the descriptor.
> >> +
> >> +  .. code-block:: c
> >> +
> >> +     int dmaengine_desc_attach_metadata(struct dma_async_tx_descriptor *desc,
> >> +				   void *data, size_t len);
> >> +
> >> +  DESC_METADATA_ENGINE
> >> +
> >> +    The metadata buffer is allocated/managed by the DMA driver. The client
> > 
> > and when would it be freed?
> 
> It is not defined as it could be driver dependent, but afaik we have
> defined (which I'm not sure why it is not here or in the code) that in
> DESC_METADATA_ENGINE case the metadata pointer is valid for the client
> between the time it got the desc (via prep call) and the execution of
> the completion callback.
> Iow, DESC_METADATA_ENGINE does not make any sense if the client want to
> receive metadata back and does not provide a callback.

Make sense and once callback completes driver can free it up!
> 
> I will extend the documentation and comment in the code to reflect this.

makes sense, thanks!

> 
> >> +    driver can ask for the pointer, maximum size and the currently used size of
> >> +    the metadata and can directly update or read it.
> >> +
> >> +  .. code-block:: c
> >> +
> >> +     void *dmaengine_desc_get_metadata_ptr(struct dma_async_tx_descriptor *desc,
> >> +		size_t *payload_len, size_t *max_len);
> >> +
> >> +     int dmaengine_desc_set_metadata_len(struct dma_async_tx_descriptor *desc,
> >> +		size_t payload_len);
> >> +
> >> +  Client drivers can query if a given mode is supported with:
> >> +
> >> +  .. code-block:: c
> >> +
> >> +     bool dmaengine_is_metadata_mode_supported(struct dma_chan *chan,
> >> +		enum dma_desc_metadata_mode mode);
> >> +
> >> +  Depending on the used mode client drivers must follow different flow.
> >> +
> >> +  DESC_METADATA_CLIENT
> >> +
> >> +    - DMA_MEM_TO_DEV / DEV_MEM_TO_MEM:
> >> +      1. prepare the descriptor (dmaengine_prep_*)
> >> +         construct the metadata in the client's buffer
> >> +      2. use dmaengine_desc_attach_metadata() to attach the buffer to the
> >> +         descriptor
> >> +      3. submit the transfer
> > 
> > This is simpler, txn finished the metadata would be freed up right?
> 
> It is up to the client driver what it does with the provided buffer. As
> for what the DMA driver does is not documented as it is not relevant and
> can be different by different HW or SW implementation.

yeah lets document that and the fact the dmaengine driver cant touch it
after the callback
-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
