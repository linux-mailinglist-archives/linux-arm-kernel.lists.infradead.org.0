Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8866127722
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 09:28:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GIUYcktuRUapNXDs5wSkh45rbstzpkxJ3FKPVfjXJhg=; b=chYEH6ItiX3Vn2
	5pZXKkICVq2TKSUS+K/avEzI6fULjTCPhjtKw4bQz948AbYHM1Qi1L2NRLK6WUF3oCuR6Xpm0etm/
	B504awalGei/vt5Un5B44E4CTjiaBYv1mB8evYC/ezjukPG4lPFy+JgBn5KtpG7T4uTgmkKpU6f0x
	Voc4fcIVrob95f8TCuE2jncoobc7CEYjlH9cl/KtpThtd96E1iR90pcJRdJVuQmHXnYYYXu/RN7mg
	GhNr4ZUgdGUL2naNo7tfokOYcwVJjK+rX9ycU6c/T8C/dEEYTXpjRcN+ZKtBE8EH6sDUCeqiyfHU1
	e3oWakMXZyaZxB4eQUqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiDe5-0003AA-0D; Fri, 20 Dec 2019 08:28:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiDdv-00039T-Rv
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 08:28:17 +0000
Received: from localhost (unknown [106.201.107.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7648A227BF;
 Fri, 20 Dec 2019 08:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576830495;
 bh=/KzTBILL8UHCE07b1BUC9/oeP6eglWtHpVzn8+71Crg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I0f+gM3rUF7VxJ7D2UmrQkNTfFaxtbS95hDsAW4nP/sZkybZqFyTOWe+lJyWoDumH
 zJo+49xPEuIwTNkTd/YYaOBkRtJNp9b2QwQUU7IjEmrIbP3659GxF+hbt1a8h8qB+y
 Wa6osl7DPbfxyGPDUoQlwXKprDozAnNIZXEJ0NVI=
Date: Fri, 20 Dec 2019 13:58:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v7 03/12] dmaengine: doc: Add sections for per descriptor
 metadata support
Message-ID: <20191220082810.GJ2536@vkoul-mobl>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
 <20191209094332.4047-4-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209094332.4047-4-peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_002815_948693_42BB451D 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 vigneshr@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 robh+dt@kernel.org, ssantosh@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On 09-12-19, 11:43, Peter Ujfalusi wrote:

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

and when would it be freed?

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

This is simpler, txn finished the metadata would be freed up right?
> +    - DMA_DEV_TO_MEM:
> +      1. prepare the descriptor (dmaengine_prep_*)
> +      2. use dmaengine_desc_attach_metadata() to attach the buffer to the
> +         descriptor
> +      3. submit the transfer
> +      4. when the transfer is completed, the metadata should be available in the
> +         attached buffer

and when and how would driver free that up :)

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
> +         pointer to the engine's metadata area
> +      4. Read out the metadata from the pointer
> +
> +  .. note::
> +
> +     Mixed use of DESC_METADATA_CLIENT / DESC_METADATA_ENGINE is not allowed,
> +     client drivers must use either of the modes per descriptor.

We should check that if not done already!
-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
