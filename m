Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 968188C355
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 23:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+xlo3NXFRFzZOvGCETRn+tOeM6dJ8Z+puIYwTAZnmc=; b=KzW+MDCLnT/Zet
	wcfTJY47HiOjJ7Hhg71mnVNl6Xzh11L4JIPRDwV/QRfYG3XsT6VxuVpOZJu8BS78T2Q/UI1k51G6E
	NmTEF0cKEhv0UEeDzeh0LIbum5P/FayG1e0KrlrF7Qr1ugHcC6cozHLiuqXN0LP3Hh+fXX104mIrb
	luYGXAFNeu496DDsY17lI1AIPiAMqQKckic82hjwefjbhyv0SlFENssfsqJ15Gt5xe8qAWgKfknCa
	niN1Dq1+FKQU5TwinK9MQ5yedmK7IeqbcXKhvVPPpx1CeAYjIgTH78pMDmmDOkxAF/sIWXTHJbSVC
	8fZO4qgYKjttNKjnWLXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxe51-0001Zt-TX; Tue, 13 Aug 2019 21:11:43 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxe4t-0001ZD-0q
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 21:11:36 +0000
Received: by mail-qt1-x842.google.com with SMTP id y26so107920084qto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 14:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=5DO9+iiMXCnTxtn8kwS2obogFdAM5hjWuU5VPWQaLfs=;
 b=tYcrzUhl5ircfJr1bs2q5kQPK6/jwLBoImHl3kWYeFY+3XOA3Qzyzo+gXYlxbVv7Kj
 NGuEgYU1tEffEOG8uffyJCThrNLl99RjrMCoCWsSaWypdc3X/O3d6MOwh+Sk68+k6PbS
 aXEkHsZChosQeQeFomYIwBbKjBpvk7zYct5DIQPOMKPdtHJWqWnGlEfrs+YNxJUw6Xgh
 KJiuLLLOlst+61lwP+Xvr2KP0lF27LBAzbEBn8iKz7TNRMST98M+KCiUFDzKVnwaWUQe
 Slabew/eXCQCTjQnUK/FwU7QgK2dxLBJioRP90JCriKk+W6ewp78wkVy3goYii7NKyy6
 OEuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=5DO9+iiMXCnTxtn8kwS2obogFdAM5hjWuU5VPWQaLfs=;
 b=RAl8wFwJDesURRpxBuAkSBTCke9geCOmFvPCbkOY3HmtGkjUzoRdHZovrJkp1dzEaI
 jeXUZaTYhQlZoVEmRCtPPekops3KHgWx4gAssLt74JJ8q5tWAnEL3ROh+S2hOLxe9JwA
 q1C2Mh8At0RxyRX8Z0jDsZl1r8brFdbZYhB3tM8xDus6FC+7w/gSmYIiwtBgVoNs0hfo
 K7gYJs7pTofcrqHNDa2Mng3kCyspl2kvemjJYK7XDKiuvTLCSeqzmUfTW11wOPM73Ag3
 Ai0Sii7HZ6e/Pvw6awLrUYSvLx5Qkc1ZdpEtLatedQXYpmJXIgaZvYXTz7ZdYH1borde
 Z+Zg==
X-Gm-Message-State: APjAAAUPO49tZFIFfnVpIw2+jnSI1G+ohar5olQO6KsBeInmMuphj8hr
 272OrCsMfLE3i8H3aFYspVP6fQ==
X-Google-Smtp-Source: APXvYqwXnH6BSNDMXssyIYCybM9bhgzE9wbjMU4CueLHzjlps+cYdJzD+gHjkEYo2NVLUhdkdWiBFw==
X-Received: by 2002:a05:6214:110c:: with SMTP id
 e12mr198694qvs.126.1565730693427; 
 Tue, 13 Aug 2019 14:11:33 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id q73sm35531390qke.90.2019.08.13.14.11.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2019 14:11:33 -0700 (PDT)
Date: Tue, 13 Aug 2019 14:11:23 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next v2 02/12] net: stmmac: Prepare to add Split
 Header support
Message-ID: <20190813141123.1df0daf2@cakuba.netronome.com>
In-Reply-To: <342007d6ac2b44db03d113e7e8bf0310caa77ea0.1565602974.git.joabreu@synopsys.com>
References: <cover.1565602974.git.joabreu@synopsys.com>
 <342007d6ac2b44db03d113e7e8bf0310caa77ea0.1565602974.git.joabreu@synopsys.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_141135_069986_048728A3 
