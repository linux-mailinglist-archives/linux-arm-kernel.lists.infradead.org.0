Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B726F6E1E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 06:28:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NYiIclcG6kHfP8LbuSmyxzkX/paMrwbqmb8bQazyCaQ=; b=u34cTqyzgtB34U
	NEdZtaZcX+3IzvDvLH8UyC/Pmnj+em+Kuc0dBvPH+7MWT3LoMBzL9uwuCIjRxBJTuInHu4oxuil/A
	9MtzfvJktK9S8Lbls5dFxXAhFHuIZcNoxZrpRY4yM5QldSXIRYM83L9IcyhYif/V92MKUgImPX7IV
	NT5FudqRjI9VcRG4yRe4nHzVPy/KXb7CZ3WYXjbiquYG2KIxNoatINyIH2DVSNi7fVHvIHhWVPlsB
	LleYjIr7062idbcMkA+2hc4CYFvIs0ww0xerbk4Cqo4jCXKD8EoXDiDqotEeGFql+1YQ6LNZG30ZZ
	Bet/NLrw6Q8IvVMi6X6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU2Fp-0001tB-1q; Mon, 11 Nov 2019 05:28:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU2Ff-0001sp-4k
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 05:28:36 +0000
Received: from localhost (unknown [106.201.42.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FEFE20656;
 Mon, 11 Nov 2019 05:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573450114;
 bh=4yaDpNQuxUENXy3kqRG8Msg475RHYza2D5Myb1olFzw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ekDLb5RvoW/V2AB1uG3TZ5tiCoHfyYQx2wS41vt4ZM7sqJncKYBmdH+svDUZOAZJ6
 /vYdChQb2GsXpa6hL9MT52Obq/g7tTTZAWgrxtJIdXuS+r3bFTDY8uxp4MNboPZGHS
 0iZVlpF/Q+jGJC5Ds85Ksx82RhG3TJ8pBNYJP/ik=
Date: Mon, 11 Nov 2019 10:58:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v4 09/15] dmaengine: ti: New driver for K3 UDMA -
 split#1: defines, structs, io func
Message-ID: <20191111052828.GN952516@vkoul-mobl>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-10-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101084135.14811-10-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_212835_199807_6B2CD19B 
X-CRM114-Status: GOOD (  10.79  )
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

> +struct udma_chan {
> +	struct virt_dma_chan vc;
> +	struct dma_slave_config	cfg;
> +	struct udma_dev *ud;
> +	struct udma_desc *desc;
> +	struct udma_desc *terminated_desc;

descriptor and not a list?

> +	struct udma_static_tr static_tr;
> +	char *name;
> +
> +	struct udma_tchan *tchan;
> +	struct udma_rchan *rchan;
> +	struct udma_rflow *rflow;
> +
> +	bool psil_paired;
> +
> +	int irq_num_ring;
> +	int irq_num_udma;
> +
> +	bool cyclic;
> +	bool paused;
> +
> +	enum udma_chan_state state;
> +	struct completion teardown_completed;
> +
> +	u32 bcnt; /* number of bytes completed since the start of the channel */
> +	u32 in_ring_cnt; /* number of descriptors in flight */
> +
> +	bool pkt_mode; /* TR or packet */
> +	bool needs_epib; /* EPIB is needed for the communication or not */
> +	u32 psd_size; /* size of Protocol Specific Data */
> +	u32 metadata_size; /* (needs_epib ? 16:0) + psd_size */
> +	u32 hdesc_size; /* Size of a packet descriptor in packet mode */
> +	bool notdpkt; /* Suppress sending TDC packet */
> +	int remote_thread_id;
> +	u32 src_thread;
> +	u32 dst_thread;
> +	enum psil_endpoint_type ep_type;
> +	bool enable_acc32;
> +	bool enable_burst;
> +	enum udma_tp_level channel_tpl; /* Channel Throughput Level */
> +
> +	/* dmapool for packet mode descriptors */
> +	bool use_dma_pool;
> +	struct dma_pool *hdesc_pool;
> +
> +	u32 id;
> +	enum dma_transfer_direction dir;

why does channel have this, it already exists in descriptor

> +static irqreturn_t udma_udma_irq_handler(int irq, void *data)
> +{
> +	struct udma_chan *uc = data;
> +
> +	udma_tr_event_callback(uc);

any reason why we want to call a fn and not code here..?
-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
