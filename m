Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B99129242
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 08:34:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qf7xiZzOiTFdUxqj3itncerjosPRClq1X5xipSZiC/o=; b=gEzo9rT1ADmVAQ
	FC1Z+THDufg850GdC2wvY7Ra+ThTQ5RFvXr7cKBNWRIRej9kRuR3fQHapNnQqbK2XWthsVx2U7Bwx
	ryOjMZ0ykbLFebQdClb3mRlCwPZRk9ehSTx9rJJCPWOoa/7QMxPDFJi6BeaGIEy5abCJ22czPRkzd
	elim19ycNkFk3H+v0NMhzje+hiSCF2ZS/WaOtBCILckdFs6KjLy8ibRDpXviVM+3uJQtL/kxAJwQn
	pQAOMhBbCvmPpx3o96xrKH/7jt7f0xgHKLNcM/bUu8gLcSF2/2gk3chK7TEdXyR+k/eFf5YwB1yKQ
	Y/iKzM26Ru9fHrbuyiMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijIEl-0007nU-Tc; Mon, 23 Dec 2019 07:34:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijIEc-0007mQ-AB
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 07:34:35 +0000
Received: from localhost (unknown [223.226.34.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8C1E1206D3;
 Mon, 23 Dec 2019 07:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577086471;
 bh=fc0vBGUMxGca4/eK9EQKsfeCIREgxwImKP2Or6ThPsM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M9y1IaGl8hEx0poB3+dGztg99Npyw9AfOcUje4SZW6kixyrwu9V2yxEjs27FJxBHd
 5Cz7Kw1tA7Xa5TvvDwDF3EH5Bn3yhOJnI67l4gR2z/SZgvcUGy58rlLGde2Z9LIy3+
 NIsbCK2HDVXK19x41WEi+fQM5hO0ZpIeoW/HMjfk=
Date: Mon, 23 Dec 2019 13:04:25 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v7 09/12] dmaengine: ti: New driver for K3 UDMA
Message-ID: <20191223073425.GV2536@vkoul-mobl>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
 <20191209094332.4047-10-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209094332.4047-10-peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_233434_394687_203CA92F 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 vigneshr@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 robh+dt@kernel.org, ssantosh@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09-12-19, 11:43, Peter Ujfalusi wrote:

> +#include <linux/kernel.h>
> +#include <linux/dmaengine.h>
> +#include <linux/dma-mapping.h>
> +#include <linux/dmapool.h>
> +#include <linux/err.h>
> +#include <linux/init.h>
> +#include <linux/interrupt.h>
> +#include <linux/list.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/slab.h>
> +#include <linux/spinlock.h>
> +#include <linux/of.h>
> +#include <linux/of_dma.h>
> +#include <linux/of_device.h>
> +#include <linux/of_irq.h>

to many of headers, do we need all!

> +static char *udma_get_dir_text(enum dma_transfer_direction dir)
> +{
> +	switch (dir) {
> +	case DMA_DEV_TO_MEM:
> +		return "DEV_TO_MEM";
> +	case DMA_MEM_TO_DEV:
> +		return "MEM_TO_DEV";
> +	case DMA_MEM_TO_MEM:
> +		return "MEM_TO_MEM";
> +	case DMA_DEV_TO_DEV:
> +		return "DEV_TO_DEV";
> +	default:
> +		break;
> +	}
> +
> +	return "invalid";
> +}

this seems generic which other ppl may need, can we move it to core.

> +
> +static void udma_reset_uchan(struct udma_chan *uc)
> +{
> +	uc->state = UDMA_CHAN_IS_IDLE;
> +	uc->remote_thread_id = -1;
> +	uc->dir = DMA_MEM_TO_MEM;
> +	uc->pkt_mode = false;
> +	uc->ep_type = PSIL_EP_NATIVE;
> +	uc->enable_acc32 = 0;
> +	uc->enable_burst = 0;
> +	uc->channel_tpl = 0;
> +	uc->psd_size = 0;
> +	uc->metadata_size = 0;
> +	uc->hdesc_size = 0;
> +	uc->notdpkt = 0;

rather than do setting zero, why note memset and then set the nonzero
members only?

> +static void udma_reset_counters(struct udma_chan *uc)
> +{
> +	u32 val;
> +
> +	if (uc->tchan) {
> +		val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_BCNT_REG);
> +		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_BCNT_REG, val);

so you read back from UDMA_TCHAN_RT_BCNT_REG and write same value to
it??

> +
> +		val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_SBCNT_REG);
> +		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_SBCNT_REG, val);
> +
> +		val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_PCNT_REG);
> +		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_PCNT_REG, val);
> +
> +		val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_PEER_BCNT_REG);
> +		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_PEER_BCNT_REG, val);
> +	}
> +
> +	if (uc->rchan) {
> +		val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_BCNT_REG);
> +		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_BCNT_REG, val);
> +
> +		val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_SBCNT_REG);
> +		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_SBCNT_REG, val);
> +
> +		val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_PCNT_REG);
> +		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_PCNT_REG, val);
> +
> +		val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_PEER_BCNT_REG);
> +		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_PEER_BCNT_REG, val);

True for all of these, what am I missing :)

