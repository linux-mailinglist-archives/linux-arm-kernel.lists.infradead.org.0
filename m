Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6D860825
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:43:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GE3dgfNE1qNhPVd1EBA6KM7z0+/vA5kQ8TYYrUjD0ZY=; b=dKQKdAHi1WxGCo
	SsJ/Ia2PkkLbpyjWC0GeOFfBYtEnEbchkKGla+LTLZmtRZGPzEnbKSJclrJVSethhix+5s4rWDZ0J
	SqOnIeya8EeJ1rg6s4n+icXZe8R/btRZ7jEeAJx5GDR8NqekNy1orVBe+NoPlUey8Gt2U4n3jtpFJ
	ddtYn22QXdQZIYBGb2u/fHM8pU743H/AjDMRn5dmTv6XDlI5MxuHYCXhlEU9yttppvmz3GwPAJ7CX
	5u8wsx/+cUQTnjjniVNWomlELFlO8pg4qQOcRmQWDTtCe7Ob8vU6TmsTyMfoCl+aYWpkH72xnGUll
	sqj+l+q+ig8w9qSGVdHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPRN-0005h5-4v; Fri, 05 Jul 2019 14:43:57 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPQu-0005Gk-5q
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:43:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ES3Fxqq/qVk0kvCdNYd6vQVB8dMaCL8eLDDrQ6qbPig=; b=ENjgyMt4i75GVv4B4PoYAycu6
 d20VF/Hn+irLjh1sv3ephEGbsyeQel9g9/On4EsxV3Ho5Zvs2V3JxirLj19b5r//GW49vkTX9fQbn
 beIN4ZQsUBb4cbVknJOqdQDKmIQa6phKl0VoV24YwV66go2MdWTehDHr0ro9lMT4XL7C1DBVmQJ6N
 i9FU3SqqkjNfTohTV+JsVJ67CTJqktdyQgIVMLkUpzNs2+L7Fejz8gQEMoE8xqiu9THO0ZwZWc2sS
 aVRm9TvSr6BZouBuvqKF8QeQ83uQFA9mo+keVFNpxU9tmkA6VOSCTLlCPRqT17Mm/+byapiv1MOAJ
 YJgoE8dTw==;
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOIy-0002E0-Km
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 13:31:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id c2so9939281wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 06:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ES3Fxqq/qVk0kvCdNYd6vQVB8dMaCL8eLDDrQ6qbPig=;
 b=jKImGNCLlO5An5dLyx2aVNvpjjInFeFKhGs2nmLuOp1EvadE1LSjGLgdbhRmtWQSfx
 n3MOTFnCoJzCmRtYd/3UAJewbi640IocbvSpPJt28zuRLrYKdpCPXQhFGTjVn9VW4C6Q
 ry3YKmLr46tCXpgWSMGkVOgJLCVZQWqszsNAslKm8KwOm6wxaXxui4og6rrSPEMBTUsv
 MD8jq4UhEWSs7/giqq378k9I8OY3qdXHsisW2/V/PxXRF8+FbcG3x/a9jeCDlSCcJ50l
 ogsrd3sOIYdRSvXPEg1u7n8rpdH45iY/fs3YdrbCuD8FAfLYp9Ey2AqdRR5tpntE1e0D
 ONJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ES3Fxqq/qVk0kvCdNYd6vQVB8dMaCL8eLDDrQ6qbPig=;
 b=KtMGGSPx+uSmOIdZY7zbjB1dGTiCPFpSsRjmdoWKhuxFiynfqg+GfT0ZbqLB6vfeJ2
 x+DTWEdUVKtChG36SrytAI2U5SBSxS2/0I40LkLrhvE6nlHkrlhSsCbbpsz2675rgvrG
 a4MwJWf53rCR/m6DmqpReSnllyxrHGpoJT+BTYBaeKa51eGwF9e7gw7tn26pxb5UJgrP
 2NdReJP6tSwd9B8UtkTUmAeHSWYJEc4CkDJYzrfVhW+IYJAywD8byrtbbLkkQqhzuLdn
 +1kcQAM6+PyCH0y+gu06PZDvD8tASHpOyqEhZSprMBMIhEqKMM9+JVbMGzYamUOLT/ao
 K2jQ==
