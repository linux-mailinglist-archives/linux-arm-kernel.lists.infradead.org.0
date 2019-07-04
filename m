Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30AE5F5D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7SzzoO8Zk9OwnzB6yGzYSOBPgepx+eYE58aHfhRDzA=; b=R+Y2+QKMr92Xtj
	/NLzpkBff28Vv0C4JjwVsDiA/W0mzsFVHnUei2P1ScipVQLjl4NNUxTuhL8vQ0ikHnxsxfdXc4yz0
	YIjuk+yX6NCuclK8+n8o2kma5x30/sSnlZcCJWweDsn0F+vHZkWHWCggok/wrxrEdSrHI9/+u46E+
	1Yi+q6h/MZxGCThoXv45c9EE3xDAinarZj2VTr1kNixzTI8jrJxYKgAyAcNC1UwsxB25lkPIerxuJ
	WtSn7f1G8jWC5AcIb6JL49EuPPweWP7rp2w+g+0IHnP0H4tAllubeqdxDXYqekbt6wfVh5mmwww+m
	pyuQmlcjYmj0mnDlnKBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiyDa-0007Go-DJ; Thu, 04 Jul 2019 09:39:54 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiyDK-0007FW-KG
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:39:40 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F3FB880F7C;
 Thu,  4 Jul 2019 09:39:33 +0000 (UTC)
Received: from carbon (ovpn-200-17.brq.redhat.com [10.40.200.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5C84B88F19;
 Thu,  4 Jul 2019 09:39:17 +0000 (UTC)
Date: Thu, 4 Jul 2019 11:39:16 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Message-ID: <20190704113916.665de2ec@carbon>
In-Reply-To: <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Thu, 04 Jul 2019 09:39:35 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_023938_681035_C9471975 
X-CRM114-Status: GOOD (  13.88  )
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 brouer@redhat.com, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  3 Jul 2019 12:37:50 +0200
Jose Abreu <Jose.Abreu@synopsys.com> wrote:

> @@ -1498,8 +1479,9 @@ static void free_dma_rx_desc_resources(struct stmmac_priv *priv)
>  					  sizeof(struct dma_extended_desc),
>  					  rx_q->dma_erx, rx_q->dma_rx_phy);
>  
> -		kfree(rx_q->rx_skbuff_dma);
> -		kfree(rx_q->rx_skbuff);
> +		kfree(rx_q->buf_pool);
> +		if (rx_q->page_pool)
> +			page_pool_request_shutdown(rx_q->page_pool);
>  	}
>  }
>  

The page_pool_request_shutdown() API return indication if there are any
in-flight frames/pages, to know when it is safe to call
page_pool_free(), which you are also missing a call to.

This page_pool_request_shutdown() is only intended to be called from
xdp_rxq_info_unreg() code, that handles and schedule a work queue if it
need to wait for in-flight frames/pages.

-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