> +static int udma_start(struct udma_chan *uc)
> +{
> +	struct virt_dma_desc *vd = vchan_next_desc(&uc->vc);
> +
> +	if (!vd) {
> +		uc->desc = NULL;
> +		return -ENOENT;
> +	}
> +
> +	list_del(&vd->node);
> +
> +	uc->desc = to_udma_desc(&vd->tx);
> +
> +	/* Channel is already running and does not need reconfiguration */
> +	if (udma_is_chan_running(uc) && !udma_chan_needs_reconfiguration(uc)) {
> +		udma_start_desc(uc);
> +		goto out;

How about the case where settings are different than the current one?

> +static struct udma_desc *udma_alloc_tr_desc(struct udma_chan *uc,
> +					    size_t tr_size, int tr_count,
> +					    enum dma_transfer_direction dir)
> +{
> +	struct udma_hwdesc *hwdesc;
> +	struct cppi5_desc_hdr_t *tr_desc;
> +	struct udma_desc *d;
> +	u32 reload_count = 0;
> +	u32 ring_id;
> +
> +	switch (tr_size) {
> +	case 16:
> +	case 32:
> +	case 64:
> +	case 128:
> +		break;
> +	default:
> +		dev_err(uc->ud->dev, "Unsupported TR size of %zu\n", tr_size);
> +		return NULL;
> +	}
> +
> +	/* We have only one descriptor containing multiple TRs */
> +	d = kzalloc(sizeof(*d) + sizeof(d->hwdesc[0]), GFP_ATOMIC);

this is invoked from prep_ so should use GFP_NOWAIT, we dont use
GFP_ATOMIC :)

> +static struct udma_desc *
> +udma_prep_slave_sg_tr(struct udma_chan *uc, struct scatterlist *sgl,
> +		      unsigned int sglen, enum dma_transfer_direction dir,
> +		      unsigned long tx_flags, void *context)
> +{
> +	enum dma_slave_buswidth dev_width;
> +	struct scatterlist *sgent;
> +	struct udma_desc *d;
> +	size_t tr_size;
> +	struct cppi5_tr_type1_t *tr_req = NULL;
> +	unsigned int i;
> +	u32 burst;
> +
> +	if (dir == DMA_DEV_TO_MEM) {
> +		dev_width = uc->cfg.src_addr_width;
> +		burst = uc->cfg.src_maxburst;
> +	} else if (dir == DMA_MEM_TO_DEV) {
> +		dev_width = uc->cfg.dst_addr_width;
> +		burst = uc->cfg.dst_maxburst;
> +	} else {
> +		dev_err(uc->ud->dev, "%s: bad direction?\n", __func__);
> +		return NULL;
> +	}
> +
> +	if (!burst)
> +		burst = 1;
> +
> +	/* Now allocate and setup the descriptor. */
> +	tr_size = sizeof(struct cppi5_tr_type1_t);
> +	d = udma_alloc_tr_desc(uc, tr_size, sglen, dir);
> +	if (!d)
> +		return NULL;
> +
> +	d->sglen = sglen;
> +
> +	tr_req = (struct cppi5_tr_type1_t *)d->hwdesc[0].tr_req_base;

cast away from void *?

> +static int udma_configure_statictr(struct udma_chan *uc, struct udma_desc *d,
> +				   enum dma_slave_buswidth dev_width,
> +				   u16 elcnt)
> +{
> +	if (uc->ep_type != PSIL_EP_PDMA_XY)
> +		return 0;
> +
> +	/* Bus width translates to the element size (ES) */
> +	switch (dev_width) {
> +	case DMA_SLAVE_BUSWIDTH_1_BYTE:
> +		d->static_tr.elsize = 0;
> +		break;
> +	case DMA_SLAVE_BUSWIDTH_2_BYTES:
> +		d->static_tr.elsize = 1;
> +		break;
> +	case DMA_SLAVE_BUSWIDTH_3_BYTES:
> +		d->static_tr.elsize = 2;
> +		break;
> +	case DMA_SLAVE_BUSWIDTH_4_BYTES:
> +		d->static_tr.elsize = 3;
> +		break;
> +	case DMA_SLAVE_BUSWIDTH_8_BYTES:
> +		d->static_tr.elsize = 4;

seems like ffs(dev_width) to me?

> +static struct udma_desc *
> +udma_prep_slave_sg_pkt(struct udma_chan *uc, struct scatterlist *sgl,
> +		       unsigned int sglen, enum dma_transfer_direction dir,
> +		       unsigned long tx_flags, void *context)
> +{
> +	struct scatterlist *sgent;
> +	struct cppi5_host_desc_t *h_desc = NULL;
> +	struct udma_desc *d;
> +	u32 ring_id;
> +	unsigned int i;
> +
> +	d = kzalloc(sizeof(*d) + sglen * sizeof(d->hwdesc[0]), GFP_ATOMIC);

GFP_NOWAIT here and few other places

> +static struct udma_desc *
> +udma_prep_dma_cyclic_pkt(struct udma_chan *uc, dma_addr_t buf_addr,
> +			 size_t buf_len, size_t period_len,
> +			 enum dma_transfer_direction dir, unsigned long flags)
> +{
> +	struct udma_desc *d;
> +	u32 ring_id;
> +	int i;
> +	int periods = buf_len / period_len;
> +
> +	if (periods > (K3_UDMA_DEFAULT_RING_SIZE - 1))
> +		return NULL;
> +
> +	if (period_len > 0x3FFFFF)

Magic?

> +static enum dma_status udma_tx_status(struct dma_chan *chan,
> +				      dma_cookie_t cookie,
> +				      struct dma_tx_state *txstate)
> +{
> +	struct udma_chan *uc = to_udma_chan(chan);
> +	enum dma_status ret;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&uc->vc.lock, flags);
> +
> +	ret = dma_cookie_status(chan, cookie, txstate);
> +
> +	if (!udma_is_chan_running(uc))
> +		ret = DMA_COMPLETE;

Even for paused, not started channel? Not sure what will be return on those cases
-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
