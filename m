Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCECF6E64
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 07:07:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhxOmgLfrjBfVFBUDD8lVOOppT+owKzpUJ+pkzA3Umk=; b=BYgIAuA6JlfrVo
	hJO7H11s96h612Bosakv54sgoeVufLewtMdxAk1JhzGKaOh5Xwy/ChN6dGUQLdWaSOsY+J0JwtW1s
	T9nvtK1Gk8MyC+Erox8A2icSgZRZRkI2cbfULVtB8AssjvbZjOuamOANZ2JlIwDtxXWygUxvYy/G1
	LowYcdGAhQyI7c9O4fAybkLBIIivIdxtomYC4puXIf3dTvu7MhuIajvc8X7k6g34slglBA5Fy1rMp
	L4xEZr/mCBykZ5uTuu550VshXeqdLI5NyOSozBTlurZylWekxpFCFd+MdzUP6q5jvlV0wjX80MAA4
	3a/Fauk8f3h0SAZD5hJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU2qq-0007qX-4b; Mon, 11 Nov 2019 06:07:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU2qd-0007q5-R7
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 06:06:49 +0000
Received: from localhost (unknown [106.201.42.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 518FC20679;
 Mon, 11 Nov 2019 06:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573452407;
 bh=n7hFj+kxBxxMNL94Ev69ntv74KtMsyl8SF9Nu7bBmIo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cHOCQJ/ShdE+LvSNASxQapSPa8F0gwqk5Z+9n7gbKft8XLD+jkxj09f6AnBQZjnud
 16TGe7U0pV1VVogYwYn3lEfSUy/cTuFgOe/DpYIQvAhgHs0gBFFtJV/hPob6h2xscY
 wW7nDjRXL20mQXs0JEPbmgi0cwW2+iDyvEb3ngDM=
Date: Mon, 11 Nov 2019 11:36:40 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v4 11/15] dmaengine: ti: New driver for K3 UDMA -
 split#3: alloc/free chan_resources
Message-ID: <20191111060625.GP952516@vkoul-mobl>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-12-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101084135.14811-12-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_220647_919441_C4345496 
X-CRM114-Status: GOOD (  16.07  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01-11-19, 10:41, Peter Ujfalusi wrote:
> Split patch for review containing: channel rsource allocation and free

s/rsource/resource


> +static int udma_tisci_tx_channel_config(struct udma_chan *uc)
> +{
> +	struct udma_dev *ud = uc->ud;
> +	struct udma_tisci_rm *tisci_rm = &ud->tisci_rm;
> +	const struct ti_sci_rm_udmap_ops *tisci_ops = tisci_rm->tisci_udmap_ops;
> +	struct udma_tchan *tchan = uc->tchan;
> +	int tc_ring = k3_ringacc_get_ring_id(tchan->tc_ring);
> +	struct ti_sci_msg_rm_udmap_tx_ch_cfg req_tx = { 0 };
> +	u32 mode, fetch_size;
> +	int ret = 0;
> +
> +	if (uc->pkt_mode) {
> +		mode = TI_SCI_RM_UDMAP_CHAN_TYPE_PKT_PBRR;
> +		fetch_size = cppi5_hdesc_calc_size(uc->needs_epib, uc->psd_size,
> +						   0);
> +	} else {
> +		mode = TI_SCI_RM_UDMAP_CHAN_TYPE_3RDP_PBRR;
> +		fetch_size = sizeof(struct cppi5_desc_hdr_t);
> +	}
> +
> +	req_tx.valid_params =
> +		TI_SCI_MSG_VALUE_RM_UDMAP_CH_PAUSE_ON_ERR_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_FILT_EINFO_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_FILT_PSWORDS_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_CH_CHAN_TYPE_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_SUPR_TDPKT_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_CH_FETCH_SIZE_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_CH_CQ_QNUM_VALID;

bunch of these are repeat, you can define a COMMON_VALID_PARAMS and use
that + specific ones..

> +
> +	req_tx.nav_id = tisci_rm->tisci_dev_id;
> +	req_tx.index = tchan->id;
> +	req_tx.tx_pause_on_err = 0;
> +	req_tx.tx_filt_einfo = 0;
> +	req_tx.tx_filt_pswords = 0;

i think initialization to 0 is superfluous

> +	req_tx.tx_chan_type = mode;
> +	req_tx.tx_supr_tdpkt = uc->notdpkt;
> +	req_tx.tx_fetch_size = fetch_size >> 2;
> +	req_tx.txcq_qnum = tc_ring;
> +	if (uc->ep_type == PSIL_EP_PDMA_XY) {
> +		/* wait for peer to complete the teardown for PDMAs */
> +		req_tx.valid_params |=
> +				TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_TDTYPE_VALID;
> +		req_tx.tx_tdtype = 1;
> +	}
> +
> +	ret = tisci_ops->tx_ch_cfg(tisci_rm->tisci, &req_tx);
> +	if (ret)
> +		dev_err(ud->dev, "tchan%d cfg failed %d\n", tchan->id, ret);
> +
> +	return ret;
> +}
> +
> +static int udma_tisci_rx_channel_config(struct udma_chan *uc)
> +{
> +	struct udma_dev *ud = uc->ud;
> +	struct udma_tisci_rm *tisci_rm = &ud->tisci_rm;
> +	const struct ti_sci_rm_udmap_ops *tisci_ops = tisci_rm->tisci_udmap_ops;
> +	struct udma_rchan *rchan = uc->rchan;
> +	int fd_ring = k3_ringacc_get_ring_id(rchan->fd_ring);
> +	int rx_ring = k3_ringacc_get_ring_id(rchan->r_ring);
> +	struct ti_sci_msg_rm_udmap_rx_ch_cfg req_rx = { 0 };
> +	struct ti_sci_msg_rm_udmap_flow_cfg flow_req = { 0 };
> +	u32 mode, fetch_size;
> +	int ret = 0;
> +
> +	if (uc->pkt_mode) {
> +		mode = TI_SCI_RM_UDMAP_CHAN_TYPE_PKT_PBRR;
> +		fetch_size = cppi5_hdesc_calc_size(uc->needs_epib,
> +							uc->psd_size, 0);
> +	} else {
> +		mode = TI_SCI_RM_UDMAP_CHAN_TYPE_3RDP_PBRR;
> +		fetch_size = sizeof(struct cppi5_desc_hdr_t);
> +	}
> +
> +	req_rx.valid_params =
> +		TI_SCI_MSG_VALUE_RM_UDMAP_CH_PAUSE_ON_ERR_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_CH_FETCH_SIZE_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_CH_CQ_QNUM_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_CH_CHAN_TYPE_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_IGNORE_SHORT_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_IGNORE_LONG_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_FLOWID_START_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_FLOWID_CNT_VALID;
> +
> +	req_rx.nav_id = tisci_rm->tisci_dev_id;
> +	req_rx.index = rchan->id;
> +	req_rx.rx_fetch_size =  fetch_size >> 2;
> +	req_rx.rxcq_qnum = rx_ring;
> +	req_rx.rx_pause_on_err = 0;
> +	req_rx.rx_chan_type = mode;
> +	req_rx.rx_ignore_short = 0;
> +	req_rx.rx_ignore_long = 0;
> +	req_rx.flowid_start = 0;
> +	req_rx.flowid_cnt = 0;
> +
> +	ret = tisci_ops->rx_ch_cfg(tisci_rm->tisci, &req_rx);
> +	if (ret) {
> +		dev_err(ud->dev, "rchan%d cfg failed %d\n", rchan->id, ret);
> +		return ret;
> +	}
> +
> +	flow_req.valid_params =
> +		TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_EINFO_PRESENT_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_PSINFO_PRESENT_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_ERROR_HANDLING_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DESC_TYPE_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_QNUM_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_SRC_TAG_HI_SEL_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_SRC_TAG_LO_SEL_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_TAG_HI_SEL_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_TAG_LO_SEL_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ0_SZ0_QNUM_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ1_QNUM_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ2_QNUM_VALID |
> +		TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ3_QNUM_VALID;
> +
> +	flow_req.nav_id = tisci_rm->tisci_dev_id;
> +	flow_req.flow_index = rchan->id;
> +
> +	if (uc->needs_epib)
> +		flow_req.rx_einfo_present = 1;
> +	else
> +		flow_req.rx_einfo_present = 0;
> +	if (uc->psd_size)
> +		flow_req.rx_psinfo_present = 1;
> +	else
> +		flow_req.rx_psinfo_present = 0;
> +	flow_req.rx_error_handling = 1;
> +	flow_req.rx_desc_type = 0;
> +	flow_req.rx_dest_qnum = rx_ring;
> +	flow_req.rx_src_tag_hi_sel = 2;
> +	flow_req.rx_src_tag_lo_sel = 4;
> +	flow_req.rx_dest_tag_hi_sel = 5;
> +	flow_req.rx_dest_tag_lo_sel = 4;

can we get rid of magic numbers here and elsewhere, or at least comment
on what these mean..

> +static int udma_alloc_chan_resources(struct dma_chan *chan)
> +{
> +	struct udma_chan *uc = to_udma_chan(chan);
> +	struct udma_dev *ud = to_udma_dev(chan->device);
> +	const struct udma_match_data *match_data = ud->match_data;
> +	struct k3_ring *irq_ring;
> +	u32 irq_udma_idx;
> +	int ret;
> +
> +	if (uc->pkt_mode || uc->dir == DMA_MEM_TO_MEM) {
> +		uc->use_dma_pool = true;
> +		/* in case of MEM_TO_MEM we have maximum of two TRs */
> +		if (uc->dir == DMA_MEM_TO_MEM) {
> +			uc->hdesc_size = cppi5_trdesc_calc_size(
> +					sizeof(struct cppi5_tr_type15_t), 2);
> +			uc->pkt_mode = false;
> +		}
> +	}
> +
> +	if (uc->use_dma_pool) {
> +		uc->hdesc_pool = dma_pool_create(uc->name, ud->ddev.dev,
> +						 uc->hdesc_size, ud->desc_align,
> +						 0);
> +		if (!uc->hdesc_pool) {
> +			dev_err(ud->ddev.dev,
> +				"Descriptor pool allocation failed\n");
> +			uc->use_dma_pool = false;
> +			return -ENOMEM;
> +		}
> +	}
> +
> +	/*
> +	 * Make sure that the completion is in a known state:
> +	 * No teardown, the channel is idle
> +	 */
> +	reinit_completion(&uc->teardown_completed);
> +	complete_all(&uc->teardown_completed);

should we not complete first and then do reinit to bring a clean state?

> +	uc->state = UDMA_CHAN_IS_IDLE;
> +
> +	switch (uc->dir) {
> +	case DMA_MEM_TO_MEM:

can you explain why a allocation should be channel dependent, shouldn't
these things be done in prep_ calls?

I looked ahead and checked the prep_ calls and we can use any direction
so this somehow doesn't make sense!
-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