X-CRM114-Status: GOOD (  23.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 12 Aug 2019 11:44:01 +0200, Jose Abreu wrote:
> In order to add Split Header support, stmmac_rx() needs to take into
> account that packet may be split accross multiple descriptors.
> 
> Refactor the logic of this function in order to support this scenario.
> 
> Signed-off-by: Jose Abreu <joabreu@synopsys.com>
> 
> ---
> Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Jose Abreu <joabreu@synopsys.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: netdev@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/net/ethernet/stmicro/stmmac/stmmac.h      |   6 +
>  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 149 +++++++++++++---------
>  2 files changed, 95 insertions(+), 60 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac.h b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
> index 80276587048a..56158e1448ac 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac.h
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
> @@ -74,6 +74,12 @@ struct stmmac_rx_queue {
>  	u32 rx_zeroc_thresh;
>  	dma_addr_t dma_rx_phy;
>  	u32 rx_tail_addr;
> +	unsigned int state_saved;
> +	struct {
> +		struct sk_buff *skb;
> +		unsigned int len;
> +		unsigned int error;
> +	} state;
>  };
>  
>  struct stmmac_channel {
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index b2e5f4ecd551..a093eb4ec275 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -3353,9 +3353,10 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
>  {
>  	struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];
>  	struct stmmac_channel *ch = &priv->channel[queue];
> +	unsigned int count = 0, error = 0, len = 0;
> +	int status = 0, coe = priv->hw->rx_csum;
>  	unsigned int next_entry = rx_q->cur_rx;
> -	int coe = priv->hw->rx_csum;
> -	unsigned int count = 0;
> +	struct sk_buff *skb = NULL;
>  
>  	if (netif_msg_rx_status(priv)) {
>  		void *rx_head;
> @@ -3369,9 +3370,27 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
>  		stmmac_display_ring(priv, rx_head, DMA_RX_SIZE, true);
>  	}
>  	while (count < limit) {
> +		enum pkt_hash_types hash_type;
>  		struct stmmac_rx_buffer *buf;
> +		unsigned int prev_len = 0;
>  		struct dma_desc *np, *p;
> -		int entry, status;
> +		int entry;
> +		u32 hash;
> +
> +		if (!count && rx_q->state_saved) {
> +			skb = rx_q->state.skb;
> +			error = rx_q->state.error;
> +			len = rx_q->state.len;
> +		} else {
> +			rx_q->state_saved = false;
> +			skb = NULL;
> +			error = 0;
> +			len = 0;
> +		}
> +
> +read_again:
> +		if (count >= limit)
> +			break;

Is this stopping the NAPI poll once @limit descriptors were seen?
It should probably be okay to ignore the limit until you get a full
frame? I'd think it'd be best to finish up the frame while the state 
is hot in the CPU cache.. WDYT?

>  		entry = next_entry;
>  		buf = &rx_q->buf_pool[entry];
> @@ -3407,28 +3426,24 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
>  			page_pool_recycle_direct(rx_q->page_pool, buf->page);
>  			priv->dev->stats.rx_errors++;
>  			buf->page = NULL;
> +			error = 1;
> +		}
> +
> +		if (unlikely(error & (status & rx_not_ls)))

Looks suspicious - sure this is supposed to be error & (status & bla)
and not error && ... ?

> +			goto read_again;
> +		if (unlikely(error)) {
> +			if (skb)
> +				dev_kfree_skb(skb);
> +			continue;
> +		}
> +
> +		/* Buffer is good. Go on. */
> +
> +		if (likely(status & rx_not_ls)) {
> +			len += priv->dma_buf_sz;
>  		} else {
> -			enum pkt_hash_types hash_type;
> -			struct sk_buff *skb;
> -			unsigned int des;
> -			int frame_len;
> -			u32 hash;
> -
> -			stmmac_get_desc_addr(priv, p, &des);
> -			frame_len = stmmac_get_rx_frame_len(priv, p, coe);
> -
> -			/*  If frame length is greater than skb buffer size
> -			 *  (preallocated during init) then the packet is
> -			 *  ignored
> -			 */
> -			if (frame_len > priv->dma_buf_sz) {
> -				if (net_ratelimit())
> -					netdev_err(priv->dev,
> -						   "len %d larger than size (%d)\n",
> -						   frame_len, priv->dma_buf_sz);
> -				priv->dev->stats.rx_length_errors++;
> -				continue;
> -			}
> +			prev_len = len;
> +			len = stmmac_get_rx_frame_len(priv, p, coe);
>  
>  			/* ACS is set; GMAC core strips PAD/FCS for IEEE 802.3
>  			 * Type frames (LLC/LLC-SNAP)
> @@ -3439,57 +3454,71 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
>  			 */
>  			if (unlikely(priv->synopsys_id >= DWMAC_CORE_4_00) ||
>  			    unlikely(status != llc_snap))
> -				frame_len -= ETH_FCS_LEN;
> -
> -			if (netif_msg_rx_status(priv)) {
> -				netdev_dbg(priv->dev, "\tdesc: %p [entry %d] buff=0x%x\n",
> -					   p, entry, des);
> -				netdev_dbg(priv->dev, "frame size %d, COE: %d\n",
> -					   frame_len, status);
> -			}
> +				len -= ETH_FCS_LEN;
> +		}
>  
> -			skb = netdev_alloc_skb_ip_align(priv->dev, frame_len);
> -			if (unlikely(!skb)) {
> +		if (!skb) {
> +			skb = netdev_alloc_skb_ip_align(priv->dev, len);

Since you're in NAPI call perhaps something like napi_alloc_skb() could
speed things up a little? But please also see below..

> +			if (!skb) {
>  				priv->dev->stats.rx_dropped++;
>  				continue;
>  			}
>  
> -			dma_sync_single_for_cpu(priv->device, buf->addr,
> -						frame_len, DMA_FROM_DEVICE);
> +			dma_sync_single_for_cpu(priv->device, buf->addr, len,
> +						DMA_FROM_DEVICE);
>  			skb_copy_to_linear_data(skb, page_address(buf->page),
> -						frame_len);
> -			skb_put(skb, frame_len);
> +						len);
> +			skb_put(skb, len);
>  
> -			if (netif_msg_pktdata(priv)) {
> -				netdev_dbg(priv->dev, "frame received (%dbytes)",
> -					   frame_len);
> -				print_pkt(skb->data, frame_len);
> -			}
> +			/* Data payload copied into SKB, page ready for recycle */
> +			page_pool_recycle_direct(rx_q->page_pool, buf->page);
> +			buf->page = NULL;
> +		} else {
> +			unsigned int buf_len = len - prev_len;
>  
> -			stmmac_get_rx_hwtstamp(priv, p, np, skb);
> +			if (likely(status & rx_not_ls))
> +				buf_len = priv->dma_buf_sz;
>  
> -			stmmac_rx_vlan(priv->dev, skb);
> +			dma_sync_single_for_cpu(priv->device, buf->addr,
> +						buf_len, DMA_FROM_DEVICE);
> +			skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags,
> +					buf->page, 0, buf_len,
> +					priv->dma_buf_sz);
>  
> -			skb->protocol = eth_type_trans(skb, priv->dev);
> +			/* Data payload appended into SKB */
> +			page_pool_release_page(rx_q->page_pool, buf->page);
> +			buf->page = NULL;
> +		}
>  
> -			if (unlikely(!coe))
> -				skb_checksum_none_assert(skb);
> -			else
> -				skb->ip_summed = CHECKSUM_UNNECESSARY;
> +		if (likely(status & rx_not_ls))
> +			goto read_again;
>  
> -			if (!stmmac_get_rx_hash(priv, p, &hash, &hash_type))
> -				skb_set_hash(skb, hash, hash_type);
> +		/* Got entire packet into SKB. Finish it. */
>  
> -			skb_record_rx_queue(skb, queue);
> -			napi_gro_receive(&ch->rx_napi, skb);
> +		stmmac_get_rx_hwtstamp(priv, p, np, skb);
> +		stmmac_rx_vlan(priv->dev, skb);
> +		skb->protocol = eth_type_trans(skb, priv->dev);
>  
> -			/* Data payload copied into SKB, page ready for recycle */
> -			page_pool_recycle_direct(rx_q->page_pool, buf->page);
> -			buf->page = NULL;
> +		if (unlikely(!coe))
> +			skb_checksum_none_assert(skb);
> +		else
> +			skb->ip_summed = CHECKSUM_UNNECESSARY;
>  
> -			priv->dev->stats.rx_packets++;
> -			priv->dev->stats.rx_bytes += frame_len;
> -		}
> +		if (!stmmac_get_rx_hash(priv, p, &hash, &hash_type))
> +			skb_set_hash(skb, hash, hash_type);
> +
> +		skb_record_rx_queue(skb, queue);
> +		napi_gro_receive(&ch->rx_napi, skb);

Did you look into using napi_gro_frags() family of APIs?
I think Eric said those are more efficient from GRO perspective..

> +		priv->dev->stats.rx_packets++;
> +		priv->dev->stats.rx_bytes += len;
> +	}
> +
> +	if (status & rx_not_ls) {
> +		rx_q->state_saved = true;
> +		rx_q->state.skb = skb;
> +		rx_q->state.error = error;
> +		rx_q->state.len = len;
>  	}
>  
>  	stmmac_rx_refill(priv, queue);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
