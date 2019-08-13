Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1301A8ADCD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 06:35:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vS2SROnO0T+m+9KRE3gD2hr6s+/qDZhcEfzT8odOulE=; b=VHyzBDuXbpSPM1
	ytde04vwo4BBowBV3SyaBSLP+GUsbiCG8SbL/cjMqbxqaFMn0JHoVG3foR3z53m96hSdZLKBb+Spo
	K8AzpTM7Yc5MTgil6hFrKzWumN79NSmnlIgvGwJU26ew2MfkdJep5muK2S5TxCbT1jg/x9EgBGvgv
	QQ2IcDMF3GxD6hAu9lRV5klKdQWG1l4AT5jYR1mNtiLas/QDrjws33wz0LFrGzLNhu/yPIg2g85lS
	/VzNPsrok2zpYfnPv+M2C5j+qSLg4K7+MtHZ7jHA7mqetV0Dv03hH8Cr8kU89n40c5+W1bafXKQvx
	oCqKwYx+K9tRqyS/e6qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxOWr-0006N2-RU; Tue, 13 Aug 2019 04:35:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxOWa-0006MF-3f
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 04:35:09 +0000
Received: from localhost (unknown [106.201.103.22])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0CF7F20644;
 Tue, 13 Aug 2019 04:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565670907;
 bh=1QF8LnDZ64amqs4h5il803zrynaMgoHJi17yPftxaSg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WiNrdly0SGH+qgh7K05jjboaTUe0d97OVHB2yZqrF9QRXStmPvvlV1CdeRylT5m6O
 7X/TZ/tIzOTEvhZIHlQWgkCuzoYMVehzc96AxQqLIizHy4Ng8RBdCZFS4kMY7CHJWz
 CKNCmf4LrQlAd7LYAoPa38aQR2pDUl5IEy7Oq1tY=
Date: Tue, 13 Aug 2019 10:03:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 3/7] dma: iop-adma: use correct printk format strings
Message-ID: <20190813043355.GO12733@vkoul-mobl.Dlink>
References: <20190809162956.488941-1-arnd@arndb.de>
 <20190809163334.489360-1-arnd@arndb.de>
 <20190809163334.489360-3-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809163334.489360-3-arnd@arndb.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_213508_190821_3C8EC293 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, soc@kernel.org,
 linux-i2c@vger.kernel.org, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09-08-19, 18:33, Arnd Bergmann wrote:
> When compile-testing on other architectures, we get lots of warnings
> about incorrect format strings, like:
> 
>    drivers/dma/iop-adma.c: In function 'iop_adma_alloc_slots':
>    drivers/dma/iop-adma.c:307:6: warning: format '%x' expects argument of type 'unsigned int', but argument 6 has type 'dma_addr_t {aka long long unsigned int}' [-Wformat=]
> 
>    drivers/dma/iop-adma.c: In function 'iop_adma_prep_dma_memcpy':
> >> drivers/dma/iop-adma.c:518:40: warning: format '%u' expects argument of type 'unsigned int', but argument 5 has type 'size_t {aka long unsigned int}' [-Wformat=]
> 
> Use %zu for printing size_t as required, and cast the dma_addr_t
> arguments to 'u64' for printing with %llx. Ideally this should use
> the %pad format string, but that requires an lvalue argument that
> doesn't work here.

Please change title to "dmaengine: iop-adma: use correct printk format strings"

After that:

Acked-by: Vinod Koul <vkoul@kernel.org>

> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/dma/iop-adma.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/dma/iop-adma.c b/drivers/dma/iop-adma.c
> index 7857b54770d1..aebdd671651a 100644
> --- a/drivers/dma/iop-adma.c
> +++ b/drivers/dma/iop-adma.c
> @@ -117,9 +117,9 @@ static void __iop_adma_slot_cleanup(struct iop_adma_chan *iop_chan)
>  	list_for_each_entry_safe(iter, _iter, &iop_chan->chain,
>  					chain_node) {
>  		pr_debug("\tcookie: %d slot: %d busy: %d "
> -			"this_desc: %#x next_desc: %#x ack: %d\n",
> +			"this_desc: %#x next_desc: %#llx ack: %d\n",
>  			iter->async_tx.cookie, iter->idx, busy,
> -			iter->async_tx.phys, iop_desc_get_next_desc(iter),
> +			iter->async_tx.phys, (u64)iop_desc_get_next_desc(iter),
>  			async_tx_test_ack(&iter->async_tx));
>  		prefetch(_iter);
>  		prefetch(&_iter->async_tx);
> @@ -307,9 +307,9 @@ iop_adma_alloc_slots(struct iop_adma_chan *iop_chan, int num_slots,
>  				int i;
>  				dev_dbg(iop_chan->device->common.dev,
>  					"allocated slot: %d "
> -					"(desc %p phys: %#x) slots_per_op %d\n",
> +					"(desc %p phys: %#llx) slots_per_op %d\n",
>  					iter->idx, iter->hw_desc,
> -					iter->async_tx.phys, slots_per_op);
> +					(u64)iter->async_tx.phys, slots_per_op);
>  
>  				/* pre-ack all but the last descriptor */
>  				if (num_slots != slots_per_op)
> @@ -517,7 +517,7 @@ iop_adma_prep_dma_memcpy(struct dma_chan *chan, dma_addr_t dma_dest,
>  		return NULL;
>  	BUG_ON(len > IOP_ADMA_MAX_BYTE_COUNT);
>  
> -	dev_dbg(iop_chan->device->common.dev, "%s len: %u\n",
> +	dev_dbg(iop_chan->device->common.dev, "%s len: %zu\n",
>  		__func__, len);
>  
>  	spin_lock_bh(&iop_chan->lock);
> @@ -550,7 +550,7 @@ iop_adma_prep_dma_xor(struct dma_chan *chan, dma_addr_t dma_dest,
>  	BUG_ON(len > IOP_ADMA_XOR_MAX_BYTE_COUNT);
>  
>  	dev_dbg(iop_chan->device->common.dev,
> -		"%s src_cnt: %d len: %u flags: %lx\n",
> +		"%s src_cnt: %d len: %zu flags: %lx\n",
>  		__func__, src_cnt, len, flags);
>  
>  	spin_lock_bh(&iop_chan->lock);
> @@ -583,7 +583,7 @@ iop_adma_prep_dma_xor_val(struct dma_chan *chan, dma_addr_t *dma_src,
>  	if (unlikely(!len))
>  		return NULL;
>  
> -	dev_dbg(iop_chan->device->common.dev, "%s src_cnt: %d len: %u\n",
> +	dev_dbg(iop_chan->device->common.dev, "%s src_cnt: %d len: %zu\n",
>  		__func__, src_cnt, len);
>  
>  	spin_lock_bh(&iop_chan->lock);
> @@ -621,7 +621,7 @@ iop_adma_prep_dma_pq(struct dma_chan *chan, dma_addr_t *dst, dma_addr_t *src,
>  	BUG_ON(len > IOP_ADMA_XOR_MAX_BYTE_COUNT);
>  
>  	dev_dbg(iop_chan->device->common.dev,
> -		"%s src_cnt: %d len: %u flags: %lx\n",
> +		"%s src_cnt: %d len: %zu flags: %lx\n",
>  		__func__, src_cnt, len, flags);
>  
>  	if (dmaf_p_disabled_continue(flags))
> @@ -684,7 +684,7 @@ iop_adma_prep_dma_pq_val(struct dma_chan *chan, dma_addr_t *pq, dma_addr_t *src,
>  		return NULL;
>  	BUG_ON(len > IOP_ADMA_XOR_MAX_BYTE_COUNT);
>  
> -	dev_dbg(iop_chan->device->common.dev, "%s src_cnt: %d len: %u\n",
> +	dev_dbg(iop_chan->device->common.dev, "%s src_cnt: %d len: %zu\n",
>  		__func__, src_cnt, len);
>  
>  	spin_lock_bh(&iop_chan->lock);
> -- 
> 2.20.0

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
