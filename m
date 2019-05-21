Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3954E248DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 09:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uOaEw+d3gTJgUxjqez4pV8fodgD8ZD3fQiC4mxDw5o=; b=dGAvW/HVGgQVku
	j6ZX82DbE6yECfdvAr0j25NM2Of8Z/nDIjSC+3Yl8rg6gKWBiNRQuD/sBDSSAG/k55tWPPs91AhwH
	aAOPdh9GOSosulzdNfyS3xGZr+IlAmLy0nJcZ9r6bWecsN3p9XRk625G6m3kW/+ADkIETBkUtSI88
	v6sEb1d95b76HWRWfdgjcpgeMNuoDACDAQDFtYJxkFt7I5s8znnwOMRXOWEyz1SNOQDpn/OG0YuWk
	cNk+RTb4IL/B0llXulz+Kn+KodpLx+YdTNSSTMxiydkA26xr/HwIHO0A/kdvS3AChcqjAWx69xFZj
	gpugjd2AqC2SknOzQdHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSz5j-0003LT-D6; Tue, 21 May 2019 07:21:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSz5c-0003L9-N3
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 07:21:37 +0000
Received: from localhost (unknown [106.201.107.13])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1EECE2173C;
 Tue, 21 May 2019 07:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558423296;
 bh=Ag74ndH2WI93u1W3o4FuC7Tdt8eh+FlOGnYZ8HXxSqY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jtfJgFsnCfrk08DHKSZaSoF8nvpXV6gOR3UMEHGjadaKpA5+aL9BL9ttSPdmq+ISd
 cBa25RUENQH7JR53M9V2yPmuxQIpv800uA8khRiYOo9JOhykuwy04XmlGH84QI6v32
 VtiICNIRb5ptnpk7YJZI++SYntOLaq22uQGkziEw=
Date: Tue, 21 May 2019 12:51:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH] dmaengine: ti: edma: Enable support for polled (memcpy)
 completion
Message-ID: <20190521072131.GB15118@vkoul-mobl>
References: <20190514080909.10306-1-peter.ujfalusi@ti.com>
 <20190521050430.GS15118@vkoul-mobl>
 <ce1a2e96-bc4b-3998-0c36-362867907177@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ce1a2e96-bc4b-3998-0c36-362867907177@ti.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_002136_770982_F7440316 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

On 21-05-19, 09:16, Peter Ujfalusi wrote:
> On 21/05/2019 8.04, Vinod Koul wrote:
> > On 14-05-19, 11:09, Peter Ujfalusi wrote:

> >>  	return vchan_tx_prep(&echan->vchan, &edesc->vdesc, tx_flags);
> >> @@ -1801,6 +1804,20 @@ static enum dma_status edma_tx_status(struct dma_chan *chan,
> >>  	unsigned long flags;
> >>  
> >>  	ret = dma_cookie_status(chan, cookie, txstate);
> >> +
> >> +	if (ret != DMA_COMPLETE && echan->edesc && !echan->edesc->cyclic) {
> >> +		struct edma_cc *ecc = echan->ecc;
> >> +		int channel = EDMA_CHAN_SLOT(echan->ch_num);
> >> +		int j = (channel >> 5);
> >> +		unsigned int mask = BIT(channel & 0x1f);
> > 
> > GENMASK or define a macro instead of a magic number?
> 
> So it is better to change the other places first from where I have just
> copied this.

That would be nice as well :)

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
