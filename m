Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B27425F69F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 12:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yn27jadgAwBUvWj/qWoVsoKS8oxd2AhSAfEvabuG5aQ=; b=IYVSH4E2iJ5UzU
	pw4jM7h8QIJnnwKeVqx2PBo+/OPzRxAV3sHB4/hvRHF4hPQSEMY6xv86H9o3eYAlbYQNAK92aS0+V
	sHnh5ZADi+Rx9+x8JOhYVJvlX7vLy5IrWINbgYq6o7SusDicswMjK/I++dlnv/iCd9UOIv5cJETyv
	Orc/+LNZvCNMDdntU6INcRLItWinnR753ZtvglsmVCVPaoTFdZ1+AuQkCKH2jEqJPkaERTl4XPtQH
	q26fQrfJ6eeVxwT47/BIvw5fiRi9DPCoGsgAubojIcq6xIKlTgFpUxQ72DUIo0mnUmhISG3ei6RYa
	nva6VYWmh78+sRunKeLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiz1K-0006FL-DA; Thu, 04 Jul 2019 10:31:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiz15-0006Es-H7
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 10:31:05 +0000
Received: by mail-wr1-x444.google.com with SMTP id a10so4952952wrp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 03:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vfNfNOecUkgsCK5iRU+RHp5HzJkwACPrVEZHclgWgQw=;
 b=FVKkQerj/tMYlojr2Q5WpayQ+ByGFY3Q0bQtVLvJKEM1f46amoOo4TzfdoVLbfpGFq
 auEpc18Ed67ELqkaR3F4F29TioKOp/61uAHgb0KbVLNJAxbS4ihHPUdgj72YJsYh7VYN
 2YsD/Dr+6AT5Bc9ROI6C7GZeZcrtaOcW8tGXoeLQsvpXeo3w+YXmXKQMuvtcn6UNyvAW
 OtKUgoPW4socc1x5F5+1yvX4S+ZxiEX6RSZ+WoIYjsc/tR9U2HM6g6cpB0b2tBB3yiiy
 vGJ/S/IVFtqZEVsIwglpjE1jcjwuZS9V6cxvvV6qGnTcPUmWaDcRLQjnKyvS0O+avSWa
 Lrew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vfNfNOecUkgsCK5iRU+RHp5HzJkwACPrVEZHclgWgQw=;
 b=lR5eZNCnPM1Qi5aHBeoliiUmZGzVOHITnIi05gxcya9PoKvODeaaIpn+HT7guNGkBH
 O7TIfw+MJQjwXvhhHXJmYsqW0T4exv72WRruNaGtIy3iek4RBYlor5nciOhhKSAspv79
 RL241nCCq5mcHM3KaQw9I2SonX/oWKYGZd9axDFUEAooMVbhDNq1NB313Viwe6aA9FUk
 /9PHaEBxBsHz7RpzIX3tFJf271kuboCkUsxvpsGNHC/JptRBMw7hF7G7wdUCMzz8t8s3
 VL+IEcIMl5+sWcP5IoAnIQA/6vxO8JAAFTpZRmNRNcPEFePOVfdUkk9MD5y2O24O5uv2
 Z8vA==
X-Gm-Message-State: APjAAAWii/BJuTclRIPDXaAUPdkLUGksIwxDXnTKqdu1aQ0WXVc9Atss
 aauC6WyvljAXfkLgWM2OCqjGaQ==
X-Google-Smtp-Source: APXvYqxUVdc9ozRNmQRBYQi1aV7FgAVJIVtccp1fqnmyAt+NPySxjvsza2v74xpNJCzXO1zhqfzSSA==
X-Received: by 2002:a5d:5186:: with SMTP id k6mr35965127wrv.30.1562236261279; 
 Thu, 04 Jul 2019 03:31:01 -0700 (PDT)
Received: from apalos (athedsl-428434.home.otenet.gr. [79.131.225.144])
 by smtp.gmail.com with ESMTPSA id k63sm6177278wmb.2.2019.07.04.03.30.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jul 2019 03:31:00 -0700 (PDT)
Date: Thu, 4 Jul 2019 13:30:57 +0300
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Jesper Dangaard Brouer <brouer@redhat.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Message-ID: <20190704103057.GA29734@apalos>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <20190704120018.4523a119@carbon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704120018.4523a119@carbon>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_033103_665587_DFC4647E 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HI Jesper, Ivan,

> On Wed,  3 Jul 2019 12:37:50 +0200
> Jose Abreu <Jose.Abreu@synopsys.com> wrote:
> 
> > @@ -3547,6 +3456,9 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
> >  
> >  			napi_gro_receive(&ch->rx_napi, skb);
> >  
> > +			page_pool_recycle_direct(rx_q->page_pool, buf->page);
> 
> This doesn't look correct.
> 
> The page_pool DMA mapping cannot be "kept" when page traveling into the
> network stack attached to an SKB.  (Ilias and I have a long term plan[1]
> to allow this, but you cannot do it ATM).
> 
> You will have to call:
>   page_pool_release_page(rx_q->page_pool, buf->page);
> 
> This will do a DMA-unmap, and you will likely loose your performance
> gain :-(
> 
> 
> > +			buf->page = NULL;
> > +
> >  			priv->dev->stats.rx_packets++;
> >  			priv->dev->stats.rx_bytes += frame_len;
> >  		}
> 
> Also remember that the page_pool requires you driver to do the DMA-sync
> operation.  I see a dma_sync_single_for_cpu(), but I didn't see a
> dma_sync_single_for_device() (well, I noticed one getting removed).
> (For some HW Ilias tells me that the dma_sync_single_for_device can be
> elided, so maybe this can still be correct for you).
On our case (and in the page_pool API in general) you have to track buffers when
both .ndo_xdp_xmit() and XDP_TX are used.
So the lifetime of a packet might be 

1. page pool allocs packet. The API doesn't sync but i *think* you don't have to
explicitly since the CPU won't touch that buffer until the NAPI handler kicks
in. On the napi handler you need to dma_sync_single_for_cpu() and process the
packet.
2a) no XDP is required so the packet is unmapped and free'd
2b) .ndo_xdp_xmit is called so tyhe buffer need to be mapped/unmapped
2c) XDP_TX is called. In that case we re-use an Rx buffer so we need to
dma_sync_single_for_device()
2a and 2b won't cause any issues
In 2c the buffer will be recycled and fed back to the device with a *correct*
sync (for_device) and all those buffers are allocated as DMA_BIDIRECTIONAL.

So bvottom line i *think* we can skip the dma_sync_single_for_device() on the
initial allocation *only*. If am terribly wrong please let me know :)

Thanks
/Ilias
> 
> 
> [1] https://github.com/xdp-project/xdp-project/blob/master/areas/mem/page_pool02_SKB_return_callback.org
> -- 
> Best regards,
>   Jesper Dangaard Brouer
>   MSc.CS, Principal Kernel Engineer at Red Hat
>   LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
