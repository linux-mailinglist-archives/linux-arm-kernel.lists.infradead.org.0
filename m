Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 294085FB03
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 17:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mVo44OcFI35xlxYX8aZq6F0WkLaExXYTvxMYPORifGU=; b=N100UW1lTyKeb6
	r5JxkQr+JKo8l50fKvQs1FSiO1ow3oQ+TUMTEzlIJ7dQ9JzIjPza0RlOqDbB0BaMiEozT8vPVzP35
	vWCTW5Wtw9/G4xuNNcuhOPCrmLZCgSLYYHw5g7pF8NFUQt3PH3rZQHqpBKLi52b++YxecN3L5ss7K
	tyDaVnEVDus8WG2BYuyTcezjzKWBx8DEmqkrRiHwQnVINxn5NTK9EBBR07nqSNl80Vc8JRzQ72G85
	as0rDc5Jr/3sktrvHk+Gp1H9OVXT2LNXkfazzJ98aM80CPFSa8dQlEdAHMOOEzZ54VGmnVREs9u9S
	xlDWv/uWBiSZ1FjXntDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj3oR-0000rP-Gq; Thu, 04 Jul 2019 15:38:19 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj3oF-0000qO-G3
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 15:38:08 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2CC44300DA2B;
 Thu,  4 Jul 2019 15:38:07 +0000 (UTC)
Received: from carbon (ovpn-200-17.brq.redhat.com [10.40.200.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 59BBC968DD;
 Thu,  4 Jul 2019 15:38:00 +0000 (UTC)
Date: Thu, 4 Jul 2019 17:37:58 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next v2 3/3] net: stmmac: Introducing support for
 Page Pool
Message-ID: <20190704173758.6d985aa3@carbon>
In-Reply-To: <fd2b12e6fc99f6064b0c04e1baae24328d16289f.1562252534.git.joabreu@synopsys.com>
References: <cover.1562252534.git.joabreu@synopsys.com>
 <fd2b12e6fc99f6064b0c04e1baae24328d16289f.1562252534.git.joabreu@synopsys.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 04 Jul 2019 15:38:07 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_083807_555121_6C4BDA7B 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 netdev@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 brouer@redhat.com, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  4 Jul 2019 17:04:14 +0200
Jose Abreu <Jose.Abreu@synopsys.com> wrote:

> @@ -1498,8 +1480,9 @@ static void free_dma_rx_desc_resources(struct stmmac_priv *priv)
>  					  sizeof(struct dma_extended_desc),
>  					  rx_q->dma_erx, rx_q->dma_rx_phy);
>  
> -		kfree(rx_q->rx_skbuff_dma);
> -		kfree(rx_q->rx_skbuff);
> +		kfree(rx_q->buf_pool);
> +		if (rx_q->page_pool && page_pool_request_shutdown(rx_q->page_pool))
> +			page_pool_free(rx_q->page_pool);
>  	}
>  }

This code is okay, but I would likely write it as:

  if (rx_q->page_pool) {
	page_pool_request_shutdown(rx_q->page_pool));
	page_pool_free(rx_q->page_pool);
  }

Because (as you noticed) page_pool_free() have some API misuse checks,
that will get triggered, and thus provide a warning of you forget to
update this when driver evolves.

-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