X-Gm-Message-State: APjAAAWoawpUVegd6OQHemewzu/l+0fnFOULrXUlx6vLuAyuIX4BQxyk
 FOEMGVOcEVQGQ/w4EqnV0bHuaw==
X-Google-Smtp-Source: APXvYqzjMQhemoYavZtb41OiKS8heBAFjJkN3Jzjp+CP4WqiX2GqTTD7wj40s7CG20LugioQJosqgg==
X-Received: by 2002:adf:de08:: with SMTP id b8mr3606488wrm.282.1562333349431; 
 Fri, 05 Jul 2019 06:29:09 -0700 (PDT)
Received: from apalos (athedsl-428434.home.otenet.gr. [79.131.225.144])
 by smtp.gmail.com with ESMTPSA id h8sm8749710wmf.12.2019.07.05.06.29.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Jul 2019 06:29:08 -0700 (PDT)
Date: Fri, 5 Jul 2019 16:29:05 +0300
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next v3 3/3] net: stmmac: Introducing support for
 Page Pool
Message-ID: <20190705132905.GA15433@apalos>
References: <cover.1562311299.git.joabreu@synopsys.com>
 <384dab52828c4b65596ef4202562a574eed93b91.1562311299.git.joabreu@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <384dab52828c4b65596ef4202562a574eed93b91.1562311299.git.joabreu@synopsys.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Jesper Dangaard Brouer <brouer@redhat.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jose,

I think this look ok for now. One request though, on page_pool_free 

On Fri, Jul 05, 2019 at 09:23:00AM +0200, Jose Abreu wrote:
> Mapping and unmapping DMA region is an high bottleneck in stmmac driver,
> specially in the RX path.
> 
> This commit introduces support for Page Pool API and uses it in all RX
> queues. With this change, we get more stable troughput and some increase
> of banwidth with iperf:
> 	- MAC1000 - 950 Mbps
> 	- XGMAC: 9.22 Gbps
> 
> Changes from v2:
> 	- Uncoditionally call page_pool_free() (Jesper)
> Changes from v1:
> 	- Use page_pool_get_dma_addr() (Jesper)
> 	- Add a comment (Jesper)
> 	- Add page_pool_free() call (Jesper)
> 	- Reintroduce sync_single_for_device (Arnd / Ilias)
> 
> Signed-off-by: Jose Abreu <joabreu@synopsys.com>
> Cc: Joao Pinto <jpinto@synopsys.com>
> Cc: David S. Miller <davem@davemloft.net>
> Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Ilias Apalodimas <ilias.apalodimas@linaro.org>
> Cc: Jesper Dangaard Brouer <brouer@redhat.com>
> Cc: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/net/ethernet/stmicro/stmmac/Kconfig       |   1 +
>  drivers/net/ethernet/stmicro/stmmac/stmmac.h      |  10 +-
>  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 203 +++++++---------------
>  3 files changed, 70 insertions(+), 144 deletions(-)
> 

[...]
> @@ -1498,8 +1480,11 @@ static void free_dma_rx_desc_resources(struct stmmac_priv *priv)
>  					  sizeof(struct dma_extended_desc),
>  					  rx_q->dma_erx, rx_q->dma_rx_phy);
>  
> -		kfree(rx_q->rx_skbuff_dma);
> -		kfree(rx_q->rx_skbuff);
> +		kfree(rx_q->buf_pool);
> +		if (rx_q->page_pool) {
> +			page_pool_request_shutdown(rx_q->page_pool);
> +			page_pool_free(rx_q->page_pool);

A patch currently under review will slightly change that [1] and [2]
Can you defer this a bit till that one gets merged?
The only thing you'll have to do is respin this and replace page_pool_free()
with page_pool_destroy()

[1] https://lore.kernel.org/netdev/20190705094346.13b06da6@carbon/
[2] https://lore.kernel.org/netdev/156225871578.1603.6630229522953924907.stgit@firesoul/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
